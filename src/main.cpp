//
// Created by os on 8/13/23.
//
#include "../h/Riscv.hpp"
#include "../h/syscall_c.hpp"
//#include "../h/MemoryAllocator.hpp"
#include "../h/Thread_k.hpp"
//#include "../h/workers.h"
#include "../h/syscall_cpp.hpp"
#include "../lib/mem.h"
#include "../lib/console.h"
#include "../h/Thread_k.hpp"



extern void userMain(void*);
void console_out(void*)
{
    while (true) {
        volatile char status = *((char*)CONSOLE_STATUS);
        while ((status & CONSOLE_TX_STATUS_BIT)) {
            char c = Konzola::getCharOut();
            *((char*)CONSOLE_TX_DATA) = c;
            status = *((char*)CONSOLE_STATUS);
        }
    }
}

void idleWrapper(void*)
{
    while (true) { thread_dispatch(); }
}

int main(){
    MemoryAllocator::_init();
    Konzola::init();
    Riscv::stvec_w((uint64)(&Riscv::supervisorTrap)|1);


    Thread_k *thr;
    Thread_k::_createThread(nullptr,&thr, nullptr,2, nullptr);
    thr->postaviSistemsku();
    Thread_k::runningThread = thr;

    uint64 *stack1 = (uint64*)mem_alloc(sizeof(uint64) * 8* DEFAULT_STACK_SIZE);
    Thread_k* output;
    Thread_k::_createThread(console_out,&output, nullptr,2, stack1);
    output->postaviSistemsku();

    Thread_k* idle;
    uint64 *stack = (uint64*)mem_alloc(sizeof(uint64) * 8* DEFAULT_STACK_SIZE);
    Thread_k::_createThread(idleWrapper, &idle,nullptr,2, stack);


/*

*/
    Riscv::sstatus_ms(Riscv::SSTATUS_SIE);

    uint64 *stack2 = (uint64*)mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    Thread_k* userMainThread;
    Thread_k::_createThread( userMain, &userMainThread, nullptr, 2, stack2);
    userMainThread->postaviSistemsku();


    while (!userMainThread->jeZavrsena())
        thread_dispatch();
    //printString("na vrh\n");
/*
    Thread_k* niti[5];
    uint64* stack1=(uint64*)mem_alloc(8*DEFAULT_STACK_SIZE* sizeof(uint64));
    //printString("d2");
    Thread_k::_createThread(nullptr,&(niti[0]), nullptr,DEFAULT_TIME_SLICE,stack1);
    Thread_k::runningThread=niti[0];
    printString("na vrh\n");
    //Thread_k::sleepThread(10);
    printString("brda\n");
    uint64* stack2=(uint64*)mem_alloc(8*DEFAULT_STACK_SIZE* sizeof(uint64));
    Thread_k::_createThread(workerBodyA,&(niti[1]), nullptr, DEFAULT_TIME_SLICE,stack2);
    printString("NIT1 NAPRAVLJENA!");
    uint64* stack3=(uint64*)mem_alloc(8*DEFAULT_STACK_SIZE* sizeof(uint64));
    Thread_k::_createThread(workerBodyB,&(niti[2]), nullptr,DEFAULT_TIME_SLICE,stack3);
    printString("NIT2 NAPRAVLJENA!");
    uint64* stack4=(uint64*)mem_alloc(8*DEFAULT_STACK_SIZE* sizeof(uint64));
    Thread_k::_createThread(workerBodyC,&(niti[3]), nullptr,DEFAULT_TIME_SLICE,stack4);
    uint64* stack5=(uint64*)mem_alloc(8*DEFAULT_STACK_SIZE* sizeof(uint64));
    Thread_k::_createThread(workerBodyD,&(niti[4]), nullptr,DEFAULT_TIME_SLICE,stack5);




    niti[1]->join();
    printString("Nit A sig gotova\n");
    niti[2]->join();
    printString("Nit B sigurno gotova\n");
    niti[3]->join();
    printString("Nit C sigurno gotova\n");
    niti[4]->join();
    printString("NIt D sigurno gotova\n");
    for (int j=0;j<5;j++) {
        delete niti[j];
    }

    //char c=getc();

    Thread_k* nulta;
    uint64* stack1=(uint64*)mem_alloc(8*DEFAULT_STACK_SIZE* sizeof(uint64));
    Thread_k::_createThread(nullptr,&(nulta), nullptr,DEFAULT_TIME_SLICE,stack1);
    Thread_k::runningThread= nulta;
    getc();
    __putc('n');
    char c=Konzola::getCharOut();
    *(char*)CONSOLE_TX_DATA=c;
    printString("Zavrseno!");
    return 0;*/
    return 0;
}