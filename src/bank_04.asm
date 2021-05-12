SECTION "Bank04", ROMX, BANK[$04]

UnknownData_0x10000:
INCBIN "baserom.gb", $10000, $100DF - $10000

Unknown_0x100DF:
INCBIN "baserom.gb", $100DF, $101A9 - $100DF

Unknown_0x101A9:
INCBIN "baserom.gb", $101A9, $10206 - $101A9

Unknown_0x10206:
INCBIN "baserom.gb", $10206, $10268 - $10206
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x10272
	dec a
	ld [de],a
	jr Unknown_0x10275

Unknown_0x10272:
	call Unknown_0x21EB

Unknown_0x10275:
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	jr nz,Unknown_0x10292
	bit 5,a
	ret z
	jp Unknown_0x1EF9

Unknown_0x10292:
	ld e,$04
	ld bc,Unknown_0x10206
	jp Unknown_0x0846
	ld e,$3F
	ld a,[de]
	cp $01
	jr nz,Unknown_0x102A4
	call Unknown_0x1EE6

Unknown_0x102A4:
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19CB
	or a
	jr nz,Unknown_0x102C2
	ld e,$04
	ld bc,$422D
	jp Unknown_0x0846

Unknown_0x102C2:
	bit 5,a
	jr z,Unknown_0x102CF
	call Unknown_0x1EF9
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a

Unknown_0x102CF:
	ld l,$26
	ld h,d
	dec [hl]
	ret nz
	ld e,$3F
	ld a,[de]
	cp $02
	jr z,Unknown_0x102E4
	inc a
	ld [de],a
	ld e,$3C
	add a,e
	ld e,a
	ld a,[de]
	ld [hl],a
	ret

Unknown_0x102E4:
	ld e,$04
	ld bc,Unknown_0x100DF
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$04
	ld bc,Unknown_0x101A9
	jp Unknown_0x0846
	ld bc,$4000
	jp Unknown_0x255B

UnknownData_0x10313:
INCBIN "baserom.gb", $10313, $10342 - $10313
	ld bc,$4000
	call Unknown_0x255B
	ret c
	call Unknown_0x19CB
	or a
	ret nz
	ld hl,$4074
	call Unknown_0x2048
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$43
	inc l
	ld [hl],$60
	ret

UnknownData_0x10360:
INCBIN "baserom.gb", $10360, $10385 - $10360
	call Unknown_0x0DA4
	ld bc,$400E
	jp Unknown_0x255B
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	push bc
	ld e,$27
	ld a,[de]
	swap a
	rrca
	ld b,a
	ld e,$5C
	ld a,[de]
	or a
	jr z,Unknown_0x103A4
	ld a,$18

Unknown_0x103A4:
	add a,b
	add a,l
	ld l,a
	jr nc,Unknown_0x103AA
	inc h

Unknown_0x103AA:
	call Unknown_0x20F9
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$26
	ld a,[hli]
	ld [de],a
	ld e,$12
	ld a,[hli]
	ld [de],a
	ld e,$39
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	xor a
	ld e,$11
	ld [de],a
	pop bc
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	rlca
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x103D9
	inc h

Unknown_0x103D9:
	ld e,$3D
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
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	push bc
	ld e,$27
	ld a,[de]
	rlca
	rlca
	ld b,a
	ld e,$5C
	ld a,[de]
	or a
	jr z,Unknown_0x103FC
	ld a,$0C

Unknown_0x103FC:
	add a,b
	add a,l
	ld l,a
	jr nc,Unknown_0x10402
	inc h

Unknown_0x10402:
	ld e,$45
	ld a,[de]
	rlca
	ld a,[hli]
	jr nc,Unknown_0x1040B
	cpl
	inc a

Unknown_0x1040B:
	ld e,$11
	ld [de],a
	ld e,$26
	ld a,[hli]
	ld [de],a
	ld e,$3D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	xor a
	inc e
	ld [de],a
	pop bc
	ret
	push bc
	ld e,$3D
	ld a,[de]
	ld b,a
	ld e,$04
	call Unknown_0x1F9C
	jr nc,Unknown_0x10437
	call Unknown_0x0647
	ld h,d
	ld l,$40
	cp [hl]
	jr nc,Unknown_0x10437
	ld a,$03
	jr Unknown_0x1044D

Unknown_0x10437:
	call Unknown_0x0647
	ld h,d
	ld l,$3E
	cp [hl]
	jr nc,Unknown_0x10443
	xor a
	jr Unknown_0x1044D

Unknown_0x10443:
	inc hl
	cp [hl]
	jr nc,Unknown_0x1044B
	ld a,$01
	jr Unknown_0x1044D

Unknown_0x1044B:
	ld a,$02

Unknown_0x1044D:
	ld e,$27
	ld [de],a
	pop bc
	ret
	push bc
	call Unknown_0x0647
	and $E0
	swap a
	ld hl,$407A
	add a,l
	ld l,a
	jr nc,Unknown_0x10462
	inc h

Unknown_0x10462:
	ld a,[hli]
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$04
	ld a,[de]
	add a,c
	ld [de],a
	inc e
	ld a,[de]
	adc a,b
	ld [de],a
	ld a,[hl]
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$07
	ld a,[de]
	add a,c
	ld [de],a
	inc e
	ld a,[de]
	adc a,b
	ld [de],a
	call Unknown_0x0647
	and $07
	add a,$04
	ld h,d
	ld l,$40
	add a,[hl]
	and $0F
	ld [hl],a
	rlca
	rlca
	ld hl,$408A
	add a,l
	ld l,a
	jr nc,Unknown_0x10496
	inc h

Unknown_0x10496:
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
	ld a,[hl]
	ld [de],a
	pop bc
	ret
	ld e,$3B
	ld a,[de]
	dec a
	ld [de],a
	ld e,$27
	ld [de],a
	ret

UnknownData_0x104AE:
INCBIN "baserom.gb", $104AE, $105E1 - $104AE

Unknown_0x105E1:
INCBIN "baserom.gb", $105E1, $106B1 - $105E1

Unknown_0x106B1:
INCBIN "baserom.gb", $106B1, $10721 - $106B1

Unknown_0x10721:
INCBIN "baserom.gb", $10721, $1073A - $10721

Unknown_0x1073A:
INCBIN "baserom.gb", $1073A, $107C8 - $1073A

Unknown_0x107C8:
INCBIN "baserom.gb", $107C8, $107E3 - $107C8

Unknown_0x107E3:
INCBIN "baserom.gb", $107E3, $107FA - $107E3

Unknown_0x107FA:
INCBIN "baserom.gb", $107FA, $10816 - $107FA

Unknown_0x10816:
INCBIN "baserom.gb", $10816, $10900 - $10816

Unknown_0x10900:
INCBIN "baserom.gb", $10900, $10957 - $10900
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	jp Unknown_0x0DA4
	ld bc,$4523
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	call Unknown_0x13DE3
	ret c
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld e,$5B
	ld a,[de]
	rlca
	ld hl,$49CC
	add a,l
	ld l,a
	jr nc,Unknown_0x10985
	inc h

Unknown_0x10985:
	ld a,[hli]
	ld b,[hl]
	ld c,a
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x109A3
	bit 5,a
	jr nz,Unknown_0x1099C
	bit 6,a
	ret z
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a

Unknown_0x1099C:
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x109A3:
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$40
	ld a,[de]
	cp $01
	jr z,Unknown_0x109C1
	jr c,Unknown_0x109C4
	ld e,$04
	ld bc,Unknown_0x107E3
	jp Unknown_0x0846

Unknown_0x109C1:
	call Unknown_0x1EC0

Unknown_0x109C4:
	ld e,$04
	ld bc,Unknown_0x13C7E
	jp Unknown_0x0846

UnknownData_0x109CC:
INCBIN "baserom.gb", $109CC, $109D0 - $109CC
	ld bc,$4523
	call Unknown_0x233C
	jr c,Unknown_0x109FB
	ld e,$0F
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	or c
	jr z,Unknown_0x109F3
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x1A25
	bit 6,a
	ret z
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a

Unknown_0x109F3:
	ld e,$04
	ld bc,$466A
	jp Unknown_0x0846

