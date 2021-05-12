SECTION "Bank05", ROMX, BANK[$05]

UnknownData_0x14000:
INCBIN "baserom.gb", $14000, $14038 - $14000

Unknown_0x14038:
INCBIN "baserom.gb", $14038, $1403C - $14038

Unknown_0x1403C:
INCBIN "baserom.gb", $1403C, $14066 - $1403C

Unknown_0x14066:
INCBIN "baserom.gb", $14066, $1411C - $14066

Unknown_0x1411C:
INCBIN "baserom.gb", $1411C, $1418B - $1411C

Unknown_0x1418B:
INCBIN "baserom.gb", $1418B, $141EF - $1418B

Unknown_0x141EF:
INCBIN "baserom.gb", $141EF, $14299 - $141EF

Unknown_0x14299:
INCBIN "baserom.gb", $14299, $1429A - $14299

Unknown_0x1429A:
INCBIN "baserom.gb", $1429A, $142B9 - $1429A
	ld hl,$4CE4
	ld a,$03
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x142C2:
INCBIN "baserom.gb", $142C2, $14383 - $142C2
	ld bc,$402A
	jp Unknown_0x255B

UnknownData_0x14389:
INCBIN "baserom.gb", $14389, $1443E - $14389
	ld hl,$4458
	ld e,$27
	ld a,[de]
	cp $70
	jr c,Unknown_0x14453
	inc hl
	cp $A0
	jr c,Unknown_0x14453
	inc hl
	cp $D0
	jr c,Unknown_0x14453
	inc hl

Unknown_0x14453:
	ld a,[hl]
	ld e,$24
	ld [de],a
	ret

UnknownData_0x14458:
INCBIN "baserom.gb", $14458, $1445C - $14458
	call Unknown_0x0647
	and $03
	ld hl,$446E
	add a,l
	ld l,a
	jr nc,Unknown_0x14469
	inc h

Unknown_0x14469:
	ld a,[hl]
	ld e,$24
	ld [de],a
	ret

UnknownData_0x1446E:
INCBIN "baserom.gb", $1446E, $144AB - $1446E
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$400E
	jp Unknown_0x255B
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x144E5
	ld l,$26
	ld h,d
	dec [hl]
	ret nz
	ld h,d
	ld l,$1F
	ld [hl],$45
	inc l
	ld [hl],$44
	inc l
	ld [hl],$B7
	ret

Unknown_0x144E5:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x1451D
	ld e,$04
	ld a,[de]
	ld l,$3F
	ld h,d
	cp [hl]
	ret nz
	call Unknown_0x0647
	ld h,d
	ld l,$39
	cp [hl]
	jr c,Unknown_0x14515
	ld h,d
	ld l,$1F
	ld [hl],$45
	inc l
	ld [hl],$45
	inc l
	ld [hl],$25
	ret

Unknown_0x14515:
	ld e,$05
	ld bc,Unknown_0x1411C
	jp Unknown_0x0846

Unknown_0x1451D:
	ld e,$05
	ld bc,Unknown_0x1429A
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x14566
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x1455F
	ld a,[hld]
	ld b,a
	ld a,[hl]
	ld l,$3B
	cp [hl]
	ret nz
	inc l
	ld a,b
	cp [hl]
	ret nz
	ld e,$05
	ld bc,$4128
	jp Unknown_0x0846

Unknown_0x1455F:
	ld e,$45
	ld a,[de]
	xor $80
	ld [de],a
	ret

Unknown_0x14566:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x14589
	ld e,$04
	ld a,[de]
	ld l,$3F
	ld h,d
	cp [hl]
	ret nz
	ld e,$05
	ld bc,$415B
	jp Unknown_0x0846

Unknown_0x14589:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x145B1
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	ret nz
	ld h,d
	ld l,$1F
	ld [hl],$45
	inc l
	ld [hl],$44
	inc l
	ld [hl],$B7
	ret

Unknown_0x145B1:
	ld e,$05
	ld bc,Unknown_0x1429A
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x14609
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x14038
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$22
	ld hl,Unknown_0x14299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$27
	ld a,[de]
	or a
	jr z,Unknown_0x145ED
	xor a
	ld [de],a
	ld e,$05
	ld bc,Unknown_0x1418B
	jp Unknown_0x0846

Unknown_0x145ED:
	call Unknown_0x0647
	cp $40
	jr nc,Unknown_0x14601
	ld a,$02
	ld e,$27
	ld [de],a
	ld e,$05
	ld bc,$41B1
	jp Unknown_0x0846

Unknown_0x14601:
	ld e,$05
	ld bc,$41A2
	jp Unknown_0x0846

Unknown_0x14609:
	ld e,$05
	ld bc,Unknown_0x1429A
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x14643
	ld e,$3B
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld e,$45
	ld a,[de]
	rlca
	ld e,$0D
	ld a,[de]
	jr c,Unknown_0x1463C
	sub c
	inc e
	ld a,[de]
	sbc a,b
	ret c

Unknown_0x14634:
	ld e,$05
	ld bc,$4128
	jp Unknown_0x0846

Unknown_0x1463C:
	sub c
	inc e
	ld a,[de]
	sbc a,b
	ret nc
	jr Unknown_0x14634

Unknown_0x14643:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x1466F
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	ret nz
	ld l,$26
	ld [hl],$14
	ld h,d
	ld l,$1F
	ld [hl],$45
	inc l
	ld [hl],$46
	inc l
	ld [hl],$77
	ret

Unknown_0x1466F:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x146A9
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	sub [hl]
	cp $64
	jr nc,Unknown_0x146A1
	ld h,d
	ld l,$26
	dec [hl]
	ret nz
	ld h,d
	ld l,$1F
	ld [hl],$45
	inc l
	ld [hl],$46
	inc l
	ld [hl],$B1
	ret

Unknown_0x146A1:
	ld e,$05
	ld bc,$41A2
	jp Unknown_0x0846

Unknown_0x146A9:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x14702
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x14038
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$22
	ld hl,Unknown_0x14299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$27
	ld a,[de]
	sub $02
	jr z,Unknown_0x146E7
	ld a,$02
	ld [de],a
	ld e,$05
	ld bc,$41B1
	jp Unknown_0x0846

Unknown_0x146E7:
	call Unknown_0x0647
	cp $40
	jr nc,Unknown_0x146FA
	xor a
	ld e,$27
	ld [de],a
	ld e,$05
	ld bc,$418B
	jp Unknown_0x0846

Unknown_0x146FA:
	ld e,$05
	ld bc,$41A2
	jp Unknown_0x0846

Unknown_0x14702:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x14732
	ld l,$3A
	ld h,d
	ld e,$45
	ld a,[de]
	rlca
	ld e,$04
	ld a,[de]
	jr c,Unknown_0x1472E
	cp $B4
	ret nc
	cp [hl]
	ret c

Unknown_0x14726:
	ld e,$05
	ld bc,$41FF
	jp Unknown_0x0846

Unknown_0x1472E:
	cp [hl]
	ret nc
	jr Unknown_0x14726

Unknown_0x14732:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x14777
	ld l,$3F
	ld h,d
	ld e,$45
	ld a,[de]
	rlca
	ld e,$04
	ld a,[de]
	jr c,Unknown_0x14773
	cp $B4
	ret nc
	cp [hl]
	ret c

Unknown_0x1476B:
	ld e,$05
	ld bc,$4250
	jp Unknown_0x0846

Unknown_0x14773:
	cp [hl]
	ret nc
	jr Unknown_0x1476B

Unknown_0x14777:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x147AD
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld h,d
	ld l,$0D
	ld a,[hli]
	ld c,a
	or [hl]
	jr z,Unknown_0x147A6
	ld e,$3B
	ld a,[de]
	cp c
	ret nz
	inc e
	ld a,[de]
	cp [hl]
	ret nz
	ld e,$05
	ld bc,Unknown_0x141EF
	jp Unknown_0x0846

Unknown_0x147A6:
	ld e,$45
	ld a,[de]
	xor $80
	ld [de],a
	ret

Unknown_0x147AD:
	ld e,$05
	ld bc,$429A
	jp Unknown_0x0846
	ld e,$03
	ld c,$00
	ld hl,$DD04

Unknown_0x147BC:
	ld a,[hli]
	ld b,a
	ld a,[bc]
	cp $FF
	ret nz
	dec e
	jr nz,Unknown_0x147BC
	ld e,$05
	ld bc,$40EB
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	jp Unknown_0x0DA4
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$400E
	call Unknown_0x255B
	ret c
	ld l,$26
	ld h,d
	dec [hl]
	ret nz
	ld e,$05
	ld bc,$432F
	jp Unknown_0x0846
	ld bc,$400E
	jp Unknown_0x255B
	call Unknown_0x0DA4
	ld bc,$401C
	jp Unknown_0x255B
	call Unknown_0x0647
	ld hl,Unknown_0x1403C
	cp $80
	jr c,Unknown_0x1480F
	ld a,$C0
	inc hl
	inc hl
	jr Unknown_0x14811

Unknown_0x1480F:
	ld a,$40

Unknown_0x14811:
	ld e,$45
	ld [de],a

Unknown_0x14814:
	ld e,$04
	ld a,[$DB51]
	add a,[hl]
	inc hl
	ld [de],a
	inc e
	ld a,[$DB52]
	adc a,[hl]
	ld [de],a
	ret
	call Unknown_0x0647
	ld l,$00

Unknown_0x14828:
	sub $56
	jr c,Unknown_0x1482F
	inc l
	jr Unknown_0x14828

Unknown_0x1482F:
	ld a,l
	ld e,$40
	ld [de],a
	rlca
	ld hl,$4040
	add a,l
	ld l,a
	jr nc,Unknown_0x1483C
	inc h

Unknown_0x1483C:
	ld e,$07
	ld a,[$DB53]
	add a,[hl]
	ld [de],a
	inc e
	inc hl
	ld a,[$DB54]
	adc a,[hl]
	ld [de],a
	ret
	call Unknown_0x0647
	and $03
	ld hl,$404C
	or a
	jr z,Unknown_0x14857
	inc hl

Unknown_0x14857:
	ld e,$45
	ld a,[de]
	rlca
	jr nc,Unknown_0x1485F
	inc hl
	inc hl

Unknown_0x1485F:
	ld e,$3F
	ld a,[$DB51]
	add a,[hl]
	ld [de],a
	ret
	call Unknown_0x0647
	and $01
	ld l,a
	ld e,$45
	ld a,[de]
	and $80
	rlca
	rlca
	add a,l
	ld hl,$4053
	add a,l
	ld l,a
	jr nc,Unknown_0x1487D
	inc h

Unknown_0x1487D:
	ld e,$3F
	ld a,[$DB51]
	add a,[hl]
	ld [de],a
	ret
	push bc
	ld e,$40
	ld a,[de]
	rlca
	ld c,a
	call Unknown_0x0647
	and $07
	ld b,a
	ld h,$A0
	ld l,$07
	ld a,[hl]
	ld hl,$DB53
	sub [hl]
	cp $44
	jr c,Unknown_0x148A6
	ld a,b
	cp $06
	jr nc,Unknown_0x148AC
	inc c
	jr Unknown_0x148AC

Unknown_0x148A6:
	ld a,b
	cp $06
	jr c,Unknown_0x148AC
	inc c

Unknown_0x148AC:
	ld hl,$4060
	ld b,$00
	add hl,bc
	ld a,[hl]
	ld e,$27
	ld [de],a
	pop bc
	ret
	ld h,$A0
	ld l,$04
	ld a,[hl]
	ld hl,$DB51
	sub [hl]
	cp $50
	ld e,$45
	ld hl,Unknown_0x1403C
	jr c,Unknown_0x148CE
	ld a,$40
	jr Unknown_0x148D2

