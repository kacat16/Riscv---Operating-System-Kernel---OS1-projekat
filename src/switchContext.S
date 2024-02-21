.align 4
.global _ZN8Thread_k13switchContextEPNS_7ContextES1_
.type _ZN8Thread_k13switchContextEPNS_7ContextES1_, @function
_ZN8Thread_k13switchContextEPNS_7ContextES1_:

    sd sp, 0 * 8(a0)
    sd ra, 1 * 8(a0)

    ld sp, 0 * 8(a1)
    ld ra, 1 * 8(a1)

    ret