Unknown_0x109FB:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4531
	call Unknown_0x233C
	jr c,Unknown_0x10A36
	call Unknown_0x0DA4
	call Unknown_0x1A25
	bit 7,a
	jr z,Unknown_0x10A24
	ld e,$27
	ld a,$01
	call Unknown_0x2319
	ld e,$04
	ld bc,Unknown_0x106B1
	jp Unknown_0x0846

Unknown_0x10A24:
	bit 5,a
	ret z
	ld e,$27
	ld a,$05
	call Unknown_0x2319
	ld e,$04
	ld bc,$46B1
	jp Unknown_0x0846

Unknown_0x10A36:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4523
	call Unknown_0x233C
	jr c,Unknown_0x10A60
	call Unknown_0x0DA4
	ld b,$04
	ld e,$07
	call Unknown_0x1F9C
	jr c,Unknown_0x10A58
	call Unknown_0x1A25
	bit 7,a
	ret z

Unknown_0x10A58:
	ld e,$04
	ld bc,$46E0
	jp Unknown_0x0846

Unknown_0x10A60:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4531
	call Unknown_0x233C
	jr c,Unknown_0x10A88
	call Unknown_0x0DA4
	call Unknown_0x1A25
	bit 5,a
	ret z
	ld e,$27
	ld a,$06
	call Unknown_0x2319
	ld e,$04
	ld bc,Unknown_0x10721
	jp Unknown_0x0846

Unknown_0x10A88:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$4523
	call Unknown_0x233C
	jr c,Unknown_0x10AB3
	call Unknown_0x21EB
	call Unknown_0x0DA4
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$27
	ld a,$05
	call Unknown_0x2319
	ld e,$04
	ld bc,Unknown_0x1073A
	jp Unknown_0x0846

Unknown_0x10AB3:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4523
	call Unknown_0x233C
	jr c,Unknown_0x10B02
	ld e,$0F
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	or c
	jr nz,Unknown_0x10AD6
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x10AD6
	dec a
	ld [de],a
	jr Unknown_0x10ADC

Unknown_0x10AD6:
	call Unknown_0x1ED3
	call Unknown_0x0DA4

Unknown_0x10ADC:
	call Unknown_0x1A25
	bit 6,a
	jr z,Unknown_0x10AEA
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x10AEA:
	bit 7,a
	ret z
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$04
	ld bc,$4779
	jp Unknown_0x0846

Unknown_0x10B02:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4523
	call Unknown_0x233C
	jr c,Unknown_0x10B2A
	call Unknown_0x0DA4
	call Unknown_0x1A25
	bit 5,a
	ret z
	ld e,$27
	ld a,$05
	call Unknown_0x2319
	ld e,$04
	ld bc,$46B1
	jp Unknown_0x0846

Unknown_0x10B2A:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4531
	call Unknown_0x233C
	jr c,Unknown_0x10B76
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x10B68
	dec a
	ld [de],a
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x1A25
	bit 6,a
	jr z,Unknown_0x10B56
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x10B56:
	bit 5,a
	ret z
	ld e,$27
	ld a,$05
	call Unknown_0x2319
	ld e,$04
	ld bc,$46B1
	jp Unknown_0x0846

Unknown_0x10B68:
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ld e,$04
	ld bc,Unknown_0x107C8
	jp Unknown_0x0846

Unknown_0x10B76:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	call Unknown_0x13DE3
	ret c
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld e,$5B
	ld a,[de]
	rlca
	ld hl,$4BC3
	add a,l
	ld l,a
	jr nc,Unknown_0x10B94
	inc h

Unknown_0x10B94:
	ld a,[hli]
	ld b,[hl]
	ld c,a
	call Unknown_0x24CD
	bit 6,a
	jr z,Unknown_0x10BA5
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x10BA5:
	bit 7,a
	ret z
	ld e,$0D
	call Unknown_0x0F7A
	ld l,$3F
	ld h,d
	dec [hl]
	jr z,Unknown_0x10BBB
	ld e,$04
	ld bc,Unknown_0x107FA
	jp Unknown_0x0846

Unknown_0x10BBB:
	ld e,$04
	ld bc,Unknown_0x10816
	jp Unknown_0x0846

UnknownData_0x10BC3:
INCBIN "baserom.gb", $10BC3, $10BC7 - $10BC3
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$44AE
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 5,a
	ret z
	ld e,$41
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$44AE
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	jr z,Unknown_0x10C0A
	ld e,$04
	ld bc,Unknown_0x10900
	jp Unknown_0x0846

Unknown_0x10C0A:
	bit 5,a
	ret z
	ld e,$41
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ret z
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$44AE
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	jr z,Unknown_0x10C37
	ld e,$04
	ld bc,$491D
	jp Unknown_0x0846

Unknown_0x10C37:
	bit 5,a
	ret z
	ld e,$41
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ret
	ld bc,$44AE
	jp Unknown_0x255B
	ld e,$5B
	ld a,[de]
	rlca
	rlca
	ld l,a
	ld e,$5C
	ld a,[de]
	rlca
	add a,l
	ld hl,$44CA
	add a,l
	ld l,a
	jr nc,Unknown_0x10C61
	inc h

Unknown_0x10C61:
	ld e,$3D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld e,$3D
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	cp $FF
	jr nz,Unknown_0x10C7F
	ld a,[hli]
	cpl
	inc a
	add a,l
	ld l,a
	ld a,$FF
	adc a,h
	ld h,a
	ld a,[hli]

Unknown_0x10C7F:
	ld e,$27
	ld [de],a
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc

Unknown_0x10C90:
	ld e,$27
	ld a,[de]

Unknown_0x10C93:
	push bc
	swap a
	ld c,a
	ld e,$5C
	ld a,[de]
	swap a
	rrca
	add a,c
	add a,l
	ld l,a
	jr nc,Unknown_0x10CA3
	inc h

Unknown_0x10CA3:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	call Unknown_0x2053
	call Unknown_0x20F9
	pop bc
	ret
	ld e,$3D
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	or a
	jr z,Unknown_0x10CDC

Unknown_0x10CBD:
	ld e,a
	call Unknown_0x0647
	cp e
	jr c,Unknown_0x10CCC
	ld a,$01
	ld [$DD60],a
	xor a
	jr Unknown_0x10CD1

Unknown_0x10CCC:
	xor a
	ld [$DD60],a
	inc a

Unknown_0x10CD1:
	ld e,$27
	ld [de],a
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

Unknown_0x10CDC:
	ld a,[$DD60]
	or a
	jr nz,Unknown_0x10CE8
	ld a,[hli]
	or a
	jr z,Unknown_0x10CCC
	jr Unknown_0x10CBD

Unknown_0x10CE8:
	inc hl
	jr Unknown_0x10CCC
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	inc bc
	push bc
	ld c,l
	ld b,a
	call Unknown_0x0647
	and $02
	add a,c
	ld c,a
	jr nc,Unknown_0x10CFD
	inc b

Unknown_0x10CFD:
	call Unknown_0x1FD1
	pop bc
	ld hl,Unknown_0x105E1

Unknown_0x10D04:
	call Unknown_0x20BE
	call Unknown_0x20F9
	jp Unknown_0x2123

UnknownData_0x10D0D:
INCBIN "baserom.gb", $10D0D, $10D16 - $10D0D
	push bc
	ld h,$A8
	ld c,$0A

Unknown_0x10D1B:
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x10D39
	ld l,$48
	ld a,[hl]
	cp d
	jr nz,Unknown_0x10D39
	ld a,c
	ld [$FF00+$80],a
	ld e,$04
	ld bc,$48E4
	call Unknown_0x0849
	ld a,[$FF00+$9A]
	ld d,a
	ld a,[$FF00+$80]
	ld c,a

Unknown_0x10D39:
	dec c
	jr z,Unknown_0x10D3F
	inc h
	jr Unknown_0x10D1B

Unknown_0x10D3F:
	pop bc
	ret
	ld hl,$DD60
	inc [hl]
	ret
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	jr c,Unknown_0x10D5C
	cp $30
	jr c,Unknown_0x10D5C
	cp $70
	ret c
	ld a,$C0

Unknown_0x10D58:
	ld e,$45
	ld [de],a
	ret

Unknown_0x10D5C:
	ld a,$40
	jr Unknown_0x10D58

UnknownData_0x10D60:
INCBIN "baserom.gb", $10D60, $10D92 - $10D60

Unknown_0x10D92:
INCBIN "baserom.gb", $10D92, $10F5C - $10D92

