//
// Created by os on 9/9/23.
//

#ifndef PROJECT_BASE_V1_1_USPAVANALISTA_HPP
#define PROJECT_BASE_V1_1_USPAVANALISTA_HPP
#include "../h/Scheduler.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/Thread_k.hpp"
#include "../h/MemoryAllocator.hpp"

class UspavanaLista {
public:
    struct Element {
        Thread_k *nit;
        Element *next;

        Element(Thread_k *e, Element *n) : nit(e), next(n) {}
    };

private:
    Element *head, *tail;
public:
    UspavanaLista() : head(nullptr), tail(nullptr) {}

    UspavanaLista(const UspavanaLista &l) = delete;

    UspavanaLista &operator=(const UspavanaLista &l) = delete;

    void probudiNiti();

    void dodajNit(Thread_k* t);
};
#endif //PROJECT_BASE_V1_1_USPAVANALISTA_HPP