Unknown_0x148CE:
	ld a,$C0
	inc hl
	inc hl

Unknown_0x148D2:
	ld [de],a
	jp Unknown_0x14814
	ld hl,Unknown_0x14066
	ld e,$45
	ld a,[de]
	rlca
	jr nc,Unknown_0x148E0
	inc hl

Unknown_0x148E0:
	ld e,$3A
	ld a,[$DB51]
	add a,[hl]
	ld [de],a
	ret
	ld hl,$4068
	ld e,$45
	ld a,[de]
	rlca
	jr nc,Unknown_0x148F3
	inc hl
	inc hl

Unknown_0x148F3:
	ld e,$3F
	ld a,[$DB51]
	add a,[hl]
	inc hl
	ld [de],a
	ld e,$3A
	ld a,[$DB51]
	add a,[hl]
	ld [de],a
	ret
	ld e,$5B
	ld a,[de]
	dec a
	rlca
	ld e,a
	rlca
	add a,e
	ld hl,$4081
	add a,l
	ld l,a
	jr nc,Unknown_0x14913
	inc h

Unknown_0x14913:
	call Unknown_0x20F9
	call Unknown_0x20BE
	ld e,$26
	ld a,[hl]
	ld [de],a
	ret
	call Unknown_0x0647
	and $01
	ld l,a
	ld e,$40
	ld a,[de]
	rlca
	ld e,a
	rlca
	add a,e
	ld e,a
	ld a,l
	rlca
	add a,l
	add a,e
	ld hl,$406C
	add a,l
	jr nc,Unknown_0x14937
	inc h

Unknown_0x14937:
	ld e,$3D
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	ld e,$3D
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	ld e,$27
	ld [de],a
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	push bc
	ld e,$27
	ld a,[de]
	ld e,$33
	call Unknown_0x230F
	pop bc
	ret
	xor a
	ld hl,$DD02
	ld [hl],a
	ld hl,$DD04
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$45
	ld a,[hl]
	cpl
	inc a
	ld e,l
	ld [de],a
	rlca
	ld hl,Unknown_0x1403C
	jp nc,Unknown_0x14814
	inc hl
	inc hl
	jp Unknown_0x14814
	push bc
	ld e,$48
	ld a,[de]
	ld b,a
	ld c,$40
	ld a,[bc]
	ld c,a
	call Unknown_0x0647
	and $01
	ld e,a
	ld hl,$DD02
	ld a,[hli]
	or a
	jr z,Unknown_0x149B5
	add a,e

Unknown_0x14996:
	inc a
	cp $03
	jr c,Unknown_0x1499D
	sub $03

Unknown_0x1499D:
	cp c
	jr z,Unknown_0x14996
	cp [hl]
	jr z,Unknown_0x14996

Unknown_0x149A3:
	ld [hld],a
	inc [hl]
	ld e,$40
	ld [de],a
	rlca
	ld hl,$4046
	add a,l
	ld l,a
	jr nc,Unknown_0x149B1
	inc h

Unknown_0x149B1:
	pop bc
	jp Unknown_0x1483C

Unknown_0x149B5:
	ld a,e
	cp c
	jr c,Unknown_0x149A3
	inc a
	cp $03
	jr c,Unknown_0x149A3
	sub $03
	jr Unknown_0x149A3
	ld hl,$DD02
	ld a,[hl]
	inc [hl]
	ld hl,$4046
	rlca
	add a,l
	ld l,a
	jp nc,Unknown_0x1483C
	inc h
	jp nc,Unknown_0x1483C
	ld hl,$DD04

Unknown_0x149D7:
	ld a,[hl]
	or a
	jr z,Unknown_0x149DE
	inc hl
	jr Unknown_0x149D7

Unknown_0x149DE:
	ld [hl],d
	ret

UnknownData_0x149E0:
INCBIN "baserom.gb", $149E0, $14B73 - $149E0

Unknown_0x14B73:
INCBIN "baserom.gb", $14B73, $14BCF - $14B73
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x14BFB
	ld bc,$4A07

Unknown_0x14BDE:
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	call nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x14B73
	jp Unknown_0x0846

Unknown_0x14BFB:
	ld bc,$4A15
	jr Unknown_0x14BDE
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A23
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 6,a
	jr nz,Unknown_0x14C2A
	bit 7,a
	ret z
	ld e,$05
	ld bc,$4B7C
	jp Unknown_0x0846

Unknown_0x14C2A:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A07
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	ld h,d
	bit 5,a
	jr nz,Unknown_0x14C66
	bit 6,a
	jr nz,Unknown_0x14C55
	bit 7,a
	jr nz,Unknown_0x14C69
	ret

Unknown_0x14C55:
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a
	ld h,d
	ld l,$1F
	ld [hl],$45
	inc l
	ld [hl],$4B
	inc l
	ld [hl],$CF
	ret

Unknown_0x14C66:
	jp Unknown_0x1EF9

Unknown_0x14C69:
	ld e,$3D
	ld l,$0F
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hl],a
	ld e,$15
	ld a,[de]
	and a
	jr z,Unknown_0x14C7B
	dec a
	ld [de],a
	ret

Unknown_0x14C7B:
	inc a
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A15
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	ld h,d
	bit 5,a
	jr nz,Unknown_0x14CB3
	bit 6,a
	jr nz,Unknown_0x14CA2
	bit 7,a
	jr nz,Unknown_0x14CB6
	ret

Unknown_0x14CA2:
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a
	ld h,d
	ld l,$1F
	ld [hl],$45
	inc l
	ld [hl],$4B
	inc l
	ld [hl],$CF
	ret

Unknown_0x14CB3:
	jp Unknown_0x1EF9

Unknown_0x14CB6:
	ld e,$3D
	ld l,$0F
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hl],a
	ld e,$15
	ld a,[de]
	cp $02
	jr z,Unknown_0x14CC9
	dec a
	ld [de],a
	ret

Unknown_0x14CC9:
	inc a
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	ld e,a
	add a,a
	add a,e
	add a,l
	jr nc,Unknown_0x14CDC
	inc h

Unknown_0x14CDC:
	ld l,a
	ld e,$12
	ld a,[hli]
	ld [de],a
	ld e,$39
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$27
	ld a,[de]
	ld e,a
	add a,a
	add a,e
	add a,l
	jr nc,Unknown_0x14CF9
	inc h

Unknown_0x14CF9:
	ld l,a
	ld e,$12
	ld a,[hli]
	ld [de],a
	ld e,$39
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$27
	ld a,[de]
	add a,a
	add a,l
	jr nc,Unknown_0x14D14
	inc h

Unknown_0x14D14:
	ld l,a
	ld e,$0F
	ld a,[hli]
	ld [de],a
	ld e,$3D
	ld [de],a
	ld a,[hl]
	inc e
	ld [de],a
	ld e,$10
	ld [de],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$5C
	ld e,l
	ld a,[hl]
	ld [de],a
	ld e,$4A
	ld a,$10
	ld [de],a
	xor a
	inc e
	ld [de],a
	ret

UnknownData_0x14D35:
INCBIN "baserom.gb", $14D35, $14D4D - $14D35

Unknown_0x14D4D:
INCBIN "baserom.gb", $14D4D, $14D65 - $14D4D

Unknown_0x14D65:
INCBIN "baserom.gb", $14D65, $14DE3 - $14D65

Unknown_0x14DE3:
INCBIN "baserom.gb", $14DE3, $14DE6 - $14DE3

Unknown_0x14DE6:
INCBIN "baserom.gb", $14DE6, $14DFE - $14DE6

Unknown_0x14DFE:
INCBIN "baserom.gb", $14DFE, $14E14 - $14DFE
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A44
	call Unknown_0x255B
	ret c
	call Unknown_0x15050
	call Unknown_0x1A25
	bit 5,a
	call nz,Unknown_0x1EF9
	bit 6,a
	jr nz,Unknown_0x14E3C
	bit 7,a
	jr nz,Unknown_0x14E43
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x14E5E
	ret

Unknown_0x14E3C:
	ld h,d
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a
	ret

Unknown_0x14E43:
	ld h,d
	ld e,$3D
	ld l,$0F
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hl],a
	ld e,$3F
	ld a,[de]
	and a
	jr z,Unknown_0x14E56
	dec a
	ld [de],a
	ret

Unknown_0x14E56:
	ld e,$05
	ld bc,Unknown_0x14D65
	jp Unknown_0x0846

Unknown_0x14E5E:
	ld e,$05
	ld bc,$4DC9
	jp Unknown_0x0846
	ld bc,$4A44
	call Unknown_0x255B
	ret c
	ld e,$3F
	ld a,[de]
	and a
	jr nz,Unknown_0x14E74
	ret

Unknown_0x14E74:
	ld e,$05
	ld bc,Unknown_0x14D4D
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A44
	call Unknown_0x255B
	ret c
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x14EA3
	call Unknown_0x1A25
	bit 5,a
	call nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x14D4D
	jp Unknown_0x0846

Unknown_0x14EA3:
	ld e,$05
	ld bc,$4DC9
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A44
	call Unknown_0x255B
	ret c
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x14EC6
	ld b,$30
	ld c,b
	call Unknown_0x1F14
	jr c,Unknown_0x14F06

Unknown_0x14EC6:
	ld e,$5C
	ld a,[de]
	ld hl,$4A74
	add a,l
	jr nc,Unknown_0x14ED0
	inc h

Unknown_0x14ED0:
	ld l,a
	ld e,$40
	ld a,[de]
	inc a
	ld [de],a
	cp [hl]
	call z,Unknown_0x14EF9
	call Unknown_0x15061
	call Unknown_0x1AB3
	jr nz,Unknown_0x14EF2
	call Unknown_0x1A25
	bit 5,a
	call nz,Unknown_0x1EF9
	call Unknown_0x1A25
	bit 7,a
	jr nz,Unknown_0x14EF2
	ret

Unknown_0x14EF2:
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x14EF9:
	xor a
	ld [de],a
	ld h,d
	ld e,$3D
	ld l,$0F
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hl],a
	ret

Unknown_0x14F06:
	call Unknown_0x1A25
	xor a
	ld h,d
	ld l,$0D
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld e,$05
	ld bc,Unknown_0x14DE6
	jp Unknown_0x0846
	ld e,$3F
	ld a,[de]
	inc a
	ld [de],a
	cp $09
	jr nz,Unknown_0x14F69
	xor a
	ld e,$3F
	ld [de],a
	ld e,$40
	ld a,[de]
	res 0,a
	res 4,a
	ld b,a
	call Unknown_0x1EC0
	ld e,$45
	ld a,[de]
	bit 7,a
	jr z,Unknown_0x14F42
	bit 3,b
	jr nz,Unknown_0x14F3E
	set 0,b

Unknown_0x14F3E:
	set 3,b
	jr Unknown_0x14F4A

Unknown_0x14F42:
	bit 3,b
	jr z,Unknown_0x14F48
	set 0,b

Unknown_0x14F48:
	res 3,b

Unknown_0x14F4A:
	call Unknown_0x201D
	ld e,$27
	ld a,[de]
	and a
	jr z,Unknown_0x14F5D
	bit 7,b
	jr nz,Unknown_0x14F59
	set 4,b

Unknown_0x14F59:
	set 7,b
	jr Unknown_0x14F65

Unknown_0x14F5D:
	bit 7,b
	jr z,Unknown_0x14F63
	set 4,b

Unknown_0x14F63:
	res 7,b

