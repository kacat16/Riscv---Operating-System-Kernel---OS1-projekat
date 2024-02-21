//
// Created by os on 8/28/23.
//

#ifndef PROJECT_BASE_V1_1_LISTA_HPP
#define PROJECT_BASE_V1_1_LISTA_HPP
#include "../h/MemoryAllocator.hpp"
#include "../lib/mem.h"



template<typename T>
class Lista {
public:
     struct Element{
        T* el;
        Element* next;
        Element(T* e, Element* n): el(e), next(n){}
    };
private:
    Element* head, *tail;
    int len;
public:

    Lista(): head(nullptr),tail(nullptr), len(0){}
    Lista(const Lista<T> &l) =delete;
    Lista<T> &operator=(const Lista<T> &l)=delete;

    int length() {
        return len;
    }
    void dodajNaPocetak(T* pod) {
        Element* novi=(Element*)MemoryAllocator::_mem_alloc(sizeof(Element));
        novi->el=pod;
        novi->next= head;
        head=novi;
        if (tail==nullptr) tail=novi;
        len++;
    }

    void dodajNaKraj(T* pod){
        Element* novi=(Element*)MemoryAllocator::_mem_alloc(sizeof(Element));
        novi->el=pod;
        novi->next= nullptr;
        if (head==nullptr){
            head=novi;
        }
        else{
            tail->next=novi;
        }
        tail=novi;
        len++;
    }

    int ukloniOdredjeni(T* element){
        Element* current=head;
        Element* prethodni=nullptr;
        int found=0;
        while (current!=nullptr){
            if (current->el==element) {
                if (prethodni==nullptr){
                    Element* old=head;
                    head=head->next;
                    MemoryAllocator::_mem_free(old);
                }
                else {
                    prethodni->next = current->next;
                    MemoryAllocator::_mem_free(current);
                }
                found=1;
                break;
            }
            prethodni=current;
            current=current->next;
        }
        if(found==1) len--;
        return found;
    }

    Element* dohvatiGlavu(){
        if (!head) return nullptr;
        return head;
    }


    Element* dohvatiRep(){
        return tail;
    }



    T* ukloniPrvi(){

        if (head==nullptr) return nullptr;
        Element* elem=head;
        head = head->next;
        if (head==nullptr){
            tail=nullptr;
        }
        T* podatak=elem->el;
        MemoryAllocator::_mem_free(elem);
        len--;
        return podatak;
    }

    T* ukloniPoslednji(){
        if (head == nullptr) return nullptr;
        if (head==tail) {
            Element* stari=head;
            head=tail=nullptr;
            T* podatak=stari->el;
            __mem_free(stari);
            return podatak;
        }
        Element* tren=head;
        while (tren->next!=tail){
            tren=tren->next;
        }
        tren->next=nullptr;
        Element* stari=tail;
        tail=tren;
        T* podatak=tail->el;
        __mem_free(stari);
        len--;
        return podatak;
    }

    T* dohvatiPrvi(){
        if (head== nullptr) return nullptr;
        else return head->el;
    }

    T* dohvatiPoslednji(){
        if (tail== nullptr) return nullptr;
        else return tail->el;
    }
};


#endif //PROJECT_BASE_V1_1_LISTA_HPP
