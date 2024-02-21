//
// Created by os on 5/10/23.
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

freeMem* MemoryAllocator::freeMemHead= nullptr;

bool MemoryAllocator::init=false;



void MemoryAllocator::_init() {
    freeMemHead=(freeMem*)HEAP_START_ADDR;
    freeMemHead->next= nullptr;
    freeMemHead->size=(size_t)(-sizeof(freeMem)+(uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR);
    MemoryAllocator::init=true;
}

void *MemoryAllocator::_mem_alloc(size_t s) {
    if (!init) {
        MemoryAllocator::_init();
    }
    s+=sizeof(freeMem);
    if (s%MEM_BLOCK_SIZE) {
        s=MEM_BLOCK_SIZE*(1+s/MEM_BLOCK_SIZE);
    }
    freeMem* iterator=freeMemHead;
    freeMem* prethodni=nullptr;
    while (iterator && iterator->size<s){
        prethodni=iterator;
        iterator=iterator->next;
    }
    if (iterator==nullptr) return nullptr;
    if (iterator->size>s+sizeof(freeMem)){
        if (prethodni) {
            prethodni->next = (freeMem *) ((char *) iterator + s);
            prethodni->next->size=iterator->size-s;
            prethodni->next->next=iterator->next;
        }
        else {
            freeMemHead=(freeMem*)((char*)iterator+s);
            freeMemHead->size=iterator->size-s;
            freeMemHead->next=iterator->next;
        }
        iterator->size=s;
        return (void*)((char*)iterator+sizeof(freeMem));
    }
    else {
        if(prethodni) prethodni->next=iterator->next;
        else freeMemHead=iterator->next;
        iterator->size=s;
        return (void*)((char*)iterator+sizeof(freeMem));

    }
    
}

int MemoryAllocator::_mem_free(void* addr) {
    if (!init) {
        MemoryAllocator::_init();
        return -1;
    }
    if ((uint64*)addr<(uint64*)HEAP_START_ADDR || (uint64*)addr>(uint64*)HEAP_END_ADDR) return -1;
    freeMem* novi=(freeMem*)((char*)addr-sizeof(freeMem));
    if (!freeMemHead) {
        novi->next=nullptr;
        freeMemHead=novi;
        return 0;
    }
    else if (addr<(void*)freeMemHead) {
        novi->next=freeMemHead;
        freeMemHead=novi;
        return 0;
    }
    else {
        freeMem* trenutni=freeMemHead;
        while (trenutni->next) {
            if (addr < (void *) (trenutni->next)) break;
            trenutni = trenutni->next;
        }
        if (trenutni->next) {
            novi->next=trenutni->next;
            trenutni->next=novi;
        }
        else {
            novi->next=nullptr;
            trenutni->next=novi;
        }
        if (novi->next) {
            if (novi->size+(char*)novi==(char*)(novi->next)) {
                novi->size+=novi->next->size;
                novi->next=novi->next->next;
            }
        }
        if (trenutni->next) {
            if (trenutni->size+(char*)trenutni==(char*)(trenutni->next)) {
                trenutni->size+=trenutni->next->size;
                trenutni->next=trenutni->next->next;
            }
        }
        return 0;
    }
}