Unknown_0x14F65:
	ld e,$40
	ld a,b
	ld [de],a

Unknown_0x14F69:
	ld e,$40
	ld a,[de]
	bit 3,a
	jr nz,Unknown_0x14F84
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 0,a
	jr z,Unknown_0x14F7A
	ld e,$00

Unknown_0x14F7A:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CB4
	jr Unknown_0x14F96

Unknown_0x14F84:
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 0,a
	jr z,Unknown_0x14F8E
	ld e,$00

Unknown_0x14F8E:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CE5

Unknown_0x14F96:
	ld e,$40
	ld a,[de]
	bit 7,a
	jr z,Unknown_0x14FB1
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 4,a
	jr z,Unknown_0x14FA7
	ld e,$00

Unknown_0x14FA7:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	jr Unknown_0x14FC3

Unknown_0x14FB1:
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 4,a
	jr z,Unknown_0x14FBB
	ld e,$00

Unknown_0x14FBB:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D66

Unknown_0x14FC3:
	call Unknown_0x0DA4
	ld bc,$4A44
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 5,a
	call nz,Unknown_0x14FED
	bit 6,a
	call nz,Unknown_0x14FF6
	bit 7,a
	call nz,Unknown_0x14FF6
	call Unknown_0x1AB3
	jr nz,Unknown_0x14FE5
	ret

Unknown_0x14FE5:
	ld e,$05
	ld bc,Unknown_0x14DFE
	jp Unknown_0x0846

Unknown_0x14FED:
	ld b,a
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ld a,b
	ret

Unknown_0x14FF6:
	ld b,a
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ld a,b
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A44
	call Unknown_0x255B
	ret c
	call Unknown_0x15072
	call Unknown_0x1A62
	bit 6,a
	jr nz,Unknown_0x15027
	bit 7,a
	jr nz,Unknown_0x15036
	bit 5,a
	call nz,Unknown_0x1EF9
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x1502E
	ret

Unknown_0x15027:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x1502E:
	ld e,$05
	ld bc,Unknown_0x14DE3
	jp Unknown_0x0846

Unknown_0x15036:
	ld e,$05
	ld bc,$4D4D
	jp Unknown_0x0846
	ld e,$F8
	push bc
	call Unknown_0x1AC1
	pop bc
	jr z,Unknown_0x1504A
	xor a
	jr Unknown_0x1504C

Unknown_0x1504A:
	ld a,$01

Unknown_0x1504C:
	ld e,$27
	ld [de],a
	ret

Unknown_0x15050:
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$15
	jr nz,Unknown_0x1505D
	ld a,$04
	ld [de],a
	ret

Unknown_0x1505D:
	ld a,$03
	ld [de],a
	ret

Unknown_0x15061:
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$15
	jr nz,Unknown_0x1506E
	ld a,$00
	ld [de],a
	ret

Unknown_0x1506E:
	ld a,$01
	ld [de],a
	ret

Unknown_0x15072:
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$15
	jr nz,Unknown_0x1507F
	ld a,$03
	ld [de],a
	ret

Unknown_0x1507F:
	ld a,$02
	ld [de],a
	ret

UnknownData_0x15083:
INCBIN "baserom.gb", $15083, $15094 - $15083

Unknown_0x15094:
INCBIN "baserom.gb", $15094, $150F5 - $15094

Unknown_0x150F5:
INCBIN "baserom.gb", $150F5, $15118 - $150F5

Unknown_0x15118:
INCBIN "baserom.gb", $15118, $15135 - $15118

Unknown_0x15135:
INCBIN "baserom.gb", $15135, $15154 - $15135
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A8A
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x152FC
	call Unknown_0x1A62
	bit 6,a
	jr nz,Unknown_0x1517F
	bit 7,a
	jr nz,Unknown_0x1518E
	bit 5,a
	jp nz,Unknown_0x1EF9
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x15186
	ret

Unknown_0x1517F:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x15186:
	ld e,$05
	ld bc,$510D
	jp Unknown_0x0846

Unknown_0x1518E:
	ld e,$05
	ld bc,Unknown_0x15094
	jp Unknown_0x0846
	ld bc,$4A8A
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	ld b,$38
	ld c,$30
	call Unknown_0x1F14
	jr c,Unknown_0x151B1
	call Unknown_0x1964
	bit 7,a
	jr z,Unknown_0x151B9
	ret

Unknown_0x151B1:
	ld e,$05
	ld bc,Unknown_0x150F5
	jp Unknown_0x0846

Unknown_0x151B9:
	ld e,$05
	ld bc,$50E9
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4A8A
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x151EB
	call Unknown_0x1A25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x15094
	jp Unknown_0x0846

Unknown_0x151EB:
	ld e,$05
	ld bc,$510D
	jp Unknown_0x0846

UnknownData_0x151F3:
INCBIN "baserom.gb", $151F3, $1521D - $151F3
	ld bc,$4A8A
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	ret
	call Unknown_0x0C80
	call Unknown_0x0DA4
	ld bc,$4A8A
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x1A62
	bit 5,a
	jr nz,Unknown_0x15269
	bit 7,a
	jr nz,Unknown_0x15269
	bit 6,a
	jr nz,Unknown_0x15269
	ld e,$0D
	ld a,[de]
	and a
	ret nz
	inc e
	ld a,[de]
	and a
	ret nz
	ld b,$38
	ld c,$30
	call Unknown_0x1F14
	jr c,Unknown_0x15261
	ld e,$05
	ld bc,Unknown_0x15118
	jp Unknown_0x0846

Unknown_0x15261:
	ld e,$05
	ld bc,Unknown_0x15135
	jp Unknown_0x0846

Unknown_0x15269:
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x1EF9
	ld e,$11
	ld a,[de]
	call Unknown_0x0C83
	ld e,$12
	ld a,[de]
	call Unknown_0x0C94
	call Unknown_0x0DA4
	ld bc,$4A8A
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x1AB3
	jr nz,Unknown_0x152DE
	call Unknown_0x1A62
	push af
	bit 5,a
	call nz,Unknown_0x152C9
	pop af
	bit 7,a
	jr nz,Unknown_0x152D3

Unknown_0x1529E:
	ld e,$0D
	ld a,[de]
	and a
	ret nz
	inc e
	ld a,[de]
	and a
	ret nz
	ld e,$0F
	ld a,[de]
	and a
	ret nz
	inc e
	ld a,[de]
	and a
	ret nz
	ld b,$38
	ld c,$30
	call Unknown_0x1F14
	jr c,Unknown_0x152C1
	ld e,$05
	ld bc,Unknown_0x15118
	jp Unknown_0x0846

Unknown_0x152C1:
	ld e,$05
	ld bc,Unknown_0x15135
	jp Unknown_0x0846

Unknown_0x152C9:
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	call Unknown_0x1EF9
	ret

Unknown_0x152D3:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$12
	ld [de],a
	jr Unknown_0x1529E

Unknown_0x152DE:
	ld e,$0F
	ld a,[de]
	sub $80
	ld [de],a
	inc e
	ld a,[de]
	sbc a,$01
	ld [de],a
	ld e,$05
	ld bc,$514A
	jp Unknown_0x0846
	ld bc,$4A8A
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	ret

Unknown_0x152FC:
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$15
	jr nz,Unknown_0x15309
	ld a,$02
	ld [de],a
	ret

Unknown_0x15309:
	ld a,$01
	ld [de],a
	ret
	call Unknown_0x0647
	ld e,$27
	cp $40
	jr c,Unknown_0x1531E
	cp $80
	jr c,Unknown_0x15321
	ld a,$02
	ld [de],a
	ret

Unknown_0x1531E:
	xor a
	ld [de],a
	ret

Unknown_0x15321:
	ld a,$01
	ld [de],a
	ret
	ld e,$45
	ld a,[de]
	xor $80
	ld [de],a
	ret
	push bc
	push de
	ld e,$04
	ld l,e
	ld h,$A0
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld e,[hl]
	inc l
	ld d,[hl]
	ld a,c
	sub e
	ld a,b
	sbc a,d
	jr c,Unknown_0x1534D
	ld a,c
	sub e
	cp $10
	jr c,Unknown_0x15359
	cp $24
	jr c,Unknown_0x15366
	jr Unknown_0x15373

Unknown_0x1534D:
	ld a,e
	sub c
	cp $10
	jr c,Unknown_0x15359
	cp $24
	jr c,Unknown_0x15366
	jr Unknown_0x15373

Unknown_0x15359:
	call Unknown_0x0647
	cp $A0
	jr c,Unknown_0x1538E
	cp $E0
	jr c,Unknown_0x15386
	jr Unknown_0x1537E

Unknown_0x15366:
	call Unknown_0x0647
	cp $40
	jr c,Unknown_0x1538E
	cp $C0
	jr c,Unknown_0x15386
	jr Unknown_0x1537E

Unknown_0x15373:
	call Unknown_0x0647
	cp $40
	jr c,Unknown_0x1538E
	cp $A0
	jr c,Unknown_0x15386

Unknown_0x1537E:
	pop de
	ld a,$02
	ld e,$27
	ld [de],a
	pop bc
	ret

Unknown_0x15386:
	pop de
	ld a,$01
	ld e,$27
	ld [de],a
	pop bc
	ret

Unknown_0x1538E:
	pop de
	xor a
	ld e,$27
	ld [de],a
	pop bc
	ret

UnknownData_0x15395:
INCBIN "baserom.gb", $15395, $1539C - $15395
	push bc
	call Unknown_0x153A2
	pop bc
	ret

Unknown_0x153A2:
	ld h,$A0
	ld e,$0B
	ld l,e
	ld a,[de]
	sub [hl]
	bit 7,a
	ld hl,$FF84
	ld [hl],$00
	jr z,Unknown_0x153B6
	ld [hl],$01
	cpl
	inc a

Unknown_0x153B6:
	ld c,a
	ld h,$A0
	ld e,$09
	ld l,e
	ld a,[de]
	sub [hl]
	bit 7,a
	ld hl,$FF84
	jr z,Unknown_0x153C9
	set 1,[hl]
	cpl
	inc a

Unknown_0x153C9:
	ld b,a
	ld l,c
	xor a
	sla l
	rla
	sla l
	rla
	ld h,a
	ld c,$00

Unknown_0x153D5:
	and a
	ld a,l
	sub b
	ld l,a
	jr nc,Unknown_0x153E1
	ld a,h
	sub $01
	jr c,Unknown_0x153E9
	ld h,a

Unknown_0x153E1:
	inc c
	ld a,c
	sub $0C
	jr nz,Unknown_0x153D5
	jr Unknown_0x15410

Unknown_0x153E9:
	ld a,c
	sub $02
	jr nc,Unknown_0x153F9
	ld hl,$FF84
	bit 1,[hl]
	jr z,Unknown_0x1541B
	ld a,$00
	jr Unknown_0x15429

Unknown_0x153F9:
	ld hl,$FF84
	bit 1,[hl]
	jr z,Unknown_0x15408
	bit 0,[hl]
	jr nz,Unknown_0x15427
	ld a,$01
	jr Unknown_0x15429

Unknown_0x15408:
	bit 0,[hl]
	jr nz,Unknown_0x1541F
	ld a,$03
	jr Unknown_0x15429

Unknown_0x15410:
	ld hl,$FF84
	bit 0,[hl]
	jr nz,Unknown_0x15423
	ld a,$02
	jr Unknown_0x15429

Unknown_0x1541B:
	ld a,$04
	jr Unknown_0x15429

Unknown_0x1541F:
	ld a,$05
	jr Unknown_0x15429

Unknown_0x15423:
	ld a,$06
	jr Unknown_0x15429

