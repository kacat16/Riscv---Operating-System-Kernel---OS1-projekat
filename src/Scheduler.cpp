//
// Created by os on 8/28/23.
//

#include "../h/Scheduler.hpp"

Lista<Thread_k> Scheduler::listaSpremnih;

Thread_k* Scheduler::get(){
    return listaSpremnih.ukloniPrvi();
}

void Scheduler::put(Thread_k* nit){
    listaSpremnih.dodajNaKraj(nit);
}