Unknown_0x10F5C:
INCBIN "baserom.gb", $10F5C, $10F7B - $10F5C

Unknown_0x10F7B:
INCBIN "baserom.gb", $10F7B, $10FCA - $10F7B

Unknown_0x10FCA:
INCBIN "baserom.gb", $10FCA, $11054 - $10FCA

Unknown_0x11054:
INCBIN "baserom.gb", $11054, $110A8 - $11054
	ld e,$07
	ld a,[de]
	sub $01
	ld [de],a
	inc e
	ld a,[de]
	sbc a,$00
	ld [de],a
	ret

UnknownData_0x110B4:
INCBIN "baserom.gb", $110B4, $11216 - $110B4
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret
	ld bc,$4D68
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$4D76
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$4D68
	call Unknown_0x233C
	jr c,Unknown_0x11275
	ld e,$0D
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	or c
	jr z,Unknown_0x11289
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,Unknown_0x10D92
	call Unknown_0x24B9
	or a
	jr nz,Unknown_0x1127D
	ld hl,$451E
	ld a,[hli]
	ld e,$12
	ld [de],a
	ld e,$39
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$52
	inc l
	ld [hl],$B4
	ret

Unknown_0x11275:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846

Unknown_0x1127D:
	bit 5,a
	ret z
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x1EF9

Unknown_0x11289:
	ld e,$3F
	ld a,[de]
	or a
	jr nz,Unknown_0x112AC
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x1129C
	dec a
	ld [de],a
	ld e,$15
	xor a
	ld [de],a
	ret

Unknown_0x1129C:
	ld e,$3F
	ld a,$01
	ld [de],a
	ld a,$02
	ld e,$15
	ld [de],a
	ld hl,$4DDC
	jp Unknown_0x114E7

Unknown_0x112AC:
	ld e,$04
	ld bc,$4EA9
	jp Unknown_0x0846

UnknownData_0x112B4:
INCBIN "baserom.gb", $112B4, $112DB - $112B4
	ld bc,$4D68
	call Unknown_0x233C
	jr c,Unknown_0x1131D
	ld e,$0F
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	or c
	jr nz,Unknown_0x112FB
	ld e,$04
	ld b,$10
	call Unknown_0x1F9C
	jr nc,Unknown_0x112FB
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a

Unknown_0x112FB:
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,Unknown_0x10D92
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x11315
	bit 5,a
	ret z
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x11315:
	ld e,$04
	ld bc,$4F11
	jp Unknown_0x0846

Unknown_0x1131D:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$4D68
	call Unknown_0x233C
	jr c,Unknown_0x11353
	ld e,$0F
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	or c
	jr z,Unknown_0x1134B
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x10D92
	call Unknown_0x24CD
	bit 6,a
	ret z
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a

Unknown_0x1134B:
	ld e,$04
	ld bc,Unknown_0x10F7B
	jp Unknown_0x0846

Unknown_0x11353:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$4D68
	call Unknown_0x233C
	jr c,Unknown_0x11387
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x10D92
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$04
	ld bc,Unknown_0x10F5C
	jp Unknown_0x0846

Unknown_0x11387:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4D68
	call Unknown_0x233C
	jr c,Unknown_0x113B9
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x10D92
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x113B1
	bit 6,a
	ret z
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x113B1:
	ld e,$04
	ld bc,Unknown_0x10FCA
	jp Unknown_0x0846

Unknown_0x113B9:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4D68
	call Unknown_0x233C
	jr c,Unknown_0x113EF
	ld e,$0F
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	or c
	jr z,Unknown_0x113E7
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x10D92
	call Unknown_0x24CD
	bit 6,a
	ret z
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a

Unknown_0x113E7:
	ld e,$04
	ld bc,$5027
	jp Unknown_0x0846

Unknown_0x113EF:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$4D68
	call Unknown_0x233C
	jr c,Unknown_0x11416
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x10D92
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$04
	ld bc,Unknown_0x11054
	jp Unknown_0x0846

Unknown_0x11416:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$4D96
	jp Unknown_0x255B
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4D96
	call Unknown_0x255B
	ret c
	call Unknown_0x19F3
	ld h,d
	or a
	jr z,Unknown_0x1144C
	bit 5,a
	jr nz,Unknown_0x1144C
	bit 4,a
	jr nz,Unknown_0x1144C
	ld l,$26
	dec [hl]
	ret nz
	ld e,$11
	xor a
	ld [de],a
	ret

Unknown_0x1144C:
	jp Unknown_0x0BBA
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$44AE
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 5,a
	jr z,Unknown_0x1146B
	ld e,$04
	ld bc,$516D
	jp Unknown_0x0846

Unknown_0x1146B:
	bit 7,a
	ret z
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0x1148C
	ld hl,$4E46
	call Unknown_0x114E7
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$54
	inc l
	ld [hl],$96
	ret

Unknown_0x1148C:
	inc a
	ld [de],a
	ld hl,$4DE4
	ld a,$03
	jp Unknown_0x10C93

UnknownData_0x11496:
INCBIN "baserom.gb", $11496, $114B3 - $11496
	call Unknown_0x0DA4
	ld bc,$44AE
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	jr nz,Unknown_0x114C7
	bit 5,a
	ret z

Unknown_0x114C7:
	ld e,$04
	ld bc,$5171
	jp Unknown_0x0846
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$4D96
	jp Unknown_0x255B
	ld bc,$44BC
	jp Unknown_0x255B
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc

Unknown_0x114E7:
	ld e,$5C
	ld a,[de]
	rlca
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x114F1
	inc h

Unknown_0x114F1:
	call Unknown_0x20F9
	call Unknown_0x2123
	ld e,$26
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x114FC:
INCBIN "baserom.gb", $114FC, $11505 - $114FC
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$45
	bit 7,[hl]
	ld e,$15
	jr nz,Unknown_0x11515
	ld a,$08
	jr Unknown_0x11517

Unknown_0x11515:
	ld a,$02

Unknown_0x11517:
	ld [de],a
	ret
	ld e,$07

Unknown_0x1151B:
	ld a,[bc]
	inc bc
	push bc
	ld b,a
	call Unknown_0x1F9C
	pop bc
	ld e,$27
	jr c,Unknown_0x1152A
	xor a
	jr Unknown_0x1152C

Unknown_0x1152A:
	ld a,$01

Unknown_0x1152C:
	ld [de],a
	ret
	ld e,$04
	jp Unknown_0x1151B

UnknownData_0x11533:
INCBIN "baserom.gb", $11533, $1156B - $11533

Unknown_0x1156B:
INCBIN "baserom.gb", $1156B, $1169A - $1156B
	ld e,$26
	ld a,[de]
	dec a
	ld [de],a
	ld e,$27
	ld [de],a
	ret

UnknownData_0x116A3:
INCBIN "baserom.gb", $116A3, $1170F - $116A3

Unknown_0x1170F:
INCBIN "baserom.gb", $1170F, $11737 - $1170F

Unknown_0x11737:
INCBIN "baserom.gb", $11737, $1194B - $11737
	ld bc,$5533
	call Unknown_0x233C
	jr c,Unknown_0x11964
	ld bc,Unknown_0x1156B
	call Unknown_0x24A5
	bit 7,a
	ret nz
	ld e,$04
	ld bc,$7C4F
	jp Unknown_0x0846

Unknown_0x11964:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$5533
	call Unknown_0x233C
	jr c,Unknown_0x1199F
	call Unknown_0x0DA4
	ld bc,Unknown_0x1156B
	call Unknown_0x24B9
	bit 7,a
	jr z,Unknown_0x119A7
	bit 4,a
	jr nz,Unknown_0x1198F
	bit 5,a
	jr nz,Unknown_0x11997
	ld a,[$DD2C]
	bit 3,a
	ret z

Unknown_0x1198F:
	ld e,$04
	ld bc,Unknown_0x11737
	jp Unknown_0x0846

Unknown_0x11997:
	ld e,$04
	ld bc,Unknown_0x1170F
	jp Unknown_0x0846

Unknown_0x1199F:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846

Unknown_0x119A7:
	ld e,$04
	ld bc,$7C4F
	jp Unknown_0x0846
	ld bc,$5533
	call Unknown_0x233C
	jr c,Unknown_0x119CE
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,Unknown_0x1156B
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$04
	ld bc,$571F
	jp Unknown_0x0846