Unknown_0x15427:
	ld a,$07

Unknown_0x15429:
	add a,a
	ld e,a
	add a,a
	add a,e
	ld b,a
	ld e,$5C
	ld a,[de]
	and a
	ld a,b
	jr z,Unknown_0x15437
	add a,$30

Unknown_0x15437:
	ld hl,$4ACD
	add a,l
	jr nc,Unknown_0x1543E
	inc h

Unknown_0x1543E:
	ld l,a
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x15453:
INCBIN "baserom.gb", $15453, $155F3 - $15453

Unknown_0x155F3:
INCBIN "baserom.gb", $155F3, $15639 - $155F3

Unknown_0x15639:
INCBIN "baserom.gb", $15639, $158E7 - $15639
	call Unknown_0x0DA4
	ld bc,$5453
	call Unknown_0x255B
	ret c
	ld e,$40
	ld a,[de]
	dec a
	and a
	ld [de],a
	jr nz,Unknown_0x15903
	ld a,$60
	ld [de],a
	ld b,$10
	call Unknown_0x15B11
	jr nc,Unknown_0x1592B

Unknown_0x15903:
	call Unknown_0x19F3
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	jr z,Unknown_0x15923
	bit 4,a
	jr nz,Unknown_0x1592B
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x1591B
	ret

Unknown_0x1591B:
	ld e,$05
	ld bc,$57F1
	jp Unknown_0x0846

Unknown_0x15923:
	ld e,$05
	ld bc,$579F
	jp Unknown_0x0846

Unknown_0x1592B:
	ld e,$05
	ld bc,$57AB
	jp Unknown_0x0846

UnknownData_0x15933:
INCBIN "baserom.gb", $15933, $1597F - $15933
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld bc,$5453
	call Unknown_0x255B
	ret c
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x159AF
	call Unknown_0x1A25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,$5764
	jp Unknown_0x0846

Unknown_0x159AF:
	ld e,$05
	ld bc,$57F1
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5453
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 6,a
	jr nz,Unknown_0x159DC
	bit 7,a
	jr nz,Unknown_0x159EB
	bit 5,a
	call nz,Unknown_0x1EF9
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x159E3
	ret

Unknown_0x159DC:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x159E3:
	ld e,$05
	ld bc,$57F1
	jp Unknown_0x0846

Unknown_0x159EB:
	ld e,$05
	ld bc,$57E0
	jp Unknown_0x0846

UnknownData_0x159F3:
INCBIN "baserom.gb", $159F3, $15A5D - $159F3
	ld e,$12
	ld a,[de]
	call Unknown_0x0C94
	call Unknown_0x0DA4
	ld bc,$5453
	call Unknown_0x255B
	ret c
	ld e,$00
	call Unknown_0x1AC1
	jr nz,Unknown_0x15A82
	call Unknown_0x1A25
	bit 6,a
	ret z
	ld e,$05
	ld bc,$583C
	jp Unknown_0x0846

Unknown_0x15A82:
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x15A90
	ld e,$05
	ld bc,$57AB
	jp Unknown_0x0846

Unknown_0x15A90:
	ld e,$05
	ld bc,$57C5
	jp Unknown_0x0846

UnknownData_0x15A98:
INCBIN "baserom.gb", $15A98, $15B11 - $15A98

Unknown_0x15B11:
	push de
	push bc
	ld e,$07
	ld l,e
	ld h,$A0
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld e,[hl]
	inc l
	ld d,[hl]
	ld a,c
	sub e
	ld a,b
	sbc a,d
	jr c,Unknown_0x15B36
	ld a,c
	sub e
	ld c,a
	ld a,b
	cp d
	jr z,Unknown_0x15B31
	ld a,$FF
	add a,c
	ld c,a

Unknown_0x15B31:
	ld a,c
	pop bc
	pop de
	cp b
	ret

Unknown_0x15B36:
	pop bc
	pop de
	ret

UnknownData_0x15B39:
INCBIN "baserom.gb", $15B39, $15B4C - $15B39

Unknown_0x15B4C:
	push de
	push bc
	ld e,$04
	ld l,e
	ld h,$A0
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld e,[hl]
	inc l
	ld d,[hl]
	ld a,c
	sub e
	ld a,b
	sbc a,d
	jr c,Unknown_0x15B71
	ld a,c
	sub e
	ld c,a
	ld a,b
	cp d
	jr z,Unknown_0x15B6C
	ld a,$FF
	add a,c
	ld c,a

Unknown_0x15B6C:
	ld a,c
	pop bc
	pop de
	cp b
	ret

Unknown_0x15B71:
	ld a,e
	sub c
	ld e,a
	ld a,b
	cp d
	jr z,Unknown_0x15B7C
	ld a,$FF
	add a,e
	ld e,a

Unknown_0x15B7C:
	ld a,e
	pop bc
	pop de
	cp b
	ret
	call Unknown_0x2235
	ld e,$27
	ld [de],a
	ret

UnknownData_0x15B88:
INCBIN "baserom.gb", $15B88, $15B9D - $15B88

Unknown_0x15B9D:
INCBIN "baserom.gb", $15B9D, $15BF5 - $15B9D

Unknown_0x15BF5:
INCBIN "baserom.gb", $15BF5, $15C14 - $15BF5

Unknown_0x15C14:
INCBIN "baserom.gb", $15C14, $15C36 - $15C14
	ld b,$48
	call Unknown_0x15B4C
	ret nc
	ld e,$05
	ld bc,Unknown_0x15B9D
	jp Unknown_0x0846
	ret
	call Unknown_0x15D2C
	call Unknown_0x0C80
	call Unknown_0x0DA4
	ld bc,$5493
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1F0D
	jr z,Unknown_0x15C65
	ld e,$05
	ld bc,$5C15
	jp Unknown_0x0846

Unknown_0x15C65:
	call Unknown_0x1A25
	bit 7,a
	jp nz,Unknown_0x15D4A
	ld e,$08
	call Unknown_0x1AC1
	jp z,Unknown_0x15D4A
	jp Unknown_0x15D5F
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$5493
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,$5C15
	jp Unknown_0x0846
	ld bc,$5493
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1F0D
	ret nz
	ld e,$5B
	ld a,[de]
	and a
	jr z,Unknown_0x15CB3
	ld e,$05
	ld bc,$5BF5
	jp Unknown_0x0846

Unknown_0x15CB3:
	ld e,$05
	ld bc,$5BBC
	jp Unknown_0x0846
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	ld e,a
	add a,a
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x15CCC
	inc h

Unknown_0x15CCC:
	push de
	push bc
	push hl
	call Unknown_0x202B
	pop hl
	push hl
	ld e,$0F
	jr nc,Unknown_0x15CE3
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$12
	ld a,[hl]
	ld [de],a
	jr Unknown_0x15CF4

Unknown_0x15CE3:
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hli]
	cpl
	adc a,$00
	ld [de],a
	ld e,$12
	ld a,[hl]
	cpl
	inc a
	ld [de],a

Unknown_0x15CF4:
	call Unknown_0x203D
	ld e,$0D
	pop hl
	jr nc,Unknown_0x15D07
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$11
	ld a,[hl]
	ld [de],a
	jr Unknown_0x15D18

Unknown_0x15D07:
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hli]
	cpl
	adc a,$00
	ld [de],a
	ld e,$11
	ld a,[hl]
	cpl
	inc a
	ld [de],a

Unknown_0x15D18:
	pop bc
	pop de
	ret

Unknown_0x15D1B:
	ld e,$0E
	ld a,[de]
	ld e,$11
	bit 7,a
	jr nz,Unknown_0x15D28
	ld a,$FF
	ld [de],a
	ret

Unknown_0x15D28:
	ld a,$01
	ld [de],a
	ret

Unknown_0x15D2C:
	ld e,$5C
	ld a,[de]
	ld e,$40
	and a
	jr nz,Unknown_0x15D3F
	ld a,[de]
	inc a
	cp $60
	ld [de],a
	ret nz
	xor a
	ld [de],a
	jp Unknown_0x15D1B

Unknown_0x15D3F:
	ld a,[de]
	inc a
	cp $80
	ld [de],a
	ret nz
	xor a
	ld [de],a
	jp Unknown_0x15D1B

Unknown_0x15D4A:
	ld e,$0F
	ld a,[de]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[de]
	cpl
	adc a,$00
	ld [de],a
	ret

UnknownData_0x15D58:
INCBIN "baserom.gb", $15D58, $15D5F - $15D58

Unknown_0x15D5F:
	ld e,$5B
	ld a,[de]
	and a
	ret z
	ld b,$28
	call Unknown_0x15B4C
	jr nc,Unknown_0x15D73

Unknown_0x15D6B:
	ld e,$05
	ld bc,Unknown_0x15BF5
	jp Unknown_0x0846

Unknown_0x15D73:
	ld b,$38
	call Unknown_0x15B4C
	ret nc
	ld e,$5C
	ld a,[de]
	and a
	jr nz,Unknown_0x15D87
	call Unknown_0x0647
	cp $80
	ret nc
	jr Unknown_0x15D6B

Unknown_0x15D87:
	call Unknown_0x0647
	cp $C0
	ret nc
	jr Unknown_0x15D6B

UnknownData_0x15D8F:
INCBIN "baserom.gb", $15D8F, $15DA1 - $15D8F

Unknown_0x15DA1:
INCBIN "baserom.gb", $15DA1, $15DBC - $15DA1

Unknown_0x15DBC:
INCBIN "baserom.gb", $15DBC, $15E15 - $15DBC

Unknown_0x15E15:
INCBIN "baserom.gb", $15E15, $15E95 - $15E15
	ld bc,$54AB
	call Unknown_0x255B
	ret c
	call Unknown_0x16080
	call Unknown_0x2375
	call Unknown_0x19CB
	bit 7,a
	ret nz
	ld e,$05
	ld bc,$5DC8
	jp Unknown_0x0846
	ld e,$40
	ld a,[de]
	inc a
	ld [de],a
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	call Unknown_0x1A25
	ld e,$44
	ld [de],a
	ld bc,$54AB
	call Unknown_0x255B
	ret c
	call Unknown_0x16080
	call Unknown_0x2375
	ld e,$44
	ld a,[de]
	bit 6,a
	jr nz,Unknown_0x15EE8
	bit 7,a
	jr nz,Unknown_0x15EEF
	bit 5,a
	call nz,Unknown_0x1EF9
	ret

Unknown_0x15EE8:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x15EEF:
	ld e,$5C
	ld a,[de]
	and a
	ld e,$40
	ld a,[de]
	jr nz,Unknown_0x15EFE
	cp $21
	jr nc,Unknown_0x15F0A
	jr Unknown_0x15F02

Unknown_0x15EFE:
	cp $1B
	jr nc,Unknown_0x15F0A

Unknown_0x15F02:
	ld e,$05
	ld bc,Unknown_0x15DBC
	jp Unknown_0x0846

Unknown_0x15F0A:
	ld e,$05
	ld bc,$5E5C
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$54B9
	call Unknown_0x255B
	ret c
	call Unknown_0x16070
	jr z,Unknown_0x15F5F

Unknown_0x15F24:
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 6,a
	jr nz,Unknown_0x15F46
	bit 7,a
	jr nz,Unknown_0x15F4D
	bit 5,a
	jr nz,Unknown_0x15F3A
	ret

Unknown_0x15F3A:
	ld e,$3F
	ld a,$01
	ld [de],a
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x15F46:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x15F4D:
	ld e,$3F
	ld a,[de]
	and a
	jr z,Unknown_0x15F57
	dec e
	ld a,$01
	ld [de],a

