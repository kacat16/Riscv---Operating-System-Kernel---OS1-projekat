//
// Created by os on 9/11/23.
//

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
    mem_free(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}
