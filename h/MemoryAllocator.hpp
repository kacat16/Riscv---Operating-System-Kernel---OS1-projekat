//
// Created by os on 5/10/23.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#include "../lib/hw.h"

typedef struct FreeMem{
    struct FreeMem* next;
    size_t size;
}freeMem;


class MemoryAllocator {

    static freeMem* freeMemHead;

    MemoryAllocator(){}
    //static MemoryAllocator* instanca;
    static bool init;


public:
    MemoryAllocator(const MemoryAllocator& ma)=delete;
    //static MemoryAllocator* get();
    static void* _mem_alloc(size_t s);
    static int _mem_free(void*);
    static void _init();

};

#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
