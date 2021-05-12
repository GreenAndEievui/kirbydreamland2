SECTION "Bank01", ROMX, BANK[$01]

UnknownData_0x4000:
INCBIN "baserom.gb", $4000, $4027 - $4000
	ld hl,$79F4
	ld a,$01
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x4030:
INCBIN "baserom.gb", $4030, $4083 - $4030
	ld a,[$DB73]
	dec a
	jr z,Unknown_0x409E
	ld a,[$A071]
	or a
	ld e,$4C
	ld h,$04
	jr z,Unknown_0x4097
	ld e,$72
	ld h,$02

Unknown_0x4097:
	ld a,[de]
	cp h
	ld a,$00
	jr nc,Unknown_0x409E
	inc a

Unknown_0x409E:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x40A2:
INCBIN "baserom.gb", $40A2, $40D6 - $40A2
	call Unknown_0x34FD
	ret
	push bc
	ld h,$A2

Unknown_0x40DD:
	ld l,$00
	ld a,[hl]
	inc a
	jr z,Unknown_0x40F1
	ld l,$4C
	ld a,[hl]
	or a
	jr z,Unknown_0x40F1
	ld e,$03
	ld bc,$4E40
	call Unknown_0x0849

Unknown_0x40F1:
	inc h
	ld a,h
	cp $A8
	jr c,Unknown_0x40DD
	pop bc
	ret

UnknownData_0x40F9:
INCBIN "baserom.gb", $40F9, $4132 - $40F9
	ld a,[$A05B]
	inc a
	ld e,$27
	ld [de],a
	ret

UnknownData_0x413A:
INCBIN "baserom.gb", $413A, $417C - $413A
	push bc
	ld bc,Unknown_0x418E
	call Unknown_0x0F50
	jr z,Unknown_0x418C
	ld l,$39
	ld a,[$A071]
	dec a
	ld [hl],a

Unknown_0x418C:
	pop bc
	ret

Unknown_0x418E:
INCBIN "baserom.gb", $418E, $4191 - $418E
	xor a
	ld [$DEE3],a
	ld hl,$DEDF
	res 1,[hl]
	ret
	ld a,[$DEFF]
	or a
	ret nz
	ld a,[$DB6F]
	ld e,a
	push bc
	ld hl,$4232
	ld a,$1F
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret

UnknownData_0x41B2:
INCBIN "baserom.gb", $41B2, $41EA - $41B2
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld e,$39
	ld a,[$DB53]
	ld [de],a
	ld hl,$6FB9
	ld a,$08
	call CallForeignBankNoInturrupts
	ld hl,$741F
	ld a,$08
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x4207:
INCBIN "baserom.gb", $4207, $421F - $4207
	ld a,[$DB6D]
	call Unknown_0x0663
	ld e,a
	ld a,[$DB60]
	ld hl,$DB62
	add a,l
	ld l,a
	jr nc,Unknown_0x4231
	inc h

Unknown_0x4231:
	ld a,[hl]
	or e
	ld [hl],a
	push bc
	ld hl,$6D6C
	ld a,$0F
	call CallForeignBankNoInturrupts
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret
	push bc
	ld hl,$47CE
	ld a,$08
	call CallForeignBankNoInturrupts
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0x4250:
INCBIN "baserom.gb", $4250, $4299 - $4250

Unknown_0x4299:
INCBIN "baserom.gb", $4299, $446E - $4299
	ld hl,$470E
	ld a,$08
	call CallForeignBankNoInturrupts
	ret
	xor a
	ld [$DB3C],a
	ret
	ld a,[$DB3C]
	jr Unknown_0x4486
	ld a,[$A051]
	sub $04

Unknown_0x4486:
	ld e,$27
	ld [de],a
	ret
	ld e,$45
	ld a,[de]
	rla
	ld hl,$FFF7
	jr nc,Unknown_0x4496
	ld hl,$0009

Unknown_0x4496:
	ld e,$04
	ld a,[de]
	add a,l
	ld [de],a
	inc e
	ld a,[de]
	adc a,h
	ld [de],a
	ld h,d
	ld l,$3B
	dec e
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hli],a
	inc e
	inc e
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hl],a
	ret
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld hl,Unknown_0x741F
	ld a,$08
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x44BF:
INCBIN "baserom.gb", $44BF, $4508 - $44BF
	ld hl,$0807
	call Unknown_0x7BAF
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x452F
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x452F:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x453D
	ld e,$01
	ld bc,$4697
	jp Unknown_0x37F4

Unknown_0x453D:
	call Unknown_0x7A55
	jr nc,Unknown_0x454A
	ld e,$01
	ld bc,$4583
	jp Unknown_0x37F4

Unknown_0x454A:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x4558
	ld e,$01
	ld bc,$49FA
	jp Unknown_0x37F4

Unknown_0x4558:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x4566
	ld e,$01
	ld bc,$729D
	jp Unknown_0x37F4

Unknown_0x4566:
	call Unknown_0x36E6
	jr nc,Unknown_0x4573
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4573:
	call Unknown_0x3619
	jr nc,Unknown_0x4580
	ld e,$01
	ld bc,$4A48
	jp Unknown_0x37F4

Unknown_0x4580:
	jp Unknown_0x37F7

UnknownData_0x4583:
INCBIN "baserom.gb", $4583, $45E4 - $4583
	call Unknown_0x359A
	call Unknown_0x7C45

Unknown_0x45EA:
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A9E
	jr nc,Unknown_0x4602
	ld e,$01
	ld bc,$44E0
	jp Unknown_0x37F4

Unknown_0x4602:
	call Unknown_0x7ADB
	jr nc,Unknown_0x460F
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x460F:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x461D
	ld e,$01
	ld bc,$4697
	jp Unknown_0x37F4

Unknown_0x461D:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x462C
	ld e,$01
	ld bc,$44E0
	jp Unknown_0x37F4

Unknown_0x462C:
	call Unknown_0x373B
	jr nc,Unknown_0x4639
	ld e,$01
	ld bc,$467F
	jp Unknown_0x37F4

Unknown_0x4639:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x4647
	ld e,$01
	ld bc,$49FA
	jp Unknown_0x37F4

Unknown_0x4647:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x4655
	ld e,$01
	ld bc,$729D
	jp Unknown_0x37F4

Unknown_0x4655:
	call Unknown_0x36E6
	jr nc,Unknown_0x4662
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4662:
	call Unknown_0x3619
	jr nc,Unknown_0x466F
	ld e,$01
	ld bc,$4A48
	jp Unknown_0x37F4

Unknown_0x466F:
	call Unknown_0x374E
	jr nc,Unknown_0x467C
	ld e,$01
	ld bc,$4583
	jp Unknown_0x37F4

Unknown_0x467C:
	jp Unknown_0x37F7

UnknownData_0x467F:
INCBIN "baserom.gb", $467F, $468E - $467F
	call Unknown_0x359A
	call Unknown_0x7C20
	jp Unknown_0x45EA

UnknownData_0x4697:
INCBIN "baserom.gb", $4697, $46BD - $4697
	call Unknown_0x359A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x46CE
	ld e,$01
	ld bc,$46A6
	jp Unknown_0x37F4

Unknown_0x46CE:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x46E1
	ld h,d
	ld l,$1F
	ld [hl],$41
	inc l
	ld [hl],$46
	inc l
	ld [hl],$E1

Unknown_0x46E1:
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x470A
	ld e,$01
	ld bc,$44C6
	jp Unknown_0x37F4

Unknown_0x470A:
	call Unknown_0x39C1
	jr nc,Unknown_0x4717
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x4717:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x4725
	ld e,$01
	ld bc,$729D
	jp Unknown_0x37F4

Unknown_0x4725:
	call Unknown_0x36E6
	jr nc,Unknown_0x4732
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4732:
	call Unknown_0x3614
	jr nc,Unknown_0x473F
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x473F:
	jp Unknown_0x37F7

UnknownData_0x4742:
INCBIN "baserom.gb", $4742, $478C - $4742
	ld hl,$0807
	call Unknown_0x7BAF
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A8C
	call Unknown_0x3992
	jr nc,Unknown_0x47BB
	ld e,$01
	ld bc,$44C6
	jp Unknown_0x37F4

Unknown_0x47BB:
	call Unknown_0x39C1
	jr nc,Unknown_0x47C8
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x47C8:
	ld e,$52
	ld a,[de]
	or a
	jr z,Unknown_0x47D6
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x47D6:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x47E4
	ld e,$01
	ld bc,$729D
	jp Unknown_0x37F4

Unknown_0x47E4:
	call Unknown_0x3619
	jr nc,Unknown_0x47F1
	ld e,$01
	ld bc,$4A48
	jp Unknown_0x37F4

Unknown_0x47F1:
	call Unknown_0x3765
	jr nc,Unknown_0x47FE
	ld e,$01
	ld bc,$4C05
	jp Unknown_0x37F4

Unknown_0x47FE:
	call Unknown_0x36E6
	jr nc,Unknown_0x480B
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x480B:
	jp Unknown_0x37F7

UnknownData_0x480E:
INCBIN "baserom.gb", $480E, $481B - $480E
	ld hl,$A06C
	res 3,[hl]
	ret
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x48B6
	ld a,$01
	call Unknown_0x3AAA
	call Unknown_0x7D6E
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x4855
	ld e,$01
	ld bc,$494E
	jp Unknown_0x37F4

Unknown_0x4855:
	call Unknown_0x39C1
	jr nc,Unknown_0x4862
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x4862:
	ld hl,$A06C
	bit 3,[hl]
	jr z,Unknown_0x4871
	ld e,$01
	ld bc,$48BB
	jp Unknown_0x37F4

Unknown_0x4871:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x487F
	ld e,$01
	ld bc,$729D
	jp Unknown_0x37F4

Unknown_0x487F:
	call Unknown_0x3619
	jr nc,Unknown_0x488C
	ld e,$01
	ld bc,$4A48
	jp Unknown_0x37F4

Unknown_0x488C:
	call Unknown_0x3765
	jr nc,Unknown_0x4899
	ld e,$01
	ld bc,$4C05
	jp Unknown_0x37F4

Unknown_0x4899:
	call Unknown_0x36E6
	jr nc,Unknown_0x48A6
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x48A6:
	call Unknown_0x3614
	jr nc,Unknown_0x48B3
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x48B3:
	jp Unknown_0x37F7

Unknown_0x48B6:
INCBIN "baserom.gb", $48B6, $4967 - $48B6
	ld e,$40
	ld bc,$0280
	call Unknown_0x0D23
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x498A
	ld e,$01
	ld bc,$44C6
	jp Unknown_0x37F4

Unknown_0x498A:
	call Unknown_0x39C1
	jr nc,Unknown_0x4997
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x4997:
	call Unknown_0x3619
	jr nc,Unknown_0x49A4
	ld e,$01
	ld bc,$4A48
	jp Unknown_0x37F4

Unknown_0x49A4:
	call Unknown_0x3765
	jr nc,Unknown_0x49B1
	ld e,$01
	ld bc,$4C05
	jp Unknown_0x37F4

Unknown_0x49B1:
	call Unknown_0x3614
	jr nc,Unknown_0x49BE
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x49BE:
	jp Unknown_0x37F7

UnknownData_0x49C1:
INCBIN "baserom.gb", $49C1, $49D4 - $49C1
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D35
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x49F7
	ld e,$01
	ld bc,$44C6
	jp Unknown_0x37F4

Unknown_0x49F7:
	jp Unknown_0x37F7

UnknownData_0x49FA:
INCBIN "baserom.gb", $49FA, $4A07 - $49FA
	call Unknown_0x7C2E
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x4A25
	ld e,$01
	ld bc,$4742
	jp Unknown_0x37F4

Unknown_0x4A25:
	call Unknown_0x36A5
	jr nc,Unknown_0x4A32
	ld e,$01
	ld bc,$49C1
	jp Unknown_0x37F4

Unknown_0x4A32:
	ld a,[$FF00+$A5]
	bit 7,a
	jr nz,Unknown_0x4A40
	ld e,$01
	ld bc,$44C6
	jp Unknown_0x37F4

Unknown_0x4A40:
	ld e,$15
	ld a,$04
	ld [de],a
	jp Unknown_0x37F7