Unknown_0x119CE:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$5533
	call Unknown_0x233C
	jr c,Unknown_0x119FC
	ld l,$0D
	ld h,d
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x11A04
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,Unknown_0x1156B
	call Unknown_0x24A5
	bit 7,a
	ret nz
	ld e,$04
	ld bc,$7C4F
	jp Unknown_0x0846

Unknown_0x119FC:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846

Unknown_0x11A04:
	ld e,$04
	ld bc,Unknown_0x11737
	jp Unknown_0x0846
	ld bc,$5533
	call Unknown_0x233C
	jr c,Unknown_0x11A45
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x1156B
	call Unknown_0x24CD
	bit 7,a
	ret z
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ld e,$12
	ld [de],a
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$59
	inc l
	ld [hl],$4B
	ret

Unknown_0x11A45:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$554F
	jp Unknown_0x255B
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$554F
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$04
	ld bc,$593E
	jp Unknown_0x0846
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$554F
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 5,a
	jr nz,Unknown_0x11AA8
	bit 7,a
	ret z
	ld l,$40
	ld h,d
	dec [hl]
	jr z,Unknown_0x11AA8
	ld l,$27
	inc [hl]
	ld hl,$55A3
	call Unknown_0x10C90
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x11AA8:
	ld e,$04
	ld bc,$593E
	jp Unknown_0x0846
	ld e,$04
	ld l,e
	ld h,$A0
	ld a,[de]
	sub [hl]
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	ld e,$45
	ld a,[de]
	jr c,Unknown_0x11AC7
	rlca
	jr c,Unknown_0x11ACA

Unknown_0x11AC3:
	ld a,$01
	jr Unknown_0x11ACB

Unknown_0x11AC7:
	rlca
	jr c,Unknown_0x11AC3

Unknown_0x11ACA:
	xor a

Unknown_0x11ACB:
	ld e,$27
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	inc bc
	push bc
	ld c,l
	ld b,a
	call Unknown_0x0647
	cp $56
	jr c,Unknown_0x11AE6
	cp $AB
	jr c,Unknown_0x11AE9
	ld a,$02
	jr Unknown_0x11AEB

Unknown_0x11AE6:
	xor a
	jr Unknown_0x11AEB

Unknown_0x11AE9:
	ld a,$01

Unknown_0x11AEB:
	rlca
	add a,c
	ld c,a
	jr nc,Unknown_0x11AF1
	inc b

Unknown_0x11AF1:
	call Unknown_0x1FD1
	pop bc
	ld hl,Unknown_0x105E1
	jp Unknown_0x10D04
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$00
	ld a,[hl]
	cp $FF
	ret z
	ld l,$5B
	ld a,[hl]
	cp $0E
	ret nz
	ld l,$3D
	ld a,[hl]
	or a
	ret z
	ld l,$4C
	ld a,[hl]
	or a
	ret z
	push bc
	ld e,$04
	ld bc,$5929
	call Unknown_0x0849
	pop bc
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$3F
	ld a,[bc]
	inc bc
	ld [hl],a
	ret

UnknownData_0x11B2A:
INCBIN "baserom.gb", $11B2A, $11B4D - $11B2A
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$555D
	jp Unknown_0x255B
	call Unknown_0x0647
	and $03
	ld hl,$5B76
	rlca
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x11B6D
	inc h

Unknown_0x11B6D:
	call Unknown_0x20F9
	call Unknown_0x2123
	jp Unknown_0x20BE

UnknownData_0x11B76:
INCBIN "baserom.gb", $11B76, $11BAA - $11B76

Unknown_0x11BAA:
INCBIN "baserom.gb", $11BAA, $11BAE - $11BAA

Unknown_0x11BAE:
INCBIN "baserom.gb", $11BAE, $11C13 - $11BAE

Unknown_0x11C13:
INCBIN "baserom.gb", $11C13, $11C15 - $11C13

Unknown_0x11C15:
INCBIN "baserom.gb", $11C15, $11C17 - $11C15

Unknown_0x11C17:
INCBIN "baserom.gb", $11C17, $11D0A - $11C17

Unknown_0x11D0A:
INCBIN "baserom.gb", $11D0A, $11D4C - $11D0A

Unknown_0x11D4C:
INCBIN "baserom.gb", $11D4C, $11DF9 - $11D4C

Unknown_0x11DF9:
INCBIN "baserom.gb", $11DF9, $11E03 - $11DF9

Unknown_0x11E03:
INCBIN "baserom.gb", $11E03, $11E35 - $11E03

Unknown_0x11E35:
INCBIN "baserom.gb", $11E35, $11E4D - $11E35

Unknown_0x11E4D:
INCBIN "baserom.gb", $11E4D, $11F17 - $11E4D

Unknown_0x11F17:
INCBIN "baserom.gb", $11F17, $11F27 - $11F17
	ld bc,$5B8E
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$5B8E
	call Unknown_0x233C
	jr c,Unknown_0x11F6C
	call Unknown_0x0DA4
	ld bc,Unknown_0x11BAA
	call Unknown_0x24B9
	or a
	jr z,Unknown_0x11F5C
	bit 5,a
	jr nz,Unknown_0x11F64
	ld a,[$DD2C]
	bit 3,a
	ret z
	ld e,$04
	ld bc,Unknown_0x11D0A
	jp Unknown_0x0846

Unknown_0x11F5C:
	ld e,$04
	ld bc,$5D2A
	jp Unknown_0x0846

Unknown_0x11F64:
	ld e,$04
	ld bc,Unknown_0x11D4C
	jp Unknown_0x0846

Unknown_0x11F6C:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$5B8E
	call Unknown_0x233C
	jr c,Unknown_0x11FB4
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x11FAC
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x11BAA
	call Unknown_0x24CD
	bit 6,a
	jr nz,Unknown_0x11FA6
	bit 5,a
	ret z
	xor a
	ld l,$0D
	ld h,d
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld e,$04
	ld bc,$5DB9
	jp Unknown_0x0846

Unknown_0x11FA6:
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a

Unknown_0x11FAC:
	ld e,$04
	ld bc,$5D76
	jp Unknown_0x0846

Unknown_0x11FB4:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$5B8E
	call Unknown_0x233C
	jr c,Unknown_0x11FEF
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x11BAA
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x11FE7
	bit 5,a
	ret z
	xor a
	ld l,$0D
	ld h,d
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld e,$04
	ld bc,$5DB9
	jp Unknown_0x0846

Unknown_0x11FE7:
	ld e,$04
	ld bc,$5D8B
	jp Unknown_0x0846

Unknown_0x11FEF:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$5B8E
	call Unknown_0x233C
	jr c,Unknown_0x1202A
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x11BAA
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x12022
	bit 5,a
	ret z
	xor a
	ld l,$0D
	ld h,d
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld e,$04
	ld bc,$5DB9
	jp Unknown_0x0846

Unknown_0x12022:
	ld e,$04
	ld bc,$5D9C
	jp Unknown_0x0846

Unknown_0x1202A:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x1204E
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$5B8E
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846

Unknown_0x1204E:
	ld e,$04
	ld bc,$5DAD
	jp Unknown_0x0846

UnknownData_0x12056:
INCBIN "baserom.gb", $12056, $1207D - $12056
	ld bc,$5B8E
	call Unknown_0x233C
	jr c,Unknown_0x120BD
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x11BAA
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	ld l,$3F
	dec [hl]
	jr z,Unknown_0x120AF
	ld e,$04
	ld bc,Unknown_0x11DF9
	jp Unknown_0x0846

Unknown_0x120AF:
	ld l,$40
	dec [hl]
	dec l
	ld [hl],$01
	ld e,$04
	ld bc,Unknown_0x11E03
	jp Unknown_0x0846

Unknown_0x120BD:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$5B8E
	call Unknown_0x233C
	jr c,Unknown_0x120EB
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x120E3
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x11BAA
	call Unknown_0x24CD
	bit 5,a
	ret z

Unknown_0x120E3:
	ld e,$04
	ld bc,Unknown_0x11E35
	jp Unknown_0x0846

Unknown_0x120EB:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$5B8E
	call Unknown_0x233C
	jr c,Unknown_0x12112
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,Unknown_0x11BAA
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$04
	ld bc,Unknown_0x11E4D
	jp Unknown_0x0846

