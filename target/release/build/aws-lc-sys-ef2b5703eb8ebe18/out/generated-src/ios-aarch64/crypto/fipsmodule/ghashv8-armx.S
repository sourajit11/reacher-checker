# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/generated-src/ios-aarch64/crypto/fipsmodule/ghashv8-armx.S"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 466 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/generated-src/ios-aarch64/crypto/fipsmodule/ghashv8-armx.S" 2



# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/include/openssl/asm_base.h" 1
# 18 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/include/openssl/asm_base.h"
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/include/openssl/target.h" 1
# 19 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/include/openssl/asm_base.h" 2
# 41 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/include/openssl/asm_base.h"
# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/generated-include/openssl/boringssl_prefix_symbols_asm.h" 1
# 42 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/include/openssl/asm_base.h" 2
# 5 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/generated-src/ios-aarch64/crypto/fipsmodule/ghashv8-armx.S" 2


# 1 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/include/openssl/arm_arch.h" 1
# 8 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/generated-src/ios-aarch64/crypto/fipsmodule/ghashv8-armx.S" 2


.text

.globl _aws_lc_0_24_0_gcm_init_v8
.private_extern _aws_lc_0_24_0_gcm_init_v8

.align 4
_aws_lc_0_24_0_gcm_init_v8:

 ld1 {v17.2d},[x1]
 movi v19.16b,#0xe1
 shl v19.2d,v19.2d,#57
 ext v3.16b,v17.16b,v17.16b,#8
 ushr v18.2d,v19.2d,#63
 dup v17.4s,v17.s[1]
 ext v16.16b,v18.16b,v19.16b,#8
 ushr v18.2d,v3.2d,#63
 sshr v17.4s,v17.4s,#31
 and v18.16b,v18.16b,v16.16b
 shl v3.2d,v3.2d,#1
 ext v18.16b,v18.16b,v18.16b,#8
 and v16.16b,v16.16b,v17.16b
 orr v3.16b,v3.16b,v18.16b
 eor v20.16b,v3.16b,v16.16b
 ext v20.16b, v20.16b, v20.16b, #8
 st1 {v20.2d},[x0],#16


 ext v16.16b,v20.16b,v20.16b,#8
 pmull2 v0.1q,v20.2d,v20.2d
 eor v16.16b,v16.16b,v20.16b
 pmull v2.1q,v20.1d,v20.1d
 pmull v1.1q,v16.1d,v16.1d

 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v17.16b
 eor v1.16b,v1.16b,v18.16b
 pmull v18.1q,v0.1d,v19.1d

 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 eor v0.16b,v1.16b,v18.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v17.16b,v0.16b,v18.16b

 ext v22.16b,v17.16b,v17.16b,#8
 eor v17.16b,v17.16b,v22.16b
 ext v21.16b,v16.16b,v17.16b,#8
 st1 {v21.2d},[x0],#16
 st1 {v22.2d},[x0],#16


 pmull2 v0.1q,v20.2d, v22.2d
 pmull2 v5.1q,v22.2d,v22.2d
 pmull v2.1q,v20.1d, v22.1d
 pmull v7.1q,v22.1d,v22.1d
 pmull v1.1q,v16.1d,v17.1d
 pmull v6.1q,v17.1d,v17.1d

 ext v16.16b,v0.16b,v2.16b,#8
 ext v17.16b,v5.16b,v7.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v16.16b
 eor v4.16b,v5.16b,v7.16b
 eor v6.16b,v6.16b,v17.16b
 eor v1.16b,v1.16b,v18.16b
 pmull v18.1q,v0.1d,v19.1d
 eor v6.16b,v6.16b,v4.16b
 pmull v4.1q,v5.1d,v19.1d

 ins v2.d[0],v1.d[1]
 ins v7.d[0],v6.d[1]
 ins v1.d[1],v0.d[0]
 ins v6.d[1],v5.d[0]
 eor v0.16b,v1.16b,v18.16b
 eor v5.16b,v6.16b,v4.16b

 ext v18.16b,v0.16b,v0.16b,#8
 ext v4.16b,v5.16b,v5.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 pmull v5.1q,v5.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v4.16b,v4.16b,v7.16b

 eor v16.16b, v0.16b,v18.16b
 eor v17.16b, v5.16b,v4.16b

 ext v23.16b,v16.16b,v16.16b,#8
 ext v25.16b,v17.16b,v17.16b,#8
 ext v18.16b,v22.16b,v22.16b,#8
 eor v16.16b,v16.16b,v23.16b
 eor v17.16b,v17.16b,v25.16b
 eor v18.16b,v18.16b,v22.16b
 ext v24.16b,v16.16b,v17.16b,#8
 st1 {v23.2d,v24.2d,v25.2d},[x0],#48


 pmull2 v0.1q,v22.2d, v23.2d
 pmull2 v5.1q,v23.2d,v23.2d
 pmull v2.1q,v22.1d, v23.1d
 pmull v7.1q,v23.1d,v23.1d
 pmull v1.1q,v16.1d,v18.1d
 pmull v6.1q,v16.1d,v16.1d

 ext v16.16b,v0.16b,v2.16b,#8
 ext v17.16b,v5.16b,v7.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v16.16b
 eor v4.16b,v5.16b,v7.16b
 eor v6.16b,v6.16b,v17.16b
 eor v1.16b,v1.16b,v18.16b
 pmull v18.1q,v0.1d,v19.1d
 eor v6.16b,v6.16b,v4.16b
 pmull v4.1q,v5.1d,v19.1d

 ins v2.d[0],v1.d[1]
 ins v7.d[0],v6.d[1]
 ins v1.d[1],v0.d[0]
 ins v6.d[1],v5.d[0]
 eor v0.16b,v1.16b,v18.16b
 eor v5.16b,v6.16b,v4.16b

 ext v18.16b,v0.16b,v0.16b,#8
 ext v4.16b,v5.16b,v5.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 pmull v5.1q,v5.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v4.16b,v4.16b,v7.16b

 eor v16.16b,v0.16b,v18.16b
 eor v17.16b,v5.16b,v4.16b

 ext v26.16b, v16.16b, v16.16b,#8
 ext v28.16b, v17.16b, v17.16b,#8
 ext v18.16b,v22.16b,v22.16b,#8
 eor v16.16b,v16.16b,v26.16b
 eor v17.16b,v17.16b,v28.16b
 eor v18.16b,v18.16b,v22.16b
 ext v27.16b,v16.16b,v17.16b,#8
 st1 {v26.2d,v27.2d,v28.2d},[x0],#48


 pmull2 v0.1q,v22.2d,v26.2d
 pmull2 v5.1q,v22.2d,v28.2d
 pmull v2.1q,v22.1d,v26.1d
 pmull v7.1q,v22.1d,v28.1d
 pmull v1.1q,v16.1d,v18.1d
 pmull v6.1q,v17.1d,v18.1d

 ext v16.16b,v0.16b,v2.16b,#8
 ext v17.16b,v5.16b,v7.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v16.16b
 eor v4.16b,v5.16b,v7.16b
 eor v6.16b,v6.16b,v17.16b
 eor v1.16b,v1.16b,v18.16b
 pmull v18.1q,v0.1d,v19.1d
 eor v6.16b,v6.16b,v4.16b
 pmull v4.1q,v5.1d,v19.1d

 ins v2.d[0],v1.d[1]
 ins v7.d[0],v6.d[1]
 ins v1.d[1],v0.d[0]
 ins v6.d[1],v5.d[0]
 eor v0.16b,v1.16b,v18.16b
 eor v5.16b,v6.16b,v4.16b

 ext v18.16b,v0.16b,v0.16b,#8
 ext v4.16b,v5.16b,v5.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 pmull v5.1q,v5.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v4.16b,v4.16b,v7.16b
 eor v16.16b,v0.16b,v18.16b
 eor v17.16b,v5.16b,v4.16b

 ext v29.16b,v16.16b,v16.16b,#8
 ext v31.16b,v17.16b,v17.16b,#8
 eor v16.16b,v16.16b,v29.16b
 eor v17.16b,v17.16b,v31.16b
 ext v30.16b,v16.16b,v17.16b,#8
 st1 {v29.2d,v30.2d,v31.2d},[x0]
 ret