UnknownData_0x4A48:
INCBIN "baserom.gb", $4A48, $4A5D - $4A48
	call Unknown_0x7CFD
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	call Unknown_0x36E6
	jr nc,Unknown_0x4A84
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4A84:
	jp Unknown_0x37F7

UnknownData_0x4A87:
INCBIN "baserom.gb", $4A87, $4A9D - $4A87
	call Unknown_0x359A
	ld e,$50
	ld bc,$FEB3
	call Unknown_0x0D54
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x4ACD
	ld e,$01
	ld bc,$4BB5
	jp Unknown_0x37F4

Unknown_0x4ACD:
	call Unknown_0x3765
	jr nc,Unknown_0x4ADA
	ld e,$01
	ld bc,$4B55
	jp Unknown_0x37F4

Unknown_0x4ADA:
	call Unknown_0x36E6
	jr nc,Unknown_0x4AE7
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4AE7:
	jp Unknown_0x37F7

UnknownData_0x4AEA:
INCBIN "baserom.gb", $4AEA, $4AFA - $4AEA
	call Unknown_0x359A
	ld e,$14
	ld bc,$0100
	call Unknown_0x0D23
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	ld a,[$FF00+$A5]
	and $41
	jr z,Unknown_0x4B2A
	ld e,$01
	ld bc,$4A87
	jp Unknown_0x37F4

Unknown_0x4B2A:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x4B38
	ld e,$01
	ld bc,$4BB5
	jp Unknown_0x37F4

Unknown_0x4B38:
	call Unknown_0x3765
	jr nc,Unknown_0x4B45
	ld e,$01
	ld bc,$4B55
	jp Unknown_0x37F4

Unknown_0x4B45:
	call Unknown_0x36E6
	jr nc,Unknown_0x4B52
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4B52:
	jp Unknown_0x37F7

UnknownData_0x4B55:
INCBIN "baserom.gb", $4B55, $4BD6 - $4B55
	ld e,$14
	ld bc,$0100
	call Unknown_0x0D23
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	call Unknown_0x3765
	jr nc,Unknown_0x4C02
	ld e,$01
	ld bc,$4C05
	jp Unknown_0x37F4

Unknown_0x4C02:
	jp Unknown_0x37F7

UnknownData_0x4C05:
INCBIN "baserom.gb", $4C05, $4C28 - $4C05
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x4C49
	ld e,$01
	ld bc,$4D46
	jp Unknown_0x37F4

Unknown_0x4C49:
	call Unknown_0x37BD
	jr nc,Unknown_0x4C56
	ld e,$01
	ld bc,$4D46
	jp Unknown_0x37F4

Unknown_0x4C56:
	call Unknown_0x7A55
	jr nc,Unknown_0x4C63
	ld e,$01
	ld bc,$4C81
	jp Unknown_0x37F4

Unknown_0x4C63:
	ld a,[$FF00+$A5]
	and $02
	jr z,Unknown_0x4C71
	ld e,$01
	ld bc,$4DE6
	jp Unknown_0x37F4

Unknown_0x4C71:
	call Unknown_0x36E6
	jr nc,Unknown_0x4C7E
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4C7E:
	jp Unknown_0x37F7

UnknownData_0x4C81:
INCBIN "baserom.gb", $4C81, $4CC4 - $4C81
	call Unknown_0x359A
	call Unknown_0x3602
	call Unknown_0x7C8E
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A9E
	jr nc,Unknown_0x4CE5
	ld e,$01
	ld bc,$4C14
	jp Unknown_0x37F4

Unknown_0x4CE5:
	call Unknown_0x7ADB
	jr nc,Unknown_0x4CF2
	ld e,$01
	ld bc,$4D46
	jp Unknown_0x37F4

Unknown_0x4CF2:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x4D01
	ld e,$01
	ld bc,$4C14
	jp Unknown_0x37F4

Unknown_0x4D01:
	call Unknown_0x37BD
	jr nc,Unknown_0x4D0E
	ld e,$01
	ld bc,$4D46
	jp Unknown_0x37F4

Unknown_0x4D0E:
	call Unknown_0x36E6
	jr nc,Unknown_0x4D1B
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4D1B:
	call Unknown_0x374E
	jr nc,Unknown_0x4D28
	ld e,$01
	ld bc,$4C81
	jp Unknown_0x37F4

Unknown_0x4D28:
	ld a,[$FF00+$A5]
	and $02
	jr z,Unknown_0x4D36
	ld e,$01
	ld bc,$4DE6
	jp Unknown_0x37F4

Unknown_0x4D36:
	call Unknown_0x377C
	jr nc,Unknown_0x4D43
	ld e,$01
	ld bc,$4EB6
	jp Unknown_0x37F4

Unknown_0x4D43:
	jp Unknown_0x37F7

UnknownData_0x4D46:
INCBIN "baserom.gb", $4D46, $4D87 - $4D46
	call Unknown_0x359A
	call Unknown_0x7D16
	call Unknown_0x7CCA
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x4DAB
	ld e,$01
	ld bc,$44C6
	jp Unknown_0x37F4

Unknown_0x4DAB:
	call Unknown_0x3943
	call Unknown_0x37CB
	jr nc,Unknown_0x4DBB
	ld e,$01
	ld bc,$4D46
	jp Unknown_0x37F4

Unknown_0x4DBB:
	ld a,[$FF00+$A5]
	and $02
	jr z,Unknown_0x4DC9
	ld e,$01
	ld bc,$4DE6
	jp Unknown_0x37F4

Unknown_0x4DC9:
	call Unknown_0x377C
	jr nc,Unknown_0x4DD6
	ld e,$01
	ld bc,$4EB6
	jp Unknown_0x37F4

Unknown_0x4DD6:
	call Unknown_0x36E6
	jr nc,Unknown_0x4DE3
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x4DE3:
	jp Unknown_0x37F7

UnknownData_0x4DE6:
INCBIN "baserom.gb", $4DE6, $4E47 - $4DE6
	call Unknown_0x7A1B
	call Unknown_0x4E8D
	call Unknown_0x3AE9
	call Unknown_0x7D9C
	jr nc,Unknown_0x4E5D
	ld e,$01
	ld bc,$4E00
	jp Unknown_0x37F4

Unknown_0x4E5D:
	call Unknown_0x375B
	jr nc,Unknown_0x4E6A
	ld e,$01
	ld bc,$4E3B
	jp Unknown_0x37F4

Unknown_0x4E6A:
	call Unknown_0x377C
	jr nc,Unknown_0x4E77
	ld e,$01
	ld bc,$4EB6
	jp Unknown_0x37F4

Unknown_0x4E77:
	jp Unknown_0x37F7
	call Unknown_0x7A1B
	call Unknown_0x377C
	jr nc,Unknown_0x4E8A
	ld e,$01
	ld bc,$4EB6
	jp Unknown_0x37F4

Unknown_0x4E8A:
	jp Unknown_0x37F7

Unknown_0x4E8D:
	ld e,$27
	ld a,[de]
	ld hl,$4EA1
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x4E99
	inc h

Unknown_0x4E99:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,$02
	jp Unknown_0x3AAA

UnknownData_0x4EA1:
INCBIN "baserom.gb", $4EA1, $4EC9 - $4EA1

Unknown_0x4EC9:
INCBIN "baserom.gb", $4EC9, $4F1A - $4EC9
	ld a,[$DB78]
	ld [$CD00],a
	ret

UnknownData_0x4F21:
INCBIN "baserom.gb", $4F21, $4F3F - $4F21
	ld a,[$A050]
	cp $0D
	ld a,$00
	jr nz,Unknown_0x4F49
	inc a

Unknown_0x4F49:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x4F4D:
INCBIN "baserom.gb", $4F4D, $500C - $4F4D
	call Unknown_0x507A
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x502A
	ld e,$01
	ld bc,$4FD6
	jp Unknown_0x37F4

Unknown_0x502A:
	call Unknown_0x3957
	call Unknown_0x506E
	jr nc,Unknown_0x503A
	ld e,$01
	ld bc,$52A8
	jp Unknown_0x37F4

Unknown_0x503A:
	jp Unknown_0x37F7
	call Unknown_0x7A42
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x505B
	ld e,$01
	ld bc,$52A8
	jp Unknown_0x37F4

Unknown_0x505B:
	call Unknown_0x3957
	call Unknown_0x506E
	jr nc,Unknown_0x506B
	ld e,$01
	ld bc,$52A8
	jp Unknown_0x37F4

Unknown_0x506B:
	jp Unknown_0x37F7

Unknown_0x506E:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x5078
	dec a
	ld [de],a
	and a
	ret

Unknown_0x5078:
	scf
	ret

Unknown_0x507A:
	ld a,[$A070]
	or a
	ld e,$10
	ld bc,$0280
	jr z,Unknown_0x508A
	ld e,$04
	ld bc,$00E0

Unknown_0x508A:
	jp Unknown_0x0D23

UnknownData_0x508D:
INCBIN "baserom.gb", $508D, $5105 - $508D
	call Unknown_0x507A
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	jr nc,Unknown_0x5123
	ld e,$01
	ld bc,$50ED
	jp Unknown_0x37F4

Unknown_0x5123:
	call Unknown_0x3957
	call Unknown_0x506E
	jr nc,Unknown_0x5133
	ld e,$01
	ld bc,$52A8
	jp Unknown_0x37F4

Unknown_0x5133:
	jp Unknown_0x37F7

UnknownData_0x5136:
INCBIN "baserom.gb", $5136, $5252 - $5136
	ld a,[$DB76]
	or a
	ret z
	ld a,[$DA36]
	or a
	ret nz
	ld hl,$DB78
	ld a,[hli]
	ld [$CD00],a
	ld a,[hli]
	ld [$CD01],a
	ld a,[hl]
	ld [$CD02],a
	ret

UnknownData_0x526C:
INCBIN "baserom.gb", $526C, $52C9 - $526C
	ld a,[$DB73]
	ld e,$27
	ld [de],a
	ret
	ld a,$05
	ld [$A082],a
	ret
	call Unknown_0x7A1B
	jp Unknown_0x37F7
	ld hl,$7EA8
	ld a,$02
	call CallForeignBankNoInturrupts
	jp Unknown_0x37F7
	ld hl,$7EA8
	ld a,$02
	call CallForeignBankNoInturrupts
	ld e,$7C
	ld a,[de]
	or a
	jr z,Unknown_0x52FD
	ld e,$01
	ld bc,$52A8
	jp Unknown_0x37F4

Unknown_0x52FD:
	jp Unknown_0x37F7
	ld hl,$7EE2
	ld a,$02
	call CallForeignBankNoInturrupts
	jp Unknown_0x37F7
	ld hl,Unknown_0x7F1C
	ld a,$02
	call CallForeignBankNoInturrupts
	jp Unknown_0x37F7
	ld e,$44
	ld a,[de]
	swap a
	and $0F
	ld e,$27
	ld [de],a
	ret
	ld e,$44
	ld a,[de]
	and $0F
	ld e,$27
	ld [de],a
	ret

Unknown_0x532A:
	push bc
	ld bc,$B2B3
	ld a,$2F
	ld [$FF00+$84],a
	call Unknown_0x0F67
	ld a,[$FF00+$9A]
	ld d,a
	ld a,h
	or a
	jr z,Unknown_0x5354
	ld l,$48
	ld [hl],d
	ld l,$45
	ld e,l
	ld a,[de]
	xor $80
	ld [hl],a
	ld a,[$A074]
	ld l,$39
	ld [hl],a
	ld a,[$A05B]
	ld l,$3C
	ld [hl],a
	pop bc
	ret

Unknown_0x5354:
	ld h,$B2
	call Unknown_0x0BBA
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	jr Unknown_0x532A

Unknown_0x535F:
INCBIN "baserom.gb", $535F, $5389 - $535F
	ld e,$71
	ld a,[de]
	or a
	ld e,$4C
	jr z,Unknown_0x5393
	ld e,$72

Unknown_0x5393:
	xor a
	ld [de],a
	ret