Unknown_0x12112:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$44AE
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x11BAE
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x1213F
	bit 5,a
	ret z
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ld e,$40
	inc a
	ld [de],a
	ret

Unknown_0x1213F:
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	ld l,$40
	dec [hl]
	jr z,Unknown_0x1215B
	ld l,$27
	inc [hl]
	ld hl,$5C22
	jp Unknown_0x12193

Unknown_0x1215B:
	ld e,$04
	ld bc,Unknown_0x11F17
	jp Unknown_0x0846
	ld bc,$44AE
	jp Unknown_0x255B
	push bc
	ld b,$20
	ld e,$04
	call Unknown_0x1F9C
	jr c,Unknown_0x12181
	ld b,$31
	ld e,$04
	call Unknown_0x1F9C
	jr c,Unknown_0x12186
	ld hl,Unknown_0x11C17
	jr Unknown_0x12189

Unknown_0x12181:
	ld hl,Unknown_0x11C13
	jr Unknown_0x12189

Unknown_0x12186:
	ld hl,Unknown_0x11C15

Unknown_0x12189:
	pop bc
	jp Unknown_0x20F9
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc

Unknown_0x12193:
	ld e,$27
	ld a,[de]
	ld e,a
	rlca
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x1219F
	inc h

Unknown_0x1219F:
	call Unknown_0x20F9
	jp Unknown_0x20BE

UnknownData_0x121A5:
INCBIN "baserom.gb", $121A5, $121EB - $121A5

Unknown_0x121EB:
INCBIN "baserom.gb", $121EB, $121EF - $121EB

Unknown_0x121EF:
INCBIN "baserom.gb", $121EF, $121F3 - $121EF

Unknown_0x121F3:
INCBIN "baserom.gb", $121F3, $12353 - $121F3

Unknown_0x12353:
INCBIN "baserom.gb", $12353, $12361 - $12353

Unknown_0x12361:
INCBIN "baserom.gb", $12361, $123B6 - $12361

Unknown_0x123B6:
INCBIN "baserom.gb", $123B6, $123E4 - $123B6

Unknown_0x123E4:
INCBIN "baserom.gb", $123E4, $12435 - $123E4

Unknown_0x12435:
INCBIN "baserom.gb", $12435, $1261A - $12435

Unknown_0x1261A:
INCBIN "baserom.gb", $1261A, $1275A - $1261A

Unknown_0x1275A:
INCBIN "baserom.gb", $1275A, $1276E - $1275A

Unknown_0x1276E:
INCBIN "baserom.gb", $1276E, $127EE - $1276E

Unknown_0x127EE:
INCBIN "baserom.gb", $127EE, $1282C - $127EE
	ld bc,$61A5
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x12850
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x12858
	call Unknown_0x1ED3
	jp Unknown_0x0DA4

Unknown_0x12850:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846

Unknown_0x12858:
	ld e,$04
	ld bc,Unknown_0x12353
	jp Unknown_0x0846
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x1288C
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x121EB
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$22
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$04
	ld bc,Unknown_0x12361
	jp Unknown_0x0846

Unknown_0x1288C:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x128A9
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x128B1
	call Unknown_0x1ED3
	jp Unknown_0x0DA4

Unknown_0x128A9:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846

Unknown_0x128B1:
	ld e,$04
	ld bc,Unknown_0x123B6
	jp Unknown_0x0846
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x128E5
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x121EB
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$22
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$04
	ld bc,Unknown_0x123E4
	jp Unknown_0x0846

Unknown_0x128E5:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x12919
	ld bc,Unknown_0x121EB
	call Unknown_0x24A5
	or a
	jr z,Unknown_0x12911
	ld b,$40
	ld e,$04
	call Unknown_0x1F9C
	ret nz
	ld e,$04
	ld bc,Unknown_0x12435
	jp Unknown_0x0846

Unknown_0x12911:
	ld e,$04
	ld bc,$647B
	jp Unknown_0x0846

Unknown_0x12919:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846

UnknownData_0x12921:
INCBIN "baserom.gb", $12921, $12955 - $12921
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x12973
	ld bc,Unknown_0x121EB
	call Unknown_0x24A5
	or a
	ret nz
	ld e,$04
	ld bc,$6487
	jp Unknown_0x0846

Unknown_0x12973:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846

UnknownData_0x1297B:
INCBIN "baserom.gb", $1297B, $129AF - $1297B
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x129DF
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x121EB
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$22
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$68
	inc l
	ld [hl],$2C
	ret

Unknown_0x129DF:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x12A05
	ld bc,Unknown_0x121EB
	call Unknown_0x24A5
	or a
	ret nz
	ld e,$04
	ld bc,$6561
	jp Unknown_0x0846

Unknown_0x12A05:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846

UnknownData_0x12A0D:
INCBIN "baserom.gb", $12A0D, $12A41 - $12A0D
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x12A68
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,Unknown_0x121EB
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$0D
	call Unknown_0x0F7A
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$04
	ld bc,Unknown_0x1261A
	jp Unknown_0x0846

Unknown_0x12A68:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$61A5
	call Unknown_0x233C
	jr c,Unknown_0x12A8F
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x121EB
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$04
	ld bc,$6696
	jp Unknown_0x0846

Unknown_0x12A8F:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$61C1
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x121EF
	call Unknown_0x24CD
	or a
	ret z
	ld e,$04
	ld bc,Unknown_0x1276E
	jp Unknown_0x0846
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$61C1
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x121EF
	call Unknown_0x24CD
	or a
	ret z
	ld e,$04
	ld bc,Unknown_0x1275A
	jp Unknown_0x0846
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$61C1
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x121EF
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x12AF6
	bit 5,a
	ret z
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ld e,$27
	inc a
	ld [de],a
	ret

Unknown_0x12AF6:
	ld e,$27
	ld a,[de]
	inc a
	cp $02
	jr z,Unknown_0x12B05
	ld [de],a
	ld hl,$62A1
	jp Unknown_0x12193

Unknown_0x12B05:
	ld e,$04
	ld bc,Unknown_0x1276E
	jp Unknown_0x0846
	ld bc,$61C1
	call Unknown_0x255B
	ret c
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x12B1D
	dec a
	ld [de],a
	ret

Unknown_0x12B1D:
	ld e,$47
	ld a,[de]
	xor $10
	ld [de],a
	ld e,$40
	ld a,[de]
	ld e,$26
	ld [de],a
	ret
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$61CF
	jp Unknown_0x255B
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$61DD
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x121F3
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x12B5B
	bit 5,a
	ret z
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	inc a
	ld e,$40
	ld [de],a
	ret

Unknown_0x12B5B:
	ld e,$41
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld l,$40
	ld h,d
	dec [hl]
	jr nz,Unknown_0x12B76
	ld e,$04
	ld bc,Unknown_0x127EE
	jp Unknown_0x0846

Unknown_0x12B76:
	ld l,$0F
	ld h,d
	ld [hl],$00
	inc l
	ld [hl],$FE
	ret
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x12B92
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$61DD
	jp Unknown_0x255B

Unknown_0x12B92:
	ld h,d
	jp Unknown_0x0BBA
	ld e,$45
	ld a,[de]
	rlca
	jr c,Unknown_0x12BA1
	ld hl,$6287
	jr Unknown_0x12BA4

Unknown_0x12BA1:
	ld hl,$6291

Unknown_0x12BA4:
	ld e,$3B
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	push bc
	ld e,$3B
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld b,h
	ld c,l
	ld hl,$DB51
	ld e,$04
	ld a,[bc]
	add a,[hl]
	ld [de],a
	inc e
	inc hl
	ld a,[hl]
	adc a,$00
	ld [de],a
	inc bc
	ld hl,$DB53
	ld e,$07
	ld a,[bc]
	add a,[hl]
	ld [de],a
	inc e
	inc hl
	ld a,[hl]
	adc a,$00
	ld [de],a
	inc bc
	ld e,$3B
	ld a,c
	ld [de],a
	inc e
	ld a,b
	ld [de],a
	pop bc
	ret
	push bc
	call Unknown_0x0647
	ld c,$00
	ld b,$34

Unknown_0x12BE5:
	sub b
	jr c,Unknown_0x12BEB
	inc c
	jr Unknown_0x12BE5

Unknown_0x12BEB:
	ld a,c