.globl _aws_lc_0_24_0_gcm_gmult_v8
.private_extern _aws_lc_0_24_0_gcm_gmult_v8

.align 4
_aws_lc_0_24_0_gcm_gmult_v8:

 ld1 {v17.2d},[x0]
 movi v19.16b,#0xe1
 ld1 {v20.2d,v21.2d},[x1]
 ext v20.16b,v20.16b,v20.16b,#8
 shl v19.2d,v19.2d,#57

 rev64 v17.16b,v17.16b

 ext v3.16b,v17.16b,v17.16b,#8

 pmull v0.1q,v20.1d,v3.1d
 eor v17.16b,v17.16b,v3.16b
 pmull2 v2.1q,v20.2d,v3.2d
 pmull v1.1q,v21.1d,v17.1d

 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v17.16b
 eor v1.16b,v1.16b,v18.16b
 pmull v18.1q,v0.1d,v19.1d

 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 eor v0.16b,v1.16b,v18.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v0.16b,v0.16b,v18.16b


 rev64 v0.16b,v0.16b

 ext v0.16b,v0.16b,v0.16b,#8
 st1 {v0.2d},[x0]

 ret

.globl _aws_lc_0_24_0_gcm_ghash_v8
.private_extern _aws_lc_0_24_0_gcm_ghash_v8

