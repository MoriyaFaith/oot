glabel func_800E8F00
/* B600A0 800E8F00 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B600A4 800E8F04 44812000 */  mtc1  $at, $f4
/* B600A8 800E8F08 240E0001 */  li    $t6, 1
/* B600AC 800E8F0C A08E00B0 */  sb    $t6, 0xb0($a0)
/* B600B0 800E8F10 AC8000A0 */  sw    $zero, 0xa0($a0)
/* B600B4 800E8F14 3C0F8013 */  lui   $t7, %hi(gWaveSamples) # $t7, 0x8013
/* B600B8 800E8F18 E484003C */  swc1  $f4, 0x3c($a0)
/* B600BC 800E8F1C 8DEFF098 */  lw    $t7, %lo(gWaveSamples+0x8)($t7)
/* B600C0 800E8F20 8C980044 */  lw    $t8, 0x44($a0)
/* B600C4 800E8F24 AC8F00A4 */  sw    $t7, 0xa4($a0)
/* B600C8 800E8F28 8F190050 */  lw    $t9, 0x50($t8)
/* B600CC 800E8F2C AC99009C */  sw    $t9, 0x9c($a0)
/* B600D0 800E8F30 9725001A */  lhu   $a1, 0x1a($t9)
/* B600D4 800E8F34 03201825 */  move  $v1, $t9
/* B600D8 800E8F38 14A00008 */  bnez  $a1, .L800E8F5C
/* B600DC 800E8F3C A48500B4 */   sh    $a1, 0xb4($a0)
/* B600E0 800E8F40 97280016 */  lhu   $t0, 0x16($t9)
/* B600E4 800E8F44 2482009C */  addiu $v0, $a0, 0x9c
/* B600E8 800E8F48 44883000 */  mtc1  $t0, $f6
/* B600EC 800E8F4C 00000000 */  nop
/* B600F0 800E8F50 46803220 */  cvt.s.w $f8, $f6
/* B600F4 800E8F54 10000007 */  b     .L800E8F74
/* B600F8 800E8F58 E448000C */   swc1  $f8, 0xc($v0)
.L800E8F5C:
/* B600FC 800E8F5C 94690012 */  lhu   $t1, 0x12($v1)
/* B60100 800E8F60 2482009C */  addiu $v0, $a0, 0x9c
/* B60104 800E8F64 44895000 */  mtc1  $t1, $f10
/* B60108 800E8F68 00000000 */  nop
/* B6010C 800E8F6C 46805420 */  cvt.s.w $f16, $f10
/* B60110 800E8F70 E450000C */  swc1  $f16, 0xc($v0)
.L800E8F74:
/* B60114 800E8F74 94650018 */  lhu   $a1, 0x18($v1)
/* B60118 800E8F78 14A00007 */  bnez  $a1, .L800E8F98
/* B6011C 800E8F7C A4450016 */   sh    $a1, 0x16($v0)
/* B60120 800E8F80 946A0014 */  lhu   $t2, 0x14($v1)
/* B60124 800E8F84 448A9000 */  mtc1  $t2, $f18
/* B60128 800E8F88 00000000 */  nop
/* B6012C 800E8F8C 46809120 */  cvt.s.w $f4, $f18
/* B60130 800E8F90 10000006 */  b     .L800E8FAC
/* B60134 800E8F94 E4440010 */   swc1  $f4, 0x10($v0)
.L800E8F98:
/* B60138 800E8F98 946B0010 */  lhu   $t3, 0x10($v1)
/* B6013C 800E8F9C 448B3000 */  mtc1  $t3, $f6
/* B60140 800E8FA0 00000000 */  nop
/* B60144 800E8FA4 46803220 */  cvt.s.w $f8, $f6
/* B60148 800E8FA8 E4480010 */  swc1  $f8, 0x10($v0)
.L800E8FAC:
/* B6014C 800E8FAC 946C001C */  lhu   $t4, 0x1c($v1)
/* B60150 800E8FB0 03E00008 */  jr    $ra
/* B60154 800E8FB4 A44C001A */   sh    $t4, 0x1a($v0)