UnknownData_0x5396:
INCBIN "baserom.gb", $5396, $5429 - $5396
	ld a,[$A051]
	sub $0D
	ld e,$27
	ld [de],a
	ret
	push de
	push bc
	ld a,$23
	ld [$FF00+$84],a
	ld bc,$A0B3
	call Unknown_0x0F67
	pop bc
	pop de
	ld a,h
	or a
	ld e,$39
	ld a,[de]
	jr z,Unknown_0x544D
	ld l,$48
	ld [hl],d
	ld l,$39
	ld [hl],a

Unknown_0x544D:
	inc a
	ld [de],a
	ret

UnknownData_0x5450:
INCBIN "baserom.gb", $5450, $545B - $5450
	ld e,$1E
	ld bc,$0380
	call Unknown_0x0D35
	jp Unknown_0x0DA4

UnknownData_0x5466:
INCBIN "baserom.gb", $5466, $54A9 - $5466

Unknown_0x54A9:
INCBIN "baserom.gb", $54A9, $54AC - $54A9
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$45
	ld e,l
	ld a,[hl]
	ld [de],a
	ld a,$0A
	ld [$A081],a
	xor a
	ld [$A080],a
	ld hl,$4DA9
	ld a,$03
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x54C7:
INCBIN "baserom.gb", $54C7, $54E3 - $54C7
	ld hl,$79F4
	ld a,$01
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x54EC:
INCBIN "baserom.gb", $54EC, $5525 - $54EC
	ld hl,$4DF5
	ld a,$03
	call CallForeignBankNoInturrupts
	ld a,e
	or a
	ret z
	ld e,$48
	ld a,[de]
	ld h,a
	ld e,$1D
	ld bc,$51A3
	call Unknown_0x0849
	ld e,$01
	ld bc,Unknown_0x54A9
	jp Unknown_0x0846

UnknownData_0x5544:
INCBIN "baserom.gb", $5544, $5588 - $5544
	ld e,$48
	ld a,[de]
	ld h,a
	ld e,$45
	ld l,e
	ld a,[hl]
	ld [de],a
	ret
	call Unknown_0x0DA4
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	ld b,a
	ld e,$45
	ld a,[de]
	rla
	ld a,b
	jr c,Unknown_0x55A9
	cp $98
	jr nc,Unknown_0x55AC
	ret

Unknown_0x55A9:
	cp $08
	ret nc

Unknown_0x55AC:
	ld e,$01
	ld bc,$55B4
	jp Unknown_0x0846

UnknownData_0x55B4:
INCBIN "baserom.gb", $55B4, $5613 - $55B4
	ld a,$08
	call Unknown_0x0C94
	call Unknown_0x0DA4
	ld e,$10
	ld a,[de]
	rla
	ret c
	ld b,$02
	ld e,$44
	ld a,b
	ld [de],a
	call Unknown_0x3A8B
	ld e,$01
	ld bc,Unknown_0x535F
	jp Unknown_0x0846

UnknownData_0x5631:
INCBIN "baserom.gb", $5631, $5677 - $5631
	ld hl,$0807
	call Unknown_0x7BAF
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x569E
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x569E:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x56AC
	ld e,$01
	ld bc,$581E
	jp Unknown_0x37F4

Unknown_0x56AC:
	call Unknown_0x3650
	jr nc,Unknown_0x56B9
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x56B9:
	call Unknown_0x7A55
	jr nc,Unknown_0x56C6
	ld e,$01
	ld bc,$56FE
	jp Unknown_0x37F4

Unknown_0x56C6:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x56D4
	ld e,$01
	ld bc,$5B9B
	jp Unknown_0x37F4

Unknown_0x56D4:
	call Unknown_0x36E6
	jr nc,Unknown_0x56E1
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x56E1:
	call Unknown_0x3619
	jr nc,Unknown_0x56EE
	ld e,$01
	ld bc,$5BE9
	jp Unknown_0x37F4

Unknown_0x56EE:
	call Unknown_0x3724
	jr nc,Unknown_0x56FB
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x56FB:
	jp Unknown_0x37F7

UnknownData_0x56FE:
INCBIN "baserom.gb", $56FE, $575F - $56FE
	call Unknown_0x359A
	call Unknown_0x7C45

Unknown_0x5765:
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A9E
	jr nc,Unknown_0x577D
	ld e,$01
	ld bc,$564F
	jp Unknown_0x37F4

Unknown_0x577D:
	call Unknown_0x7ADB
	jr nc,Unknown_0x578A
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x578A:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x5798
	ld e,$01
	ld bc,$581E
	jp Unknown_0x37F4

Unknown_0x5798:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x57A7
	ld e,$01
	ld bc,$564F
	jp Unknown_0x37F4

Unknown_0x57A7:
	call Unknown_0x3650
	jr nc,Unknown_0x57B4
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x57B4:
	call Unknown_0x373B
	jr nc,Unknown_0x57C1
	ld e,$01
	ld bc,$5806
	jp Unknown_0x37F4

Unknown_0x57C1:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x57CF
	ld e,$01
	ld bc,$5B9B
	jp Unknown_0x37F4

Unknown_0x57CF:
	call Unknown_0x36E6
	jr nc,Unknown_0x57DC
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x57DC:
	call Unknown_0x3619
	jr nc,Unknown_0x57E9
	ld e,$01
	ld bc,$5BE9
	jp Unknown_0x37F4

Unknown_0x57E9:
	call Unknown_0x374E
	jr nc,Unknown_0x57F6
	ld e,$01
	ld bc,$56FE
	jp Unknown_0x37F4

Unknown_0x57F6:
	call Unknown_0x3724
	jr nc,Unknown_0x5803
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x5803:
	jp Unknown_0x37F7

UnknownData_0x5806:
INCBIN "baserom.gb", $5806, $5815 - $5806
	call Unknown_0x359A
	call Unknown_0x7C20
	jp Unknown_0x5765

UnknownData_0x581E:
INCBIN "baserom.gb", $581E, $5844 - $581E
	call Unknown_0x359A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x5855
	ld e,$01
	ld bc,$582D
	jp Unknown_0x37F4

Unknown_0x5855:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x5868
	ld h,d
	ld l,$1F
	ld [hl],$41
	inc l
	ld [hl],$58
	inc l
	ld [hl],$68

Unknown_0x5868:
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x5891
	ld e,$01
	ld bc,$5638
	jp Unknown_0x37F4

Unknown_0x5891:
	call Unknown_0x39C1
	jr nc,Unknown_0x589E
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x589E:
	call Unknown_0x3650
	jr nc,Unknown_0x58AB
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x58AB:
	call Unknown_0x36E6
	jr nc,Unknown_0x58B8
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x58B8:
	call Unknown_0x3614
	jr nc,Unknown_0x58C5
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x58C5:
	jp Unknown_0x37F7

UnknownData_0x58C8:
INCBIN "baserom.gb", $58C8, $590F - $58C8
	ld hl,$0807
	call Unknown_0x7BAF
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A8C
	call Unknown_0x3992
	jr nc,Unknown_0x593E
	ld e,$01
	ld bc,$5638
	jp Unknown_0x37F4

Unknown_0x593E:
	call Unknown_0x39C1
	jr nc,Unknown_0x594B
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x594B:
	ld e,$52
	ld a,[de]
	or a
	jr z,Unknown_0x5959
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x5959:
	call Unknown_0x3650
	jr nc,Unknown_0x5966
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x5966:
	call Unknown_0x3619
	jr nc,Unknown_0x5973
	ld e,$01
	ld bc,$5BE9
	jp Unknown_0x37F4

Unknown_0x5973:
	call Unknown_0x3765
	jr nc,Unknown_0x5980
	ld e,$01
	ld bc,$5DA6
	jp Unknown_0x37F4

Unknown_0x5980:
	call Unknown_0x36E6
	jr nc,Unknown_0x598D
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x598D:
	call Unknown_0x3724
	jr nc,Unknown_0x599A
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x599A:
	call Unknown_0x3614
	jr nc,Unknown_0x59A7
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x59A7:
	jp Unknown_0x37F7

UnknownData_0x59AA:
INCBIN "baserom.gb", $59AA, $59B7 - $59AA
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x5A4B
	ld a,$01
	call Unknown_0x3AAA
	call Unknown_0x7D6E
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x59EB
	ld e,$01
	ld bc,$5AEF
	jp Unknown_0x37F4

Unknown_0x59EB:
	call Unknown_0x39C1
	jr nc,Unknown_0x59F8
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x59F8:
	ld hl,$A06C
	bit 3,[hl]
	jr z,Unknown_0x5A07
	ld e,$01
	ld bc,$5A50
	jp Unknown_0x37F4

Unknown_0x5A07:
	call Unknown_0x3650
	jr nc,Unknown_0x5A14
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x5A14:
	call Unknown_0x3619
	jr nc,Unknown_0x5A21
	ld e,$01
	ld bc,$5BE9
	jp Unknown_0x37F4

Unknown_0x5A21:
	call Unknown_0x3765
	jr nc,Unknown_0x5A2E
	ld e,$01
	ld bc,$5DA6
	jp Unknown_0x37F4

Unknown_0x5A2E:
	call Unknown_0x36E6
	jr nc,Unknown_0x5A3B
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5A3B:
	call Unknown_0x3614
	jr nc,Unknown_0x5A48
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x5A48:
	jp Unknown_0x37F7

Unknown_0x5A4B:
INCBIN "baserom.gb", $5A4B, $5A5A - $5A4B
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A8C
	call Unknown_0x3992
	jr nc,Unknown_0x5A83
	ld e,$01
	ld bc,$5638
	jp Unknown_0x37F4

Unknown_0x5A83:
	call Unknown_0x39C1
	jr nc,Unknown_0x5A90
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x5A90:
	ld e,$10
	ld a,[de]
	rla
	jr c,Unknown_0x5A9E
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x5A9E:
	call Unknown_0x3650
	jr nc,Unknown_0x5AAB
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x5AAB:
	call Unknown_0x3619
	jr nc,Unknown_0x5AB8
	ld e,$01
	ld bc,$5BE9
	jp Unknown_0x37F4

Unknown_0x5AB8:
	call Unknown_0x3765
	jr nc,Unknown_0x5AC5
	ld e,$01
	ld bc,$5DA6
	jp Unknown_0x37F4

Unknown_0x5AC5:
	call Unknown_0x36E6
	jr nc,Unknown_0x5AD2
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5AD2:
	call Unknown_0x3724
	jr nc,Unknown_0x5ADF
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x5ADF:
	call Unknown_0x3614
	jr nc,Unknown_0x5AEC
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x5AEC:
	jp Unknown_0x37F7

UnknownData_0x5AEF:
INCBIN "baserom.gb", $5AEF, $5B08 - $5AEF
	ld e,$40
	ld bc,$0280
	call Unknown_0x0D23
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x5B2B
	ld e,$01
	ld bc,$5638
	jp Unknown_0x37F4

Unknown_0x5B2B:
	call Unknown_0x39C1
	jr nc,Unknown_0x5B38
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x5B38:
	call Unknown_0x3619
	jr nc,Unknown_0x5B45
	ld e,$01
	ld bc,$5BE9
	jp Unknown_0x37F4

Unknown_0x5B45:
	call Unknown_0x3765
	jr nc,Unknown_0x5B52
	ld e,$01
	ld bc,$5DA6
	jp Unknown_0x37F4

Unknown_0x5B52:
	call Unknown_0x3614
	jr nc,Unknown_0x5B5F
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x5B5F:
	jp Unknown_0x37F7

UnknownData_0x5B62:
INCBIN "baserom.gb", $5B62, $5B75 - $5B62
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D35
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x5B98
	ld e,$01
	ld bc,$5638
	jp Unknown_0x37F4

Unknown_0x5B98:
	jp Unknown_0x37F7

UnknownData_0x5B9B:
INCBIN "baserom.gb", $5B9B, $5BA8 - $5B9B
	call Unknown_0x7C2E
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x7ADB
	jr nc,Unknown_0x5BC6
	ld e,$01
	ld bc,$58C8
	jp Unknown_0x37F4

Unknown_0x5BC6:
	call Unknown_0x36A5
	jr nc,Unknown_0x5BD3
	ld e,$01
	ld bc,$5B62
	jp Unknown_0x37F4

Unknown_0x5BD3:
	ld a,[$FF00+$A5]
	bit 7,a
	jr nz,Unknown_0x5BE1
	ld e,$01
	ld bc,$5638
	jp Unknown_0x37F4

