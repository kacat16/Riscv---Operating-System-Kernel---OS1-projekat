//
// Created by os on 8/28/23.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP
#include "../h/Lista.hpp"
class Thread_k;


class Scheduler {
    static Lista<Thread_k> listaSpremnih;
public:
    static Thread_k* get();
    static void put(Thread_k* nit);
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP
