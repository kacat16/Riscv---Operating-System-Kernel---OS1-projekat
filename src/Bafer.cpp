//
// Created by os on 9/10/23.
//

#include "../h/Bafer.hpp"

Bafer::Bafer(int l): head(0), tail(0) {
    len=l;
    buf=(char*)MemoryAllocator::_mem_alloc(l*sizeof(char));
    Semaphore_k::createSemaphore(&zauzeto,0);
    Semaphore_k::createSemaphore(&slobodno,l);
}

void Bafer::putChar(char c) {
    slobodno->wait();
    buf[tail]=c;
    tail++;
    if (tail>=len) tail%=len;
    zauzeto->signal();

}

char Bafer::getChar() {
    zauzeto->wait();
    char c=buf[head];
    head++;
    if(head>=len) head%=len;
    slobodno->signal();
    return c;
}