Unknown_0x15F57:
	ld e,$05
	ld bc,Unknown_0x15E15
	jp Unknown_0x0846

Unknown_0x15F5F:
	ld e,$15
	xor a
	ld [de],a
	ld e,$3F
	ld a,[de]
	and a
	jr z,Unknown_0x15F24
	xor a
	ld [de],a
	dec e
	ld a,[de]
	and a
	jr z,Unknown_0x15F24
	xor a
	ld [de],a
	ld e,$05
	ld bc,$5E72
	jp Unknown_0x0846
	call Unknown_0x21F7
	call Unknown_0x0DA4
	ld bc,$54B9
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 6,a
	jr nz,Unknown_0x15F99
	bit 7,a
	jr nz,Unknown_0x15FA0
	ret

Unknown_0x15F99:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x15FA0:
	ld e,$05
	ld bc,$5E15
	jp Unknown_0x0846

UnknownData_0x15FA8:
INCBIN "baserom.gb", $15FA8, $15FE1 - $15FA8
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$15
	jr nz,Unknown_0x15FEE
	ld a,$00
	jr Unknown_0x15FF0

Unknown_0x15FEE:
	ld a,$01

Unknown_0x15FF0:
	ld [de],a
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$54B9
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x15E15
	jp Unknown_0x0846
	ld e,$40
	ld a,[de]
	inc a
	ld [de],a
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld bc,$54AB
	call Unknown_0x255B
	ret c
	call Unknown_0x16080
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$40
	ld a,[de]
	cp $10
	jr nc,Unknown_0x1604A
	ld e,$05
	ld bc,Unknown_0x15DA1
	jp Unknown_0x0846

Unknown_0x1604A:
	ld e,$05
	ld bc,$5DD7
	jp Unknown_0x0846
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$54AB
	call Unknown_0x255B
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$5C
	ld e,l
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x16069:
INCBIN "baserom.gb", $16069, $16070 - $16069

Unknown_0x16070:
	ld e,$0F
	ld a,[de]
	and a
	ret nz
	inc e
	ld a,[de]
	and a
	ret

UnknownData_0x16079:
INCBIN "baserom.gb", $16079, $16080 - $16079

Unknown_0x16080:
	call Unknown_0x1A97
	ret nz
	ld e,$05
	ld bc,$5E5C
	call Unknown_0x0846
	pop hl
	ret

UnknownData_0x1608E:
INCBIN "baserom.gb", $1608E, $160B7 - $1608E

Unknown_0x160B7:
INCBIN "baserom.gb", $160B7, $160E5 - $160B7

Unknown_0x160E5:
INCBIN "baserom.gb", $160E5, $16122 - $160E5

Unknown_0x16122:
INCBIN "baserom.gb", $16122, $161E5 - $16122
	call Unknown_0x0DA4
	ld bc,$54FF
	call Unknown_0x255B
	ret c
	call Unknown_0x1F0D
	jr nz,Unknown_0x16212
	call Unknown_0x2375
	call Unknown_0x202B
	jr nc,Unknown_0x16204
	ld e,$10
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x1620A
	ret

Unknown_0x16204:
	ld e,$10
	ld a,[de]
	bit 7,a
	ret nz

Unknown_0x1620A:
	ld e,$05
	ld bc,Unknown_0x160B7
	jp Unknown_0x0846

Unknown_0x16212:
	ld e,$05
	ld bc,$6122
	jp Unknown_0x0846
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$54FF
	call Unknown_0x255B
	ret c
	call Unknown_0x1F0D
	jr nz,Unknown_0x16240
	call Unknown_0x2375
	ld e,$0F
	ld a,[de]
	and a
	ret nz
	inc e
	ld a,[de]
	and a
	ret nz
	ld e,$05
	ld bc,Unknown_0x160E5
	jp Unknown_0x0846

Unknown_0x16240:
	ld e,$05
	ld bc,$6122
	jp Unknown_0x0846
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$54FF
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,Unknown_0x16122
	jp Unknown_0x0846

UnknownData_0x16264:
INCBIN "baserom.gb", $16264, $1626C - $16264
	call Unknown_0x0C80
	call Unknown_0x0DA4
	ld bc,$54FF
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret
	ld e,$3F
	ld a,[de]
	inc a
	ld [de],a
	cp $0C
	jr nz,Unknown_0x162D1
	xor a
	ld e,$3F
	ld [de],a
	dec e
	ld a,[de]
	inc a
	ld [de],a
	ld e,$40
	ld a,[de]
	res 0,a
	res 4,a
	ld b,a
	call Unknown_0x1EC0
	ld e,$45
	ld a,[de]
	bit 7,a
	jr z,Unknown_0x162AA
	bit 3,b
	jr nz,Unknown_0x162A6
	set 0,b

Unknown_0x162A6:
	set 3,b
	jr Unknown_0x162B2

Unknown_0x162AA:
	bit 3,b
	jr z,Unknown_0x162B0
	set 0,b

Unknown_0x162B0:
	res 3,b

Unknown_0x162B2:
	call Unknown_0x201D
	ld e,$27
	ld a,[de]
	and a
	jr z,Unknown_0x162C5
	bit 7,b
	jr nz,Unknown_0x162C1
	set 4,b

Unknown_0x162C1:
	set 7,b
	jr Unknown_0x162CD

Unknown_0x162C5:
	bit 7,b
	jr z,Unknown_0x162CB
	set 4,b

Unknown_0x162CB:
	res 7,b

Unknown_0x162CD:
	ld e,$40
	ld a,b
	ld [de],a

Unknown_0x162D1:
	ld e,$40
	ld a,[de]
	bit 3,a
	jr nz,Unknown_0x162EC
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 0,a
	jr z,Unknown_0x162E2
	ld e,$00

Unknown_0x162E2:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CB4
	jr Unknown_0x162FE

Unknown_0x162EC:
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 0,a
	jr z,Unknown_0x162F6
	ld e,$00

Unknown_0x162F6:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CE5

Unknown_0x162FE:
	ld e,$40
	ld a,[de]
	bit 7,a
	jr z,Unknown_0x16319
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 4,a
	jr z,Unknown_0x1630F
	ld e,$00

Unknown_0x1630F:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	jr Unknown_0x1632B

Unknown_0x16319:
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 4,a
	jr z,Unknown_0x16323
	ld e,$00

Unknown_0x16323:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D66

Unknown_0x1632B:
	call Unknown_0x0DA4
	ld bc,$54FF
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld e,$3E
	ld a,[de]
	cp $0C
	jr z,Unknown_0x16352
	ld e,$10
	ld a,[de]
	and $80
	ld b,a
	ld e,$12
	ld a,[de]
	and $80
	xor b
	ret nz
	ld e,$15
	ld a,$02
	ld [de],a
	ret

Unknown_0x16352:
	ld e,$05
	ld bc,$61AF
	jp Unknown_0x0846
	push bc
	ld hl,$DB53
	ld e,$07
	ld a,[hli]
	sub $08
	ld c,a
	ld a,[hl]
	sbc a,$00
	ld b,a
	ld a,[de]
	sub c
	inc e
	ld a,[de]
	sbc a,b
	jr c,Unknown_0x16383
	ld hl,$DB53
	ld e,$07
	ld a,[hli]
	add a,$88
	ld c,a
	ld a,[hl]
	adc a,$00
	ld b,a
	ld a,[de]
	sub c
	inc e
	ld a,[de]
	sbc a,b
	jr c,Unknown_0x1638A

Unknown_0x16383:
	ld e,$27
	ld a,$00
	ld [de],a
	pop bc
	ret

Unknown_0x1638A:
	ld e,$27
	ld a,$01
	ld [de],a
	pop bc
	ret
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$27
	jr nz,Unknown_0x163A1
	ld a,$01
	ld [de],a
	ld e,$40
	ld [de],a
	ret

Unknown_0x163A1:
	ld a,$00
	ld [de],a
	ld e,$40
	ld [de],a
	ret
	ld e,$12
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ld e,$15
	ld a,[de]
	and a
	jr z,Unknown_0x163B8
	ld a,$00
	ld [de],a
	ret

Unknown_0x163B8:
	ld a,$01
	ld [de],a
	ret

UnknownData_0x163BC:
INCBIN "baserom.gb", $163BC, $163D6 - $163BC

Unknown_0x163D6:
INCBIN "baserom.gb", $163D6, $16496 - $163D6
	ld bc,$552F
	call Unknown_0x255B
	ret c
	call Unknown_0x1EC0
	ld b,$30
	call Unknown_0x15B4C
	ret nc
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x164BA
	ld e,$05
	ld bc,Unknown_0x163D6
	call Unknown_0x0846
	ld e,$47
	ld a,$80
	ld [de],a
	ret

Unknown_0x164BA:
	ld e,$05
	ld bc,$642A
	call Unknown_0x0846
	ld e,$47
	ld a,$80
	ld [de],a
	ret
	call Unknown_0x1EC0
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$552F
	call Unknown_0x255B
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$552F
	call Unknown_0x255B
	ret c
	ld e,$10
	ld a,[de]
	bit 7,a
	ret nz
	ld e,$27
	ld a,$01
	ld [de],a
	ret
	ld e,$41
	ld h,d
	ld l,$06
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld l,$41
	ld h,d
	ld e,$06
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x1650D:
INCBIN "baserom.gb", $1650D, $16518 - $1650D

Unknown_0x16518:
INCBIN "baserom.gb", $16518, $1656D - $16518

Unknown_0x1656D:
INCBIN "baserom.gb", $1656D, $165A2 - $1656D
	call Unknown_0x0C80
	call Unknown_0x0DA4
	ld bc,$553D
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x2235
	and a
	jr z,Unknown_0x165C8
	call Unknown_0x16682
	jr nz,Unknown_0x165FD
	ld e,$05
	ld bc,Unknown_0x1656D
	jp Unknown_0x0846

Unknown_0x165C8:
	call Unknown_0x19F3
	bit 5,a
	jr nz,Unknown_0x165FD
	bit 7,a
	jr z,Unknown_0x16606
	ld e,$3F
	ld a,[de]
	and a
	ret nz
	call Unknown_0x19F3
	bit 4,a
	ret z
	call Unknown_0x16682
	jr nz,Unknown_0x165FD
	call Unknown_0x202B
	jr nc,Unknown_0x165FD
	call Unknown_0x0647
	cp $40
	jr c,Unknown_0x165F5
	ld e,$3F
	ld a,$01
	ld [de],a
	ret

Unknown_0x165F5:
	ld e,$05
	ld bc,$6559
	jp Unknown_0x0846

Unknown_0x165FD:
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x1EF9

Unknown_0x16606:
	ld e,$05
	ld bc,$6590
	jp Unknown_0x0846
	call Unknown_0x0C80
	call Unknown_0x0DA4
	ld bc,$553D
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x2235
	and a
	jr nz,Unknown_0x1662F
	ld e,$05
	ld bc,Unknown_0x16518
	jp Unknown_0x0846

Unknown_0x1662F:
	call Unknown_0x19F3
	bit 5,a
	jr nz,Unknown_0x16637
	ret

Unknown_0x16637:
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	call Unknown_0x1EC0
	jp Unknown_0x1EF9
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$553D
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	ld b,a
	bit 5,a
	call nz,Unknown_0x1EF9
	ld a,b
	bit 7,a
	ret z
	call Unknown_0x1EC0
	ld e,$05
	ld bc,Unknown_0x16518
	jp Unknown_0x0846
	ld a,[bc]
	inc bc
	ld h,a
	push hl
	call Unknown_0x0647
	pop hl
	cp h
	ld e,$27
	jr c,Unknown_0x1667E
	xor a
	ld [de],a
	ret

