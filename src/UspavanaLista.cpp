//
// Created by os on 9/9/23.
//

#include "../h/UspavanaLista.hpp"

void UspavanaLista::probudiNiti() {
    if (head== nullptr) return;
    Element* curr=head;
    Element* pret=nullptr;
    while (curr!=nullptr){
        (curr->nit)->umanjiUspavanost();
        if(curr->nit->uspavana()==0) {
            curr->nit->odblokiraj();
            Scheduler::put(curr->nit);
            if (pret) {
                pret->next=curr->next;
                if (curr==tail) {
                    tail=pret;
                }
            }
            else {
                head=head->next;
                if (head== nullptr) tail= nullptr;
            }
            Element* el=curr;
            curr=curr->next;
            MemoryAllocator::_mem_free(el);
        }
        else{
            pret=curr;
            curr=curr->next;
        }
    }
}

void UspavanaLista::dodajNit(Thread_k* t) {
    Element* novi= (Element*)MemoryAllocator::_mem_alloc(sizeof(Element));
    novi->nit=t;
    novi->next= nullptr;
    if (head==nullptr){
        head=novi;
    }
    else{
        tail->next=novi;
    }
    tail=novi;
}