Unknown_0x5BE1:
	ld e,$15
	ld a,$04
	ld [de],a
	jp Unknown_0x37F7

UnknownData_0x5BE9:
INCBIN "baserom.gb", $5BE9, $5BFE - $5BE9
	call Unknown_0x7CFD
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	call Unknown_0x36E6
	jr nc,Unknown_0x5C25
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5C25:
	jp Unknown_0x37F7

UnknownData_0x5C28:
INCBIN "baserom.gb", $5C28, $5C3E - $5C28
	call Unknown_0x359A
	ld e,$50
	ld bc,$FEB3
	call Unknown_0x0D54
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x5C6E
	ld e,$01
	ld bc,$5D56
	jp Unknown_0x37F4

Unknown_0x5C6E:
	call Unknown_0x3765
	jr nc,Unknown_0x5C7B
	ld e,$01
	ld bc,$5CF6
	jp Unknown_0x37F4

Unknown_0x5C7B:
	call Unknown_0x36E6
	jr nc,Unknown_0x5C88
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5C88:
	jp Unknown_0x37F7

UnknownData_0x5C8B:
INCBIN "baserom.gb", $5C8B, $5C9B - $5C8B
	call Unknown_0x359A
	ld e,$14
	ld bc,$0100
	call Unknown_0x0D23
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	ld a,[$FF00+$A5]
	and $41
	jr z,Unknown_0x5CCB
	ld e,$01
	ld bc,$5C28
	jp Unknown_0x37F4

Unknown_0x5CCB:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x5CD9
	ld e,$01
	ld bc,$5D56
	jp Unknown_0x37F4

Unknown_0x5CD9:
	call Unknown_0x3765
	jr nc,Unknown_0x5CE6
	ld e,$01
	ld bc,$5CF6
	jp Unknown_0x37F4

Unknown_0x5CE6:
	call Unknown_0x36E6
	jr nc,Unknown_0x5CF3
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5CF3:
	jp Unknown_0x37F7

UnknownData_0x5CF6:
INCBIN "baserom.gb", $5CF6, $5D09 - $5CF6
	call Unknown_0x359A
	ld e,$20
	ld bc,$FE80
	call Unknown_0x0D54
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x5D39
	ld e,$01
	ld bc,$5D56
	jp Unknown_0x37F4

Unknown_0x5D39:
	call Unknown_0x377C
	jr nc,Unknown_0x5D46
	ld e,$01
	ld bc,$5D03
	jp Unknown_0x37F4

Unknown_0x5D46:
	call Unknown_0x36E6
	jr nc,Unknown_0x5D53
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5D53:
	jp Unknown_0x37F7

UnknownData_0x5D56:
INCBIN "baserom.gb", $5D56, $5D77 - $5D56
	ld e,$14
	ld bc,$0100
	call Unknown_0x0D23
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	call Unknown_0x3765
	jr nc,Unknown_0x5DA3
	ld e,$01
	ld bc,$5DA6
	jp Unknown_0x37F4

Unknown_0x5DA3:
	jp Unknown_0x37F7

UnknownData_0x5DA6:
INCBIN "baserom.gb", $5DA6, $5DC9 - $5DA6
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x5DEA
	ld e,$01
	ld bc,$5EFF
	jp Unknown_0x37F4

Unknown_0x5DEA:
	call Unknown_0x37BD
	jr nc,Unknown_0x5DF7
	ld e,$01
	ld bc,$5EFF
	jp Unknown_0x37F4

Unknown_0x5DF7:
	call Unknown_0x7A55
	jr nc,Unknown_0x5E04
	ld e,$01
	ld bc,$5E2E
	jp Unknown_0x37F4

Unknown_0x5E04:
	call Unknown_0x3650
	jr nc,Unknown_0x5E11
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x5E11:
	call Unknown_0x36E6
	jr nc,Unknown_0x5E1E
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5E1E:
	call Unknown_0x3724
	jr nc,Unknown_0x5E2B
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x5E2B:
	jp Unknown_0x37F7

UnknownData_0x5E2E:
INCBIN "baserom.gb", $5E2E, $5E71 - $5E2E
	call Unknown_0x359A
	call Unknown_0x3602
	call Unknown_0x7C8E
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A9E
	jr nc,Unknown_0x5E92
	ld e,$01
	ld bc,$5DB5
	jp Unknown_0x37F4

Unknown_0x5E92:
	call Unknown_0x7ADB
	jr nc,Unknown_0x5E9F
	ld e,$01
	ld bc,$5EFF
	jp Unknown_0x37F4

Unknown_0x5E9F:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x5EAE
	ld e,$01
	ld bc,$5DB5
	jp Unknown_0x37F4

Unknown_0x5EAE:
	call Unknown_0x37BD
	jr nc,Unknown_0x5EBB
	ld e,$01
	ld bc,$5EFF
	jp Unknown_0x37F4

Unknown_0x5EBB:
	call Unknown_0x36E6
	jr nc,Unknown_0x5EC8
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5EC8:
	call Unknown_0x374E
	jr nc,Unknown_0x5ED5
	ld e,$01
	ld bc,$5E2E
	jp Unknown_0x37F4

Unknown_0x5ED5:
	call Unknown_0x3650
	jr nc,Unknown_0x5EE2
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x5EE2:
	call Unknown_0x377C
	jr nc,Unknown_0x5EEF
	ld e,$01
	ld bc,$5FAB
	jp Unknown_0x37F4

Unknown_0x5EEF:
	call Unknown_0x3724
	jr nc,Unknown_0x5EFC
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x5EFC:
	jp Unknown_0x37F7

UnknownData_0x5EFF:
INCBIN "baserom.gb", $5EFF, $5F40 - $5EFF
	call Unknown_0x359A
	call Unknown_0x7D16
	call Unknown_0x7CCA
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x5F64
	ld e,$01
	ld bc,$5638
	jp Unknown_0x37F4

Unknown_0x5F64:
	call Unknown_0x3943
	call Unknown_0x37CB
	jr nc,Unknown_0x5F74
	ld e,$01
	ld bc,$5EFF
	jp Unknown_0x37F4

Unknown_0x5F74:
	call Unknown_0x3650
	jr nc,Unknown_0x5F81
	ld e,$01
	ld bc,$5FBE
	jp Unknown_0x37F4

Unknown_0x5F81:
	call Unknown_0x377C
	jr nc,Unknown_0x5F8E
	ld e,$01
	ld bc,$5FAB
	jp Unknown_0x37F4

Unknown_0x5F8E:
	call Unknown_0x36E6
	jr nc,Unknown_0x5F9B
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x5F9B:
	call Unknown_0x3724
	jr nc,Unknown_0x5FA8
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x5FA8:
	jp Unknown_0x37F7

UnknownData_0x5FAB:
INCBIN "baserom.gb", $5FAB, $602E - $5FAB

Unknown_0x602E:
INCBIN "baserom.gb", $602E, $6095 - $602E
	ld a,$04
	ld [$A05D],a
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3957
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7
	ld a,[$A070]
	or a
	ld e,$45
	ld a,[de]
	ld e,$38
	jr nz,Unknown_0x60D0
	rla
	ld bc,$0300
	jr nc,Unknown_0x60DB
	ld bc,$FD00

Unknown_0x60CB:
	call Unknown_0x0CD3
	jr Unknown_0x60DE

Unknown_0x60D0:
	rla
	ld bc,$0180
	jr nc,Unknown_0x60DB
	ld bc,$FE80
	jr Unknown_0x60CB

Unknown_0x60DB:
	call Unknown_0x0CA2

Unknown_0x60DE:
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x611A
	ld a,$04
	call Unknown_0x3AAA
	call Unknown_0x3AE4
	call Unknown_0x7B09
	call Unknown_0x7A8C
	jr nc,Unknown_0x6101
	ld e,$01
	ld bc,$606B
	jp Unknown_0x37F4

Unknown_0x6101:
	call Unknown_0x3992
	jr nc,Unknown_0x610E
	ld e,$01
	ld bc,$6078
	jp Unknown_0x37F4

Unknown_0x610E:
	call Unknown_0x3943
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

Unknown_0x611A:
INCBIN "baserom.gb", $611A, $611F - $611A
	ld a,[$A070]
	or a
	ld e,$20
	ld bc,$0280
	jr z,Unknown_0x612F
	ld e,$08
	ld bc,$0140

Unknown_0x612F:
	call Unknown_0x0D23
	ld e,$0E
	call Unknown_0x0D04
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3957
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

UnknownData_0x6154:
INCBIN "baserom.gb", $6154, $6196 - $6154
	ld hl,$1B1A
	call Unknown_0x7BAF
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x61BD
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x61BD:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x61CB
	ld e,$01
	ld bc,$6345
	jp Unknown_0x37F4

Unknown_0x61CB:
	call Unknown_0x7A55
	jr nc,Unknown_0x61D8
	ld e,$01
	ld bc,$6221
	jp Unknown_0x37F4

Unknown_0x61D8:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x61E6
	ld e,$01
	ld bc,$67B9
	jp Unknown_0x37F4

Unknown_0x61E6:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x61F4
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x61F4:
	call Unknown_0x36E6
	jr nc,Unknown_0x6201
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6201:
	call Unknown_0x3619
	jr nc,Unknown_0x620E
	ld e,$01
	ld bc,$6875
	jp Unknown_0x37F4

Unknown_0x620E:
	call Unknown_0x3724
	jr nc,Unknown_0x621B
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x621B:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x6221:
INCBIN "baserom.gb", $6221, $6282 - $6221
	call Unknown_0x359A
	call Unknown_0x7C45

Unknown_0x6288:
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A9E
	jr nc,Unknown_0x62A0
	ld e,$01
	ld bc,$616E
	jp Unknown_0x37F4

Unknown_0x62A0:
	call Unknown_0x7ADB
	jr nc,Unknown_0x62AD
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x62AD:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x62BB
	ld e,$01
	ld bc,$6345
	jp Unknown_0x37F4

Unknown_0x62BB:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x62CA
	ld e,$01
	ld bc,$616E
	jp Unknown_0x37F4

Unknown_0x62CA:
	call Unknown_0x373B
	jr nc,Unknown_0x62D7
	ld e,$01
	ld bc,$632D
	jp Unknown_0x37F4

Unknown_0x62D7:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x62E5
	ld e,$01
	ld bc,$67B9
	jp Unknown_0x37F4

Unknown_0x62E5:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x62F3
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x62F3:
	call Unknown_0x36E6
	jr nc,Unknown_0x6300
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6300:
	call Unknown_0x3619
	jr nc,Unknown_0x630D
	ld e,$01
	ld bc,$6875
	jp Unknown_0x37F4

Unknown_0x630D:
	call Unknown_0x374E
	jr nc,Unknown_0x631A
	ld e,$01
	ld bc,$6221
	jp Unknown_0x37F4

Unknown_0x631A:
	call Unknown_0x3724
	jr nc,Unknown_0x6327
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x6327:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x632D:
INCBIN "baserom.gb", $632D, $633C - $632D
	call Unknown_0x359A
	call Unknown_0x7C20
	jp Unknown_0x6288

UnknownData_0x6345:
INCBIN "baserom.gb", $6345, $6368 - $6345
	call Unknown_0x359A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x6379
	ld e,$01
	ld bc,$6354
	jp Unknown_0x37F4

Unknown_0x6379:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x638C
	ld h,d
	ld l,$1F
	ld [hl],$41
	inc l
	ld [hl],$63
	inc l
	ld [hl],$8C

Unknown_0x638C:
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x63B5
	ld e,$01
	ld bc,$615B
	jp Unknown_0x37F4

Unknown_0x63B5:
	call Unknown_0x39C1
	jr nc,Unknown_0x63C2
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x63C2:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x63D0
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x63D0:
	call Unknown_0x36E6
	jr nc,Unknown_0x63DD
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x63DD:
	call Unknown_0x3614
	jr nc,Unknown_0x63EA
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x63EA:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x63F0:
INCBIN "baserom.gb", $63F0, $6435 - $63F0
	ld hl,$1B1A
	call Unknown_0x7BAF
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A8C
	call Unknown_0x3992
	jr nc,Unknown_0x6464
	ld e,$01
	ld bc,$615B
	jp Unknown_0x37F4

