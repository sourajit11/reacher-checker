# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p384/bignum_neg_p384.S"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 466 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p384/bignum_neg_p384.S" 2
# 12 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p384/bignum_neg_p384.S"
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/include/_internal_s2n_bignum.h" 1
# 13 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p384/bignum_neg_p384.S" 2

        .globl _bignum_neg_p384

        .text
        .balign 4
# 32 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/p384/bignum_neg_p384.S"
_bignum_neg_p384:



        ldp x4, x5, [x1]
        ldp x6, x7, [x1, #16]
        ldp x8, x9, [x1, #32]




        orr x2, x4, x5
        orr x3, x6, x7
        orr x2, x2, x3
        orr x3, x8, x9
        orr x2, x2, x3
        cmp x2, #0
        csetm x2, ne




        and x3, x2, #0x00000000ffffffff
        subs x4, x3, x4
        and x3, x2, #0xffffffff00000000
        sbcs x5, x3, x5
        and x3, x2, #0xfffffffffffffffe
        sbcs x6, x3, x6
        sbcs x7, x2, x7
        sbcs x8, x2, x8
        sbc x9, x2, x9



        stp x4, x5, [x0]
        stp x6, x7, [x0, #16]
        stp x8, x9, [x0, #32]



        ret
