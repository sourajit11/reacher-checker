# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p521/bignum_sub_p521.S"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 466 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p521/bignum_sub_p521.S" 2
# 13 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p521/bignum_sub_p521.S"
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/include/_internal_s2n_bignum.h" 1
# 14 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p521/bignum_sub_p521.S" 2

        .globl _bignum_sub_p521

        .text
        .balign 4
# 36 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p521/bignum_sub_p521.S"
_bignum_sub_p521:



        ldp x5, x6, [x1]
        ldp x4, x3, [x2]
        subs x5, x5, x4
        sbcs x6, x6, x3
        ldp x7, x8, [x1, #16]
        ldp x4, x3, [x2, #16]
        sbcs x7, x7, x4
        sbcs x8, x8, x3
        ldp x9, x10, [x1, #32]
        ldp x4, x3, [x2, #32]
        sbcs x9, x9, x4
        sbcs x10, x10, x3
        ldp x11, x12, [x1, #48]
        ldp x4, x3, [x2, #48]
        sbcs x11, x11, x4
        sbcs x12, x12, x3
        ldr x13, [x1, #64]
        ldr x4, [x2, #64]
        sbcs x13, x13, x4





        sbcs x5, x5, xzr
        sbcs x6, x6, xzr
        sbcs x7, x7, xzr
        sbcs x8, x8, xzr
        sbcs x9, x9, xzr
        sbcs x10, x10, xzr
        sbcs x11, x11, xzr
        sbcs x12, x12, xzr
        sbcs x13, x13, xzr
        and x13, x13, #0x1FF



        stp x5, x6, [x0]
        stp x7, x8, [x0, #16]
        stp x9, x10, [x0, #32]
        stp x11, x12, [x0, #48]
        str x13, [x0, #64]

        ret
