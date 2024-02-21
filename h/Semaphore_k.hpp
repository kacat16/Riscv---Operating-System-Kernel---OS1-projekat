//
// Created by os on 9/6/23.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_K_HPP
#define PROJECT_BASE_V1_1_SEMAPHORE_K_HPP

#include "../h/Thread_k.hpp"
#include "../h/Lista.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"


class Semaphore_k{
    int value;
    Lista<Thread_k> blokirane;
    Semaphore_k(int init);
protected:
    void unblock();
    void block();
public:
    void *operator new(size_t size) { return __mem_alloc(size); }
    void operator delete(void *ptr) { __mem_free(ptr); }
    static void createSemaphore(Semaphore_k** sem, int init);
    void releaseSemaphore();
    int wait();
    int signal();
    int getValue() {
        return value;
    }
};



#endif //PROJECT_BASE_V1_1_SEMAPHORE_K_HPP