Unknown_0x1667E:
	ld a,$01
	ld [de],a
	ret

Unknown_0x16682:
	call Unknown_0x203D
	ld e,$45
	ld a,[de]
	jr c,Unknown_0x1668B
	cpl

Unknown_0x1668B:
	bit 7,a
	ret

UnknownData_0x1668E:
INCBIN "baserom.gb", $1668E, $166ED - $1668E

Unknown_0x166ED:
INCBIN "baserom.gb", $166ED, $1683B - $166ED

Unknown_0x1683B:
INCBIN "baserom.gb", $1683B, $168A0 - $1683B
	ld e,$42
	ld a,[de]
	dec a
	ld [de],a
	ld e,$27
	jr z,Unknown_0x168AC
	xor a
	ld [de],a
	ret

Unknown_0x168AC:
	ld a,$01
	ld [de],a
	ret
	call Unknown_0x0DA4
	ret

UnknownData_0x168B4:
INCBIN "baserom.gb", $168B4, $168CA - $168B4
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld a,[$A071]
	and a
	jr nz,Unknown_0x168DF
	ld bc,$5583
	call Unknown_0x255B
	ret c
	jr Unknown_0x168EA

Unknown_0x168DF:
	ld e,$4A
	xor a
	ld [de],a
	ld bc,$5591
	call Unknown_0x255B
	ret c

Unknown_0x168EA:
	ld e,$3E
	ld a,[de]
	inc a
	ld [de],a
	cp $40
	jr nz,Unknown_0x168F8
	xor a
	ld [de],a
	call Unknown_0x16A9B

Unknown_0x168F8:
	ld b,$30
	call Unknown_0x15B4C
	jr c,Unknown_0x16900
	ret

Unknown_0x16900:
	ld a,[$A071]
	and a
	jr nz,Unknown_0x1690E
	ld e,$05
	ld bc,Unknown_0x166ED
	jp Unknown_0x0846

Unknown_0x1690E:
	ld e,$4A
	xor a
	ld [de],a
	ld e,$05
	ld bc,$679C
	jp Unknown_0x0846
	ld bc,$5583
	call Unknown_0x255B
	ret
	ld bc,$559F
	call Unknown_0x255B
	ret

UnknownData_0x16928:
INCBIN "baserom.gb", $16928, $16941 - $16928
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$5583
	call Unknown_0x255B
	ret c
	ld e,$0E
	ld a,[de]
	and a
	ret nz
	ld e,$11
	xor a
	ld [de],a
	ld e,$10
	ld a,[de]
	and a
	ret nz
	ld e,$05
	ld bc,$6698
	jp Unknown_0x0846
	ld e,$3F
	ld a,[de]
	inc a
	ld [de],a
	cp $10
	jr nz,Unknown_0x169C0
	xor a
	ld e,$3F
	ld [de],a
	dec e
	ld a,[de]
	inc a
	ld [de],a
	ld e,$3E
	ld a,[de]
	inc a
	ld [de],a
	ld e,$40
	ld a,[de]
	res 0,a
	res 4,a
	ld b,a
	call Unknown_0x1EC0
	ld e,$45
	ld a,[de]
	bit 7,a
	jr z,Unknown_0x16999
	bit 3,b
	jr nz,Unknown_0x16995
	set 0,b

Unknown_0x16995:
	set 3,b
	jr Unknown_0x169A1

Unknown_0x16999:
	bit 3,b
	jr z,Unknown_0x1699F
	set 0,b

Unknown_0x1699F:
	res 3,b

Unknown_0x169A1:
	call Unknown_0x201D
	ld e,$27
	ld a,[de]
	and a
	jr z,Unknown_0x169B4
	bit 7,b
	jr nz,Unknown_0x169B0
	set 4,b

Unknown_0x169B0:
	set 7,b
	jr Unknown_0x169BC

Unknown_0x169B4:
	bit 7,b
	jr z,Unknown_0x169BA
	set 4,b

Unknown_0x169BA:
	res 7,b

Unknown_0x169BC:
	ld e,$40
	ld a,b
	ld [de],a

Unknown_0x169C0:
	ld e,$40
	ld a,[de]
	bit 3,a
	jr nz,Unknown_0x169DB
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 0,a
	jr z,Unknown_0x169D1
	ld e,$00

Unknown_0x169D1:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CB4
	jr Unknown_0x169ED

Unknown_0x169DB:
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 0,a
	jr z,Unknown_0x169E5
	ld e,$00

Unknown_0x169E5:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CE5

Unknown_0x169ED:
	ld e,$40
	ld a,[de]
	bit 7,a
	jr z,Unknown_0x16A08
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 4,a
	jr z,Unknown_0x169FE
	ld e,$00

Unknown_0x169FE:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	jr Unknown_0x16A1A

Unknown_0x16A08:
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 4,a
	jr z,Unknown_0x16A12
	ld e,$00

Unknown_0x16A12:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D66

Unknown_0x16A1A:
	ld e,$F8
	call Unknown_0x1AC1
	call z,Unknown_0x16A63
	call Unknown_0x0DA4
	ld a,[$A071]
	and a
	jr nz,Unknown_0x16A33
	ld e,$05
	ld bc,Unknown_0x1683B
	jp Unknown_0x0846

Unknown_0x16A33:
	ld bc,$559F
	call Unknown_0x255B
	ret c
	call Unknown_0x1F0D
	jr nz,Unknown_0x16A5B
	ld e,$12
	ld h,d
	ld l,$10
	ld a,[de]
	and $80
	ld b,a
	ld a,[hl]
	and $80
	xor b
	ret z
	ld e,$3E
	ld a,[de]
	cp $20
	ret c
	ld e,$05
	ld bc,$67EC
	jp Unknown_0x0846

Unknown_0x16A5B:
	ld e,$05
	ld bc,$6858
	jp Unknown_0x0846

Unknown_0x16A63:
	ld e,$0E
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x16A73
	xor a
	ld [de],a
	dec e
	ld a,[de]
	and $7F
	ld [de],a
	jr Unknown_0x16A7F

Unknown_0x16A73:
	ld a,$FF
	ld [de],a
	dec e
	ld a,[de]
	cpl
	inc a
	and $7F
	cpl
	inc a
	ld [de],a

Unknown_0x16A7F:
	ld e,$10
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x16A8E
	xor a
	ld [de],a
	dec e
	ld a,[de]
	and $7F
	ld [de],a
	ret

Unknown_0x16A8E:
	ld a,$FF
	ld [de],a
	dec e
	ld a,[de]
	cpl
	inc a
	and $7F
	cpl
	inc a
	ld [de],a
	ret

Unknown_0x16A9B:
	ld e,$12
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret
	ld a,[$A071]
	and a
	ld e,$27
	jr nz,Unknown_0x16AB9
	xor a
	ld [de],a
	ld e,$4A
	ld a,$75
	ld [de],a
	ret

Unknown_0x16AB9:
	ld a,$01
	ld [de],a
	ld e,$4A
	ld a,$00
	ld [de],a
	ret
	ld e,$0E
	ld a,[de]
	and a
	jr z,Unknown_0x16AD6
	bit 7,a
	ld e,$11
	jr nz,Unknown_0x16AD3
	ld a,$F8
	ld [de],a
	jr Unknown_0x16AD6

Unknown_0x16AD3:
	ld a,$08
	ld [de],a

Unknown_0x16AD6:
	ld e,$10
	ld a,[de]
	and a
	ret z
	bit 7,a
	ld e,$12
	jr nz,Unknown_0x16AE5
	ld a,$F8
	ld [de],a
	ret

Unknown_0x16AE5:
	ld a,$08
	ld [de],a
	ret

UnknownData_0x16AE9:
INCBIN "baserom.gb", $16AE9, $16AF3 - $16AE9

Unknown_0x16AF3:
INCBIN "baserom.gb", $16AF3, $16B16 - $16AF3

Unknown_0x16B16:
INCBIN "baserom.gb", $16B16, $16B3E - $16B16

Unknown_0x16B3E:
INCBIN "baserom.gb", $16B3E, $16B4E - $16B3E
	call Unknown_0x0DA4
	ld bc,$55C9
	call Unknown_0x255B
	ret c
	ld b,$30
	call Unknown_0x15B4C
	ret nc
	ld b,$24
	call Unknown_0x16BE4
	ret nc
	ld e,$05
	ld bc,Unknown_0x16AF3
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$55C9
	call Unknown_0x255B
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$55C9
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x16B16
	jp Unknown_0x0846
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$55C9
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x16BBE
	ld e,$5C
	ld a,[de]
	and a
	jr z,Unknown_0x16BBE
	ld e,$05
	ld bc,$6B2D
	jp Unknown_0x0846

Unknown_0x16BBE:
	ld e,$05
	ld bc,Unknown_0x16B3E
	jp Unknown_0x0846

UnknownData_0x16BC6:
INCBIN "baserom.gb", $16BC6, $16BE4 - $16BC6

Unknown_0x16BE4:
	push de
	push bc
	ld e,$07
	ld l,e
	ld h,$A0
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld e,[hl]
	inc l
	ld d,[hl]
	ld a,c
	add a,$34
	ld c,a
	ld a,b
	adc a,$00
	ld b,a
	ld a,c
	sub e
	ld a,b
	sbc a,d
	jr c,Unknown_0x16C11
	ld a,c
	sub e
	ld c,a
	ld a,b
	cp d
	jr z,Unknown_0x16C0C
	ld a,$FF
	add a,c
	ld c,a

Unknown_0x16C0C:
	ld a,c
	pop bc
	pop de
	cp b
	ret

Unknown_0x16C11:
	ld a,e
	sub c
	ld e,a
	ld a,b
	cp d
	jr z,Unknown_0x16C1C
	ld a,$FF
	add a,e
	ld e,a

Unknown_0x16C1C:
	ld a,e
	pop bc
	pop de
	cp b
	ret

UnknownData_0x16C21:
INCBIN "baserom.gb", $16C21, $16C2E - $16C21

Unknown_0x16C2E:
INCBIN "baserom.gb", $16C2E, $16C64 - $16C2E

Unknown_0x16C64:
INCBIN "baserom.gb", $16C64, $16C91 - $16C64

Unknown_0x16C91:
INCBIN "baserom.gb", $16C91, $16CC9 - $16C91

Unknown_0x16CC9:
INCBIN "baserom.gb", $16CC9, $16CFB - $16CC9
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$55E5
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0x155F3
	call Unknown_0x24CD
	bit 6,a
	jr nz,Unknown_0x16D25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x16C2E
	jp Unknown_0x0846

Unknown_0x16D25:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	ld bc,$55E5
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x155F3
	call Unknown_0x24A5
	bit 7,a
	ret nz
	ld e,$05
	ld bc,$6CF1
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$55E5
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0x155F3
	call Unknown_0x24CD
	bit 6,a
	jr nz,Unknown_0x16D6E
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x16C64
	jp Unknown_0x0846

Unknown_0x16D6E:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$55E5
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0x155F3
	call Unknown_0x24CD
	bit 6,a
	jr nz,Unknown_0x16D9F
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x16C91
	jp Unknown_0x0846

Unknown_0x16D9F:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$55E5
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0x155F3
	call Unknown_0x24CD
	bit 6,a
	jr nz,Unknown_0x16DD0
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x16C2E
	jp Unknown_0x0846

Unknown_0x16DD0:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$55E5
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0x155F3
	call Unknown_0x24CD
	bit 6,a
	jr nz,Unknown_0x16E12
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$40
	ld a,[de]
	inc a
	ld [de],a
	cp $03
	jr nc,Unknown_0x16E0A
	ld e,$05
	ld bc,Unknown_0x16CC9
	jp Unknown_0x0846

