//
// Created by os on 8/13/23.
//

#include "../h/syscall_cpp.hpp"
#include "../lib/hw.h"
#include "../lib/mem.h"
#include "../h/Thread_k.hpp"
#include "../h/Scheduler.hpp"

extern void* mem_alloc(size_t);
extern int mem_free(void*);


void* operator new (size_t size) {
    return mem_alloc(size);
}


void operator delete(void* ptr){

    mem_free(ptr);

}

void* operator new[](size_t size) {

    return mem_alloc(size);

}


void operator delete[](void* ptr){

    mem_free(ptr);

}

