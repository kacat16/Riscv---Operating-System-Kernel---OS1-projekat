
// Created by os on 8/7/23.
//

#ifndef PROJECT_BASE_V1_1_RISCV_HPP
#define PROJECT_BASE_V1_1_RISCV_HPP

#include "../lib/hw.h"
#include "../h/Thread_k.hpp"
#include "../h/Konzola.hpp"




struct Element {
    Thread_k *nit;
    Element *next;

    Element(Thread_k *e, Element *n) : nit(e), next(n) {}
};
class UspavanaLista;
class Riscv {
public:
    static void pushRegisters();
    static void popRegisters();
    static void popSppSpie();
    static uint64 sstatus_r();

    static void sstatus_w(uint64 sstatus);

    enum MaskSStatus: uint64 {
        SSTATUS_SIE=(1UL<<1),
        SSTATUS_SPIE=(1UL<<5),
        SSTATUS_SPP=(1UL<<8),
    };

    static void sstatus_ms(uint64 maska);

    static void sstatus_mc(uint64 maska);

    static uint64 stvec_r();

    static void stvec_w(uint64 stvec);

    static uint64 scause_r();

    static void scause_w(uint64 scause);

    static uint64 sepc_r();

    static void sepc_w(uint64 sepc);

    static uint64 sip_r();

    static void sip_w(uint64 sip);

    enum MaskSip: uint64 {
        SIP_SSIP=(1UL<<1),
        SIP_STIP=(1UL<<5),
        SIP_SEIP=(1UL<<9),
    };

    static void sip_ms(uint64 maska);

    static void sip_mc(uint64 maska);

    static uint64 stval_r();

    static void stval_w(uint64 scause);

    static void supervisorTrap();

    static void dodajUListu(Thread_k* thr);

private:
    static UspavanaLista uspavaneNiti;

    static void handleSupervisorTrapBasic();

    static void handleSupervisorTrapTimer();

    static void handleSupervisorTrapConsole();

    static uint64 syscall(uint64* params);

    static void ucitajParametre(uint64* params);

    static void upisi_u_a0(uint64 a0);



};

inline uint64 Riscv::sstatus_r() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus],sstatus":[sstatus] "=r"(sstatus));
    return sstatus;
}

inline uint64 Riscv::stvec_r() {
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec],stvec":[stvec] "=r"(stvec));
    return stvec;
}

inline uint64 Riscv::scause_r() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause],scause":[scause] "=r"(scause));
    return scause;
}

inline uint64 Riscv::sepc_r() {
    uint64 volatile sepc;
    __asm__ volatile("csrr %[sepc],sepc":[sepc] "=r"(sepc));
    return sepc;
}

inline uint64 Riscv::stval_r() {
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval],stval":[stval] "=r"(stval));
    return stval;
}

inline void Riscv::upisi_u_a0(uint64 a0){
    __asm volatile("mv a0, %[a0]"::[a0]"r"(a0));
    __asm__ volatile ("sd a0, 10*8(s0)");
}

inline uint64 Riscv::sip_r() {
    uint64 volatile sip;
    __asm__ volatile("csrr %[sip], sip":[sip] "=r"(sip));
    return sip;
}

inline void Riscv::stvec_w(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
}

inline void Riscv::scause_w(uint64 scause) {
    __asm__ volatile("csrw scause, %[scause]"::[scause] "r"(scause));
}

inline void Riscv::sepc_w(uint64 sepc) {
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc] "r"(sepc));
}

inline void Riscv::stval_w(uint64 stval) {
    __asm__ volatile("csrw stval, %[stval]"::[stval] "r"(stval));
}

inline void Riscv::sip_w(uint64 sip) {
    __asm__ volatile("csrw sip, %[sip]"::[sip] "r"(sip));
}

inline void Riscv::sstatus_w(uint64 sstatus) {
    __asm__ volatile("csrw sstatus,%[sstatus]"::[sstatus] "r"(sstatus));
}

inline void Riscv::sstatus_ms(uint64 maska) {
    __asm__ volatile("csrs sstatus,%[maska]"::[maska] "r"(maska));
}

inline void Riscv::sstatus_mc(uint64 maska) {
    __asm__ volatile("csrc sstatus,%[maska]"::[maska] "r"(maska));
}

inline void Riscv::sip_ms(uint64 maska) {
    __asm__ volatile("csrs sip,%[maska]"::[maska] "r"(maska));
}

inline void Riscv::sip_mc(uint64 maska) {
    __asm__ volatile("csrc sip,%[maska]"::[maska] "r"(maska));
}

inline void Riscv::ucitajParametre(uint64 *params) {
    uint64 volatile pomocna;
    __asm__ volatile("mv %0,a0":"=r"(pomocna));
    params[0]=pomocna;
    __asm__ volatile("mv %0,a1":"=r"(pomocna));
    params[1]=pomocna;
    __asm__ volatile("mv %0,a2":"=r"(pomocna));
    params[2]=pomocna;
    __asm__ volatile("mv %0,a3":"=r"(pomocna));
    params[3]=pomocna;
    __asm__ volatile("mv %0,a4":"=r"(pomocna));
    params[4]=pomocna;

}



#endif //PROJECT_BASE_V1_1_RISCV_HPP
