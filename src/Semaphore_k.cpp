//
// Created by os on 9/6/23.
//

#include "../h/Semaphore_k.hpp"
#include "../h/Thread_k.hpp"
#include "../h/Lista.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

void Semaphore_k::unblock() {
    Thread_k* nit=blokirane.ukloniPrvi();
    nit->odblokiraj();
    Scheduler::put(nit);
}

void Semaphore_k::block() {
    Thread_k::runningThread->blokiraj();
    blokirane.dodajNaKraj(Thread_k::runningThread);
    Thread_k::dispatch();//bio siskol pre ovoga
}

Semaphore_k::Semaphore_k(int init) {
    value=init;
}

void Semaphore_k::createSemaphore(Semaphore_k **sem, int init) {
    Semaphore_k* newSem=new Semaphore_k(init);
    *sem=newSem;
}

int Semaphore_k::wait() {
    if (--(this->value)<0) {
        block();
    }
    return 0;
}

int Semaphore_k::signal() {
    if (++(this->value)<=0) {
        unblock();
    }
    return 0;

}

void Semaphore_k::releaseSemaphore() {
    //printInt(blokirane.length());
    while (blokirane.length()) {
        printInt(blokirane.length());
        unblock();
    }
}



