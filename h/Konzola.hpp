//
// Created by os on 9/9/23.
//

#ifndef PROJECT_BASE_V1_1_CONSOLE_HPP
#define PROJECT_BASE_V1_1_CONSOLE_HPP
#include "../h/Semaphore_k.hpp"
#include "../h/Bafer.hpp"
class Bafer;
class Konzola {
    void* operator new (size_t size) {
        return MemoryAllocator::_mem_alloc(size);
    }


    void operator delete(void* ptr){

        MemoryAllocator::_mem_free(ptr);

    }

    static Bafer* in;
    static Bafer* out;
public:
    static char getCharIn();
    static char getCharOut();

    static void putCharIn(char c);
    static void putCharOut(char c);

    static void init();
};


#endif //PROJECT_BASE_V1_1_CONSOLE_HPP
