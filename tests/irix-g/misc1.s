.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel test
/* 0000B0 004000B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0000B4 004000B4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0000B8 004000B8 AFA40030 */  sw    $a0, 0x30($sp)
/* 0000BC 004000BC AFA50034 */  sw    $a1, 0x34($sp)
/* 0000C0 004000C0 8FAF0030 */  lw    $t7, 0x30($sp)
/* 0000C4 004000C4 3C0E0041 */  lui   $t6, %hi(D_4101C0)
/* 0000C8 004000C8 8DCE01C0 */  lw    $t6, %lo(D_4101C0)($t6)
/* 0000CC 004000CC 000FC0C0 */  sll   $t8, $t7, 3
/* 0000D0 004000D0 01D8C821 */  addu  $t9, $t6, $t8
/* 0000D4 004000D4 8F280004 */  lw    $t0, 4($t9)
/* 0000D8 004000D8 25090001 */  addiu $t1, $t0, 1
/* 0000DC 004000DC AFA9002C */  sw    $t1, 0x2c($sp)
/* 0000E0 004000E0 8FAB0030 */  lw    $t3, 0x30($sp)
/* 0000E4 004000E4 3C0A0041 */  lui   $t2, %hi(D_4101C0)
/* 0000E8 004000E8 8D4A01C0 */  lw    $t2, %lo(D_4101C0)($t2)
/* 0000EC 004000EC 000B60C0 */  sll   $t4, $t3, 3
/* 0000F0 004000F0 014C6821 */  addu  $t5, $t2, $t4
/* 0000F4 004000F4 8DAF0008 */  lw    $t7, 8($t5)
/* 0000F8 004000F8 AFAF0024 */  sw    $t7, 0x24($sp)
/* 0000FC 004000FC 8FAE0030 */  lw    $t6, 0x30($sp)
/* 000100 00400100 24040001 */  addiu $a0, $zero, 1
/* 000104 00400104 24050002 */  addiu $a1, $zero, 2
/* 000108 00400108 8FA6002C */  lw    $a2, 0x2c($sp)
/* 00010C 0040010C 8FA70034 */  lw    $a3, 0x34($sp)
/* 000110 00400110 0C10005D */  jal   func_00400174
/* 000114 00400114 AFAE0010 */   sw    $t6, 0x10($sp)
/* 000118 00400118 AFA20028 */  sw    $v0, 0x28($sp)
/* 00011C 0040011C 8FB80028 */  lw    $t8, 0x28($sp)
/* 000120 00400120 17000003 */  bnez  $t8, .L00400130
/* 000124 00400124 00000000 */   nop
/* 000128 00400128 1000000E */  b     .L00400164
/* 00012C 0040012C 00001025 */   move  $v0, $zero
.L00400130:
/* 000130 00400130 8FA40024 */  lw    $a0, 0x24($sp)
/* 000134 00400134 8FA50028 */  lw    $a1, 0x28($sp)
/* 000138 00400138 0C100067 */  jal   func_0040019C
/* 00013C 0040013C 8FA6002C */   lw    $a2, 0x2c($sp)
/* 000140 00400140 8FA80030 */  lw    $t0, 0x30($sp)
/* 000144 00400144 3C010041 */  lui   $at, %hi(D_4101C8)
/* 000148 00400148 24190005 */  addiu $t9, $zero, 5
/* 00014C 0040014C 00280821 */  addu  $at, $at, $t0
/* 000150 00400150 A03901C8 */  sb    $t9, %lo(D_4101C8)($at)
/* 000154 00400154 10000003 */  b     .L00400164
/* 000158 00400158 8FA20028 */   lw    $v0, 0x28($sp)
/* 00015C 0040015C 10000001 */  b     .L00400164
/* 000160 00400160 00000000 */   nop
.L00400164:
/* 000164 00400164 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000168 00400168 27BD0030 */  addiu $sp, $sp, 0x30
/* 00016C 0040016C 03E00008 */  jr    $ra
/* 000170 00400170 00000000 */   nop

glabel func_00400174
/* 000174 00400174 AFA40000 */  sw    $a0, ($sp)
/* 000178 00400178 AFA50004 */  sw    $a1, 4($sp)
/* 00017C 0040017C AFA60008 */  sw    $a2, 8($sp)
/* 000180 00400180 AFA7000C */  sw    $a3, 0xc($sp)
/* 000184 00400184 10000003 */  b     .L00400194
/* 000188 00400188 24020001 */   addiu $v0, $zero, 1
/* 00018C 0040018C 10000001 */  b     .L00400194
/* 000190 00400190 00000000 */   nop
.L00400194:
/* 000194 00400194 03E00008 */  jr    $ra
/* 000198 00400198 00000000 */   nop

glabel func_0040019C
/* 00019C 0040019C AFA40000 */  sw    $a0, ($sp)
/* 0001A0 004001A0 AFA50004 */  sw    $a1, 4($sp)
/* 0001A4 004001A4 AFA60008 */  sw    $a2, 8($sp)
/* 0001A8 004001A8 10000003 */  b     .L004001B8
/* 0001AC 004001AC 24020001 */   addiu $v0, $zero, 1
/* 0001B0 004001B0 10000001 */  b     .L004001B8
/* 0001B4 004001B4 00000000 */   nop
.L004001B8:
/* 0001B8 004001B8 03E00008 */  jr    $ra
/* 0001BC 004001BC 00000000 */   nop