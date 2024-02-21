//
// Created by os on 9/11/23.
//

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"


char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}