Unknown_0x12BEC:
	ld [$FF00+$80],a
	ld hl,$6282
	add a,l
	ld l,a
	jr nc,Unknown_0x12BF6
	inc h

Unknown_0x12BF6:
	ld b,$00
	ld d,b
	ld a,[hl]
	ld hl,$DB51
	add a,[hl]
	ld c,a
	inc hl
	ld a,b
	adc a,[hl]
	ld b,a
	ld a,$70
	ld hl,$DB53
	add a,[hl]
	ld e,a
	inc hl
	ld a,d
	adc a,[hl]
	ld d,a
	push bc
	call Unknown_0x1646
	pop bc
	cp $00
	jr nz,Unknown_0x12C22
	ld a,[$FF00+$80]
	inc a
	cp $05
	jr c,Unknown_0x12BEC
	sub $05
	jr Unknown_0x12BEC

Unknown_0x12C22:
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$04
	ld a,c
	ld [de],a
	pop bc
	ret

UnknownData_0x12C2B:
INCBIN "baserom.gb", $12C2B, $12C55 - $12C2B

Unknown_0x12C55:
INCBIN "baserom.gb", $12C55, $12C59 - $12C55

Unknown_0x12C59:
INCBIN "baserom.gb", $12C59, $12D1B - $12C59
	xor a
	ld [$DD5D],a
	ret
	xor a
	ld hl,$DD5E
	ld [hli],a
	ld [hl],a
	ret

UnknownData_0x12D27:
INCBIN "baserom.gb", $12D27, $1306F - $12D27
	ld bc,$6C2B
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$6C2B
	call Unknown_0x233C
	jr c,Unknown_0x130AE
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x12C55
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$22
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$70
	inc l
	ld [hl],$6F
	ret

Unknown_0x130AE:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$6C2B
	call Unknown_0x233C
	jr c,Unknown_0x130FD
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x130C9
	ld l,$15
	ld [hl],$00

Unknown_0x130C9:
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x12C55
	call Unknown_0x24CD
	bit 6,a
	jr z,Unknown_0x130E1
	ld h,d
	ld l,$0F
	ld [hl],$00
	inc l
	ld [hl],$00

Unknown_0x130E1:
	bit 7,a
	ret z
	ld e,$22
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	ld l,$27
	dec [hl]
	ld e,$04
	ld bc,$6D49
	jp Unknown_0x0846

Unknown_0x130FD:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$6C2B
	call Unknown_0x233C
	jr c,Unknown_0x13128
	call Unknown_0x1ED3
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,Unknown_0x12C55
	call Unknown_0x24CD
	bit 5,a
	ret z
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x1EF9

Unknown_0x13128:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$6C2B
	call Unknown_0x233C
	jr c,Unknown_0x13150
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x12C55
	call Unknown_0x24CD
	bit 5,a
	ret z
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x1EF9

Unknown_0x13150:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	ld bc,$6C2B
	call Unknown_0x233C
	jr nc,Unknown_0x13168
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846

Unknown_0x13168:
	call Unknown_0x21C5
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,Unknown_0x12C55
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x13187
	bit 5,a
	ret z
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x1EF9

Unknown_0x13187:
	ld e,$22
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$40
	ld a,[de]
	cp $01
	jr c,Unknown_0x131AD
	jr z,Unknown_0x131A5
	ld e,$04
	ld bc,$6FEB
	jp Unknown_0x0846

Unknown_0x131A5:
	ld e,$04
	ld bc,$6F80
	jp Unknown_0x0846

Unknown_0x131AD:
	ld e,$04
	ld bc,$6E92
	jp Unknown_0x0846
	ld bc,$6C2B
	call Unknown_0x233C
	jr c,Unknown_0x131E3
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x131DB
	ld bc,Unknown_0x12C55
	call Unknown_0x24CD
	bit 6,a
	ret z
	ld h,d
	ld l,$0F
	ld [hl],$00
	inc l
	ld [hl],$00

Unknown_0x131DB:
	ld e,$04
	ld bc,$6EE8
	jp Unknown_0x0846

Unknown_0x131E3:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$6C2B
	call Unknown_0x233C
	jr nc,Unknown_0x131FB
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846

Unknown_0x131FB:
	call Unknown_0x21D8
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,Unknown_0x12C55
	call Unknown_0x24CD
	bit 5,a
	jr z,Unknown_0x13221
	ld e,$3B
	ld a,[de]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[de]
	cpl
	adc a,$00
	ld [de],a
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a

Unknown_0x13221:
	ld h,d
	ld l,$26
	dec [hl]
	ret nz
	ld [hl],$08
	call Unknown_0x203D
	ld e,$3C
	ld a,[de]
	jr nc,Unknown_0x13235
	rlca
	jr nc,Unknown_0x13261
	jr Unknown_0x13238

Unknown_0x13235:
	rlca
	jr c,Unknown_0x13261

Unknown_0x13238:
	ld h,d
	ld l,$3F
	bit 0,[hl]
	jr nz,Unknown_0x13247
	set 0,[hl]
	ld l,$11
	ld [hl],$00
	jr Unknown_0x13261

Unknown_0x13247:
	res 0,[hl]
	ld l,$11
	ld e,$41
	ld a,[de]
	ld [hl],a
	ld l,$3B
	ld a,[hl]
	cpl
	add a,$01
	ld [hli],a
	ld a,[hl]
	cpl
	adc a,$00
	ld [hl],a
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a

Unknown_0x13261:
	call Unknown_0x202B
	ld e,$3A
	ld a,[de]
	jr nc,Unknown_0x1326D
	rlca
	ret nc
	jr Unknown_0x1326F

Unknown_0x1326D:
	rlca
	ret c

Unknown_0x1326F:
	ld h,d
	ld l,$3F
	bit 1,[hl]
	jr nz,Unknown_0x1327D
	set 1,[hl]
	ld l,$12
	ld [hl],$00
	ret

Unknown_0x1327D:
	res 1,[hl]
	ld l,$12
	ld e,$41
	ld a,[de]
	ld [hl],a
	ld l,$39
	ld a,[hl]
	cpl
	add a,$01
	ld [hli],a
	ld a,[hl]
	cpl
	adc a,$00
	ld [hl],a
	ret
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$6C47
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x12C59
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x132B4
	bit 5,a
	ret z
	ld e,$11
	ld a,[de]
	cpl
	inc a
	jp Unknown_0x1EF9

Unknown_0x132B4:
	ld h,d
	ld l,$40
	dec [hl]
	jr z,Unknown_0x132C0
	ld l,$3F
	inc [hl]
	jp Unknown_0x132CE

Unknown_0x132C0:
	ld e,$04
	ld bc,$7062
	jp Unknown_0x0846

UnknownData_0x132C8:
INCBIN "baserom.gb", $132C8, $132CE - $132C8

Unknown_0x132CE:
	ld e,$3F
	ld a,[de]
	rlca
	ld e,a
	rlca
	rlca
	add a,e
	ld l,a
	ld e,$5C
	ld a,[de]
	ld e,a
	rlca
	rlca
	add a,e
	add a,l
	ld hl,$6CB0
	add a,l
	ld l,a
	jr nc,Unknown_0x132E7
	inc h

Unknown_0x132E7:
	call Unknown_0x20F9
	jp Unknown_0x20BE

UnknownData_0x132ED:
INCBIN "baserom.gb", $132ED, $13307 - $132ED
	ld hl,$DD5D
	ld a,[hl]
	inc a
	and $01
	ld [hl],a
	ret nz
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret
	call Unknown_0x0DA4
	ld bc,Unknown_0x1332B
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$04
	ld bc,Unknown_0x13335
	jp Unknown_0x0846

Unknown_0x1332B:
INCBIN "baserom.gb", $1332B, $13335 - $1332B

Unknown_0x13335:
INCBIN "baserom.gb", $13335, $1336A - $13335
	ld bc,Unknown_0x13376
	call Unknown_0x24E8
	ld bc,$6C47
	jp Unknown_0x255B

Unknown_0x13376:
INCBIN "baserom.gb", $13376, $13378 - $13376
	ld bc,Unknown_0x13384
	call Unknown_0x24E8
	ld bc,$6C47
	jp Unknown_0x255B

Unknown_0x13384:
INCBIN "baserom.gb", $13384, $13386 - $13384
	ld hl,$DD5E
	ld a,[hl]
	or a
	jr z,Unknown_0x1338E
	inc hl