Unknown_0x16E0A:
	ld e,$05
	ld bc,Unknown_0x16C2E
	jp Unknown_0x0846

Unknown_0x16E12:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

UnknownData_0x16E19:
INCBIN "baserom.gb", $16E19, $16F41 - $16E19

Unknown_0x16F41:
INCBIN "baserom.gb", $16F41, $16F6D - $16F41

Unknown_0x16F6D:
INCBIN "baserom.gb", $16F6D, $16F7C - $16F6D

Unknown_0x16F7C:
INCBIN "baserom.gb", $16F7C, $16F97 - $16F7C

Unknown_0x16F97:
INCBIN "baserom.gb", $16F97, $16FA1 - $16F97

Unknown_0x16FA1:
INCBIN "baserom.gb", $16FA1, $16FB5 - $16FA1
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld e,$07
	ld a,[de]
	sub $03
	ld [de],a
	jr nc,Unknown_0x16FD0
	inc e
	ld a,[de]
	dec a
	ld [de],a

Unknown_0x16FD0:
	ld bc,$561D
	call Unknown_0x255B
	ret c
	ld e,$07
	ld a,[de]
	add a,$03
	ld [de],a
	jr nc,Unknown_0x16FE3
	inc e
	ld a,[de]
	inc a
	ld [de],a

Unknown_0x16FE3:
	ld a,[$DD2C]
	bit 2,a
	jr z,Unknown_0x16FF2
	ld e,$05
	ld bc,$6E9B
	jp Unknown_0x0846

Unknown_0x16FF2:
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x1A25
	bit 6,a
	jr nz,Unknown_0x17014
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$3F
	ld a,$01
	ld [de],a
	ld e,$05
	ld bc,$6E3F
	jp Unknown_0x0846

Unknown_0x17014:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$561D
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x1A62
	bit 6,a
	jr nz,Unknown_0x17045
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,$6EE6
	jp Unknown_0x0846

Unknown_0x17045:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$561D
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x1A62
	bit 6,a
	jr nz,Unknown_0x17076
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,$6F1C
	jp Unknown_0x0846

Unknown_0x17076:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	ld bc,$561D
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x19CB
	bit 7,a
	ret nz
	ld e,$3F
	xor a
	ld [de],a
	ld e,$05
	ld bc,$6E6B
	jp Unknown_0x0846
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld hl,$5647
	call Unknown_0x23CA
	call Unknown_0x0DA4
	ld e,$07
	ld a,[de]
	sub $03
	ld [de],a
	jr nc,Unknown_0x170B7
	inc e
	ld a,[de]
	dec a
	ld [de],a

Unknown_0x170B7:
	ld bc,$561D
	call Unknown_0x255B
	ret c
	ld e,$07
	ld a,[de]
	add a,$03
	ld [de],a
	jr nc,Unknown_0x170CA
	inc e
	ld a,[de]
	inc a
	ld [de],a

Unknown_0x170CA:
	ld a,[$DD2C]
	bit 2,a
	jr z,Unknown_0x170D9
	ld e,$05
	ld bc,$6E9B
	jp Unknown_0x0846

Unknown_0x170D9:
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x172B5
	jr nz,Unknown_0x170EC
	ld e,$05
	ld bc,$6E9B
	jp Unknown_0x0846

Unknown_0x170EC:
	call Unknown_0x19CB
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	jr z,Unknown_0x170FF
	call Unknown_0x1710B
	jp c,Unknown_0x1EF9
	ret

Unknown_0x170FF:
	ld e,$3F
	xor a
	ld [de],a
	ld e,$05
	ld bc,$6E6B
	jp Unknown_0x0846

Unknown_0x1710B:
	push de
	call Unknown_0x1AEA
	push bc
	ld a,e
	sub $18
	ld e,a
	jr nc,Unknown_0x17117
	dec d

Unknown_0x17117:
	ld a,c
	add a,$09
	ld c,a
	jr nc,Unknown_0x1711E
	inc b

Unknown_0x1711E:
	push de
	call Unknown_0x1646
	pop de
	pop bc
	cp $FF
	jr z,Unknown_0x17132
	bit 2,a
	jr nz,Unknown_0x1714D
	and $03
	cp $01
	jr z,Unknown_0x1714D

Unknown_0x17132:
	ld a,c
	sub $09
	ld c,a
	jr nc,Unknown_0x17139
	dec b

Unknown_0x17139:
	call Unknown_0x1646
	cp $FF
	jr z,Unknown_0x1714A
	bit 2,a
	jr nz,Unknown_0x1714D
	and $03
	cp $01
	jr z,Unknown_0x1714D

Unknown_0x1714A:
	pop de
	and a
	ret

Unknown_0x1714D:
	pop de
	scf
	ret
	ld e,$07
	ld a,[de]
	add a,$0D
	ld [de],a
	jr nc,Unknown_0x1715C
	inc e
	ld a,[de]
	inc a
	ld [de],a

Unknown_0x1715C:
	ld bc,$562B
	call Unknown_0x255B
	ret c
	ld e,$07
	ld a,[de]
	sub $0D
	ld [de],a
	jr nc,Unknown_0x1716F
	dec e
	ld a,[de]
	inc a
	ld [de],a

Unknown_0x1716F:
	call Unknown_0x172B5
	jr nz,Unknown_0x1717C
	ld e,$05
	ld bc,Unknown_0x16F7C
	jp Unknown_0x0846

Unknown_0x1717C:
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x172BE
	and a
	ret z
	ld e,$05
	ld bc,$6F6D
	jp Unknown_0x0846

UnknownData_0x1718F:
INCBIN "baserom.gb", $1718F, $17190 - $1718F
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$15
	ld a,$00
	jr z,Unknown_0x1719D
	ld a,$01

Unknown_0x1719D:
	ld [de],a
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld e,$07
	ld a,[de]
	add a,$0D
	ld [de],a
	jr nc,Unknown_0x171B9
	inc e
	ld a,[de]
	inc a
	ld [de],a

Unknown_0x171B9:
	ld bc,$562B
	call Unknown_0x255B
	ret c
	ld e,$07
	ld a,[de]
	sub $0D
	ld [de],a
	jr nc,Unknown_0x171CC
	inc e
	ld a,[de]
	dec a
	ld [de],a

Unknown_0x171CC:
	call Unknown_0x172B5
	jr nz,Unknown_0x171D9
	ld e,$05
	ld bc,Unknown_0x16F7C
	jp Unknown_0x0846

Unknown_0x171D9:
	call Unknown_0x2375
	call Unknown_0x2385
	ld bc,Unknown_0x15639
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x171F6
	call Unknown_0x172DE
	and a
	ret nz
	ld e,$05
	ld bc,Unknown_0x16F41
	jp Unknown_0x0846

Unknown_0x171F6:
	ld e,$05
	ld bc,Unknown_0x16F6D
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$561D
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x1A25
	bit 6,a
	jr nz,Unknown_0x17228
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x16F97
	jp Unknown_0x0846

Unknown_0x17228:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$15
	ld a,$00
	jr z,Unknown_0x1723C
	ld a,$01

Unknown_0x1723C:
	ld [de],a
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld bc,$561D
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x1A25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x16FA1
	jp Unknown_0x0846
	ld e,$10
	ld a,[de]
	bit 7,a
	ld e,$15
	xor a
	jr z,Unknown_0x17277
	inc a

Unknown_0x17277:
	ld [de],a
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$562B
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x2385
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x16F97
	jp Unknown_0x0846
	ld hl,$DD2D
	ld [hl],$00
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,e
	ld [hl],d
	ld l,$5B
	ld e,l
	ld a,[hl]
	ld [de],a
	ld l,$5C
	ld e,l
	ld a,[hl]
	ld [de],a
	ld l,$45
	ld e,l
	ld a,[hl]
	ld [de],a
	ret

Unknown_0x172B5:
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$4C
	ld a,[hl]
	and a
	ret

Unknown_0x172BE:
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$03
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	sub $0F
	ld [de],a
	inc e
	ld a,[hl]
	sbc a,$00
	ld [de],a
	ld l,$3F
	ld a,[hl]
	ret

Unknown_0x172DE:
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$03
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ld e,$45
	ld l,e
	ld a,[hl]
	ld [de],a
	ld l,$3F
	ld a,[hl]
	ret

UnknownData_0x172F6:
INCBIN "baserom.gb", $172F6, $1730F - $172F6

Unknown_0x1730F:
INCBIN "baserom.gb", $1730F, $17339 - $1730F

Unknown_0x17339:
INCBIN "baserom.gb", $17339, $1736D - $17339

Unknown_0x1736D:
INCBIN "baserom.gb", $1736D, $1737D - $1736D

Unknown_0x1737D:
INCBIN "baserom.gb", $1737D, $173BC - $1737D

Unknown_0x173BC:
INCBIN "baserom.gb", $173BC, $17504 - $173BC

Unknown_0x17504:
INCBIN "baserom.gb", $17504, $179D8 - $17504

Unknown_0x179D8:
INCBIN "baserom.gb", $179D8, $17A12 - $179D8
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 6,a
	jr nz,Unknown_0x17A46
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	jr z,Unknown_0x17A4D
	ld e,$05
	ld bc,Unknown_0x1730F
	jp Unknown_0x0846

Unknown_0x17A46:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x17A4D:
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,Unknown_0x179D8
	jp Unknown_0x0846
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 6,a
	jr nz,Unknown_0x17A8D
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	jr z,Unknown_0x17A94
	ld e,$05
	ld bc,$7304
	jp Unknown_0x0846

Unknown_0x17A8D:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x17A94:
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,$79D8
	jp Unknown_0x0846
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld e,$3F
	ld a,[de]
	ld hl,$56AF
	add a,l
	jr nc,Unknown_0x17AB0
	inc h

Unknown_0x17AB0:
	ld l,a
	call Unknown_0x23CA
	call Unknown_0x0DA4
	ld bc,$567F
	call Unknown_0x255B
	ret c
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x17AE0
	call Unknown_0x17F6E
	jr nc,Unknown_0x17AE0
	ld l,$5A
	ld a,[hl]
	ld e,$44
	cp $01
	jr nz,Unknown_0x17AD6
	ld a,$01
	jr Unknown_0x17AD7

Unknown_0x17AD6:
	xor a

Unknown_0x17AD7:
	ld [de],a
	ld e,$05
	ld bc,$7517
	jp Unknown_0x0846

Unknown_0x17AE0:
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 4,a
	jr nz,Unknown_0x17AFD
	bit 5,a
	jr nz,Unknown_0x17AFD
	bit 7,a
	jr nz,Unknown_0x17B05
	ld e,$05
	ld bc,Unknown_0x1736D
	jp Unknown_0x0846

Unknown_0x17AFD:
	ld e,$05
	ld bc,Unknown_0x17339
	jp Unknown_0x0846

Unknown_0x17B05:
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,$79D1
	jp Unknown_0x0846
	ld bc,$567F
	call Unknown_0x255B
	ret c
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x17B3A
	call Unknown_0x17F6E
	jr nc,Unknown_0x17B3A
	ld l,$5A
	ld a,[hl]
	ld e,$44
	cp $01
	jr nz,Unknown_0x17B30
	ld a,$01
	jr Unknown_0x17B31

Unknown_0x17B30:
	xor a

Unknown_0x17B31:
	ld [de],a
	ld e,$05
	ld bc,$7517
	jp Unknown_0x0846