.align 4
_aws_lc_0_24_0_gcm_ghash_v8:

 cmp x3,#64
 b.hs Lgcm_ghash_v8_4x
 ld1 {v0.2d},[x0]





 subs x3,x3,#32
 mov x12,#16
# 265 "/Users/sourajitshantikari/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-sys-0.24.0/aws-lc/generated-src/ios-aarch64/crypto/fipsmodule/ghashv8-armx.S"
 ld1 {v20.2d,v21.2d},[x1],#32
 ext v20.16b,v20.16b,v20.16b,#8
 movi v19.16b,#0xe1
 ld1 {v22.2d},[x1]
 ext v22.16b,v22.16b,v22.16b,#8
 csel x12,xzr,x12,eq
 ext v0.16b,v0.16b,v0.16b,#8
 ld1 {v16.2d},[x2],#16
 shl v19.2d,v19.2d,#57

 rev64 v16.16b,v16.16b
 rev64 v0.16b,v0.16b

 ext v3.16b,v16.16b,v16.16b,#8
 b.lo Lodd_tail_v8
 ld1 {v17.2d},[x2],x12

 rev64 v17.16b,v17.16b

 ext v7.16b,v17.16b,v17.16b,#8
 eor v3.16b,v3.16b,v0.16b
 pmull v4.1q,v20.1d,v7.1d
 eor v17.16b,v17.16b,v7.16b
 pmull2 v6.1q,v20.2d,v7.2d
 b Loop_mod2x_v8