Unknown_0x1338E:
	ld [hl],d
	ret

UnknownData_0x13390:
INCBIN "baserom.gb", $13390, $133A4 - $13390
	ld bc,Unknown_0x133B0
	call Unknown_0x24E8
	ld bc,$6C47
	jp Unknown_0x255B

Unknown_0x133B0:
INCBIN "baserom.gb", $133B0, $133B2 - $133B0
	push bc
	ld hl,$DD5E
	ld a,[hl]
	or a
	jr z,Unknown_0x133C7
	ld [hl],$00
	ld h,a
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x133C7
	call Unknown_0x0BBA

Unknown_0x133C7:
	ld hl,$DD5F
	ld a,[hl]
	or a
	jr z,Unknown_0x133DB
	ld [hl],$00
	ld h,a
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x133DB
	call Unknown_0x0BBA

Unknown_0x133DB:
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret

UnknownData_0x133E0:
INCBIN "baserom.gb", $133E0, $1340A - $133E0

Unknown_0x1340A:
INCBIN "baserom.gb", $1340A, $1340E - $1340A

Unknown_0x1340E:
INCBIN "baserom.gb", $1340E, $13452 - $1340E

Unknown_0x13452:
INCBIN "baserom.gb", $13452, $1345C - $13452

Unknown_0x1345C:
INCBIN "baserom.gb", $1345C, $1357E - $1345C

Unknown_0x1357E:
INCBIN "baserom.gb", $1357E, $1368D - $1357E

Unknown_0x1368D:
INCBIN "baserom.gb", $1368D, $13753 - $1368D

Unknown_0x13753:
INCBIN "baserom.gb", $13753, $137D8 - $13753
	ld bc,$73E0
	jp Unknown_0x255B
	ld bc,$73E0
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x255B
	ld bc,Unknown_0x1340A
	call Unknown_0x24A5
	bit 5,a
	ret z
	ld h,d
	ld l,$43
	set 7,[hl]
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	add a,[hl]
	cp $65
	jr nc,Unknown_0x1383C
	cp $1B
	jr c,Unknown_0x13818
	call Unknown_0x202B
	jr nc,Unknown_0x1383C

Unknown_0x13818:
	ld h,d
	ld l,$43
	ld e,$45
	ld a,[de]
	res 0,[hl]
	rlca
	jr c,Unknown_0x13847

Unknown_0x13823:
	ld e,$0F
	ld h,d
	ld l,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hld]
	ld [de],a

Unknown_0x1382D:
	xor a
	ld [hli],a
	ld [hl],a
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$78
	inc l
	ld [hl],$59
	ret

Unknown_0x1383C:
	ld h,d
	ld l,$43
	ld e,$45
	ld a,[de]
	set 0,[hl]
	rlca
	jr c,Unknown_0x13823

Unknown_0x13847:
	ld e,$0F
	ld h,d
	ld l,$0D
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hld]
	cpl
	adc a,$00
	ld [de],a
	jr Unknown_0x1382D
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x255B
	ld bc,Unknown_0x1340A
	call Unknown_0x24CD
	bit 6,a
	jp nz,Unknown_0x1387F
	bit 7,a
	jr nz,Unknown_0x1387F
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	add a,[hl]
	cp $1B
	jr c,Unknown_0x1387F
	cp $65
	ret c

Unknown_0x1387F:
	ld h,d
	ld l,$43
	res 7,[hl]
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	add a,[hl]
	cp $1C
	jr c,Unknown_0x1389E
	cp $84
	jr nc,Unknown_0x138C2
	call Unknown_0x1EC0
	ld e,$45
	ld a,[de]
	rlca
	jr c,Unknown_0x138C7
	jr Unknown_0x138A3

Unknown_0x1389E:
	ld e,$45
	ld a,$40
	ld [de],a

Unknown_0x138A3:
	ld e,$43
	ld a,[de]
	rrca
	jr c,Unknown_0x138CD

Unknown_0x138A9:
	ld e,$0D
	ld h,d
	ld l,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hld]
	ld [de],a

Unknown_0x138B3:
	xor a
	ld [hli],a
	ld [hl],a
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$77
	inc l
	ld [hl],$ED
	ret

Unknown_0x138C2:
	ld e,$45
	ld a,$C0
	ld [de],a

Unknown_0x138C7:
	ld e,$43
	ld a,[de]
	rrca
	jr c,Unknown_0x138A9

Unknown_0x138CD:
	ld e,$0D
	ld h,d
	ld l,$0F
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hld]
	cpl
	adc a,$00
	ld [de],a
	jr Unknown_0x138B3
	call Unknown_0x21D8
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x255B
	ld bc,Unknown_0x1340A
	call Unknown_0x24CD
	ld l,$26
	ld h,d
	dec [hl]
	ret nz
	ld [hl],$10
	ld l,$40
	dec [hl]
	jr z,Unknown_0x1391B
	ld b,$08
	ld e,$07
	call Unknown_0x1F9C
	jr nc,Unknown_0x13923
	ld b,$40
	ld e,$04
	call Unknown_0x1F9C
	jr nc,Unknown_0x13923
	ld b,$30
	ld e,$04
	call Unknown_0x1F9C
	jr c,Unknown_0x13923

Unknown_0x1391B:
	ld e,$04
	ld bc,Unknown_0x1357E
	jp Unknown_0x0846

Unknown_0x13923:
	ld e,$45
	ld a,[de]
	ld [$FF00+$80],a
	ld e,$43
	ld a,[de]
	ld [$FF00+$81],a
	call Unknown_0x13B74
	ld e,$45
	ld a,[de]
	ld hl,$FF80
	cp [hl]
	jr z,Unknown_0x13961
	ld h,d
	ld l,$3F
	bit 0,[hl]
	jr nz,Unknown_0x1394D
	set 0,[hl]
	ld l,$11
	ld [hl],$00
	ld e,$45
	ld a,[$FF00+$80]
	ld [de],a
	jr Unknown_0x13961

Unknown_0x1394D:
	res 0,[hl]
	ld l,$11
	ld e,$41
	ld a,[de]
	ld [hl],a
	ld l,$3B
	ld a,[hl]
	cpl
	add a,$01
	ld [hli],a
	ld a,[hl]
	cpl
	adc a,$00
	ld [hl],a

Unknown_0x13961:
	call Unknown_0x202B
	ld e,$3A
	ld a,[de]
	jr nc,Unknown_0x1396D
	rlca
	ret nc
	jr Unknown_0x1396F

Unknown_0x1396D:
	rlca
	ret c

Unknown_0x1396F:
	ld h,d
	ld l,$3F
	bit 1,[hl]
	jr nz,Unknown_0x1397D
	set 1,[hl]
	ld l,$12
	ld [hl],$00
	ret

Unknown_0x1397D:
	res 1,[hl]
	ld l,$12
	ld e,$41
	ld a,[de]
	ld [hl],a
	ld l,$39
	ld a,[hl]
	cpl
	add a,$01
	ld [hli],a
	ld a,[hl]
	cpl
	adc a,$00
	ld [hl],a
	ret
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x1340A
	jp Unknown_0x24CD
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x233C
	jr c,Unknown_0x139B9
	ld bc,Unknown_0x1340A
	jp Unknown_0x24CD

Unknown_0x139B9:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	ld bc,$73E0
	call Unknown_0x233C
	jr c,Unknown_0x139EF
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,Unknown_0x1340A
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x139E3
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	add a,[hl]
	cp $65
	ret c

Unknown_0x139E3:
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$77
	inc l
	ld [hl],$DE
	ret

Unknown_0x139EF:
	ld e,$04
	ld bc,$7CD9
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x255B
	ld bc,Unknown_0x1340A
	call Unknown_0x24CD
	bit 5,a
	ret z
	ld h,d
	ld l,$1F
	ld [hl],$44
	inc l
	ld [hl],$77
	inc l
	ld [hl],$D8
	ret
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x255B
	ld bc,Unknown_0x1340A
	call Unknown_0x24CD
	bit 5,a
	ret z
	ld e,$04
	ld bc,$768D
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x255B
	ld bc,Unknown_0x1340A
	call Unknown_0x24CD
	bit 5,a
	jr nz,Unknown_0x13A56
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	ret nz
	ld e,$04
	ld bc,$7678
	jp Unknown_0x0846