Unknown_0x17B3A:
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	jr nz,Unknown_0x17B4F
	ld e,$05
	ld bc,$736D
	jp Unknown_0x0846

Unknown_0x17B4F:
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,$79D1
	jp Unknown_0x0846
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	jr nz,Unknown_0x17B77
	ld e,$05
	ld bc,$736D
	jp Unknown_0x0846

Unknown_0x17B77:
	call Unknown_0x1F0D
	ret nz
	ld e,$05
	ld bc,$730F
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 6,a
	jr nz,Unknown_0x17BAE
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	jr z,Unknown_0x17BB5
	ld e,$05
	ld bc,$730F
	jp Unknown_0x0846

Unknown_0x17BAE:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x17BB5:
	call Unknown_0x1F0D
	ret nz
	ld e,$05
	ld bc,$7376
	jp Unknown_0x0846
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	jr nz,Unknown_0x17BDD
	ld e,$05
	ld bc,$736D
	jp Unknown_0x0846

Unknown_0x17BDD:
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,$79D1
	jp Unknown_0x0846
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld e,$3F
	ld a,[de]
	ld hl,$56BF
	add a,l
	jr nc,Unknown_0x17BF9
	inc h

Unknown_0x17BF9:
	ld l,a
	call Unknown_0x23CA
	call Unknown_0x0DA4
	ld bc,$567F
	call Unknown_0x255B
	ret c
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x17C29
	call Unknown_0x17F6E
	jr nc,Unknown_0x17C29
	ld l,$5A
	ld a,[hl]
	ld e,$44
	cp $01
	jr nz,Unknown_0x17C1F
	ld a,$01
	jr Unknown_0x17C20

Unknown_0x17C1F:
	xor a

Unknown_0x17C20:
	ld [de],a
	ld e,$05
	ld bc,$7517
	jp Unknown_0x0846

Unknown_0x17C29:
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 4,a
	jr nz,Unknown_0x17C46
	bit 5,a
	jr nz,Unknown_0x17C46
	bit 7,a
	jr nz,Unknown_0x17C4E
	ld e,$05
	ld bc,$736D
	jp Unknown_0x0846

Unknown_0x17C46:
	ld e,$05
	ld bc,Unknown_0x173BC
	jp Unknown_0x0846

Unknown_0x17C4E:
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,$79D1
	jp Unknown_0x0846
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld e,$3F
	ld a,[de]
	ld hl,$56CF
	add a,l
	jr nc,Unknown_0x17C6A
	inc h

Unknown_0x17C6A:
	ld l,a
	call Unknown_0x23CA
	ld e,$3E
	ld a,[de]
	and a
	jr nz,Unknown_0x17C77
	call Unknown_0x0DA4

Unknown_0x17C77:
	ld bc,$567F
	call Unknown_0x255B
	ret c
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0x17CA0
	call Unknown_0x17F6E
	jr nc,Unknown_0x17CA0
	ld l,$5A
	ld a,[hl]
	ld e,$44
	cp $01
	jr nz,Unknown_0x17C96
	ld a,$01
	jr Unknown_0x17C97

Unknown_0x17C96:
	xor a

Unknown_0x17C97:
	ld [de],a
	ld e,$05
	ld bc,$7517
	jp Unknown_0x0846

Unknown_0x17CA0:
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 4,a
	jr nz,Unknown_0x17CBD
	bit 5,a
	jr nz,Unknown_0x17CBD
	bit 7,a
	jr nz,Unknown_0x17CC3
	ld e,$05
	ld bc,Unknown_0x1736D
	jp Unknown_0x0846

Unknown_0x17CBD:
	ld e,$3E
	ld a,$01
	ld [de],a
	ret

Unknown_0x17CC3:
	call Unknown_0x1F0D
	ret z
	ld e,$05
	ld bc,$79D1
	jp Unknown_0x0846
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	ret nz
	ld e,$44
	ld a,$01
	ld [de],a
	ld e,$05
	ld bc,Unknown_0x1737D
	jp Unknown_0x0846
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	ret nz
	ld e,$05
	ld bc,Unknown_0x1736D
	jp Unknown_0x0846
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$05
	ld bc,$7718
	jp Unknown_0x0846

UnknownData_0x17D2B:
INCBIN "baserom.gb", $17D2B, $17D32 - $17D2B
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	ret nz
	ld e,$05
	ld bc,Unknown_0x1736D
	jp Unknown_0x0846
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$05
	ld bc,Unknown_0x17504
	jp Unknown_0x0846
	ld e,$3E
	ld a,[de]
	and a
	jr nz,Unknown_0x17D7A
	call Unknown_0x0C80
	call Unknown_0x0DA4

Unknown_0x17D7A:
	ld bc,$567F
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 4,a
	jr nz,Unknown_0x17D9D
	bit 5,a
	jr nz,Unknown_0x17D9D
	bit 7,a
	ret nz
	ld e,$05
	ld bc,$736D
	jp Unknown_0x0846

Unknown_0x17D9D:
	ld e,$3E
	ld a,$01
	ld [de],a
	ret
	call Unknown_0x0C91
	call Unknown_0x0C80
	call Unknown_0x0DA4
	ld bc,$568D
	call Unknown_0x255B
	ret c
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$44
	ld a,[hl]
	and a
	jr nz,Unknown_0x17DC1
	call Unknown_0x172B5
	ret nz

Unknown_0x17DC1:
	ld e,$05
	ld bc,Unknown_0x15C14
	jp Unknown_0x0846
	call Unknown_0x17F6E
	ld l,$5A
	ld a,[hl]
	cp $00
	jr nz,Unknown_0x17DD8
	ld e,$60
	ld a,$3F
	ld [de],a

Unknown_0x17DD8:
	ld bc,$568D
	call Unknown_0x255B
	ret
	call Unknown_0x0C91
	call Unknown_0x0C80
	call Unknown_0x0DA4
	ld bc,$569B
	call Unknown_0x255B
	ret
	call Unknown_0x0C91
	call Unknown_0x0C80
	call Unknown_0x0DA4
	ld bc,$569B
	call Unknown_0x255B
	ret

UnknownData_0x17DFF:
INCBIN "baserom.gb", $17DFF, $17E22 - $17DFF
	push bc
	ld b,$40
	ld c,$48
	call Unknown_0x1F14
	pop bc
	ld e,$27
	jr c,Unknown_0x17E32
	xor a
	ld [de],a
	ret

Unknown_0x17E32:
	ld a,$01
	ld [de],a
	ret
	push bc
	ld b,$30
	call Unknown_0x1F14
	pop bc
	ld e,$27
	jr c,Unknown_0x17E44
	xor a
	ld [de],a
	ret

Unknown_0x17E44:
	ld a,$01
	ld [de],a
	ret
	push bc
	ld b,$40
	ld c,$28
	call Unknown_0x1F14
	pop bc
	ld e,$27
	jr nc,Unknown_0x17E58
	xor a
	ld [de],a
	ret

Unknown_0x17E58:
	ld a,$01
	ld [de],a
	ret
	push bc
	ld b,$34
	call Unknown_0x15B4C
	pop bc
	ld e,$27
	jr nc,Unknown_0x17E6B
	ld a,$01
	ld [de],a
	ret

Unknown_0x17E6B:
	ld a,$00
	ld [de],a
	ret
	push bc
	push de
	call Unknown_0x0647
	pop de
	cp $40
	jr c,Unknown_0x17E82
	ld b,$20
	call Unknown_0x15B11
	jr c,Unknown_0x17E90
	jr Unknown_0x17E89

Unknown_0x17E82:
	ld b,$20
	call Unknown_0x15B11
	jr nc,Unknown_0x17E90

Unknown_0x17E89:
	ld e,$27
	ld a,$01
	ld [de],a
	pop bc
	ret

Unknown_0x17E90:
	ld e,$27
	xor a
	ld [de],a
	pop bc
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$27
	ld e,l
	ld a,[hl]
	ld [de],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$45
	ld e,l
	ld a,[hl]
	ld [de],a
	ret
	ld e,$07
	ld a,[de]
	sub $14
	ld [de],a
	jr nc,Unknown_0x17EB6
	inc e
	ld a,[de]
	dec a
	ld [de],a

Unknown_0x17EB6:
	ret
	push bc
	ld b,$20
	call Unknown_0x15B4C
	pop bc
	jr nc,Unknown_0x17EC6
	ld e,$27
	ld a,$01
	ld [de],a
	ret

Unknown_0x17EC6:
	ld e,$27
	xor a
	ld [de],a
	ret
	push bc
	push de
	ld e,$07
	ld l,e
	ld h,$A0
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld e,[hl]
	inc l
	ld d,[hl]
	ld a,c
	sub e
	ld c,a
	ld a,b
	sbc a,d
	pop de
	jr c,Unknown_0x17F04
	ld a,c
	cp $10
	jr c,Unknown_0x17F04
	ld e,$5C
	ld a,[de]
	and a
	jr nz,Unknown_0x17EF6
	call Unknown_0x0647
	cp $80
	jr nc,Unknown_0x17F04
	jr Unknown_0x17EFD

Unknown_0x17EF6:
	call Unknown_0x0647
	cp $C0
	jr nc,Unknown_0x17F04

Unknown_0x17EFD:
	ld e,$27
	ld a,$03
	ld [de],a
	pop bc
	ret

Unknown_0x17F04:
	call Unknown_0x0647
	cp $40
	jr c,Unknown_0x17F1D
	cp $A0
	jr c,Unknown_0x17F16
	ld e,$27
	ld a,$00
	ld [de],a
	pop bc
	ret

Unknown_0x17F16:
	ld e,$27
	ld a,$01
	ld [de],a
	pop bc
	ret

Unknown_0x17F1D:
	ld e,$27
	ld a,$02
	ld [de],a
	pop bc
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$45
	ld a,[hl]
	bit 7,a
	jr nz,Unknown_0x17F3C
	ld e,$04
	ld a,[de]
	add a,$10
	ld [de],a
	jr nc,Unknown_0x17F3B
	inc e
	ld a,[de]
	inc a
	ld [de],a

Unknown_0x17F3B:
	ret

Unknown_0x17F3C:
	ld e,$04
	ld a,[de]
	sub $10
	ld [de],a
	jr nc,Unknown_0x17F48
	inc e
	ld a,[de]
	dec a
	ld [de],a

Unknown_0x17F48:
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$45
	ld a,[hl]
	bit 7,a
	jr nz,Unknown_0x17F61
	ld e,$04
	ld a,[de]
	add a,$10
	ld [de],a
	jr nc,Unknown_0x17F60
	inc e
	ld a,[de]
	inc a
	ld [de],a

Unknown_0x17F60:
	ret

Unknown_0x17F61:
	ld e,$04
	ld a,[de]
	sub $10
	ld [de],a
	jr nc,Unknown_0x17F6D
	inc e
	ld a,[de]
	dec a
	ld [de],a

Unknown_0x17F6D:
	ret

Unknown_0x17F6E:
	ld h,$A5
	ld c,$03

Unknown_0x17F72:
	push bc
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x17F95
	ld l,$4C
	ld a,[hl]
	or a
	jr z,Unknown_0x17F95
	ld e,$04
	ld b,$30
	call Unknown_0x1F9E
	jr nc,Unknown_0x17F95
	ld e,$07
	ld b,$20
	call Unknown_0x1F9E
	jr nc,Unknown_0x17F95
	pop bc
	scf
	ret

Unknown_0x17F95:
	pop bc
	dec c
	ret z
	inc h
	jr Unknown_0x17F72

UnknownData_0x17F9B:
INCBIN "baserom.gb", $17F9B, $18000 - $17F9B