Unknown_0x6464:
	call Unknown_0x39C1
	jr nc,Unknown_0x6471
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x6471:
	ld e,$52
	ld a,[de]
	or a
	jr z,Unknown_0x647F
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x647F:
	call Unknown_0x64D4
	jr nc,Unknown_0x648C
	ld e,$01
	ld bc,$64EC
	jp Unknown_0x37F4

Unknown_0x648C:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x649A
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x649A:
	call Unknown_0x3619
	jr nc,Unknown_0x64A7
	ld e,$01
	ld bc,$6875
	jp Unknown_0x37F4

Unknown_0x64A7:
	call Unknown_0x3765
	jr nc,Unknown_0x64B4
	ld e,$01
	ld bc,$6A41
	jp Unknown_0x37F4

Unknown_0x64B4:
	call Unknown_0x36E6
	jr nc,Unknown_0x64C1
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x64C1:
	call Unknown_0x3724
	jr nc,Unknown_0x64CE
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x64CE:
	call Unknown_0x6C37
	jp Unknown_0x37F7

Unknown_0x64D4:
	ld a,[$A05B]
	cp $01
	jr z,Unknown_0x64DD

Unknown_0x64DB:
	and a
	ret

Unknown_0x64DD:
	ld e,$0F
	ld a,[de]
	sub $80
	inc e
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x64DB
	sbc a,$02
	ccf
	ret

UnknownData_0x64EC:
INCBIN "baserom.gb", $64EC, $6510 - $64EC
	call Unknown_0x359A
	ld e,$20
	ld bc,$0080
	call Unknown_0x0D23
	call Unknown_0x7CB8
	call Unknown_0x659A
	ld hl,$6E0C
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3943
	call Unknown_0x3992
	push af
	call Unknown_0x65AB
	pop af
	jr nc,Unknown_0x6544
	ld e,$01
	ld bc,$615B
	jp Unknown_0x37F4

Unknown_0x6544:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x6552
	ld e,$01
	ld bc,$65B6
	jp Unknown_0x37F4

Unknown_0x6552:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x6560
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x6560:
	call Unknown_0x3619
	jr nc,Unknown_0x656D
	ld e,$01
	ld bc,$6875
	jp Unknown_0x37F4

Unknown_0x656D:
	call Unknown_0x3765
	jr nc,Unknown_0x657A
	ld e,$01
	ld bc,$6A41
	jp Unknown_0x37F4

Unknown_0x657A:
	call Unknown_0x36E6
	jr nc,Unknown_0x6587
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6587:
	call Unknown_0x3724
	jr nc,Unknown_0x6594
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x6594:
	call Unknown_0x6C37
	jp Unknown_0x37F7

Unknown_0x659A:
	ld e,$45
	ld a,[de]
	rla
	ld e,$3C
	ld a,[de]
	jr nc,Unknown_0x65A5
	cpl
	inc a

Unknown_0x65A5:
	add a,$05
	ld e,$15
	ld [de],a
	ret

Unknown_0x65AB:
	ld h,d
	ld e,$0D
	ld l,$8D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x65B6:
INCBIN "baserom.gb", $65B6, $65C3 - $65B6
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x6665
	ld a,$01
	call Unknown_0x3AAA
	call Unknown_0x7D6E
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x65F7
	ld e,$01
	ld bc,$670A
	jp Unknown_0x37F4

Unknown_0x65F7:
	call Unknown_0x39C1
	jr nc,Unknown_0x6604
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x6604:
	ld hl,$A06C
	bit 3,[hl]
	jr z,Unknown_0x6613
	ld e,$01
	ld bc,$666A
	jp Unknown_0x37F4

Unknown_0x6613:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x6621
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x6621:
	call Unknown_0x3619
	jr nc,Unknown_0x662E
	ld e,$01
	ld bc,$6875
	jp Unknown_0x37F4

Unknown_0x662E:
	call Unknown_0x3765
	jr nc,Unknown_0x663B
	ld e,$01
	ld bc,$6A41
	jp Unknown_0x37F4

Unknown_0x663B:
	call Unknown_0x36E6
	jr nc,Unknown_0x6648
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6648:
	call Unknown_0x3724
	jr nc,Unknown_0x6655
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x6655:
	call Unknown_0x3614
	jr nc,Unknown_0x6662
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x6662:
	jp Unknown_0x37F7

Unknown_0x6665:
INCBIN "baserom.gb", $6665, $6723 - $6665
	ld e,$40
	ld bc,$0280
	call Unknown_0x0D23
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x6746
	ld e,$01
	ld bc,$615B
	jp Unknown_0x37F4

Unknown_0x6746:
	call Unknown_0x39C1
	jr nc,Unknown_0x6753
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x6753:
	call Unknown_0x3619
	jr nc,Unknown_0x6760
	ld e,$01
	ld bc,$6875
	jp Unknown_0x37F4

Unknown_0x6760:
	call Unknown_0x3765
	jr nc,Unknown_0x676D
	ld e,$01
	ld bc,$6A41
	jp Unknown_0x37F4

Unknown_0x676D:
	call Unknown_0x3614
	jr nc,Unknown_0x677A
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x677A:
	jp Unknown_0x37F7

UnknownData_0x677D:
INCBIN "baserom.gb", $677D, $6790 - $677D
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D35
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x67B3
	ld e,$01
	ld bc,$615B
	jp Unknown_0x37F4

Unknown_0x67B3:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x67B9:
INCBIN "baserom.gb", $67B9, $67C6 - $67B9
	call Unknown_0x7C2E
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x67E4
	ld e,$01
	ld bc,$63F0
	jp Unknown_0x37F4

Unknown_0x67E4:
	call Unknown_0x36A5
	jr nc,Unknown_0x67F1
	ld e,$01
	ld bc,$677D
	jp Unknown_0x37F4

Unknown_0x67F1:
	ld a,[$FF00+$A5]
	bit 7,a
	jr nz,Unknown_0x67FF
	ld e,$01
	ld bc,$615B
	jp Unknown_0x37F4

Unknown_0x67FF:
	ld e,$15
	ld a,$08
	ld [de],a
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x680A:
INCBIN "baserom.gb", $680A, $684C - $680A
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x685A
	ld e,$01
	ld bc,$6836
	jp Unknown_0x37F4

Unknown_0x685A:
	call Unknown_0x7A1B
	call Unknown_0x378B
	call Unknown_0x37A8
	call Unknown_0x686C
	call Unknown_0x3AE4
	jp Unknown_0x37F7

Unknown_0x686C:
	call Unknown_0x6C40
	ld e,$3E
	ld a,[de]
	jp Unknown_0x3AAA

UnknownData_0x6875:
INCBIN "baserom.gb", $6875, $688A - $6875
	call Unknown_0x7CFD
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	call Unknown_0x36E6
	jr nc,Unknown_0x68B1
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x68B1:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x68B7:
INCBIN "baserom.gb", $68B7, $68CD - $68B7
	call Unknown_0x359A
	ld e,$50
	ld bc,$FEB3
	call Unknown_0x0D54
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x68FD
	ld e,$01
	ld bc,$69EE
	jp Unknown_0x37F4

Unknown_0x68FD:
	call Unknown_0x3765
	jr nc,Unknown_0x690A
	ld e,$01
	ld bc,$698B
	jp Unknown_0x37F4

Unknown_0x690A:
	call Unknown_0x36E6
	jr nc,Unknown_0x6917
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6917:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x691D:
INCBIN "baserom.gb", $691D, $692D - $691D
	call Unknown_0x359A
	ld e,$14
	ld bc,$0100
	call Unknown_0x0D23
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	ld a,[$FF00+$A5]
	and $41
	jr z,Unknown_0x695D
	ld e,$01
	ld bc,$68B7
	jp Unknown_0x37F4

Unknown_0x695D:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x696B
	ld e,$01
	ld bc,$69EE
	jp Unknown_0x37F4

Unknown_0x696B:
	call Unknown_0x3765
	jr nc,Unknown_0x6978
	ld e,$01
	ld bc,$698B
	jp Unknown_0x37F4

Unknown_0x6978:
	call Unknown_0x36E6
	jr nc,Unknown_0x6985
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6985:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x698B:
INCBIN "baserom.gb", $698B, $6A0F - $698B
	ld e,$14
	ld bc,$0100
	call Unknown_0x0D23
	call Unknown_0x7CC1
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3943
	call Unknown_0x3765
	jr nc,Unknown_0x6A3B
	ld e,$01
	ld bc,$6A41
	jp Unknown_0x37F4

Unknown_0x6A3B:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x6A41:
INCBIN "baserom.gb", $6A41, $6A5A - $6A41
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x6A7B
	ld e,$01
	ld bc,$6B91
	jp Unknown_0x37F4

Unknown_0x6A7B:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x6A89
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x6A89:
	call Unknown_0x37BD
	jr nc,Unknown_0x6A96
	ld e,$01
	ld bc,$6B91
	jp Unknown_0x37F4

Unknown_0x6A96:
	call Unknown_0x7A55
	jr nc,Unknown_0x6AA3
	ld e,$01
	ld bc,$6AC3
	jp Unknown_0x37F4

Unknown_0x6AA3:
	call Unknown_0x3724
	jr nc,Unknown_0x6AB0
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x6AB0:
	call Unknown_0x36E6
	jr nc,Unknown_0x6ABD
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6ABD:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x6AC3:
INCBIN "baserom.gb", $6AC3, $6AFF - $6AC3
	call Unknown_0x359A
	call Unknown_0x3602
	call Unknown_0x7C8E
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A9E
	jr nc,Unknown_0x6B20
	ld e,$01
	ld bc,$6A4D
	jp Unknown_0x37F4

Unknown_0x6B20:
	call Unknown_0x7ADB
	jr nc,Unknown_0x6B2D
	ld e,$01
	ld bc,$6B91
	jp Unknown_0x37F4

Unknown_0x6B2D:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x6B3C
	ld e,$01
	ld bc,$6A4D
	jp Unknown_0x37F4

Unknown_0x6B3C:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x6B4A
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x6B4A:
	call Unknown_0x37BD
	jr nc,Unknown_0x6B57
	ld e,$01
	ld bc,$6B91
	jp Unknown_0x37F4

Unknown_0x6B57:
	call Unknown_0x36E6
	jr nc,Unknown_0x6B64
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6B64:
	call Unknown_0x374E
	jr nc,Unknown_0x6B71
	ld e,$01
	ld bc,$6AC3
	jp Unknown_0x37F4

Unknown_0x6B71:
	call Unknown_0x377C
	jr nc,Unknown_0x6B7E
	ld e,$01
	ld bc,$6C2B
	jp Unknown_0x37F4

Unknown_0x6B7E:
	call Unknown_0x3724
	jr nc,Unknown_0x6B8B
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x6B8B:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x6B91:
INCBIN "baserom.gb", $6B91, $6BBC - $6B91
	call Unknown_0x359A
	call Unknown_0x7D16
	call Unknown_0x7CCA
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x6BE0
	ld e,$01
	ld bc,$615B
	jp Unknown_0x37F4

Unknown_0x6BE0:
	call Unknown_0x3943
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x6BF1
	ld e,$01
	ld bc,$680A
	jp Unknown_0x37F4

Unknown_0x6BF1:
	call Unknown_0x37CB
	jr nc,Unknown_0x6BFE
	ld e,$01
	ld bc,$6B91
	jp Unknown_0x37F4

Unknown_0x6BFE:
	call Unknown_0x377C
	jr nc,Unknown_0x6C0B
	ld e,$01
	ld bc,$6C2B
	jp Unknown_0x37F4

Unknown_0x6C0B:
	call Unknown_0x36E6
	jr nc,Unknown_0x6C18
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x6C18:
	call Unknown_0x3724
	jr nc,Unknown_0x6C25
	ld e,$01
	ld bc,$40A2
	jp Unknown_0x37F4

Unknown_0x6C25:
	call Unknown_0x6C37
	jp Unknown_0x37F7

UnknownData_0x6C2B:
INCBIN "baserom.gb", $6C2B, $6C37 - $6C2B

