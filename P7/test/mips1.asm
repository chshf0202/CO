add   $gp, $zero, $zero
 add   $sp, $zero, $zero
 add   $fp, $zero, $zero
 add   $ra, $zero, $zero
 ori   $gp, $gp, 4
 nop   
 nop   
 nop   
 lui   $at, 0xffff
 ori   $at, $at, 0xaa99
 lui   $v0, 0
 ori   $v0, $v0, 0x787f
 nop   
 nop   
 nop   
 add   $k0, $at, $v0
 nop   
 nop   
 nop   
 sw    $k0, ($sp)
 add   $sp, $sp, $gp
 b     0x305c
 nop   
 lui   $a0, 0xffff
 ori   $a0, $a0, 0x85dc
 lui   $a1, 0xffff
 ori   $a1, $a1, 0x83d3
 nop   
 nop   
 nop   
 add   $zero, $a0, $a1
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3098
 nop   
 lui   $s0, 0xffff
 ori   $s0, $s0, 0xd9ef
 lui   $s1, 0xffff
 ori   $s1, $s1, 0x8dcd
 nop   
 nop   
 nop   
 sub   $k1, $s0, $s1
 nop   
 nop   
 nop   
 sw    $k1, ($sp)
 add   $sp, $sp, $gp
 b     0x30d4
 nop   
 lui   $v0, 0xffff
 ori   $v0, $v0, 0xf12e
 nop   
 nop   
 nop   
 ori   $s3, $v0, 0xf0ad
 nop   
 nop   
 nop   
 sw    $s3, ($sp)
 add   $sp, $sp, $gp
 b     0x3108
 nop   
 lui   $k0, 0xffff
 ori   $k0, $k0, 0xe2b7
 nop   
 nop   
 nop   
 ori   $zero, $k0, 0xd416
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x313c
 nop   
 lui   $t6, 0xffff
 ori   $t6, $t6, 0xe504
 nop   
 nop   
 nop   
 ori   $t7, $zero, 0x85d
 nop   
 nop   
 nop   
 lb    $t6, -0x845($t7)
 nop   
 nop   
 nop   
 sw    $t6, ($sp)
 add   $sp, $sp, $gp
 sw    $t7, ($sp)
 add   $sp, $sp, $gp
 b     0x3188
 nop   
 lui   $s3, 0xffff
 ori   $s3, $s3, 0xd257
 nop   
 nop   
 nop   
 ori   $t0, $zero, 0x7572
 neg   $t0, $t0
 nop   
 nop   
 nop   
 lb    $s3, 0x75af($t0)
 nop   
 nop   
 nop   
 sw    $s3, ($sp)
 add   $sp, $sp, $gp
 sw    $t0, ($sp)
 add   $sp, $sp, $gp
 b     0x31d8
 nop   
 lui   $s7, 0xffff
 ori   $s7, $s7, 0x8395
 nop   
 nop   
 nop   
 ori   $t8, $zero, 0x35c9
 neg   $t8, $t8
 nop   
 nop   
 nop   
 lb    $s7, 0x35e7($t8)
 nop   
 nop   
 nop   
 sw    $s7, ($sp)
 add   $sp, $sp, $gp
 sw    $t8, ($sp)
 add   $sp, $sp, $gp
 b     0x3228
 nop   
 lui   $t4, 0
 ori   $t4, $t4, 0x1733
 nop   
 nop   
 nop   
 ori   $a0, $zero, 0x5f49
 nop   
 nop   
 nop   
 lb    $t4, -0x5f06($a0)
 nop   
 nop   
 nop   
 sw    $t4, ($sp)
 add   $sp, $sp, $gp
 sw    $a0, ($sp)
 add   $sp, $sp, $gp
 b     0x3274
 nop   
 lui   $k1, 0xffff
 ori   $k1, $k1, 0x98f4
 nop   
 nop   
 nop   
 ori   $t3, $zero, 0x4038
 neg   $t3, $t3
 nop   
 nop   
 nop   
 lb    $k1, 0x4054($t3)
 nop   
 nop   
 nop   
 sw    $k1, ($sp)
 add   $sp, $sp, $gp
 sw    $t3, ($sp)
 add   $sp, $sp, $gp
 b     0x32c4
 nop   
 lui   $v0, 0
 ori   $v0, $v0, 0x2e29
 nop   
 nop   
 nop   
 ori   $s5, $zero, 0x56c7
 nop   
 nop   
 nop   
 lh    $v0, -0x5671($s5)
 nop   
 nop   
 nop   
 sw    $v0, ($sp)
 add   $sp, $sp, $gp
 sw    $s5, ($sp)
 add   $sp, $sp, $gp
 b     0x3310
 nop   
 lui   $s6, 0xffff
 ori   $s6, $s6, 0xdb7e
 nop   
 nop   
 nop   
 ori   $a1, $zero, 0x2c9
 neg   $a1, $a1
 nop   
 nop   
 nop   
 sb    $s6, 0x2f5($a1)
 nop   
 nop   
 nop   
 sw    $s6, ($sp)
 add   $sp, $sp, $gp
 sw    $a1, ($sp)
 add   $sp, $sp, $gp
 b     0x3360
 nop   
 lui   $t9, 0
 ori   $t9, $t9, 0x1bac
 nop   
 nop   
 nop   
 ori   $s1, $zero, 0x6c61
 neg   $s1, $s1
 nop   
 nop   
 nop   
 sb    $t9, 0x6cda($s1)
 nop   
 nop   
 nop   
 sw    $t9, ($sp)
 add   $sp, $sp, $gp
 sw    $s1, ($sp)
 add   $sp, $sp, $gp
 b     0x33b0
 nop   
 lui   $a3, 0
 ori   $a3, $a3, 0x2290
 nop   
 nop   
 nop   
 ori   $v1, $zero, 0x1941
 nop   
 nop   
 nop   
 sb    $a3, -0x189b($v1)
 nop   
 nop   
 nop   
 sw    $a3, ($sp)
 add   $sp, $sp, $gp
 sw    $v1, ($sp)
 add   $sp, $sp, $gp
 b     0x33fc
 nop   
 lui   $s1, 0
 ori   $s1, $s1, 0xf93
 nop   
 nop   
 nop   
 ori   $s4, $zero, 0x12da
 nop   
 nop   
 nop   
 sb    $s1, -0x1233($s4)
 nop   
 nop   
 nop   
 sw    $s1, ($sp)
 add   $sp, $sp, $gp
 sw    $s4, ($sp)
 add   $sp, $sp, $gp
 b     0x3448
 nop   
 lui   $t2, 0
 ori   $t2, $t2, 0x4cb4
 nop   
 nop   
 nop   
 ori   $t5, $zero, 0xdf3
 nop   
 nop   
 nop   
 sh    $t2, -0xd77($t5)
 nop   
 nop   
 nop   
 sw    $t2, ($sp)
 add   $sp, $sp, $gp
 sw    $t5, ($sp)
 add   $sp, $sp, $gp
 b     0x3494
 nop   
 lui   $t1, 0
 ori   $t1, $t1, 0x64ed
 nop   
 nop   
 nop   
 ori   $t3, $zero, 0x375c
 nop   
 nop   
 nop   
 sh    $t1, -0x3692($t3)
 nop   
 nop   
 nop   
 sw    $t1, ($sp)
 add   $sp, $sp, $gp
 sw    $t3, ($sp)
 add   $sp, $sp, $gp
 b     0x34e0
 nop   
 lui   $a1, 0
 ori   $a1, $a1, 0x2a25
 lui   $s6, 0xffff
 ori   $s6, $s6, 0x9df5
 nop   
 nop   
 nop   
 add   $t7, $a1, $s6
 nop   
 nop   
 nop   
 sw    $t7, ($sp)
 add   $sp, $sp, $gp
 b     0x351c
 nop   
 lui   $s3, 0
 ori   $s3, $s3, 0x5ab2
 lui   $a0, 0
 ori   $a0, $a0, 0x5fe4
 nop   
 nop   
 nop   
 add   $zero, $s3, $a0
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3558
 nop   
 lui   $v1, 0
 ori   $v1, $v1, 0x595
 lui   $s2, 0xffff
 ori   $s2, $s2, 0xd204
 nop   
 nop   
 nop   
 sub   $v0, $v1, $s2
 nop   
 nop   
 nop   
 sw    $v0, ($sp)
 add   $sp, $sp, $gp
 b     0x3594
 nop   
 lui   $t7, 0
 ori   $t7, $t7, 0x7ce
 lui   $a2, 0
 ori   $a2, $a2, 0x6c89
 nop   
 nop   
 nop   
 sub   $zero, $t7, $a2
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x35d0
 nop   
 lui   $s5, 0xffff
 ori   $s5, $s5, 0x8675
 lui   $t0, 0xffff
 ori   $t0, $t0, 0xaa15
 nop   
 nop   
 nop   
 andi  $at, $t0, 1
 nop   
 nop   
 nop   
 sw    $at, ($sp)
 add   $sp, $sp, $gp
 b     0x360c
 nop   
 lui   $s4, 0xffff
 ori   $s4, $s4, 0x8b2c
 lui   $t2, 0xffff
 ori   $t2, $t2, 0x952b
 nop   
 nop   
 nop   
 andi  $zero, $t2, 0x1c
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3648
 nop   
 lui   $t8, 0xffff
 ori   $t8, $t8, 0xc528
 lui   $k1, 0xffff
 ori   $k1, $k1, 0x8a3e
 nop   
 nop   
 nop   
 andi  $v1, $k1, 0x19
 nop   
 nop   
 nop   
 sw    $v1, ($sp)
 add   $sp, $sp, $gp
 b     0x3684
 nop   
 lui   $s5, 0
 ori   $s5, $s5, 0xb42
 lui   $s6, 0
 ori   $s6, $s6, 0x656
 nop   
 nop   
 nop   
 or    $zero, $s5, $s6
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x36c0
 nop   
 lui   $k1, 0
 ori   $k1, $k1, 0x1c84
 lui   $s4, 0
 ori   $s4, $s4, 0x1652
 nop   
 nop   
 nop   
 and   $s7, $k1, $s4
 nop   
 nop   
 nop   
 sw    $s7, ($sp)
 add   $sp, $sp, $gp
 b     0x36fc
 nop   
 lui   $a1, 0xffff
 ori   $a1, $a1, 0x91d1
 lui   $a3, 0
 ori   $a3, $a3, 0x14a2
 nop   
 nop   
 nop   
 and   $zero, $a1, $a3
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3738
 nop   
 lui   $a2, 0
 ori   $a2, $a2, 0x2195
 lui   $v1, 0
 ori   $v1, $v1, 0x3204
 nop   
 nop   
 nop   
 or    $s3, $a2, $v1
 nop   
 nop   
 nop   
 sw    $s3, ($sp)
 add   $sp, $sp, $gp
 b     0x3774
 nop   
 lui   $s5, 0
 ori   $s5, $s5, 0x3bcd
 nop   
 nop   
 nop   
 addi  $t7, $s5, -0x1db9
 nop   
 nop   
 nop   
 sw    $t7, ($sp)
 add   $sp, $sp, $gp
 b     0x37a8
 nop   
 lui   $at, 0xffff
 ori   $at, $at, 0xdcaa
 nop   
 nop   
 nop   
 addi  $zero, $at, -0x1d20
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x37dc
 nop   
 lui   $k1, 0xffff
 ori   $k1, $k1, 0xe46b
 nop   
 nop   
 nop   
 andi  $at, $k1, 0x702d
 nop   
 nop   
 nop   
 sw    $at, ($sp)
 add   $sp, $sp, $gp
 b     0x3810
 nop   
 lui   $s0, 0xffff
 ori   $s0, $s0, 0xa2ef
 nop   
 nop   
 nop   
 andi  $k1, $s0, 0x809d
 nop   
 nop   
 nop   
 sw    $k1, ($sp)
 add   $sp, $sp, $gp
 b     0x3844
 nop   
 lui   $v0, 0xffff
 ori   $v0, $v0, 0x9c8e
 nop   
 nop   
 nop   
 andi  $zero, $v0, 0xebda
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3878
 nop   
 lui   $t3, 0
 ori   $t3, $t3, 0x3226
 nop   
 nop   
 nop   
 ori   $at, $t3, 0x4913
 nop   
 nop   
 nop   
 sw    $at, ($sp)
 add   $sp, $sp, $gp
 b     0x38ac
 nop   
 lui   $t6, 0
 ori   $t6, $t6, 0x2cb5
 lui   $a1, 0xffff
 ori   $a1, $a1, 0xafef
 nop   
 nop   
 nop   
 slt   $zero, $t6, $a1
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x38e8
 nop   
 lui   $s0, 0xffff
 ori   $s0, $s0, 0x92f5
 nop   
 nop   
 nop   
 slt   $s1, $s0, $s0
 nop   
 nop   
 nop   
 sw    $s1, ($sp)
 add   $sp, $sp, $gp
 b     0x391c
 nop   
 lui   $a2, 0xffff
 ori   $a2, $a2, 0x997e
 nop   
 nop   
 nop   
 sltu  $t7, $a2, $t7
 nop   
 nop   
 nop   
 sw    $t7, ($sp)
 add   $sp, $sp, $gp
 b     0x3950
 nop   
 lui   $t1, 0xffff
 ori   $t1, $t1, 0x9783
 nop   
 nop   
 nop   
 sltu  $v1, $t1, $zero
 nop   
 nop   
 nop   
 sw    $v1, ($sp)
 add   $sp, $sp, $gp
 b     0x3984
 nop   
 lui   $s5, 0
 ori   $s5, $s5, 0xc7a
 nop   
 nop   
 nop   
 sltu  $zero, $s5, $s5
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x39b8
 nop   
 lui   $a1, 0xffff
 ori   $a1, $a1, 0xe441
 lui   $t6, 0
 ori   $t6, $t6, 0x1876
 nop   
 nop   
 nop   
 sltu  $s5, $a1, $t6
 nop   
 nop   
 nop   
 sw    $s5, ($sp)
 add   $sp, $sp, $gp
 b     0x39f4
 nop   
 lui   $t5, 0xffff
 ori   $t5, $t5, 0x97eb
 lui   $a3, 0
 ori   $a3, $a3, 0xadb
 nop   
 nop   
 nop   
 sltu  $zero, $t5, $a3
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3a30
 nop   
 lui   $t1, 0
 ori   $t1, $t1, 0x1227
 lui   $t8, 0
 ori   $t8, $t8, 0x6e19
 nop   
 nop   
 nop   
 bne   $t1, $t8, 0x3a78
 nop   
 nop   
 nop   
 nop   
 sw    $t1, ($sp)
 add   $sp, $sp, $gp
 sw    $t8, ($sp)
 add   $sp, $sp, $gp
 b     0x3a90
 nop   
 nop   
 nop   
 nop   
 nop   
 b     0x3a54
 nop   
 lui   $t3, 0
 ori   $t3, $t3, 0x10e0
 lui   $t3, 0xffff
 ori   $t3, $t3, 0xaf57
 nop   
 nop   
 nop   
 bne   $t3, $t3, 0x3ad8
 nop   
 nop   
 nop   
 nop   
 sw    $t3, ($sp)
 add   $sp, $sp, $gp
 sw    $t3, ($sp)
 add   $sp, $sp, $gp
 b     0x3af0
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3ab4
 nop   
 lui   $k1, 0
 ori   $k1, $k1, 0x5a2e
 nop   
 nop   
 nop   
 beq   $zero, $k1, 0x3b28
 nop   
 nop   
 nop   
 nop   
 sw    $k1, ($sp)
 add   $sp, $sp, $gp
 b     0x3b40
 nop   
 nop   
 nop   
 nop   
 nop   
 b     0x3b0c
 nop   
 lui   $k1, 0xffff
 ori   $k1, $k1, 0x992f
 nop   
 nop   
 nop   
 beq   $zero, $k1, 0x3b78
 nop   
 nop   
 nop   
 nop   
 sw    $k1, ($sp)
 add   $sp, $sp, $gp
 b     0x3b90
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3b5c
 nop   
 lui   $zero, 0
 ori   $zero, $zero, 0x7f6e
 nop   
 nop   
 nop   
 b     0x3bc8
 nop   
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3be0
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3bac
 nop   
 lui   $s4, 0
 ori   $s4, $s4, 0x4b0d
 nop   
 nop   
 nop   
 bne   $zero, $s4, 0x3c18
 nop   
 nop   
 nop   
 nop   
 sw    $s4, ($sp)
 add   $sp, $sp, $gp
 b     0x3c30
 nop   
 nop   
 nop   
 nop   
 nop   
 b     0x3bfc
 nop   
 lui   $s4, 0xffff
 ori   $s4, $s4, 0x9907
 nop   
 nop   
 nop   
 bne   $zero, $s4, 0x3c68
 nop   
 nop   
 nop   
 nop   
 sw    $s4, ($sp)
 add   $sp, $sp, $gp
 b     0x3c80
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3c4c
 nop   
 lui   $zero, 0
 ori   $zero, $zero, 0x5e4d
 nop   
 nop   
 nop   
 bnez  $zero, 0x3cb8
 nop   
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3cd0
 nop   
 nop   
 nop   
 nop   
 nop   
 b     0x3c9c
 nop   
 lui   $s7, 0
 ori   $s7, $s7, 0x6bda
 nop   
 nop   
 nop   
 bne   $zero, $s7, 0x3d08
 nop   
 nop   
 nop   
 nop   
 sw    $s7, ($sp)
 add   $sp, $sp, $gp
 b     0x3d20
 nop   
 nop   
 nop   
 nop   
 nop   
 b     0x3cec
 nop   
 lui   $s7, 0xffff
 ori   $s7, $s7, 0xeb69
 nop   
 nop   
 nop   
 bne   $zero, $s7, 0x3d58
 nop   
 nop   
 nop   
 nop   
 sw    $s7, ($sp)
 add   $sp, $sp, $gp
 b     0x3d70
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3d3c
 nop   
 lui   $zero, 0
 ori   $zero, $zero, 0x784a
 nop   
 nop   
 nop   
 bnez  $zero, 0x3da8
 nop   
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3dc0
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3d8c
 nop   
 lui   $k0, 0
 ori   $k0, $k0, 0x2c79
 nop   
 nop   
 nop   
 beq   $zero, $k0, 0x3df8
 nop   
 nop   
 nop   
 nop   
 sw    $k0, ($sp)
 add   $sp, $sp, $gp
 b     0x3e10
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3ddc
 nop   
 lui   $k0, 0xffff
 ori   $k0, $k0, 0xf4aa
 nop   
 nop   
 nop   
 beq   $zero, $k0, 0x3e48
 nop   
 nop   
 nop   
 nop   
 sw    $k0, ($sp)
 add   $sp, $sp, $gp
 b     0x3e60
 nop   
 nop   
 nop   
 nop   
 nop   
 b     0x3e2c
 nop   
 lui   $zero, 0
 ori   $zero, $zero, 0x77a5
 nop   
 nop   
 nop   
 b     0x3e98
 nop   
 nop   
 nop   
 nop   
 sw    $zero, ($sp)
 add   $sp, $sp, $gp
 b     0x3eb0
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3e7c
 nop   
 b     0x3ed8
 nop   
 add   $t5, $zero, $ra
 jr    $t5
 nop   
 nop   
 nop   
 nop   
 b     0x3ef8
 nop   
 jal   0x3eb8
 nop   
 nop   
 nop   
 nop   
 ori   $fp, $zero, 8
 b     0x3ec4
 nop   
 lui   $at, 0x24f6
 ori   $at, $at, 0xc67f
 lui   $k1, 0x1d5
 ori   $k1, $k1, 0xd30e
 nop   
 nop   
 nop   
 mult  $at, $k1
 nop   
 nop   
 nop   
 b     0x3f2c
 nop   
 lui   $t7, 0x8bd
 ori   $t7, $t7, 0xb6ce
 lui   $t9, 0xdea9
 ori   $t9, $t9, 0x89cc
 nop   
 nop   
 nop   
 multu $t7, $t9
 nop   
 nop   
 nop   
 b     0x3f60
 nop   
 lui   $v0, 0xa524
 ori   $v0, $v0, 0xabdb
 lui   $zero, 0x86c9
 ori   $zero, $zero, 0x941e
 nop   
 nop   
 nop   
 mthi  $v0
 nop   
 nop   
 nop   
 b     0x3f94
 nop   
 lui   $t2, 0x9730
 ori   $t2, $t2, 0xc54b
 lui   $zero, 0x5f99
 ori   $zero, $zero, 0xc14a
 nop   
 nop   
 nop   
 mtlo  $t2
 nop   
 nop   
 nop   
 b     0x3fc8
 nop   
 b     0x3fc8
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   
 nop   