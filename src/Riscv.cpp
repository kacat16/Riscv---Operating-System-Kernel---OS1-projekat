//
// Created by os on 8/11/23.
//

#include "../h/Riscv.hpp"
#include "../lib/hw.h"
#include "../h/Lista.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Thread_k.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Konzola.hpp"
#include "../test/printing.hpp"

UspavanaLista Riscv::uspavaneNiti;

using Body = void(*)(void*);


void Riscv::dodajUListu(Thread_k *thr) {
    uspavaneNiti.dodajNit(thr);
}

enum opCode:uint64 {
    MEM_ALLOC=0x01,
    MEM_FREE=0x02,
    THREAD_CREATE=0x11,
    THREAD_EXIT=0x12,
    THREAD_DISPATCH=0x13,
    THREAD_JOIN=0x14,
    SEM_OPEN=0x21,
    SEM_CLOSE=0x22,
    SEM_WAIT=0x23,
    SEM_SIGNAL=0x24,
    TIME_SLEEP=0x31,
    GETC=0x41,
    PUTC=0x42
};
uint64 Riscv::syscall(uint64 *params) {

    uint64 ret=0;

    uint64 operationCode=params[0];

    if (operationCode==MEM_ALLOC) {
        uint64 s=MEM_BLOCK_SIZE*params[1];
        ret=(uint64)MemoryAllocator::_mem_alloc(s);
    }
    else if (operationCode==MEM_FREE) {
        ret = MemoryAllocator::_mem_free((void*)params[1]);
    }
    else if (operationCode==THREAD_CREATE) {
        //MemoryAllocator::_init();
        void* stack_space=MemoryAllocator::_mem_alloc(8*DEFAULT_STACK_SIZE*sizeof(uint64));
        void* argument=(void*)params[3];
        Body startRoutine=(Body)params[2];
        Thread_k** r=(Thread_k**)params[1];
        Thread_k::_createThread(startRoutine,r,argument,DEFAULT_TIME_SLICE,(void*)stack_space);
        if (r== nullptr) ret=-1;
        else ret=0;
    }
    else if (operationCode==THREAD_EXIT){
        Thread_k::runningThread->zavrsi(true);
        Thread_k::dispatch();

        ret=0;
    }
    else if (operationCode==THREAD_DISPATCH) {
        uint64 spc=sepc_r();
        uint64 sstat=sstatus_r();
        Thread_k::dispatch();
        sstatus_w(sstat);
        sepc_w(spc);
    }
    else if (operationCode==THREAD_JOIN) {
        Thread_k* handle=(Thread_k*)params[1];
        handle->join();
    }
    else if (operationCode==SEM_OPEN){
        Semaphore_k** handle=(Semaphore_k**)params[1];
        int init=(int)params[2];
        Semaphore_k::createSemaphore(handle,init);
        ret=0;
    }
    else if (operationCode==SEM_CLOSE) {
        Semaphore_k* handle=(Semaphore_k*)params[1];
        handle->releaseSemaphore();
        ret=0;
    }
    else if (operationCode==SEM_WAIT) {
        Semaphore_k* handle=(Semaphore_k*)params[1];
        ret=handle->wait();
    }
    else if (operationCode==SEM_SIGNAL){
        Semaphore_k* handle=(Semaphore_k*)params[1];
        ret=handle->signal();
    }
    else if (operationCode==TIME_SLEEP) {
        time_t time=(time_t)params[1];
        ret=Thread_k::sleepThread(time);
    }
    else if (operationCode==GETC){
        //char c=__getc();
        char c=Konzola::getCharIn();
        ret=(uint64)c;
    }
    else if (operationCode==PUTC){
        char c=(char)params[1];
        Konzola::putCharOut(c);
        //__putc(c);
    }
    else {
        printString("???\n");
    }


    return ret;

}





enum causes:uint64{
    TIMER=0x8000000000000001UL,
    KONZOLA=0x8000000000000009UL,
    KORISNICKI_ECALL=0x0000000000000008UL,
    SISTEMSKI_ECALL=0x0000000000000009UL,
};


void Riscv::popSppSpie() {
    if (Thread_k::runningThread->sistemskaNit()==true) {
        sstatus_ms(SSTATUS_SPP);
    }
    else {
        sstatus_mc(SSTATUS_SPP);
    }
    __asm__ volatile ("csrw sepc,ra");
    __asm__ volatile ("sret");
}



void Riscv::handleSupervisorTrapBasic(){
    uint64 volatile scause=scause_r();
    if (scause==KORISNICKI_ECALL || scause==SISTEMSKI_ECALL) {
        uint64 volatile sepcOld=sepc_r();
        uint64 volatile status=sstatus_r();
        uint64 params[5];
        ucitajParametre(params);
        uint64 volatile returnValue=syscall(params);
        sstatus_w(status);
        sepc_w(sepcOld+4);
        upisi_u_a0(returnValue);
        //sip_mc(SIP_SSIP);
    }
    else {
        printString("error");
        if (scause==2) {
            printString("Error scause = 2");
        }
        else if (scause==5) {
            printString("Error scause = 5");
        }
        else if (scause==7){
            printString("Error scause = 7");
        }
        return;
    }

}



void Riscv::handleSupervisorTrapTimer(){
    uint64 scause=scause_r();
    if (scause==TIMER) {
        uspavaneNiti.probudiNiti();
        sip_mc(SIP_SSIP);
        Thread_k::counterOfTimeSlice++;
        if (Thread_k::counterOfTimeSlice >= Thread_k::runningThread->dohvatiTimeSlice()) {
            uint64 volatile sepc = sepc_r();
            uint64 volatile sstatus = sstatus_r();
            Thread_k::counterOfTimeSlice = 0;
            Thread_k::dispatch();
            sstatus_w(sstatus);
            sepc_w(sepc);
        }
    }
    else {
        printString("error");
        if (scause==2) {
            printString("Error scause = 2");
        }
        else if (scause==5) {
            printString("Error scause = 5");
        }
        else if (scause==7){
            printString("Error scause = 7");
        }
        return;
    }

    //}

    //
    //
    // else handleUnexpected();

}



void Riscv::handleSupervisorTrapConsole() {
    uint64 scause=scause_r();
    if (scause==KONZOLA) {
        /*
        uint64 volatile sepc = sepc_r();
        uint64 volatile sstatus = sstatus_r();
        console_handler();
        sstatus_w(sstatus);
        sepc_w(sepc);*/

        uint64 volatile sepc = sepc_r();
        uint64 volatile sstatus = sstatus_r();
        uint64 brojPrekida = plic_claim();
        if (brojPrekida == CONSOLE_IRQ) {
            while (CONSOLE_RX_STATUS_BIT & (*(char *) CONSOLE_STATUS)) Konzola::putCharIn(*(char *) CONSOLE_RX_DATA);
        }
        plic_complete((int) brojPrekida);
        sstatus_w(sstatus);
        sepc_w(sepc);
    }
    else {
        printString("error");
        if (scause==2) {
            printString("Error scause = 2");
        }
        else if (scause==5) {
            printString("Error scause = 5");
        }
        else if (scause==7){
            printString("Error scause = 7");
        }
        return;
    }
}