Unknown_0x6C37:
	call Unknown_0x6C40
	ret z
	ld a,$01
	jp Unknown_0x3AAA

Unknown_0x6C40:
	ld e,$15
	ld a,[de]
	ld hl,$6C51
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x6C4C
	inc h

Unknown_0x6C4C:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	or h
	ret

UnknownData_0x6C51:
INCBIN "baserom.gb", $6C51, $6D53 - $6C51
	ld a,$04
	ld [$A05D],a
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3957
	jp Unknown_0x37F7

UnknownData_0x6D6F:
INCBIN "baserom.gb", $6D6F, $6D77 - $6D6F
	ld a,[$A070]
	or a
	ld e,$60
	ld bc,$0400
	jr z,Unknown_0x6D87
	ld e,$40
	ld bc,$0200

Unknown_0x6D87:
	call Unknown_0x0D23
	ld a,[$A070]
	or a
	ld e,$0E
	jr z,Unknown_0x6D94
	ld e,$09

Unknown_0x6D94:
	call Unknown_0x0D04
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x6DCF
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x6DB5
	ld e,$01
	ld bc,$6DDF
	jp Unknown_0x37F4

Unknown_0x6DB5:
	call Unknown_0x3957
	ld a,[$FF00+$A6]
	and $02
	jr z,Unknown_0x6DC6
	ld e,$01
	ld bc,$6E8A
	jp Unknown_0x37F4

Unknown_0x6DC6:
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

Unknown_0x6DCF:
	ld hl,Unknown_0x6DDA
	ld a,$06
	call Unknown_0x3AAA
	jp Unknown_0x3AE4

Unknown_0x6DDA:
INCBIN "baserom.gb", $6DDA, $6E00 - $6DDA
	ld a,[$A070]
	or a
	ld a,$04
	jr z,Unknown_0x6E0A
	ld a,$08

Unknown_0x6E0A:
	ld e,$24
	ld [de],a
	ret
	ld e,$0E
	ld a,[de]
	ld h,a
	dec e
	ld a,[de]
	or h
	ret z
	ld e,$45
	ld a,[de]
	xor h
	rla
	ld e,$15
	ld a,[de]
	jr c,Unknown_0x6E28
	inc a
	cp $08
	jr c,Unknown_0x6E2F
	xor a
	jr Unknown_0x6E2F

Unknown_0x6E28:
	dec a
	cp $08
	jr c,Unknown_0x6E2F
	ld a,$07

Unknown_0x6E2F:
	ld [de],a
	ret
	call Unknown_0x7BC7
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	ld a,$04
	ld [$A05D],a
	ld e,$0D
	ld a,[de]
	ld b,a
	inc e
	ld a,[de]
	or b
	call nz,Unknown_0x6DCF
	call Unknown_0x7B09
	call Unknown_0x1D8B
	call Unknown_0x7ADB
	jr nc,Unknown_0x6E5E
	ld e,$01
	ld bc,$6D6F
	jp Unknown_0x37F4

Unknown_0x6E5E:
	ld a,[$FF00+$A6]
	and $02
	jr z,Unknown_0x6E6C
	ld e,$01
	ld bc,$6E8A
	jp Unknown_0x37F4

Unknown_0x6E6C:
	ld e,$0D
	ld a,[de]
	ld b,a
	inc e
	ld a,[de]
	or b
	ld e,$3A
	jr z,Unknown_0x6E7A
	ld a,$78
	ld [de],a

Unknown_0x6E7A:
	ld a,[de]
	dec a
	ld [de],a
	jr nz,Unknown_0x6E87
	ld e,$01
	ld bc,$6E8A
	jp Unknown_0x37F4

Unknown_0x6E87:
	jp Unknown_0x37F7

UnknownData_0x6E8A:
INCBIN "baserom.gb", $6E8A, $6EB3 - $6E8A
	call Unknown_0x7A1B
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

UnknownData_0x6EBF:
INCBIN "baserom.gb", $6EBF, $6EFE - $6EBF
	call Unknown_0x7A1B
	call Unknown_0x378B
	call Unknown_0x37A8
	ld e,$15
	ld a,[de]
	or a
	jr z,Unknown_0x6F24
	cp $02
	ld hl,Unknown_0x6F3B
	jr c,Unknown_0x6F1C
	ld hl,Unknown_0x6F40
	jr z,Unknown_0x6F1C
	ld hl,Unknown_0x6F45

Unknown_0x6F1C:
	ld a,$05
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0x6F24:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x6F38
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x6F38
	ld e,$01
	ld bc,$6EEE
	jp Unknown_0x37F4

Unknown_0x6F38:
	jp Unknown_0x37F7

Unknown_0x6F3B:
INCBIN "baserom.gb", $6F3B, $6F40 - $6F3B

Unknown_0x6F40:
INCBIN "baserom.gb", $6F40, $6F45 - $6F40

Unknown_0x6F45:
INCBIN "baserom.gb", $6F45, $6FE4 - $6F45
	call Unknown_0x7A1B
	call Unknown_0x378B
	call Unknown_0x37A8
	ld e,$3B
	ld a,[de]
	cp $01
	jr c,Unknown_0x7004
	ld hl,Unknown_0x701B
	jr z,Unknown_0x6FFC
	ld hl,Unknown_0x7020

Unknown_0x6FFC:
	ld a,$03
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0x7004:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x7018
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x7018
	ld e,$01
	ld bc,$6FD2
	jp Unknown_0x37F4

Unknown_0x7018:
	jp Unknown_0x37F7

Unknown_0x701B:
INCBIN "baserom.gb", $701B, $7020 - $701B

Unknown_0x7020:
INCBIN "baserom.gb", $7020, $705A - $7020
	call Unknown_0x7A1B
	call Unknown_0x378B
	call Unknown_0x37A8
	ld e,$15
	ld a,[de]
	or a
	jr z,Unknown_0x7074
	ld a,$02
	ld hl,Unknown_0x7095
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0x7074:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x707E
	dec a
	ld [de],a
	jr Unknown_0x7092

Unknown_0x707E:
	ld a,[$A070]
	or a
	jr nz,Unknown_0x708A
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x7092

Unknown_0x708A:
	ld e,$01
	ld bc,$704D
	jp Unknown_0x37F4

Unknown_0x7092:
	jp Unknown_0x37F7

Unknown_0x7095:
INCBIN "baserom.gb", $7095, $70AE - $7095

Unknown_0x70AE:
	ld e,$45
	ld a,[de]
	ld b,a
	ld e,$3B
	ld a,[de]
	xor b
	rla
	ret nc
	ld a,b
	ld [de],a
	ld a,$02
	ld e,$3C
	ld [de],a
	ld a,$16
	ld e,$15
	ld [de],a
	ret

UnknownData_0x70C5:
INCBIN "baserom.gb", $70C5, $70D0 - $70C5
	ld e,$3C
	ld a,[de]
	cp $02
	ld a,$16
	jr nc,Unknown_0x70DB
	ld a,$07

Unknown_0x70DB:
	ld e,$15
	ld [de],a
	ld e,$3C
	ld a,[de]
	dec a
	ld [de],a
	ret

UnknownData_0x70E4:
INCBIN "baserom.gb", $70E4, $70F7 - $70E4
	call Unknown_0x359A
	ld e,$3C
	ld a,[de]
	or a
	jr nz,Unknown_0x7120
	ld a,[$FF00+$A5]
	and $F0
	jr z,Unknown_0x7119
	ld e,$3E
	ld a,[de]
	cp $0F
	jr nc,Unknown_0x7112
	inc a
	ld [de],a
	xor a
	jr Unknown_0x7114

Unknown_0x7112:
	ld a,$01

Unknown_0x7114:
	ld e,$15
	ld [de],a
	jr Unknown_0x7120

Unknown_0x7119:
	xor a
	ld e,$15
	ld [de],a
	ld e,$3E
	ld [de],a

Unknown_0x7120:
	call Unknown_0x7CDC
	call Unknown_0x7CD3
	call Unknown_0x70AE
	jr nc,Unknown_0x7133
	ld e,$01
	ld bc,$70E4
	call Unknown_0x0846

Unknown_0x7133:
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x3650
	jr nc,Unknown_0x7148
	ld e,$01
	ld bc,$7158
	jp Unknown_0x37F4

Unknown_0x7148:
	call Unknown_0x725F
	jr nc,Unknown_0x7155
	ld e,$01
	ld bc,$4EC9
	jp Unknown_0x37F4

Unknown_0x7155:
	jp Unknown_0x37F7

UnknownData_0x7158:
INCBIN "baserom.gb", $7158, $71C9 - $7158
	ld e,$0E
	call Unknown_0x0D85
	ld e,$0E
	call Unknown_0x0D04
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	ld e,$15
	ld a,[de]
	cp $02
	jr c,Unknown_0x7201
	cp $06
	jr c,Unknown_0x71F0
	cp $1A
	jr c,Unknown_0x7201
	cp $1E
	jr nc,Unknown_0x7201
	sub $14

Unknown_0x71F0:
	ld hl,$7223
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x71F9
	inc h

Unknown_0x71F9:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,$02
	call Unknown_0x3AAA

Unknown_0x7201:
	ld e,$3F
	ld a,[de]
	or a
	jr z,Unknown_0x7217
	call Unknown_0x359A
	call Unknown_0x3650
	jr nc,Unknown_0x7217
	ld e,$01
	ld bc,$7158
	jp Unknown_0x37F4

Unknown_0x7217:
	call Unknown_0x725F
	jr nc,Unknown_0x7224
	ld e,$01
	ld bc,$4EC9
	jp Unknown_0x37F4

Unknown_0x7224:
	jp Unknown_0x37F7

UnknownData_0x7227:
INCBIN "baserom.gb", $7227, $725F - $7227

Unknown_0x725F:
	ld a,[$A054]
	or a
	jr z,Unknown_0x7267

Unknown_0x7265:
	and a
	ret

Unknown_0x7267:
	ld hl,$DB4B
	ld a,[hli]
	ld e,a
	ld a,[hl]
	ld hl,$DB54
	sub [hl]
	jr nz,Unknown_0x7265
	dec hl
	ld a,[hl]
	sub e
	jr nz,Unknown_0x7265
	ld e,$3D
	ld a,[de]
	cp $0C
	jr nc,Unknown_0x728B
	ld b,$1B
	bit 1,a
	jr nz,Unknown_0x7287
	ld b,$E4

Unknown_0x7287:
	ld hl,$CD00
	ld [hl],b

Unknown_0x728B:
	or a
	jr z,Unknown_0x7292
	dec a
	ld [de],a
	jr Unknown_0x7265

Unknown_0x7292:
	ld e,$44
	ld a,$02
	ld [de],a
	ld b,a
	call Unknown_0x3A8B
	scf
	ret

UnknownData_0x729D:
INCBIN "baserom.gb", $729D, $72BE - $729D
	xor a
	ld hl,$A153
	ld [hl],a
	inc h
	ld [hl],a
	inc h
	ld [hl],a
	ld [$A055],a
	ld [$A056],a
	ld [$A059],a
	ld [$A057],a
	dec a
	ld [$A058],a
	ld e,$45
	ld a,[de]
	rla
	ld a,$3C
	jr c,Unknown_0x72E1
	cpl
	inc a

Unknown_0x72E1:
	ld [$A063],a
	ret
	call Unknown_0x7A1B
	ld a,[$A056]
	or a
	jr z,Unknown_0x72FC
	ld a,[$A055]
	or a
	jr nz,Unknown_0x72FC
	ld e,$01
	ld bc,$741A
	jp Unknown_0x37F4

Unknown_0x72FC:
	ld h,d
	ld l,$39
	ld a,[hl]
	or a
	jr z,Unknown_0x7306
	dec [hl]
	jr Unknown_0x7320

Unknown_0x7306:
	ld a,[$FF00+$A5]
	bit 1,a
	jr nz,Unknown_0x7320
	ld a,[$A056]
	or a
	jr nz,Unknown_0x7320
	ld a,[$A055]
	or a
	jr nz,Unknown_0x7320
	ld e,$01
	ld bc,$73FB
	jp Unknown_0x37F4

Unknown_0x7320:
	call Unknown_0x3A24
	jr nc,Unknown_0x732D
	ld e,$01
	ld bc,$4C05
	jp Unknown_0x37F4

