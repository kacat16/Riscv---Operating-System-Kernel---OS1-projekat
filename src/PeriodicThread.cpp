//
// Created by os on 9/11/23.
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread_k.hpp"

void PeriodicThread::terminate(){
    myHandle->zavrsi(true);
    thread_dispatch();
}

PeriodicThread::PeriodicThread(time_t period) : period(period){

}