.align 4
Loop_mod2x_v8:
 ext v18.16b,v3.16b,v3.16b,#8
 subs x3,x3,#32
 pmull v0.1q,v22.1d,v3.1d
 csel x12,xzr,x12,lo

 pmull v5.1q,v21.1d,v17.1d
 eor v18.16b,v18.16b,v3.16b
 pmull2 v2.1q,v22.2d,v3.2d
 eor v0.16b,v0.16b,v4.16b
 pmull2 v1.1q,v21.2d,v18.2d
 ld1 {v16.2d},[x2],x12

 eor v2.16b,v2.16b,v6.16b
 csel x12,xzr,x12,eq
 eor v1.16b,v1.16b,v5.16b

 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v17.16b
 ld1 {v17.2d},[x2],x12

 rev64 v16.16b,v16.16b

 eor v1.16b,v1.16b,v18.16b
 pmull v18.1q,v0.1d,v19.1d


 rev64 v17.16b,v17.16b

 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 ext v7.16b,v17.16b,v17.16b,#8
 ext v3.16b,v16.16b,v16.16b,#8
 eor v0.16b,v1.16b,v18.16b
 pmull v4.1q,v20.1d,v7.1d
 eor v3.16b,v3.16b,v2.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 eor v3.16b,v3.16b,v18.16b
 eor v17.16b,v17.16b,v7.16b
 eor v3.16b,v3.16b,v0.16b
 pmull2 v6.1q,v20.2d,v7.2d
 b.hs Loop_mod2x_v8

 eor v2.16b,v2.16b,v18.16b
 ext v3.16b,v16.16b,v16.16b,#8
 adds x3,x3,#32
 eor v0.16b,v0.16b,v2.16b
 b.eq Ldone_v8
Lodd_tail_v8:
 ext v18.16b,v0.16b,v0.16b,#8
 eor v3.16b,v3.16b,v0.16b
 eor v17.16b,v16.16b,v18.16b

 pmull v0.1q,v20.1d,v3.1d
 eor v17.16b,v17.16b,v3.16b
 pmull2 v2.1q,v20.2d,v3.2d
 pmull v1.1q,v21.1d,v17.1d

 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v17.16b
 eor v1.16b,v1.16b,v18.16b
 pmull v18.1q,v0.1d,v19.1d

 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 eor v0.16b,v1.16b,v18.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v0.16b,v0.16b,v18.16b

Ldone_v8:

 rev64 v0.16b,v0.16b

 ext v0.16b,v0.16b,v0.16b,#8
 st1 {v0.2d},[x0]

 ret


.align 4
gcm_ghash_v8_4x:
Lgcm_ghash_v8_4x:
 ld1 {v0.2d},[x0]
 ld1 {v20.2d,v21.2d,v22.2d},[x1],#48
 ext v20.16b,v20.16b,v20.16b,#8
 ext v22.16b,v22.16b,v22.16b,#8
 movi v19.16b,#0xe1
 ld1 {v26.2d,v27.2d,v28.2d},[x1]
 ext v26.16b,v26.16b,v26.16b,#8
 ext v28.16b,v28.16b,v28.16b,#8
 shl v19.2d,v19.2d,#57

 ld1 {v4.2d,v5.2d,v6.2d,v7.2d},[x2],#64

 rev64 v0.16b,v0.16b
 rev64 v5.16b,v5.16b
 rev64 v6.16b,v6.16b
 rev64 v7.16b,v7.16b
 rev64 v4.16b,v4.16b

 ext v25.16b,v7.16b,v7.16b,#8
 ext v24.16b,v6.16b,v6.16b,#8
 ext v23.16b,v5.16b,v5.16b,#8

 pmull v29.1q,v20.1d,v25.1d
 eor v7.16b,v7.16b,v25.16b
 pmull2 v31.1q,v20.2d,v25.2d
 pmull v30.1q,v21.1d,v7.1d

 pmull v16.1q,v22.1d,v24.1d
 eor v6.16b,v6.16b,v24.16b
 pmull2 v24.1q,v22.2d,v24.2d
 pmull2 v6.1q,v21.2d,v6.2d

 eor v29.16b,v29.16b,v16.16b
 eor v31.16b,v31.16b,v24.16b
 eor v30.16b,v30.16b,v6.16b

 pmull v7.1q,v26.1d,v23.1d
 eor v5.16b,v5.16b,v23.16b
 pmull2 v23.1q,v26.2d,v23.2d
 pmull v5.1q,v27.1d,v5.1d

 eor v29.16b,v29.16b,v7.16b
 eor v31.16b,v31.16b,v23.16b
 eor v30.16b,v30.16b,v5.16b

 subs x3,x3,#128
 b.lo Ltail4x

 b Loop4x