Unknown_0x732D:
	ld e,$3D
	ld a,[de]
	or a
	jr z,Unknown_0x7337
	dec a
	ld [de],a
	jr Unknown_0x733A

Unknown_0x7337:
	call Unknown_0x7348

Unknown_0x733A:
	ld hl,Unknown_0x7343
	call Unknown_0x3AAA
	jp Unknown_0x37F7

Unknown_0x7343:
INCBIN "baserom.gb", $7343, $7348 - $7343

Unknown_0x7348:
	ld a,[$A057]
	rla
	jr c,Unknown_0x7360
	ld a,[$A055]
	or a
	jr nz,Unknown_0x7360
	ld a,[$A056]
	or a
	jr nz,Unknown_0x7360
	ld a,[$A100]
	inc a
	jr z,Unknown_0x7361

Unknown_0x7360:
	ret

Unknown_0x7361:
	ld a,[$A071]
	ld hl,$7F00
	add a,a
	add a,l
	ld l,a
	ld a,[hli]
	ld b,[hl]
	ld c,a
	ld e,$45
	ld a,[de]
	rla
	jr c,Unknown_0x7398

Unknown_0x7373:
	ld hl,$A007
	ld a,[bc]
	cp $80
	jr z,Unknown_0x73BE
	inc c
	add a,[hl]
	inc l
	ld e,a
	ld a,[bc]
	inc c
	adc a,[hl]
	ld d,a
	ld hl,$A004
	ld a,[bc]
	inc c
	push bc
	add a,[hl]
	inc l
	ld c,a
	ld a,[hl]
	adc a,$00
	ld b,a
	call Unknown_0x73C2
	pop bc
	jr c,Unknown_0x73BE
	jr Unknown_0x7373

Unknown_0x7398:
	ld hl,$A007
	ld a,[bc]
	cp $80
	jr z,Unknown_0x73BE
	inc c
	add a,[hl]
	inc l
	ld e,a
	ld a,[bc]
	inc c
	adc a,[hl]
	ld d,a
	ld hl,$A004
	ld a,[bc]
	inc c
	push bc
	ld c,a
	ld a,[hli]
	sub c
	ld c,a
	ld a,[hl]
	sbc a,$00
	ld b,a
	call Unknown_0x73C2
	pop bc
	jr c,Unknown_0x73BE
	jr Unknown_0x7398

Unknown_0x73BE:
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x73C2:
	call Unknown_0x1646
	cp $21
	jr z,Unknown_0x73CB
	and a
	ret

Unknown_0x73CB:
	ld a,l
	ld [$FF00+$80],a
	push bc
	push de
	ld a,e
	and $F0
	or $08
	ld e,a
	ld a,c
	and $F0
	or $08
	ld c,a
	ld hl,$A1A2
	ld a,$03
	call Unknown_0x07C4
	ld l,$50
	ld [hl],$00
	ld hl,$A055
	inc [hl]
	ld hl,$A057
	set 6,[hl]
	pop de
	pop bc
	ld a,[$FF00+$80]
	inc a
	call Unknown_0x15A8
	scf
	ret

UnknownData_0x73FB:
INCBIN "baserom.gb", $73FB, $7407 - $73FB
	call Unknown_0x7A1B
	call Unknown_0x3765
	jr nc,Unknown_0x7417
	ld e,$01
	ld bc,$4C05
	jp Unknown_0x37F4

Unknown_0x7417:
	jp Unknown_0x37F7

UnknownData_0x741A:
INCBIN "baserom.gb", $741A, $741F - $741A

Unknown_0x741F:
INCBIN "baserom.gb", $741F, $743B - $741F
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7C45
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3957
	call Unknown_0x3765
	jr nc,Unknown_0x7467
	ld e,$01
	ld bc,$7815
	jp Unknown_0x37F4

Unknown_0x7467:
	jp Unknown_0x37F7

UnknownData_0x746A:
INCBIN "baserom.gb", $746A, $746C - $746A

Unknown_0x746C:
INCBIN "baserom.gb", $746C, $7496 - $746C
	call Unknown_0x3847
	ld a,h
	ld e,$6D
	ld [de],a
	ld hl,$74AA
	add a,l
	ld l,a
	jr nc,Unknown_0x74A5
	inc h

Unknown_0x74A5:
	ld a,[hl]
	ld e,$15
	ld [de],a
	ret

UnknownData_0x74AA:
INCBIN "baserom.gb", $74AA, $74B0 - $74AA
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x3924
	call Unknown_0x7ADB
	jr nc,Unknown_0x74D1
	ld e,$01
	ld bc,$76A8
	jp Unknown_0x37F4

Unknown_0x74D1:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x74DF
	ld e,$01
	ld bc,$760D
	jp Unknown_0x37F4

Unknown_0x74DF:
	call Unknown_0x7A55
	jr nc,Unknown_0x74EC
	ld e,$01
	ld bc,$7525
	jp Unknown_0x37F4

Unknown_0x74EC:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x74FA
	ld e,$01
	ld bc,$777F
	jp Unknown_0x37F4

Unknown_0x74FA:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x7508
	ld e,$01
	ld bc,$770C
	jp Unknown_0x37F4

Unknown_0x7508:
	call Unknown_0x36E6
	jr nc,Unknown_0x7515
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x7515:
	call Unknown_0x374E
	jr nc,Unknown_0x7522
	ld e,$01
	ld bc,$7488
	jp Unknown_0x37F4

Unknown_0x7522:
	jp Unknown_0x37F7

UnknownData_0x7525:
INCBIN "baserom.gb", $7525, $7567 - $7525
	call Unknown_0x359A
	call Unknown_0x7C45

Unknown_0x756D:
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x7A9E
	jr nc,Unknown_0x7585
	ld e,$01
	ld bc,$7488
	jp Unknown_0x37F4

Unknown_0x7585:
	call Unknown_0x7ADB
	jr nc,Unknown_0x7592
	ld e,$01
	ld bc,$76A8
	jp Unknown_0x37F4

Unknown_0x7592:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x75A0
	ld e,$01
	ld bc,$760D
	jp Unknown_0x37F4

Unknown_0x75A0:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x75AF
	ld e,$01
	ld bc,$7488
	jp Unknown_0x37F4

Unknown_0x75AF:
	call Unknown_0x373B
	jr nc,Unknown_0x75BC
	ld e,$01
	ld bc,$75F5
	jp Unknown_0x37F4

Unknown_0x75BC:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x75CA
	ld e,$01
	ld bc,$777F
	jp Unknown_0x37F4

Unknown_0x75CA:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x75D8
	ld e,$01
	ld bc,$770C
	jp Unknown_0x37F4

Unknown_0x75D8:
	call Unknown_0x374E
	jr nc,Unknown_0x75E5
	ld e,$01
	ld bc,$7525
	jp Unknown_0x37F4

Unknown_0x75E5:
	call Unknown_0x36E6
	jr nc,Unknown_0x75F2
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x75F2:
	jp Unknown_0x37F7

UnknownData_0x75F5:
INCBIN "baserom.gb", $75F5, $7604 - $75F5
	call Unknown_0x359A
	call Unknown_0x7C20
	jp Unknown_0x756D

UnknownData_0x760D:
INCBIN "baserom.gb", $760D, $7630 - $760D
	call Unknown_0x359A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x7641
	ld e,$01
	ld bc,$761C
	jp Unknown_0x37F4

Unknown_0x7641:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x7654
	ld h,d
	ld l,$1F
	ld [hl],$41
	inc l
	ld [hl],$76
	inc l
	ld [hl],$54

Unknown_0x7654:
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x767D
	ld e,$01
	ld bc,$7471
	jp Unknown_0x37F4

Unknown_0x767D:
	call Unknown_0x39C1
	jr nc,Unknown_0x768A
	ld e,$01
	ld bc,$76A8
	jp Unknown_0x37F4

Unknown_0x768A:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x7698
	ld e,$01
	ld bc,$770C
	jp Unknown_0x37F4

Unknown_0x7698:
	call Unknown_0x36E6
	jr nc,Unknown_0x76A5
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x76A5:
	jp Unknown_0x37F7

UnknownData_0x76A8:
INCBIN "baserom.gb", $76A8, $76B5 - $76A8
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0x7CB8
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3992
	jr nc,Unknown_0x76DE
	ld e,$01
	ld bc,$7471
	jp Unknown_0x37F4

Unknown_0x76DE:
	call Unknown_0x3957
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x76EF
	ld e,$01
	ld bc,$770C
	jp Unknown_0x37F4

Unknown_0x76EF:
	call Unknown_0x3765
	jr nc,Unknown_0x76FC
	ld e,$01
	ld bc,$7815
	jp Unknown_0x37F4

Unknown_0x76FC:
	call Unknown_0x36E6
	jr nc,Unknown_0x7709
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x7709:
	jp Unknown_0x37F7

UnknownData_0x770C:
INCBIN "baserom.gb", $770C, $7741 - $770C
	ld e,$45
	ld a,[de]
	rla
	ld a,[$FF00+$A5]
	jr c,Unknown_0x774F
	bit 4,a
	jr z,Unknown_0x7755
	jr Unknown_0x7758

Unknown_0x774F:
	bit 5,a
	jr z,Unknown_0x7755
	jr Unknown_0x7758

Unknown_0x7755:
	call Unknown_0x7A35

Unknown_0x7758:
	call Unknown_0x7A42
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	call Unknown_0x3957
	call Unknown_0x3765
	jr nc,Unknown_0x777C
	ld e,$01
	ld bc,$4C05
	jp Unknown_0x37F4

Unknown_0x777C:
	jp Unknown_0x37F7

UnknownData_0x777F:
INCBIN "baserom.gb", $777F, $77ED - $777F
	ld a,[$A05B]
	bit 7,a
	jr z,Unknown_0x77F7
	xor a
	jr Unknown_0x7800

Unknown_0x77F7:
	ld hl,$7804
	add a,l
	ld l,a
	jr nc,Unknown_0x77FF
	inc h

Unknown_0x77FF:
	ld a,[hl]

Unknown_0x7800:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x7804:
INCBIN "baserom.gb", $7804, $780B - $7804
	call Unknown_0x7A1B
	jp Unknown_0x37F7
	call Unknown_0x34FD
	ret

UnknownData_0x7815:
INCBIN "baserom.gb", $7815, $79F4 - $7815
	ld a,[$A051]
	ld hl,$7A0D
	add a,l
	ld l,a
	jr nc,Unknown_0x79FF
	inc h

Unknown_0x79FF:
	ld a,[hl]
	ld [$A051],a
	ld a,$00
	ld [$A050],a
	xor a
	ld [$A054],a
	ret

UnknownData_0x7A0D:
INCBIN "baserom.gb", $7A0D, $7A1B - $7A0D

Unknown_0x7A1B:
	call Unknown_0x7A35
	call Unknown_0x7A42
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x7B09
	call Unknown_0x391F
	call Unknown_0x3977
	jp Unknown_0x3957

Unknown_0x7A35:
	ld a,[$A070]
	or a
	ld e,$0E
	jr z,Unknown_0x7A3F
	ld e,$09

Unknown_0x7A3F:
	jp Unknown_0x0D04

Unknown_0x7A42:
	ld a,[$A070]
	or a
	ld e,$20
	ld bc,$0280
	jr z,Unknown_0x7A52
	ld e,$08
	ld bc,$00E0

Unknown_0x7A52:
	jp Unknown_0x0D23

Unknown_0x7A55:
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0x7A8A
	ld h,d
	ld de,$FFF9
	bit 4,a
	jr z,Unknown_0x7A73
	ld bc,$0007
	call Unknown_0x1AD9
	call Unknown_0x17A3
	jr nc,Unknown_0x7A82
	rla
	jr c,Unknown_0x7A87
	jr Unknown_0x7A82

Unknown_0x7A73:
	ld bc,$FFF8
	call Unknown_0x1AD9
	call Unknown_0x16EF
	jr nc,Unknown_0x7A82
	dec a
	rla
	jr nc,Unknown_0x7A87

Unknown_0x7A82:
	ld a,[$FF00+$9A]
	ld d,a
	scf
	ret

