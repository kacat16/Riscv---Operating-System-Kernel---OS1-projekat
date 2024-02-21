//
// Created by os on 8/26/23.
//

#include "../h/Thread_k.hpp"

#include "../lib/mem.h"
#include "../h/Riscv.hpp"
#include "../test/printing.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Konzola.hpp"
Thread_k* Thread_k::runningThread= nullptr;
uint64 Thread_k::counterOfTimeSlice=0;



void Thread_k::dispatch() {
    Thread_k* oldThread=Thread_k::runningThread;
    if (oldThread->jeZavrsena()==false && oldThread->jeBlokirana()==false) Scheduler::put(oldThread);
    Thread_k::runningThread=Scheduler::get();
    Thread_k::counterOfTimeSlice=0;
    //if (oldThread!=runningThread) {
    Thread_k::switchContext(&oldThread->kontekst, &(Thread_k::runningThread->kontekst));
    //}

}

void Thread_k::yield() {
    uint64 code = 0x13;
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
}

void Thread_k::threadWrapper() {
    Riscv::popSppSpie();
    runningThread->body(runningThread->argument);
    runningThread->zavrsi(true);
    if (runningThread->isParentWaiting()) {
        runningThread->resetParentWaiting();
        runningThread->getParent()->odblokiraj();
        Scheduler::put(runningThread->getParent());
    }
    //Thread_k::yield();
    thread_dispatch();

}

int Thread_k::_createThread(Thread_k::Body body,Thread_k** rucka, void* argument, uint64 timeSl, void* stackSpace) {
    Thread_k* tred;
    tred=(Thread_k*)MemoryAllocator::_mem_alloc(sizeof(Thread_k));
    tred->body=body;
    tred->zavrsena=false;
    tred->blokirana=false;
    tred->stack=(body!=nullptr)?(uint64*)stackSpace:nullptr;
    tred->kontekst={tred->stack!=nullptr? (uint64)&(tred->stack)[8*DEFAULT_STACK_SIZE]:0,(uint64)&threadWrapper};
    tred->argument=argument;
    tred->timeSlice=timeSl;
    tred->parent=Thread_k::runningThread;
    tred->isWaiting=false;
    tred->sys=false;
    *rucka=tred;
    if (body!=nullptr) {
        Scheduler::put(*rucka);
    }
    return 0;

}
/*
int Thread_k::__createThread(Thread_k::Body body,Thread_k** rucka, void* argument, uint64 timeSl, void* stackSpace) {
    //Thread_k* tred=new Thread_k(body, argument, timeSl, stackSpace);
    *rucka=tred;
    return 0;

}*/

int Thread_k::sleepThread(time_t time) {
    if(time>0) {
        runningThread->blokiraj();
        runningThread->uspavaj(time);
        Riscv::dodajUListu(runningThread);
        Thread_k::dispatch();
//        thread_dispatch();
        return 0;
    }
    else return -1;
}

void Thread_k::join() {
    if (this->parent!=runningThread) return;
    if(this->jeZavrsena()) return;
    isWaiting=true;
    Thread_k* old = runningThread;
    old->blokiraj();
    thread_dispatch();
}

