//
// Created by os on 9/10/23.
//

#ifndef PROJECT_BASE_V1_1_BAFER_HPP
#define PROJECT_BASE_V1_1_BAFER_HPP

#include "../h/Semaphore_k.hpp"
class Semaphore_k;
class Bafer{

    char* buf;
    uint64 head=0,tail=0,len=0;
    Semaphore_k* zauzeto,*slobodno;

public:
    void* operator new (size_t size) {
        return MemoryAllocator::_mem_alloc(size);
    }


    void operator delete(void* ptr){

        MemoryAllocator::_mem_free(ptr);

    }
    char getChar();
    void putChar(char c);
    Bafer(int l);


};


#endif //PROJECT_BASE_V1_1_BAFER_HPP