Unknown_0x13A56:
	ld e,$04
	ld bc,Unknown_0x1368D
	jp Unknown_0x0846
	ld bc,$73E0
	call Unknown_0x233C
	jr c,Unknown_0x13A8C
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x1340A
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld h,d
	ld l,$40
	dec [hl]
	jr z,Unknown_0x13A84
	ld hl,Unknown_0x13452
	call Unknown_0x20F9
	jp Unknown_0x20BE

Unknown_0x13A84:
	ld e,$04
	ld bc,$76BB
	jp Unknown_0x0846

Unknown_0x13A8C:
	ld e,$04
	ld bc,Unknown_0x13CD9
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$73E0
	call Unknown_0x255B
	ld bc,Unknown_0x1340A
	jp Unknown_0x24A5
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$73FC
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x1340E
	call Unknown_0x24CD
	bit 5,a
	ret z
	ld e,$04
	ld bc,Unknown_0x13753
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$73FC
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld l,$40
	ld h,d
	dec [hl]
	jr z,Unknown_0x13AE3
	ld hl,Unknown_0x1345C
	call Unknown_0x20F9
	jp Unknown_0x20BE

Unknown_0x13AE3:
	ld e,$04
	ld bc,$7774
	jp Unknown_0x0846
	ld bc,$73FC
	jp Unknown_0x255B
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$73FC
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x1340E
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$04
	ld bc,$77A5
	jp Unknown_0x0846

UnknownData_0x13B0F:
INCBIN "baserom.gb", $13B0F, $13B2A - $13B0F
	call Unknown_0x202B
	ld l,$43
	ld h,d
	jr nc,Unknown_0x13B35
	res 0,[hl]
	ret

Unknown_0x13B35:
	set 0,[hl]
	ret
	ld h,d
	ld l,$43
	set 7,[hl]
	ret
	ld h,d
	ld l,$43
	res 7,[hl]
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$43
	ld a,[de]
	rlca
	jp nc,Unknown_0x20F0
	ld e,$5C
	ld a,[de]
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x13B5A
	inc h

Unknown_0x13B5A:
	ld e,$43
	ld a,[de]
	rrca
	ld e,$0F
	jr c,Unknown_0x13B68
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

Unknown_0x13B68:
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hli]
	cpl
	adc a,$00
	ld [de],a
	ret

Unknown_0x13B74:
	push bc
	ld h,$A0
	ld l,$04
	ld e,$45
	ld a,[de]
	rlca
	jr c,Unknown_0x13BAD
	ld a,[hli]
	sub $30
	ld c,a
	ld a,[hl]
	sbc a,$00
	jr c,Unknown_0x13BCC
	ld b,a
	ld a,c
	ld hl,$DB51
	sub [hl]
	ld e,a
	inc hl
	ld a,b
	sbc a,[hl]
	jr c,Unknown_0x13BCC
	ld a,e
	cp $1C
	jr c,Unknown_0x13BCC

Unknown_0x13B99:
	ld e,$04
	ld a,[de]
	sub c
	inc e
	ld a,[de]
	sbc a,b
	jr nc,Unknown_0x13BA6
	ld a,$40
	jr Unknown_0x13BA8

Unknown_0x13BA6:
	ld a,$C0

Unknown_0x13BA8:
	ld e,$45
	ld [de],a
	pop bc
	ret

Unknown_0x13BAD:
	ld a,[hli]
	add a,$30
	ld c,a
	ld a,[hl]
	adc a,$00
	ld b,a
	ld a,c
	ld hl,$DB51
	sub [hl]
	cp $64
	jr c,Unknown_0x13B99
	ld h,$A0
	ld l,$04
	ld a,[hli]
	sub $30
	ld c,a
	ld a,[hl]
	sbc a,$00
	ld b,a
	jr Unknown_0x13B99

Unknown_0x13BCC:
	ld h,$A0
	ld l,$04
	ld a,[hli]
	add a,$30
	ld c,a
	ld a,[hl]
	adc a,$00
	ld b,a
	jr Unknown_0x13B99
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld a,[hli]
	ld e,$11
	ld [de],a
	inc e
	ld [de],a
	ld e,$41
	ld [de],a
	ld e,$45
	ld a,[de]
	rlca
	ld e,$3B
	jr c,Unknown_0x13BF8
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hld]
	ld [de],a
	jr Unknown_0x13C03

Unknown_0x13BF8:
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hld]
	cpl
	adc a,$00
	ld [de],a

Unknown_0x13C03:
	ld e,$43
	ld a,[de]
	rrca
	ld e,$39
	jr c,Unknown_0x13C12
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	jr Unknown_0x13C1D

Unknown_0x13C12:
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hli]
	cpl
	adc a,$00
	ld [de],a

Unknown_0x13C1D:
	ld e,$5C
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0x13C25
	inc h

Unknown_0x13C25:
	ld e,$40
	ld a,[hl]
	ld [de],a
	xor a
	dec e
	ld [de],a
	ret

UnknownData_0x13C2D:
INCBIN "baserom.gb", $13C2D, $13C7E - $13C2D

Unknown_0x13C7E:
INCBIN "baserom.gb", $13C7E, $13C91 - $13C7E

Unknown_0x13C91:
INCBIN "baserom.gb", $13C91, $13CD9 - $13C91

Unknown_0x13CD9:
INCBIN "baserom.gb", $13CD9, $13DE3 - $13CD9

Unknown_0x13DE3:
	ld e,$5B
	ld a,[de]
	rlca
	ld hl,$7E00
	add a,l
	ld l,a
	jr nc,Unknown_0x13DEF
	inc h

Unknown_0x13DEF:
	ld a,[hli]
	ld c,a
	ld b,[hl]
	call Unknown_0x233C
	ret nc
	ld e,$04
	ld bc,Unknown_0x13CD9
	call Unknown_0x0846
	scf
	ret

UnknownData_0x13E00:
INCBIN "baserom.gb", $13E00, $13E0E - $13E00
	call Unknown_0x13DE3
	ret c
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld e,$5B
	ld a,[de]
	ld hl,$7E35
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x13E24
	inc h

Unknown_0x13E24:
	ld a,[hli]
	ld b,[hl]
	ld c,a
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$04
	ld bc,Unknown_0x13C91
	jp Unknown_0x0846

UnknownData_0x13E35:
INCBIN "baserom.gb", $13E35, $13E43 - $13E35
	call Unknown_0x13E78
	ret c
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld e,$5B
	ld a,[de]
	ld hl,$7E6A
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x13E59
	inc h

Unknown_0x13E59:
	ld a,[hli]
	ld b,[hl]
	ld c,a
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$04
	ld bc,$7D74
	jp Unknown_0x0846

UnknownData_0x13E6A:
INCBIN "baserom.gb", $13E6A, $13E78 - $13E6A

Unknown_0x13E78:
	ld e,$5B
	ld a,[de]
	rlca
	ld hl,$7E99
	add a,l
	ld l,a
	jr nc,Unknown_0x13E84
	inc h

Unknown_0x13E84:
	ld a,[hli]
	ld c,a
	ld b,[hl]
	call Unknown_0x255B
	ret c
	ld a,[$DD2C]
	bit 3,a
	ret z
	ld e,$03
	ld bc,$4E33
	jp Unknown_0x0846

UnknownData_0x13E99:
INCBIN "baserom.gb", $13E99, $13EA7 - $13E99
	ld a,d
	ld [$DD61],a
	ret
	push bc
	ld e,$5B
	ld a,[de]
	ld hl,$7EC6
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x13EB9
	inc h

Unknown_0x13EB9:
	ld a,[hli]
	ld b,[hl]
	ld c,a
	call Unknown_0x2491
	and $80
	ld e,$27
	ld [de],a
	pop bc
	ret

UnknownData_0x13EC6:
INCBIN "baserom.gb", $13EC6, $13ED4 - $13EC6
	ld e,$5B
	ld a,[de]
	rlca
	ld hl,$7EE8
	add a,l
	ld l,a
	jr nc,Unknown_0x13EE0
	inc h

Unknown_0x13EE0:
	ld e,$5E
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

UnknownData_0x13EE8:
INCBIN "baserom.gb", $13EE8, $13EF6 - $13EE8
	xor a
	ld [$DD60],a
	ret

UnknownData_0x13EFB:
INCBIN "baserom.gb", $13EFB, $14000 - $13EFB