.align 4
Loop4x:
 eor v16.16b,v4.16b,v0.16b
 ld1 {v4.2d,v5.2d,v6.2d,v7.2d},[x2],#64
 ext v3.16b,v16.16b,v16.16b,#8

 rev64 v5.16b,v5.16b
 rev64 v6.16b,v6.16b
 rev64 v7.16b,v7.16b
 rev64 v4.16b,v4.16b


 pmull v0.1q,v28.1d,v3.1d
 eor v16.16b,v16.16b,v3.16b
 pmull2 v2.1q,v28.2d,v3.2d
 ext v25.16b,v7.16b,v7.16b,#8
 pmull2 v1.1q,v27.2d,v16.2d

 eor v0.16b,v0.16b,v29.16b
 eor v2.16b,v2.16b,v31.16b
 ext v24.16b,v6.16b,v6.16b,#8
 eor v1.16b,v1.16b,v30.16b
 ext v23.16b,v5.16b,v5.16b,#8

 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 pmull v29.1q,v20.1d,v25.1d
 eor v7.16b,v7.16b,v25.16b
 eor v1.16b,v1.16b,v17.16b
 pmull2 v31.1q,v20.2d,v25.2d
 eor v1.16b,v1.16b,v18.16b
 pmull v30.1q,v21.1d,v7.1d

 pmull v18.1q,v0.1d,v19.1d
 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 pmull v16.1q,v22.1d,v24.1d
 eor v6.16b,v6.16b,v24.16b
 pmull2 v24.1q,v22.2d,v24.2d
 eor v0.16b,v1.16b,v18.16b
 pmull2 v6.1q,v21.2d,v6.2d

 eor v29.16b,v29.16b,v16.16b
 eor v31.16b,v31.16b,v24.16b
 eor v30.16b,v30.16b,v6.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 pmull v7.1q,v26.1d,v23.1d
 eor v5.16b,v5.16b,v23.16b
 eor v18.16b,v18.16b,v2.16b
 pmull2 v23.1q,v26.2d,v23.2d
 pmull v5.1q,v27.1d,v5.1d

 eor v0.16b,v0.16b,v18.16b
 eor v29.16b,v29.16b,v7.16b
 eor v31.16b,v31.16b,v23.16b
 ext v0.16b,v0.16b,v0.16b,#8
 eor v30.16b,v30.16b,v5.16b

 subs x3,x3,#64
 b.hs Loop4x

Ltail4x:
 eor v16.16b,v4.16b,v0.16b
 ext v3.16b,v16.16b,v16.16b,#8

 pmull v0.1q,v28.1d,v3.1d
 eor v16.16b,v16.16b,v3.16b
 pmull2 v2.1q,v28.2d,v3.2d
 pmull2 v1.1q,v27.2d,v16.2d

 eor v0.16b,v0.16b,v29.16b
 eor v2.16b,v2.16b,v31.16b
 eor v1.16b,v1.16b,v30.16b

 adds x3,x3,#64
 b.eq Ldone4x

 cmp x3,#32
 b.lo Lone
 b.eq Ltwo
Lthree:
 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v17.16b
 ld1 {v4.2d,v5.2d,v6.2d},[x2]
 eor v1.16b,v1.16b,v18.16b

 rev64 v5.16b,v5.16b
 rev64 v6.16b,v6.16b
 rev64 v4.16b,v4.16b


 pmull v18.1q,v0.1d,v19.1d
 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 ext v24.16b,v6.16b,v6.16b,#8
 ext v23.16b,v5.16b,v5.16b,#8
 eor v0.16b,v1.16b,v18.16b

 pmull v29.1q,v20.1d,v24.1d
 eor v6.16b,v6.16b,v24.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 pmull2 v31.1q,v20.2d,v24.2d
 pmull v30.1q,v21.1d,v6.1d
 eor v0.16b,v0.16b,v18.16b
 pmull v7.1q,v22.1d,v23.1d
 eor v5.16b,v5.16b,v23.16b
 ext v0.16b,v0.16b,v0.16b,#8

 pmull2 v23.1q,v22.2d,v23.2d
 eor v16.16b,v4.16b,v0.16b
 pmull2 v5.1q,v21.2d,v5.2d
 ext v3.16b,v16.16b,v16.16b,#8

 eor v29.16b,v29.16b,v7.16b
 eor v31.16b,v31.16b,v23.16b
 eor v30.16b,v30.16b,v5.16b

 pmull v0.1q,v26.1d,v3.1d
 eor v16.16b,v16.16b,v3.16b
 pmull2 v2.1q,v26.2d,v3.2d
 pmull v1.1q,v27.1d,v16.1d

 eor v0.16b,v0.16b,v29.16b
 eor v2.16b,v2.16b,v31.16b
 eor v1.16b,v1.16b,v30.16b
 b Ldone4x

