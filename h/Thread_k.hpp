//
// Created by os on 8/26/23.
//

#ifndef PROJECT_BASE_V1_1_THREAD_K_HPP
#define PROJECT_BASE_V1_1_THREAD_K_HPP
#include "../lib/hw.h"
#include "../h/Scheduler.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/workers.h"
#include "../h/UspavanaLista.hpp"

class Thread_k {

public:
    using Body = void(*)(void*);
private:
    friend class Riscv;
    friend class Semaphore_k;
    struct Context{
        uint64 stekP;
        uint64 ra;
        Context(uint64 sp, uint64 ra) : stekP(sp), ra(ra){};
        Context():stekP(0),ra(0){}
    };
    Body body;

    bool zavrsena;
    bool blokirana;
    uint64* stack;
    Context kontekst;
    void* argument;
    uint64 timeSlice;
    time_t uspavanaJos;
    Thread_k* parent;
    bool isWaiting;
    bool sys;

/*
    Thread_k(Body body,void* arg, uint64 ts, void* stackSpace): body(body), zavrsena(false), blokirana(false), stack(body!=nullptr?(uint64*)stackSpace:nullptr), kontekst({stack!=nullptr? (uint64)&stack[8*DEFAULT_STACK_SIZE]:0,(uint64)&threadWrapper}), argument(arg), timeSlice(ts),  parent(runningThread), isWaiting(false), sys(false) {

        if (body!=nullptr) {
            Scheduler::put(this);
        }

    }*/
    static void dispatch();

    static void switchContext(Context* old, Context* run);

    static void threadWrapper();


public:
    static Thread_k* runningThread;
    static uint64 counterOfTimeSlice;
    static void yield();
    void join();
    static int sleepThread(time_t time);
    ~Thread_k() {
        delete[] stack;
    }

    static int _createThread(Body body, Thread_k** rucka, void* arg, uint64 timeSl, void* stackSpace);
    //static int __createThread(Body body, Thread_k** rucka, void* arg, uint64 timeSl, void* stackSpace);

    bool sistemskaNit() const {
        return sys;
    }

    void postaviSistemsku() {
        sys=true;
    }

    void umanjiUspavanost() {
        uspavanaJos--;
    }

    void uspavaj(time_t vreme) {
        uspavanaJos=vreme;
    }

    time_t uspavana(){
        return uspavanaJos;
    }

    Thread_k* getParent() {
        return parent;
    }

    bool isParentWaiting() const {
        return isWaiting;
    }

    void resetParentWaiting() {
        isWaiting=false;
    }

    uint64 dohvatiTimeSlice() const {
        return timeSlice;
    }
    void zavrsi(bool value) {
        zavrsena=value;
    }

    bool jeZavrsena() const {
        return zavrsena;
    }

    void blokiraj(){
        blokirana=true;
    }

    void odblokiraj(){
        blokirana=false;
    }

    bool jeBlokirana() const {
        return blokirana;
    }


};


#endif //PROJECT_BASE_V1_1_THREAD_K_HPP