Unknown_0x7A87:
	ld a,[$FF00+$9A]
	ld d,a

Unknown_0x7A8A:
	and a
	ret

Unknown_0x7A8C:
	call Unknown_0x1DC7
	jr nc,Unknown_0x7A9C
	call Unknown_0x7ABB
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	scf
	ret

Unknown_0x7A9C:
	and a
	ret

Unknown_0x7A9E:
	call Unknown_0x1D8B
	jr nc,Unknown_0x7AB9
	ld e,$45
	ld a,[de]
	ld b,a
	ld e,$0E
	ld a,[de]
	xor b
	rla
	jr c,Unknown_0x7AB9
	call Unknown_0x7ABB
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	scf
	ret

Unknown_0x7AB9:
	and a
	ret

Unknown_0x7ABB:
	ld h,d
	ld l,$0E
	ld a,[hld]
	rla
	ld a,[hli]
	ld e,$52
	jr c,Unknown_0x7AD0
	sub $B3
	ld a,[hl]
	sbc a,$00
	jr c,Unknown_0x7ADA
	ld a,$03
	jr Unknown_0x7AD9

Unknown_0x7AD0:
	add a,$B3
	ld a,[hl]
	adc a,$00
	jr c,Unknown_0x7ADA
	ld a,$04

Unknown_0x7AD9:
	ld [de],a

Unknown_0x7ADA:
	ret

Unknown_0x7ADB:
	call Unknown_0x1B61
	ret c
	ld a,[$FF00+$9E]
	cp $04
	jr c,Unknown_0x7AFF
	ld a,[$FF00+$AF]
	inc a
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld b,$00
	ld c,b
	call Unknown_0x1AD9
	call Unknown_0x184E
	jr c,Unknown_0x7AFC
	ld a,[$FF00+$9A]
	ld d,a
	jr Unknown_0x7AFF

Unknown_0x7AFC:
	call Unknown_0x1BBA

Unknown_0x7AFF:
	ld e,$4E
	ld a,[de]
	cp $31
	call z,Unknown_0x3C63
	and a
	ret

Unknown_0x7B09:
	ld hl,$FFAE
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$0D
	ld [hli],a
	ld a,$F3
	ld [hli],a
	ret

UnknownData_0x7B1F:
INCBIN "baserom.gb", $7B1F, $7B2B - $7B1F
	ld e,$45
	ld a,[de]
	rla
	ld e,$52
	ld a,[de]
	jr nc,Unknown_0x7B35
	cpl

Unknown_0x7B35:
	rra
	ld a,[bc]
	inc bc
	jr c,Unknown_0x7B3B
	ld a,[bc]

Unknown_0x7B3B:
	inc bc
	ld e,$15
	ld [de],a
	ret
	push bc
	call Unknown_0x1AB3
	pop bc
	jr nz,Unknown_0x7B72
	ld a,$01
	ld [$A070],a
	push bc
	call Unknown_0x7B09
	call Unknown_0x1AF6
	pop bc
	jr nc,Unknown_0x7B5C
	ld e,$27
	ld a,$06
	ld [de],a
	ret

Unknown_0x7B5C:
	ld h,d
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a
	ld l,$0D
	ld a,[hli]
	or [hl]
	ld e,$27
	jr nz,Unknown_0x7B6E
	ld a,$04
	ld [de],a
	ret

Unknown_0x7B6E:
	ld a,$05
	ld [de],a
	ret

Unknown_0x7B72:
	xor a
	ld [$A070],a
	ld a,[$A050]
	cp $0D
	jr nz,Unknown_0x7B83
	ld e,$27
	ld a,$03
	ld [de],a
	ret

Unknown_0x7B83:
	ld e,$10
	ld a,[de]
	rla
	jr c,Unknown_0x7B93
	push bc
	call Unknown_0x7B09
	call Unknown_0x1AF6
	pop bc
	jr nc,Unknown_0x7B99

Unknown_0x7B93:
	ld e,$27
	ld a,$02
	ld [de],a
	ret

Unknown_0x7B99:
	ld h,d
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a
	ld l,$0D
	ld a,[hli]
	or [hl]
	ld e,$27
	jr nz,Unknown_0x7BAB
	ld a,$00
	ld [de],a
	ret

Unknown_0x7BAB:
	ld a,$01
	ld [de],a
	ret

Unknown_0x7BAF:
	ld e,$45
	ld a,[de]
	rla
	ld a,[$FF00+$A5]
	bit 5,a
	jr nc,Unknown_0x7BBB
	bit 4,a

Unknown_0x7BBB:
	jr z,Unknown_0x7BC6
	ld e,$15
	ld a,[de]
	cp h
	ld a,l
	jr z,Unknown_0x7BC5
	ld a,h

Unknown_0x7BC5:
	ld [de],a

Unknown_0x7BC6:
	ret

Unknown_0x7BC7:
	ld e,$4E
	ld a,[de]
	and $F0
	cp $70
	ld b,$00
	jr z,Unknown_0x7BDA
	inc b
	ld a,[$A070]
	or a
	jr nz,Unknown_0x7BDA
	inc b

Unknown_0x7BDA:
	ld e,$4D
	ld a,[de]
	cp $04
	jr c,Unknown_0x7C0F
	ld e,$20
	jr nz,Unknown_0x7BFA
	bit 1,b
	jr nz,Unknown_0x7BF4
	ld e,$0B
	bit 0,b
	ld bc,$FF00
	jr nz,Unknown_0x7BF7
	ld e,$18

Unknown_0x7BF4:
	ld bc,$FE20

Unknown_0x7BF7:
	jp Unknown_0x0CD3

Unknown_0x7BFA:
	bit 1,b
	jr nz,Unknown_0x7C09
	ld e,$0B
	bit 0,b
	ld bc,$0100
	jr nz,Unknown_0x7C0C
	ld e,$18

Unknown_0x7C09:
	ld bc,$01E0

Unknown_0x7C0C:
	jp Unknown_0x0CA2

Unknown_0x7C0F:
	bit 1,b
	ld e,$0E
	jr nz,Unknown_0x7C1D
	bit 0,b
	ld e,$05
	jr nz,Unknown_0x7C1D
	ld e,$04

Unknown_0x7C1D:
	jp Unknown_0x0D04

Unknown_0x7C20:
	ld e,$6D
	ld a,[de]
	cp $03
	ld e,$28
	jr c,Unknown_0x7C2B
	ld e,$08

Unknown_0x7C2B:
	jp Unknown_0x0D04

Unknown_0x7C2E:
	call Unknown_0x3847
	ld a,h
	ld hl,$7C3F
	add a,l
	ld l,a
	jr nc,Unknown_0x7C3A
	inc h

Unknown_0x7C3A:
	ld a,[hl]
	ld e,a
	jp Unknown_0x0D04

UnknownData_0x7C3F:
INCBIN "baserom.gb", $7C3F, $7C45 - $7C3F

Unknown_0x7C45:
	ld e,$6D
	ld a,[de]
	cp $03
	jr nc,Unknown_0x7C6D
	cp $01
	jr z,Unknown_0x7C5B
	jr nc,Unknown_0x7C64
	ld hl,$200E
	ld bc,$0133
	jp Unknown_0x386E

Unknown_0x7C5B:
	ld hl,$080E
	ld bc,$00A0
	jp Unknown_0x386E

Unknown_0x7C64:
	ld hl,$200E
	ld bc,$01E0
	jp Unknown_0x386E

Unknown_0x7C6D:
	cp $04
	jr z,Unknown_0x7C7C
	jr nc,Unknown_0x7C85
	ld hl,$1804
	ld bc,$0133
	jp Unknown_0x386E

Unknown_0x7C7C:
	ld hl,$0604
	ld bc,$00A0
	jp Unknown_0x386E

Unknown_0x7C85:
	ld hl,$1804
	ld bc,$01E0
	jp Unknown_0x386E

Unknown_0x7C8E:
	ld e,$6D
	ld a,[de]
	cp $03
	jr c,Unknown_0x7C97
	sub $03

Unknown_0x7C97:
	cp $01
	jr z,Unknown_0x7CA6
	jr nc,Unknown_0x7CAF
	ld hl,$0B05
	ld bc,$0099
	jp Unknown_0x386E

Unknown_0x7CA6:
	ld hl,$0305
	ld bc,$0040
	jp Unknown_0x386E

Unknown_0x7CAF:
	ld hl,$0B05
	ld bc,$0100
	jp Unknown_0x386E

Unknown_0x7CB8:
	ld hl,$160E
	ld bc,$0133
	jp Unknown_0x3894

Unknown_0x7CC1:
	ld hl,$1609
	ld bc,$00C0
	jp Unknown_0x3894

Unknown_0x7CCA:
	ld hl,$0809
	ld bc,$010C
	jp Unknown_0x3894

Unknown_0x7CD3:
	ld hl,$2C0E
	ld bc,$0133
	jp Unknown_0x3894

Unknown_0x7CDC:
	ld a,[$FF00+$A5]
	ld e,a
	and $41
	jr nz,Unknown_0x7CF0
	ld a,e
	and $80
	jr z,Unknown_0x7CF8
	ld e,$2C
	ld bc,$0133
	jp Unknown_0x0D23

Unknown_0x7CF0:
	ld e,$2C
	ld bc,$FECD
	jp Unknown_0x0D54

Unknown_0x7CF8:
	ld e,$0E
	jp Unknown_0x0D85

Unknown_0x7CFD:
	ld a,[$FF00+$A5]
	and $41
	jr z,Unknown_0x7D0D
	ld e,$50
	ld bc,$FEB3
	call Unknown_0x0D54
	jr Unknown_0x7D15

Unknown_0x7D0D:
	ld e,$14
	ld bc,$0100
	call Unknown_0x0D23

Unknown_0x7D15:
	ret

Unknown_0x7D16:
	ld h,d
	ld l,$6E
	ld a,[hl]
	or a
	jr z,Unknown_0x7D20
	dec [hl]
	jr Unknown_0x7D2F

Unknown_0x7D20:
	ld a,[$FF00+$A5]
	and $41
	jr z,Unknown_0x7D2F
	ld [hl],$0F
	ld l,$0F
	ld [hl],$00
	inc l
	ld [hl],$FF

Unknown_0x7D2F:
	ld e,$08
	ld bc,$00E0
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x7D3F
	ld e,$10
	ld bc,$0200

Unknown_0x7D3F:
	jp Unknown_0x0D23

UnknownData_0x7D42:
INCBIN "baserom.gb", $7D42, $7D6E - $7D42

Unknown_0x7D6E:
	call Unknown_0x3AE9
	ret nc
	ld hl,$A06C
	set 3,[hl]
	ret
	ld h,$00
	ld a,[$FF00+$A5]
	bit 6,a
	jr nz,Unknown_0x7D86
	inc h
	bit 7,a
	jr nz,Unknown_0x7D86
	inc h

Unknown_0x7D86:
	ld a,h
	ld e,$27
	ld [de],a
	ret
	ld e,$27
	ld a,[de]
	cp $02
	jr nc,Unknown_0x7D96
	add a,$05
	jr Unknown_0x7D98

Unknown_0x7D96:
	ld a,$04

Unknown_0x7D98:
	ld e,$15
	ld [de],a
	ret

Unknown_0x7D9C:
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0x7DAD
	bit 4,a
	ld a,$40
	jr nz,Unknown_0x7DAA
	ld a,$C0

Unknown_0x7DAA:
	ld e,$45
	ld [de],a

Unknown_0x7DAD:
	ld e,$27
	ld a,[de]
	ld l,a
	ld a,[$FF00+$A5]
	and $F0
	ld h,l
	jr z,Unknown_0x7DC4
	ld h,$00
	bit 6,a
	jr nz,Unknown_0x7DC4
	inc h
	bit 7,a
	jr nz,Unknown_0x7DC4
	inc h

Unknown_0x7DC4:
	ld a,h
	cp l
	jr nz,Unknown_0x7DCA
	and a
	ret

Unknown_0x7DCA:
	ld [de],a
	scf
	ret

UnknownData_0x7DCD:
INCBIN "baserom.gb", $7DCD, $7F1C - $7DCD

Unknown_0x7F1C:
INCBIN "baserom.gb", $7F1C, $8000 - $7F1C