.align 4
Ltwo:
 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v17.16b
 ld1 {v4.2d,v5.2d},[x2]
 eor v1.16b,v1.16b,v18.16b

 rev64 v5.16b,v5.16b
 rev64 v4.16b,v4.16b


 pmull v18.1q,v0.1d,v19.1d
 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 ext v23.16b,v5.16b,v5.16b,#8
 eor v0.16b,v1.16b,v18.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v0.16b,v0.16b,v18.16b
 ext v0.16b,v0.16b,v0.16b,#8

 pmull v29.1q,v20.1d,v23.1d
 eor v5.16b,v5.16b,v23.16b

 eor v16.16b,v4.16b,v0.16b
 ext v3.16b,v16.16b,v16.16b,#8

 pmull2 v31.1q,v20.2d,v23.2d
 pmull v30.1q,v21.1d,v5.1d

 pmull v0.1q,v22.1d,v3.1d
 eor v16.16b,v16.16b,v3.16b
 pmull2 v2.1q,v22.2d,v3.2d
 pmull2 v1.1q,v21.2d,v16.2d

 eor v0.16b,v0.16b,v29.16b
 eor v2.16b,v2.16b,v31.16b
 eor v1.16b,v1.16b,v30.16b
 b Ldone4x

.align 4
Lone:
 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v17.16b
 ld1 {v4.2d},[x2]
 eor v1.16b,v1.16b,v18.16b

 rev64 v4.16b,v4.16b


 pmull v18.1q,v0.1d,v19.1d
 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 eor v0.16b,v1.16b,v18.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v0.16b,v0.16b,v18.16b
 ext v0.16b,v0.16b,v0.16b,#8

 eor v16.16b,v4.16b,v0.16b
 ext v3.16b,v16.16b,v16.16b,#8

 pmull v0.1q,v20.1d,v3.1d
 eor v16.16b,v16.16b,v3.16b
 pmull2 v2.1q,v20.2d,v3.2d
 pmull v1.1q,v21.1d,v16.1d

Ldone4x:
 ext v17.16b,v0.16b,v2.16b,#8
 eor v18.16b,v0.16b,v2.16b
 eor v1.16b,v1.16b,v17.16b
 eor v1.16b,v1.16b,v18.16b

 pmull v18.1q,v0.1d,v19.1d
 ins v2.d[0],v1.d[1]
 ins v1.d[1],v0.d[0]
 eor v0.16b,v1.16b,v18.16b

 ext v18.16b,v0.16b,v0.16b,#8
 pmull v0.1q,v0.1d,v19.1d
 eor v18.16b,v18.16b,v2.16b
 eor v0.16b,v0.16b,v18.16b
 ext v0.16b,v0.16b,v0.16b,#8


 rev64 v0.16b,v0.16b

 st1 {v0.2d},[x0]

 ret

.byte 71,72,65,83,72,32,102,111,114,32,65,82,77,118,56,44,32,67,82,89,80,84,79,71,65,77,83,32,98,121,32,60,97,112,112,114,111,64,111,112,101,110,115,115,108,46,111,114,103,62,0
.align 2
.align 2
