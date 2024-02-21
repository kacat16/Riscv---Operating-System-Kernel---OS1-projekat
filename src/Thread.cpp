//
// Created by os on 9/11/23.
//

#include "../h/syscall_cpp.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread_k.hpp"


int Thread::start() {
    if (myHandle==nullptr) {
        thread_create(&myHandle,body,arg);
        return 0;
    }
    else return -1;
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::trwrap(void* tr) {
    ((Thread*)tr)->run();
}

Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg){
    myHandle=nullptr;
}

Thread::~Thread() {
    myHandle->zavrsi(true);
    mem_free(myHandle);
    //thread_exit();
}

Thread::Thread() : Thread(&trwrap,this){

}
