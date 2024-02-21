//
// Created by os on 5/10/23.
//

#include "../lib/hw.h"
#include "../h/Riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"

#include "../test/printing.hpp"

uint64 returnVal() {
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    return ret;
}
void* mem_alloc(size_t size) {
    uint64 numOfBlocks = (size % MEM_BLOCK_SIZE) ? (1 + size / MEM_BLOCK_SIZE) : size / MEM_BLOCK_SIZE;
    uint64 code = 0x01;
    __asm__ volatile("mv a1,%[numOfBlocks]"::[numOfBlocks]"r"(numOfBlocks));
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    void *ret = (void *) returnVal();
    return ret;
}

int mem_free(void* ptr) {
    uint64 code=0x02;
    __asm__ volatile("mv a1,%0"::"r"(ptr));
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    int ret=(int)returnVal();
    return ret;
}

int thread_create(thread_t* handle,void (*start_routine) (void*),void* arg) {
    uint64 code=0x11;
    //void* stack=__mem_alloc(8*DEFAULT_STACK_SIZE* sizeof(uint64));
    __asm__ volatile("mv a3,%[arg]"::[arg]"r"(arg));
    __asm__ volatile("mv a2,%[start_routine]"::[start_routine]"r"(start_routine));
    __asm__ volatile("mv a1,%[handle]"::[handle]"r"(handle));
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    __asm__ volatile("ecall");
    int ret=(int)returnVal();
    return ret;
}


int thread_exit(){
    uint64 code=0x12;
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    int ret=(int)returnVal();
    return ret;
}


void thread_dispatch() {
    uint64 code = 0x13;
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
}

void thread_join(thread_t handle) {
    uint64 code=0x11;
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("mv a1,%0"::"r"(handle));
    __asm__ volatile("ecall");
}

int sem_open(sem_t* handle, unsigned init){
    uint64 code=0x21;
    __asm__ volatile("mv a2,%0"::"r"(init));
    __asm__ volatile("mv a1,%0"::"r"(handle));
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    int ret=(int)returnVal();
    return ret;
}

int sem_close(sem_t handle) {
    uint64 code=0x22;
    __asm__ volatile("mv a1,%0"::"r"(handle));
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    int ret=(int)returnVal();
    return ret;
}

int sem_wait(sem_t id) {
    uint64 code=0x23;
    __asm__ volatile("mv a1,%0"::"r"(id));
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    int ret=(int)returnVal();
    return ret;
}

int sem_signal(sem_t id) {
    uint64 code=0x24;
    __asm__ volatile("mv a1,%0"::"r"(id));
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    int ret=(int)returnVal();
    return ret;
}

int time_sleep(time_t time) {
    uint64 code=0x31;
    __asm__ volatile("mv a1,%0"::"r"(time));
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    int ret=(int)returnVal();
    return ret;
}

char getc() {
    uint64 code=0x41;
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
    //printString("kaoo\n");
    char ret=(char)returnVal();
    return ret;
}

void putc(char c) {
    uint64 code=0x42;
    __asm__ volatile("mv a1,%0"::"r"(c));
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
}

