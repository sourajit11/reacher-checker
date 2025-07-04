# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/fastmul/bignum_ksqr_16_32_neon.S"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 466 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/fastmul/bignum_ksqr_16_32_neon.S" 2
# 16 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/fastmul/bignum_ksqr_16_32_neon.S"
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/include/_internal_s2n_bignum.h" 1
# 17 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/fastmul/bignum_ksqr_16_32_neon.S" 2

        .globl _bignum_ksqr_16_32_neon

        .text
        .balign 4
# 34 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/third_party/s2n-bignum/arm/fastmul/bignum_ksqr_16_32_neon.S"
_bignum_ksqr_16_32_neon:



        stp x19, x20, [sp, #-16]!
        stp x21, x22, [sp, #-16]!
        stp x23, x24, [sp, #-16]!
        stp x25, x30, [sp, #-16]!



        mov x23, x0
        mov x24, x1
        mov x25, x2



        bl bignum_ksqr_16_32_neon_local_sqr_8_16



        ldp x10, x11, [x24]
        ldp x8, x9, [x24, #64]
        subs x10, x10, x8
        sbcs x11, x11, x9
        ldp x12, x13, [x24, #16]
        ldp x8, x9, [x24, #80]
        sbcs x12, x12, x8
        sbcs x13, x13, x9
        ldp x14, x15, [x24, #32]
        ldp x8, x9, [x24, #96]
        sbcs x14, x14, x8
        sbcs x15, x15, x9
        ldp x16, x17, [x24, #48]
        ldp x8, x9, [x24, #112]
        sbcs x16, x16, x8
        sbcs x17, x17, x9
        csetm x19, cc
        adds xzr, x19, x19
        eor x10, x10, x19
        adcs x10, x10, xzr
        eor x11, x11, x19
        adcs x11, x11, xzr
        stp x10, x11, [x25]
        eor x12, x12, x19
        adcs x12, x12, xzr
        eor x13, x13, x19
        adcs x13, x13, xzr
        stp x12, x13, [x25, #16]
        eor x14, x14, x19
        adcs x14, x14, xzr
        eor x15, x15, x19
        adcs x15, x15, xzr
        stp x14, x15, [x25, #32]
        eor x16, x16, x19
        adcs x16, x16, xzr
        eor x17, x17, x19
        adcs x17, x17, xzr
        stp x16, x17, [x25, #48]



        add x0, x23, #128
        add x1, x24, #64
        bl bignum_ksqr_16_32_neon_local_sqr_8_16




        ldp x10, x11, [x23, #128]
        ldp x12, x13, [x23, #64]
        adds x10, x10, x12
        adcs x11, x11, x13
        stp x10, x11, [x23, #128]

        ldp x10, x11, [x23, #128+16]
        ldp x12, x13, [x23, #64+16]
        adcs x10, x10, x12
        adcs x11, x11, x13
        stp x10, x11, [x23, #128+16]

        ldp x10, x11, [x23, #128+32]
        ldp x12, x13, [x23, #64+32]
        adcs x10, x10, x12
        adcs x11, x11, x13
        stp x10, x11, [x23, #128+32]

        ldp x10, x11, [x23, #128+48]
        ldp x12, x13, [x23, #64+48]
        adcs x10, x10, x12
        adcs x11, x11, x13
        stp x10, x11, [x23, #128+48]

        ldp x10, x11, [x23, #128+64]
        adcs x10, x10, xzr
        adcs x11, x11, xzr
        stp x10, x11, [x23, #128+64]

        ldp x10, x11, [x23, #128+80]
        adcs x10, x10, xzr
        adcs x11, x11, xzr
        stp x10, x11, [x23, #128+80]

        ldp x10, x11, [x23, #128+96]
        adcs x10, x10, xzr
        adcs x11, x11, xzr
        stp x10, x11, [x23, #128+96]

        ldp x10, x11, [x23, #128+112]
        adcs x10, x10, xzr
        adcs x11, x11, xzr
        stp x10, x11, [x23, #128+112]



        add x0, x25, #64
        mov x1, x25
        bl bignum_ksqr_16_32_neon_local_sqr_8_16





        ldp x0, x1, [x23]
        ldp x16, x17, [x23, #128]
        adds x0, x0, x16
        adcs x1, x1, x17
        ldp x2, x3, [x23, #16]
        ldp x16, x17, [x23, #144]
        adcs x2, x2, x16
        adcs x3, x3, x17
        ldp x4, x5, [x23, #32]
        ldp x16, x17, [x23, #160]
        adcs x4, x4, x16
        adcs x5, x5, x17
        ldp x6, x7, [x23, #48]
        ldp x16, x17, [x23, #176]
        adcs x6, x6, x16
        adcs x7, x7, x17
        ldp x8, x9, [x23, #128]
        ldp x16, x17, [x23, #192]
        adcs x8, x8, x16
        adcs x9, x9, x17
        ldp x10, x11, [x23, #144]
        ldp x16, x17, [x23, #208]
        adcs x10, x10, x16
        adcs x11, x11, x17
        ldp x12, x13, [x23, #160]
        ldp x16, x17, [x23, #224]
        adcs x12, x12, x16
        adcs x13, x13, x17
        ldp x14, x15, [x23, #176]
        ldp x16, x17, [x23, #240]
        adcs x14, x14, x16
        adcs x15, x15, x17
        cset x24, cs



        ldp x16, x17, [x25, #64]
        subs x0, x0, x16
        sbcs x1, x1, x17
        stp x0, x1, [x23, #64]
        ldp x16, x17, [x25, #80]
        sbcs x2, x2, x16
        sbcs x3, x3, x17
        stp x2, x3, [x23, #80]
        ldp x16, x17, [x25, #96]
        sbcs x4, x4, x16
        sbcs x5, x5, x17
        stp x4, x5, [x23, #96]
        ldp x16, x17, [x25, #112]
        sbcs x6, x6, x16
        sbcs x7, x7, x17
        stp x6, x7, [x23, #112]
        ldp x16, x17, [x25, #128]
        sbcs x8, x8, x16
        sbcs x9, x9, x17
        stp x8, x9, [x23, #128]
        ldp x16, x17, [x25, #144]
        sbcs x10, x10, x16
        sbcs x11, x11, x17
        stp x10, x11, [x23, #144]
        ldp x16, x17, [x25, #160]
        sbcs x12, x12, x16
        sbcs x13, x13, x17
        stp x12, x13, [x23, #160]
        ldp x16, x17, [x25, #176]
        sbcs x14, x14, x16
        sbcs x15, x15, x17
        stp x14, x15, [x23, #176]



        sbcs x24, x24, xzr
        csetm x25, cc




        ldp x10, x11, [x23, #192]
        adds x10, x10, x24
        adcs x11, x11, x25
        stp x10, x11, [x23, #192]
        ldp x10, x11, [x23, #208]
        adcs x10, x10, x25
        adcs x11, x11, x25
        stp x10, x11, [x23, #208]
        ldp x10, x11, [x23, #224]
        adcs x10, x10, x25
        adcs x11, x11, x25
        stp x10, x11, [x23, #224]
        ldp x10, x11, [x23, #240]
        adcs x10, x10, x25
        adcs x11, x11, x25
        stp x10, x11, [x23, #240]



        ldp x25, x30, [sp], #16
        ldp x23, x24, [sp], #16
        ldp x21, x22, [sp], #16
        ldp x19, x20, [sp], #16

        ret






bignum_ksqr_16_32_neon_local_sqr_8_16:

        ldp x2, x3, [x1]
ldr q20, [x1]
        ldp x4, x5, [x1, #16]
ldr q21, [x1, #16]
        ldp x6, x7, [x1, #32]
ldr q22, [x1, #32]
        ldp x8, x9, [x1, #48]
ldr q23, [x1, #48]
movi v30.2d, #0xffffffff

        mul x17, x2, x4
        mul x14, x3, x5



ext v1.16b, v20.16b, v20.16b, #8
        umulh x20, x2, x4
shrn v2.2s, v20.2d, #32
        subs x21, x2, x3
zip1 v0.2s, v20.2s, v1.2s
        cneg x21, x21, cc
umull v5.2d, v2.2s, v2.2s
        csetm x11, cc
umull v6.2d, v2.2s, v0.2s
        subs x12, x5, x4
umull v3.2d, v0.2s, v0.2s
        cneg x12, x12, cc
mov v1.16b, v6.16b
        mul x13, x21, x12
usra v1.2d, v3.2d, #32
        umulh x12, x21, x12
and v4.16b, v1.16b, v30.16b
        cinv x11, x11, cc
add v4.2d, v4.2d, v6.2d
        eor x13, x13, x11
usra v5.2d, v4.2d, #32
        eor x12, x12, x11
sli v3.2d, v4.2d, #32
        adds x19, x17, x20
usra v5.2d, v1.2d, #32
        adc x20, x20, xzr

  ext v1.16b, v21.16b, v21.16b, #8
        umulh x21, x3, x5
  shrn v2.2s, v21.2d, #32
        adds x19, x19, x14
  zip1 v0.2s, v21.2s, v1.2s
        adcs x20, x20, x21
        adc x21, x21, xzr
        adds x20, x20, x14
        adc x21, x21, xzr
        cmn x11, #0x1
        adcs x19, x19, x13
mov x13, v3.d[1]
        adcs x20, x20, x12
mov x14, v5.d[1]
        adc x21, x21, x11
mov x12, v3.d[0]
        adds x17, x17, x17
mov x11, v5.d[0]
        adcs x19, x19, x19
  umull v5.2d, v2.2s, v2.2s
        adcs x20, x20, x20
  umull v6.2d, v2.2s, v0.2s
        adcs x21, x21, x21
  umull v3.2d, v0.2s, v0.2s
        adc x10, xzr, xzr
  mov v1.16b, v6.16b

        mul x15, x2, x3
  usra v1.2d, v3.2d, #32
        umulh x16, x2, x3
  and v4.16b, v1.16b, v30.16b
        adds x11, x11, x15
  add v4.2d, v4.2d, v6.2d
        adcs x13, x13, x16
  usra v5.2d, v4.2d, #32
        adc x14, x14, xzr
  sli v3.2d, v4.2d, #32
        adds x11, x11, x15
  usra v5.2d, v1.2d, #32
        adcs x13, x13, x16
        adc x14, x14, xzr
        stp x12, x11, [x0]
  mov x11, v5.d[0]
        adds x17, x17, x13
  mov x13, v3.d[1]
        adcs x19, x19, x14
  mov x14, v5.d[1]
        adcs x20, x20, xzr
  mov x12, v3.d[0]
        adcs x21, x21, xzr

ext v1.16b, v22.16b, v22.16b, #8
        adc x10, x10, xzr
shrn v2.2s, v22.2d, #32
        stp x17, x19, [x0, #16]
zip1 v0.2s, v22.2s, v1.2s
        mul x15, x4, x5
umull v5.2d, v2.2s, v2.2s
        umulh x16, x4, x5
umull v6.2d, v2.2s, v0.2s
        adds x11, x11, x15
umull v3.2d, v0.2s, v0.2s
        adcs x13, x13, x16
mov v1.16b, v6.16b
        adc x14, x14, xzr
usra v1.2d, v3.2d, #32
        adds x11, x11, x15
and v4.16b, v1.16b, v30.16b
        adcs x13, x13, x16
add v4.2d, v4.2d, v6.2d
        adc x14, x14, xzr
usra v5.2d, v4.2d, #32
        adds x12, x12, x20
sli v3.2d, v4.2d, #32
        adcs x11, x11, x21
usra v5.2d, v1.2d, #32
        stp x12, x11, [x0, #32]

  ext v1.16b, v23.16b, v23.16b, #8
        adcs x13, x13, x10
  shrn v2.2s, v23.2d, #32
        adc x14, x14, xzr
  zip1 v0.2s, v23.2s, v1.2s
        stp x13, x14, [x0, #48]


        mul x17, x6, x8
  umull v16.2d, v2.2s, v2.2s
        mul x14, x7, x9
  umull v6.2d, v2.2s, v0.2s
        umulh x20, x6, x8
  umull v18.2d, v0.2s, v0.2s
        subs x21, x6, x7
        cneg x21, x21, cc
  mov v1.16b, v6.16b
        csetm x11, cc
        subs x12, x9, x8
        cneg x12, x12, cc
  usra v1.2d, v18.2d, #32
        mul x13, x21, x12
  and v4.16b, v1.16b, v30.16b
        umulh x12, x21, x12
  add v4.2d, v4.2d, v6.2d
        cinv x11, x11, cc
        eor x13, x13, x11
        eor x12, x12, x11
  usra v16.2d, v4.2d, #32
        adds x19, x17, x20
        adc x20, x20, xzr
  sli v18.2d, v4.2d, #32
        umulh x21, x7, x9
        adds x19, x19, x14
        adcs x20, x20, x21
        adc x21, x21, xzr
        adds x20, x20, x14
mov x14, v5.d[1]
        adc x21, x21, xzr
        cmn x11, #0x1
        adcs x19, x19, x13
mov x13, v3.d[1]
        adcs x20, x20, x12
mov x12, v3.d[0]
        adc x21, x21, x11
mov x11, v5.d[0]
        adds x17, x17, x17
        adcs x19, x19, x19
  usra v16.2d, v1.2d, #32
        adcs x20, x20, x20
        adcs x21, x21, x21
        adc x10, xzr, xzr

uzp2 v17.4s, v21.4s, v23.4s
        mul x15, x6, x7
xtn v4.2s, v23.2d
        umulh x16, x6, x7
  mov x22, v16.d[0]
        adds x11, x11, x15
        adcs x13, x13, x16
xtn v5.2s, v21.2d
        adc x14, x14, xzr
        adds x11, x11, x15
rev64 v1.4s, v21.4s
        adcs x13, x13, x16
        adc x14, x14, xzr
        stp x12, x11, [x0, #64]
        adds x17, x17, x13
  mov x13, v18.d[1]
        adcs x19, x19, x14
  mov x14, v16.d[1]
        adcs x20, x20, xzr
  mov x12, v18.d[0]
        adcs x21, x21, xzr
        adc x10, x10, xzr
umull v6.2d, v4.2s, v5.2s
        stp x17, x19, [x0, #80]
umull v7.2d, v4.2s, v17.2s
        mul x15, x8, x9
uzp2 v16.4s, v23.4s, v23.4s
        umulh x16, x8, x9
mul v0.4s, v1.4s, v23.4s
        adds x11, x22, x15
        adcs x13, x13, x16
usra v7.2d, v6.2d, #32
        adc x14, x14, xzr
        adds x11, x11, x15
umull v1.2d, v16.2s, v17.2s
        adcs x13, x13, x16
        adc x14, x14, xzr
uaddlp v0.2d, v0.4s
        adds x12, x12, x20
        adcs x11, x11, x21
and v2.16b, v7.16b, v30.16b
umlal v2.2d, v16.2s, v5.2s
shl v0.2d, v0.2d, #32
usra v1.2d, v7.2d, #32
umlal v0.2d, v4.2s, v5.2s
mov x16, v0.d[1]
mov x15, v0.d[0]
usra v1.2d, v2.2d, #32
mov x20, v1.d[0]
mov x21, v1.d[1]
        stp x12, x11, [x0, #96]
        adcs x13, x13, x10
        adc x14, x14, xzr
        stp x13, x14, [x0, #112]



        mul x10, x2, x6
        mul x14, x3, x7
        umulh x17, x2, x6
        adds x14, x14, x17
        umulh x17, x3, x7
        adcs x15, x15, x17
        adcs x16, x16, x20
        adc x17, x21, xzr
        adds x11, x14, x10
        adcs x14, x15, x14
        adcs x15, x16, x15
        adcs x16, x17, x16
        adc x17, xzr, x17
        adds x12, x14, x10
        adcs x13, x15, x11
        adcs x14, x16, x14
        adcs x15, x17, x15
        adcs x16, xzr, x16
        adc x17, xzr, x17
        subs x22, x4, x5
        cneg x22, x22, cc
        csetm x19, cc
        subs x20, x9, x8
        cneg x20, x20, cc
        mul x21, x22, x20
        umulh x20, x22, x20
        cinv x19, x19, cc
        cmn x19, #0x1
        eor x21, x21, x19
        adcs x15, x15, x21
        eor x20, x20, x19
        adcs x16, x16, x20
        adc x17, x17, x19
        subs x22, x2, x3
        cneg x22, x22, cc
        csetm x19, cc
        subs x20, x7, x6
        cneg x20, x20, cc
        mul x21, x22, x20
        umulh x20, x22, x20
        cinv x19, x19, cc
        cmn x19, #0x1
        eor x21, x21, x19
        adcs x11, x11, x21
        eor x20, x20, x19
        adcs x12, x12, x20
        adcs x13, x13, x19
        adcs x14, x14, x19
        adcs x15, x15, x19
        adcs x16, x16, x19
        adc x17, x17, x19
        subs x22, x3, x5
        cneg x22, x22, cc
        csetm x19, cc
        subs x20, x9, x7
        cneg x20, x20, cc
        mul x21, x22, x20
        umulh x20, x22, x20
        cinv x19, x19, cc
        cmn x19, #0x1
        eor x21, x21, x19
        adcs x14, x14, x21
        eor x20, x20, x19
        adcs x15, x15, x20
        adcs x16, x16, x19
        adc x17, x17, x19
        subs x22, x2, x4
        cneg x22, x22, cc
        csetm x19, cc
        subs x20, x8, x6
        cneg x20, x20, cc
        mul x21, x22, x20
        umulh x20, x22, x20
        cinv x19, x19, cc
        cmn x19, #0x1
        eor x21, x21, x19
        adcs x12, x12, x21
        eor x20, x20, x19
        adcs x13, x13, x20
        adcs x14, x14, x19
        adcs x15, x15, x19
        adcs x16, x16, x19
        adc x17, x17, x19
        subs x22, x2, x5
        cneg x22, x22, cc
        csetm x19, cc
        subs x20, x9, x6
        cneg x20, x20, cc
        mul x21, x22, x20
        umulh x20, x22, x20
        cinv x19, x19, cc
        cmn x19, #0x1
        eor x21, x21, x19
        adcs x13, x13, x21
        eor x20, x20, x19
        adcs x14, x14, x20
        adcs x15, x15, x19
        adcs x16, x16, x19
        adc x17, x17, x19
        subs x22, x3, x4
        cneg x22, x22, cc
        csetm x19, cc
        subs x20, x8, x7
        cneg x20, x20, cc
        mul x21, x22, x20
        umulh x20, x22, x20
        cinv x19, x19, cc
        cmn x19, #0x1
        eor x21, x21, x19
        adcs x13, x13, x21
        eor x20, x20, x19
        adcs x14, x14, x20
        adcs x15, x15, x19
        adcs x16, x16, x19
        adc x17, x17, x19
        adds x10, x10, x10
        adcs x11, x11, x11
        adcs x12, x12, x12
        adcs x13, x13, x13
        adcs x14, x14, x14
        adcs x15, x15, x15
        adcs x16, x16, x16
        adcs x17, x17, x17
        adc x19, xzr, xzr



        ldp x2, x3, [x0, #32]
        adds x10, x10, x2
        adcs x11, x11, x3
        stp x10, x11, [x0, #32]

        ldp x2, x3, [x0, #48]
        adcs x12, x12, x2
        adcs x13, x13, x3
        stp x12, x13, [x0, #48]

        ldp x2, x3, [x0, #64]
        adcs x14, x14, x2
        adcs x15, x15, x3
        stp x14, x15, [x0, #64]

        ldp x2, x3, [x0, #80]
        adcs x16, x16, x2
        adcs x17, x17, x3
        stp x16, x17, [x0, #80]

        ldp x2, x3, [x0, #96]
        adcs x2, x2, x19
        adcs x3, x3, xzr
        stp x2, x3, [x0, #96]

        ldp x2, x3, [x0, #112]
        adcs x2, x2, xzr
        adc x3, x3, xzr
        stp x2, x3, [x0, #112]

        ret
