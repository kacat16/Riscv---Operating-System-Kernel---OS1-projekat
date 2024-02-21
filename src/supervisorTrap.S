.extern _ZN5Riscv25handleSupervisorTrapBasicEv
.extern _ZN5Riscv25handleSupervisorTrapTimerEv
.extern _ZN5Riscv27handleSupervisorTrapConsoleEv

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    j supervisorTrapBasic
    j supervisorTrapTimer
    mv s11,s11
    mv s11,s11
    mv s11,s11
    mv s11,s11
    mv s11,s11
    mv s11,s11
    mv s11,s11
    j supervisorTrapConsole

supervisorTrapBasic:
    addi sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index,\index * 8(sp)
    .endr



    call _ZN5Riscv25handleSupervisorTrapBasicEv



    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index,\index * 8(sp)
     .endr
     add sp,sp,256

     sret


supervisorTrapTimer:
    addi sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index,\index * 8(sp)
    .endr



    call _ZN5Riscv25handleSupervisorTrapTimerEv



    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index,\index * 8(sp)
     .endr
     add sp,sp,256

     sret


supervisorTrapConsole:
     addi sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index,\index * 8(sp)
    .endr



    call _ZN5Riscv27handleSupervisorTrapConsoleEv



    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index,\index * 8(sp)
     .endr
     add sp,sp,256

     sret