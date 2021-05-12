SECTION "Bank03", ROMX, BANK[$03]

UnknownData_0xC000:
INCBIN "baserom.gb", $C000, $C009 - $C000
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$5D
	ld e,l
	ld a,[hl]
	xor $80
	ld [de],a
	ret

UnknownData_0xC015:
INCBIN "baserom.gb", $C015, $C099 - $C015

Unknown_0xC099:
INCBIN "baserom.gb", $C099, $C0B0 - $C099

Unknown_0xC0B0:
INCBIN "baserom.gb", $C0B0, $C0FD - $C0B0

Unknown_0xC0FD:
INCBIN "baserom.gb", $C0FD, $C168 - $C0FD
	ld bc,$4015
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld e,$04
	ld b,$28
	call Unknown_0x1F9C
	jr nc,Unknown_0xC18C
	ld e,$07
	ld b,$28
	call Unknown_0x1F9C
	jr nc,Unknown_0xC18C
	ld e,$03
	ld bc,Unknown_0xC0B0
	jp Unknown_0x0846

Unknown_0xC18C:
	call Unknown_0x0DA4
	ld e,$40
	ld a,[de]
	rlca
	ld hl,$41A0
	add a,l
	ld l,a
	ld a,h
	adc a,$00
	ld h,a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0xC1A0:
INCBIN "baserom.gb", $C1A0, $C1A8 - $C1A0
	call Unknown_0xD026

Unknown_0xC1AB:
	or a
	jr z,Unknown_0xC1C7
	bit 5,a
	ld h,d
	ld l,$3D
	ld [hl],$02
	ret z
	call Unknown_0x1FAF

Unknown_0xC1B9:
	ld e,$0E
	ld a,[de]
	and $80
	xor $80
	rlca
	add a,$02
	ld e,$40
	ld [de],a
	ret

Unknown_0xC1C7:
	ld h,d
	ld l,$3D
	dec [hl]
	jr nz,Unknown_0xC1D5
	ld e,$03
	ld bc,$408C
	jp Unknown_0x0846

Unknown_0xC1D5:
	call Unknown_0x1FBD
	jr Unknown_0xC1B9
	call Unknown_0x19CB
	jr Unknown_0xC1AB
	call Unknown_0xD0D0

Unknown_0xC1E2:
	or a
	jr z,Unknown_0xC200
	bit 7,a
	jr nz,Unknown_0xC1F1
	bit 6,a
	ld h,d
	ld l,$3D
	ld [hl],$02
	ret z

Unknown_0xC1F1:
	call Unknown_0x1FBD

Unknown_0xC1F4:
	ld e,$10
	ld a,[de]
	and $80
	xor $80
	rlca
	ld e,$40
	ld [de],a
	ret

Unknown_0xC200:
	ld h,d
	ld l,$3D
	dec [hl]
	jr nz,Unknown_0xC20E
	ld e,$03
	ld bc,$408C
	jp Unknown_0x0846

Unknown_0xC20E:
	call Unknown_0x1FAF
	jr Unknown_0xC1F4
	call Unknown_0xD0F8
	jr Unknown_0xC1E2
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4015
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$40
	ld a,$01
	ld [de],a
	ld e,$03
	ld bc,Unknown_0xC099
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$4015
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4015
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld e,$27
	ld a,[de]
	cp $01
	jr nz,Unknown_0xC266
	call Unknown_0x202B
	ret c
	jr Unknown_0xC26A

Unknown_0xC266:
	call Unknown_0x202B
	ret nc

Unknown_0xC26A:
	ld e,$03
	ld bc,Unknown_0xC0FD
	jp Unknown_0x0846
	ld bc,$4015
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld h,d
	ld l,$3E
	dec [hl]
	ret nz
	ld [hl],$02
	ld l,$47
	ld a,$10
	xor [hl]
	ld [hl],a
	ret
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$4023
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret
	push bc
	ld b,$10
	ld e,$07
	call Unknown_0x1F9C
	ld a,$00
	jr nc,Unknown_0xC2B1
	call Unknown_0x0647
	cp $80
	ld a,$00
	jr nc,Unknown_0xC2B1
	inc a

Unknown_0xC2B1:
	ld e,$27
	ld [de],a
	pop bc
	ret
	ld e,$07
	ld h,$A0
	ld l,e
	ld a,[de]
	sub [hl]
	inc l
	inc e
	ld a,[de]
	sbc a,[hl]
	jr z,Unknown_0xC2C9
	jr c,Unknown_0xC2CC
	ld a,$02
	jr Unknown_0xC2CE

Unknown_0xC2C9:
	xor a
	jr Unknown_0xC2CE

Unknown_0xC2CC:
	ld a,$01

Unknown_0xC2CE:
	ld e,$27
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld a,[hli]
	ld h,[hl]
	ld l,a
	push hl
	call Unknown_0x202B
	pop hl
	jr c,Unknown_0xC2EC
	ld a,l
	cpl
	add a,$01
	ld l,a
	ld a,h
	cpl
	adc a,$00
	ld h,a

Unknown_0xC2EC:
	ld e,$0F
	ld a,l
	ld [de],a
	ld a,h
	inc e
	ld [de],a
	ret

UnknownData_0xC2F4:
INCBIN "baserom.gb", $C2F4, $C36C - $C2F4
	ld bc,$4015
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	jp Unknown_0xC18C
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4015
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x19CB
	bit 5,a
	ret z
	ld hl,Unknown_0xCF04
	ld a,$1D
	call CallForeignBankNoInturrupts
	ret

UnknownData_0xC398:
INCBIN "baserom.gb", $C398, $C3B4 - $C398

Unknown_0xC3B4:
INCBIN "baserom.gb", $C3B4, $C471 - $C3B4

Unknown_0xC471:
INCBIN "baserom.gb", $C471, $C553 - $C471
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	jp Unknown_0x0DA4

UnknownData_0xC55C:
INCBIN "baserom.gb", $C55C, $C577 - $C55C
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$27
	ld a,[hl]
	ld e,$46
	ld [de],a
	ret

UnknownData_0xC582:
INCBIN "baserom.gb", $C582, $C5E7 - $C582
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	push bc
	ld a,[hli]
	ld [$DCFF],a
	ld a,[hl]
	ld [$DD00],a
	ld hl,Unknown_0xC3B4
	ld c,[hl]
	inc hl
	ld e,[hl]
	ld hl,$DB51
	ld a,c
	add a,[hl]
	ld c,a
	inc hl
	ld a,[hl]
	adc a,$00
	ld b,a
	ld hl,$DB53
	ld a,e
	add a,[hl]
	ld e,a
	inc hl
	ld a,[hl]
	adc a,$00
	ld d,a
	ld hl,$DCFF
	ld a,$02
	call Unknown_0x1597
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret

Unknown_0xC61F:
INCBIN "baserom.gb", $C61F, $C74E - $C61F

Unknown_0xC74E:
INCBIN "baserom.gb", $C74E, $C7CF - $C74E
	ld a,$01
	ld [$A07E],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	push bc
	ld a,[hli]
	ld [$DCFF],a
	ld a,[hli]
	ld [$DD00],a
	ld c,[hl]
	inc hl
	ld e,[hl]
	ld hl,$DB51
	ld a,c
	add a,[hl]
	ld c,a
	inc hl
	ld a,[hl]
	adc a,$00
	ld b,a
	ld hl,$DB53
	ld a,e
	add a,[hl]
	ld e,a
	inc hl
	ld a,[hl]
	adc a,$00
	ld d,a
	ld hl,$DCFF
	ld a,$02
	call Unknown_0x1597
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret

UnknownData_0xC80A:
INCBIN "baserom.gb", $C80A, $C95A - $C80A
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4494
	jp Unknown_0x255B

UnknownData_0xC966:
INCBIN "baserom.gb", $C966, $C9A1 - $C966
	ld bc,$4398
	call Unknown_0x233C
	ret nc
	ld e,$03
	ld bc,$461F
	jp Unknown_0x0846
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$15
	ld e,l
	ld a,$2F
	sub [hl]
	ld [de],a
	ld l,$47
	ld e,l
	ld a,[hl]
	ld [de],a
	ret
	ld bc,$43A6
	call Unknown_0x233C
	ret nc
	ld e,$03
	ld bc,Unknown_0xC74E
	jp Unknown_0x0846
	ld e,$5B
	ld a,[de]
	or a
	jr nz,Unknown_0xC9E6
	ld bc,$4398
	call Unknown_0x233C
	jr nc,Unknown_0xC9F6
	ld e,$03
	ld bc,$461F
	jp Unknown_0x0846

Unknown_0xC9E6:
	ld bc,$43A6
	call Unknown_0x233C
	jr nc,Unknown_0xC9F6
	ld e,$03
	ld bc,Unknown_0xC74E
	jp Unknown_0x0846

Unknown_0xC9F6:
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0xC9FF
	dec a
	ld [de],a
	ret

Unknown_0xC9FF:
	ld e,$3B
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	ld b,a
	ld a,h
	ld [de],a
	dec e
	ld a,l
	ld [de],a
	ld a,b
	add a,b
	ld hl,$446F
	add a,l
	ld l,a
	jr nc,Unknown_0xCA17
	inc h

Unknown_0xCA17:
	ld a,[$DB51]
	add a,[hl]
	ld c,a
	inc hl
	ld b,$00
	ld a,[$DB53]
	add a,[hl]
	ld e,a
	ld d,b
	ld a,$0D
	ld h,$A8
	ld l,$B2
	call Unknown_0x07C4
	ld a,h
	or a
	ret z
	ld a,[$FF00+$9A]
	ld d,a
	ld l,$48
	ld [hl],d
	ld l,$5B
	ld [hl],$01
	ld e,$26
	ld a,$60
	ld [de],a
	ret

UnknownData_0xCA41:
INCBIN "baserom.gb", $CA41, $CA44 - $CA41
	ld bc,$444F
	jp Unknown_0x255B
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0xCA7A
	dec a
	ld [de],a
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$444F
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$03
	ld bc,$486B
	jp Unknown_0x0846

Unknown_0xCA7A:
	ld bc,$444F
	call Unknown_0x255B
	ret c
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$27
	ld a,[hl]
	cp $04
	jr z,Unknown_0xCA9B

Unknown_0xCA8C:
	ld e,$27
	ld [de],a
	ld h,d
	ld l,$1F
	ld [hl],$43
	inc l
	ld [hl],$4A
	inc l
	ld [hl],$52
	ret

Unknown_0xCA9B:
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$15
	ld a,[hl]
	cp $03
	jr z,Unknown_0xCAAA
	cp $04
	jr nz,Unknown_0xCA8C

Unknown_0xCAAA:
	ld e,$03
	ld bc,$486C
	jp Unknown_0x0846
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$444F
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	ld l,$26
	dec [hl]
	jr z,Unknown_0xCAE2
	ld e,$3B
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	jp Unknown_0xCC59

Unknown_0xCAE2:
	ld e,$27
	ld a,[de]
	cp $04
	jr z,Unknown_0xCAF1
	ld e,$03
	ld bc,$4884
	jp Unknown_0x0846

Unknown_0xCAF1:
	ld e,$03
	ld bc,$488D
	jp Unknown_0x0846
	ld e,$5B
	ld a,[de]
	or a
	jr nz,Unknown_0xCB0F
	ld bc,$4398
	call Unknown_0x233C
	jr nc,Unknown_0xCB1F
	ld e,$03
	ld bc,Unknown_0xC61F
	jp Unknown_0x0846

Unknown_0xCB0F:
	ld bc,$43A6
	call Unknown_0x233C
	jr nc,Unknown_0xCB1F
	ld e,$03
	ld bc,$474E
	jp Unknown_0x0846

Unknown_0xCB1F:
	ld e,$40
	ld a,[de]
	cp $03
	ret z
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0xCB2E
	dec a
	ld [de],a
	ret

Unknown_0xCB2E:
	ld e,$3B
	ld a,[de]
	inc e
	ld l,a
	ld a,[de]
	ld h,a
	ld e,$26
	ld a,$2C
	ld [de],a
	ld a,[$DB51]
	add a,[hl]
	ld c,a
	inc hl
	ld a,[$DB53]
	add a,[hl]
	ld e,a
	inc hl
	ld a,l
	ld b,h
	ld l,$3B
	ld h,d
	ld [hli],a
	ld [hl],b
	xor a
	ld b,a
	ld d,a
	ld a,$0D
	ld h,$A8
	ld l,$B2
	call Unknown_0x07C4
	ld a,[$FF00+$9A]
	ld d,a
	ld l,$48
	ld [hl],d
	ld l,$5B
	ld [hl],$02
	ld l,$40
	ld e,l
	ld a,[de]
	ld [hl],a
	inc a
	ld [de],a
	ret
	ld bc,$4494
	jp Unknown_0x255B
	ld bc,$43A6
	call Unknown_0x233C
	jr nc,Unknown_0xCB81
	ld e,$03
	ld bc,$474E
	jp Unknown_0x0846

Unknown_0xCB81:
	ld e,$40
	ld a,[de]
	cp $02
	ret z
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0xCB90
	dec a
	ld [de],a
	ret

Unknown_0xCB90:
	ld e,$3B
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	cp $FF
	ret z
	ld b,a
	ld a,h
	ld [de],a
	dec e
	ld a,l
	ld [de],a
	ld a,b
	ld e,$3F
	ld [de],a
	ld a,$03
	ld e,$0D
	call Unknown_0x2319
	ld e,$26
	ld a,$18
	ld [de],a
	ret
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0xCBBF
	dec a
	ld [de],a
	call Unknown_0x1EE6
	jr Unknown_0xCBC2

Unknown_0xCBBF:
	call Unknown_0x1ED3

Unknown_0xCBC2:
	call Unknown_0x0DA4
	ld bc,$4494
	jp Unknown_0x255B
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	ret z
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	jp Unknown_0x0DA4
	call Unknown_0x0647
	and $07
	ld e,$27
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
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0xCBF2
	inc h

Unknown_0xCBF2:
	ld a,[hli]
	ld e,$39
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld e,$39
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	cp $FF
	jr nz,Unknown_0xCC10
	ld a,[hli]
	cpl
	inc a
	add a,l
	ld l,a
	ld a,$FF
	adc a,h
	ld h,a
	ld a,[hli]

Unknown_0xCC10:
	ld e,$27
	ld [de],a
	ld e,$39
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	xor a
	ld e,$26
	ld [de],a
	ret
	push bc
	call Unknown_0x0647
	ld c,$00

Unknown_0xCC25:
	sub $2B
	jr c,Unknown_0xCC2C
	inc c
	jr Unknown_0xCC25

Unknown_0xCC2C:
	ld hl,$445D
	ld a,c
	rlca
	add a,c
	add a,l
	ld l,a
	jr nc,Unknown_0xCC37
	inc h

Unknown_0xCC37:
	ld e,$3B
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	pop bc
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$26
	ld a,$03
	ld [de],a
	ld e,$27
	ld a,[de]
	cp $04
	jr nz,Unknown_0xCC59
	ld a,l
	add a,$0F
	ld l,a
	jr nc,Unknown_0xCC59
	inc h

Unknown_0xCC59:
	call Unknown_0x20BE
	call Unknown_0x20F9
	ld e,$3B
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	ld a,$A2
	ld e,$3B
	ld [de],a
	inc e
	ld a,$44
	ld [de],a
	xor a
	ld e,$40
	ld [de],a
	ret
	push bc
	call Unknown_0x0647
	ld c,$00

Unknown_0xCC7B:
	sub $34
	jr c,Unknown_0xCC82
	inc c
	jr Unknown_0xCC7B

Unknown_0xCC82:
	ld e,c
	pop bc
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld a,e
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0xCC91
	inc h

Unknown_0xCC91:
	ld e,$3B
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	xor a
	ld e,$26
	ld [de],a
	ld e,$40
	ld [de],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$3F
	ld a,[hl]
	ld hl,$44B2
	ld e,a
	rlca
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0xCCB3
	inc h

Unknown_0xCCB3:
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$11
	ld a,[hli]
	ld [de],a
	ld e,$26
	ld a,[hli]
	ld [de],a
	ld e,$12
	ld a,[hl]
	ld [de],a
	ret
	ld hl,Unknown_0xC471
	ld e,$04
	ld a,[$DB51]
	add a,[hl]
	inc hl
	ld [de],a
	ld e,$07
	ld a,[$DB53]
	add a,[hl]
	ld [de],a
	ld e,$26
	ld a,$2A
	ld [de],a
	ld e,$45
	ld a,$C0
	ld [de],a
	ret
	push bc
	ld h,$A8
	ld c,$0A

Unknown_0xCCE9:
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0xCD02
	ld l,$48
	ld a,[hl]
	cp d
	jr nz,Unknown_0xCD02
	ld a,c
	ld [$FF00+$80],a
	call Unknown_0x0BBA
	ld a,[$FF00+$9A]
	ld d,a
	ld a,[$FF00+$80]
	ld c,a

Unknown_0xCD02:
	dec c
	jr z,Unknown_0xCD08
	inc h
	jr Unknown_0xCCE9

Unknown_0xCD08:
	pop bc
	ret
	xor a
	ld [$DD01],a
	ret
	ld hl,$DD01
	ld a,[hl]
	inc [hl]
	ld hl,$44C1
	rlca
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0xCD20
	inc h

Unknown_0xCD20:
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$11
	ld a,[hli]
	ld [de],a
	jp Unknown_0x20BE
	push bc
	call Unknown_0xCFB2
	ld e,$27
	ld [de],a
	pop bc
	ld e,$40
	ld l,a
	and $03
	jr z,Unknown_0xCD40
	dec a
	ld [de],a
	ret

Unknown_0xCD40:
	ld a,l
	rrca
	rrca
	inc a
	ld [de],a
	ret

Unknown_0xCD46:
INCBIN "baserom.gb", $CD46, $CD6F - $CD46
	call Unknown_0x0DA4
	ld b,d
	ld c,$62
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$4C
	xor a
	ld [de],a
	ld e,$03
	ld bc,$4966
	jp Unknown_0x0846
	push bc
	ld e,$63
	ld hl,Unknown_0xCD46
	ld c,$0D

Unknown_0xCD93:
	ld a,[hli]
	ld [de],a
	inc e
	dec c
	jr nz,Unknown_0xCD93
	pop bc
	ret

UnknownData_0xCD9B:
INCBIN "baserom.gb", $CD9B, $CDA9 - $CD9B
	ld e,$48
	ld a,[de]
	ld h,a
	jr Unknown_0xCDB5
	ld a,$A0
	ld h,a
	ld e,$48
	ld [de],a

Unknown_0xCDB5:
	ld e,$07
	ld l,e
	ld a,[de]
	sub [hl]
	ld [de],a
	inc l
	inc e
	ld a,[de]
	sbc a,[hl]
	ld [de],a
	ld e,$04
	ld l,e
	ld a,[de]
	sub [hl]
	ld [de],a
	inc l
	inc e
	ld a,[de]
	sbc a,[hl]
	ld [de],a
	rla
	ld a,$D6
	jr nc,Unknown_0xCDD2
	cpl
	inc a

Unknown_0xCDD2:
	ld e,$11
	ld [de],a
	ret
	call Unknown_0xCDFE
	ret nc
	ld e,$4A
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld a,[$A056]
	inc a
	ld h,a
	call Unknown_0x30E0
	ld hl,$A056
	inc [hl]
	ld hl,$A055
	dec [hl]
	ld h,d
	jp Unknown_0x0BBA
	call Unknown_0xCDFE
	ld e,$00
	jr nc,Unknown_0xCDFD
	inc e

Unknown_0xCDFD:
	ret

Unknown_0xCDFE:
	ld a,[$A081]
	dec a
	ld b,a
	add a,a
	inc a
	ld c,a
	ld e,$04
	ld a,[de]
	add a,b
	cp c
	ret c
	call Unknown_0x0C80
	ld h,d
	ld l,$07
	ld a,[$A080]
	cpl
	inc a
	add a,[hl]
	cpl
	inc a
	ld b,a
	ld c,$00
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	ld l,$0F
	ld [hl],c
	inc l
	ld [hl],b
	call Unknown_0x0DA4
	and a
	ret

UnknownData_0xCE33:
INCBIN "baserom.gb", $CE33, $CF04 - $CE33

Unknown_0xCF04:
INCBIN "baserom.gb", $CF04, $CF12 - $CF04
	call Unknown_0x0647
	and $03
	inc a
	ld e,a
	ld a,[$DD11]
	add a,e
	cp $05
	jr c,Unknown_0xCF23
	sub $05

Unknown_0xCF23:
	ld e,$27
	ld [de],a
	ld [$DD11],a
	ret

UnknownData_0xCF2A:
INCBIN "baserom.gb", $CF2A, $CF73 - $CF2A
	call Unknown_0x0DA4
	ld bc,$4FA4
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 3,a
	ret z
	ld e,$5C
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	call Unknown_0x1EC0
	cpl
	ld [de],a
	ld bc,Unknown_0xCFA1
	call Unknown_0x0FAF
	call Unknown_0x2871
	ld h,d
	jp Unknown_0x0BBA

Unknown_0xCFA1:
INCBIN "baserom.gb", $CFA1, $CFB2 - $CFA1

Unknown_0xCFB2:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,$F5
	ld [hli],a
	ld a,$0A
	ld [hli],a
	ld a,$F5
	ld [hli],a
	ld a,$0A
	ld [hli],a
	ld a,$0D
	ld [hli],a
	call Unknown_0xD180
	jr c,Unknown_0xCFDF
	ld hl,$FFAD
	set 2,[hl]
	ld h,d
	ld l,$04
	ld a,[hl]
	sub $04
	ld [hli],a
	jp nc,Unknown_0xD021
	dec [hl]
	jp Unknown_0xD021

Unknown_0xCFDF:
	call Unknown_0xD1F4
	jr c,Unknown_0xCFF7
	ld hl,$FFAD
	set 3,[hl]
	ld h,d
	ld l,$04
	ld a,[hl]
	add a,$04
	ld [hli],a
	jp nc,Unknown_0xD021
	inc [hl]
	jp Unknown_0xD021

Unknown_0xCFF7:
	call Unknown_0x1C0A
	jr nc,Unknown_0xD00D
	ld hl,$FFAD
	set 0,[hl]
	ld l,$07
	ld h,d
	ld a,[hl]
	sub $04
	ld [hli],a
	jr nc,Unknown_0xD021
	dec [hl]
	jr Unknown_0xD021

Unknown_0xD00D:
	call Unknown_0x1C88
	jr nc,Unknown_0xD021
	ld hl,$FFAD
	set 1,[hl]
	ld l,$07
	ld h,d
	ld a,[hl]
	add a,$04
	ld [hli],a
	jr nc,Unknown_0xD021
	inc [hl]

Unknown_0xD021:
	ld hl,$FFAD
	ld a,[hl]
	ret

Unknown_0xD026:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	call Unknown_0xD04E
	jr nc,Unknown_0xD042
	ld hl,$FFAD
	set 5,[hl]

Unknown_0xD042:
	call Unknown_0xD05C
	ld hl,$FFAD
	jr c,Unknown_0xD04C
	set 6,[hl]

Unknown_0xD04C:
	ld a,[hl]
	ret

Unknown_0xD04E:
	ld h,d
	ld l,$0E
	ld a,[$FF00+$AF]
	ld e,a
	rla
	sbc a,a
	ld d,a
	bit 7,[hl]
	jp Unknown_0x1D96

Unknown_0xD05C:
	ld h,d
	ld a,[$FF00+$AE]
	dec a
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld b,$00
	ld c,b
	call Unknown_0x1AD9
	call Unknown_0x18D7
	jr c,Unknown_0xD0B5
	bit 3,c
	jr z,Unknown_0xD090
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x18D7
	jr nc,Unknown_0xD0AB
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xD0B5
	ld a,[$FF00+$B1]
	cpl
	scf
	adc a,l
	jr Unknown_0xD0B5

Unknown_0xD090:
	ld a,[$FF00+$B0]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x18D7
	jr nc,Unknown_0xD0AB
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xD0B5
	ld a,[$FF00+$B0]
	add a,l
	jr Unknown_0xD0B5

Unknown_0xD0AB:
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,$00
	ld [de],a
	scf
	ret

Unknown_0xD0B5:
	dec a
	ld l,a
	rlca
	sbc a,a
	ld b,a
	ld a,[$FF00+$9A]
	ld h,a
	ld a,l
	ld l,$06
	ld [hl],$00
	inc l
	add a,[hl]
	ld [hli],a
	ld a,b
	adc a,[hl]
	ld [hl],a
	ld a,[$FF00+$9E]
	ld l,$4D
	ld [hl],a
	ld d,h
	and a
	ret

Unknown_0xD0D0:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	call Unknown_0xD251
	jr nc,Unknown_0xD0EC
	ld hl,$FFAD
	set 7,[hl]

Unknown_0xD0EC:
	call Unknown_0xD180
	ld hl,$FFAD
	jr c,Unknown_0xD0F6
	set 5,[hl]

Unknown_0xD0F6:
	ld a,[hl]
	ret

Unknown_0xD0F8:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	call Unknown_0xD251
	jr nc,Unknown_0xD114
	ld hl,$FFAD
	set 7,[hl]

Unknown_0xD114:
	call Unknown_0xD1F4
	ld hl,$FFAD
	jr c,Unknown_0xD11E
	set 5,[hl]

Unknown_0xD11E:
	ld a,[hl]
	ret

Unknown_0xD120:
	ld h,d
	ld bc,$0007
	ld de,$FFF9
	call Unknown_0x1AD9
	call Unknown_0x17A3
	jr nc,Unknown_0xD132
	rla
	jr c,Unknown_0xD176

Unknown_0xD132:
	ld a,[$FF00+$9A]
	ld h,a
	ld bc,$0007
	ld de,$0006
	call Unknown_0x1AD9
	call Unknown_0x17A3
	jr nc,Unknown_0xD146
	rla
	jr c,Unknown_0xD176

Unknown_0xD146:
	ld a,[$FF00+$9A]
	ld h,a
	ld bc,$FFF8
	ld de,$FFF9
	call Unknown_0x1AD9
	call Unknown_0x16EF
	jr nc,Unknown_0xD15B
	dec a
	rla
	jr nc,Unknown_0xD176

Unknown_0xD15B:
	ld a,[$FF00+$9A]
	ld h,a
	ld bc,$0005
	ld de,$0006
	call Unknown_0x1AD9
	call Unknown_0x16EF
	jr nc,Unknown_0xD170
	dec a
	rla
	jr nc,Unknown_0xD176

Unknown_0xD170:
	ld a,[$FF00+$9A]
	ld d,a

Unknown_0xD173:
	ld a,$00
	ret

Unknown_0xD176:
	ld a,[$FF00+$9A]
	ld d,a
	ld a,[$FF00+$9E]
	cp $01
	ret z
	jr Unknown_0xD173

Unknown_0xD180:
	ld h,d
	ld a,[$FF00+$B0]
	dec a
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld d,$00
	ld e,d
	call Unknown_0x1AD9
	call Unknown_0x1716
	jr c,Unknown_0xD1D9
	bit 3,e
	jr z,Unknown_0xD1B4
	ld a,[$FF00+$AF]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x1716
	jr nc,Unknown_0xD1CF
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xD1D9
	ld a,[$FF00+$AF]
	cpl
	scf
	adc a,l
	jr Unknown_0xD1D9

Unknown_0xD1B4:
	ld a,[$FF00+$AE]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x1716
	jr nc,Unknown_0xD1CF
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xD1D9
	ld a,[$FF00+$AE]
	add a,l
	jr Unknown_0xD1D9

Unknown_0xD1CF:
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,$00
	ld [de],a
	scf
	ret

Unknown_0xD1D9:
	dec a

Unknown_0xD1DA:
	ld l,a
	rlca
	sbc a,a
	ld b,a
	ld a,[$FF00+$9A]
	ld h,a
	ld a,l
	ld l,$03
	ld [hl],$00
	inc l
	add a,[hl]
	ld [hli],a
	ld a,b
	adc a,[hl]
	ld [hl],a
	ld a,[$FF00+$9E]
	ld l,$4D
	ld [hl],a
	ld d,h
	and a
	ret

Unknown_0xD1F4:
	ld h,d
	ld a,[$FF00+$B1]
	inc a
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld d,$00
	ld e,d
	call Unknown_0x1AD9
	call Unknown_0x17C7
	jr c,Unknown_0xD24D
	bit 3,e
	jr z,Unknown_0xD226
	ld a,[$FF00+$AF]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x17C7
	jr nc,Unknown_0xD243
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xD24D
	ld a,[$FF00+$AF]
	add a,l
	jr Unknown_0xD24D

Unknown_0xD226:
	ld a,[$FF00+$AE]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x17C7
	jr nc,Unknown_0xD243
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xD24D
	ld a,[$FF00+$AE]
	cpl
	scf
	adc a,l
	jr Unknown_0xD24D

Unknown_0xD243:
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,$00
	ld [de],a
	scf
	ret

Unknown_0xD24D:
	inc a
	jp Unknown_0xD1DA

Unknown_0xD251:
	ld h,d
	ld l,$10
	ld c,$00
	ld b,c
	bit 7,[hl]
	jr nz,Unknown_0xD272
	ld a,[$FF00+$AF]
	ld e,a
	rla
	sbc a,a
	ld d,a
	call Unknown_0x1AD9
	call Unknown_0x184E
	jp nc,Unknown_0x1E6D
	ld l,a
	rlca
	jp c,Unknown_0xD28A
	jp Unknown_0x1E6D

Unknown_0xD272:
	ld a,[$FF00+$AE]
	ld e,a
	rla
	sbc a,a
	ld d,a
	call Unknown_0x1AD9
	call Unknown_0x18D7
	jp nc,Unknown_0x1E6D
	ld l,a
	dec a
	rlca
	jp nc,Unknown_0xD2AC
	jp Unknown_0x1E6D

Unknown_0xD28A:
	ld c,l
	ld a,[$FF00+$9A]
	ld h,a
	ld l,$06
	ld b,[hl]
	ld l,$0F
	ld a,[hli]
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$FF
	add a,c
	jp nc,Unknown_0x1E6D
	ld l,$06
	ld [hl],$80
	inc l
	ld a,c
	add a,[hl]
	ld [hli],a
	ld a,$FF
	adc a,[hl]
	ld [hl],a
	ld d,h
	scf
	ret

Unknown_0xD2AC:
	ld c,l
	ld a,[$FF00+$9A]
	ld h,a
	ld l,$06
	ld b,[hl]
	ld l,$0F
	ld a,[hli]
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$00
	add a,c
	jp c,Unknown_0x1E6D
	ld l,$06
	ld [hl],$80
	inc l
	ld a,c
	add a,[hl]
	ld [hli],a
	ld a,$00
	adc a,[hl]
	ld [hl],a
	ld d,h
	scf
	ret
	push bc
	ld a,[$DB3E]
	ld b,a
	ld a,[$DB3D]
	jr Unknown_0xD2D9

Unknown_0xD2D8:
	add a,a

Unknown_0xD2D9:
	dec b
	jr nz,Unknown_0xD2D8
	ld [$FF00+$80],a
	ld d,$C9
	ld hl,$B300
	ld b,$00

Unknown_0xD2E5:
	ld e,[hl]
	ld a,[de]
	cp $40
	jr z,Unknown_0xD2EF
	cp $98
	jr nz,Unknown_0xD334

Unknown_0xD2EF:
	inc e
	ld a,e
	ld [hl],a
	ld [$FF00+$81],a
	push hl
	push de
	push bc
	ld a,[de]
	cp $10
	jr z,Unknown_0xD30A
	cp $18
	jr z,Unknown_0xD30A
	cp $90
	jr z,Unknown_0xD30A
	ld e,l
	swap l
	ld c,l
	jr Unknown_0xD320

Unknown_0xD30A:
	ld e,l
	swap l
	ld c,l
	ld a,[$DB3D]
	ld b,a
	ld a,h
	ld d,$FF
	sub $B3

Unknown_0xD317:
	inc d
	sub b
	jr nc,Unknown_0xD317
	add a,b
	ld b,a
	call Unknown_0x3BFB

Unknown_0xD320:
	ld a,[$FF00+$81]
	ld [$FF00+$84],a
	call Unknown_0x15B0
	ld e,$24
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	pop bc
	pop de
	pop hl

Unknown_0xD334:
	inc l
	dec b
	jr nz,Unknown_0xD2E5
	inc h
	ld a,[$FF00+$80]
	dec a
	ld [$FF00+$80],a
	jr nz,Unknown_0xD2E5
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0xD345:
INCBIN "baserom.gb", $D345, $D373 - $D345

Unknown_0xD373:
INCBIN "baserom.gb", $D373, $D483 - $D373
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5345
	jp Unknown_0x255B

UnknownData_0xD48F:
INCBIN "baserom.gb", $D48F, $D497 - $D48F

Unknown_0xD497:
INCBIN "baserom.gb", $D497, $D4A1 - $D497
	ld bc,$5345
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld e,$04
	ld b,$48
	call Unknown_0x1F9C
	ret nc
	ld e,$07
	ld b,$48
	call Unknown_0x1F9C
	ret nc
	ld e,$03
	ld bc,Unknown_0xD4F1
	jp Unknown_0x0846

UnknownData_0xD4C3:
INCBIN "baserom.gb", $D4C3, $D4D3 - $D4C3
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5345
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xD497
	jp Unknown_0x0846

Unknown_0xD4F1:
INCBIN "baserom.gb", $D4F1, $D520 - $D4F1
	call Unknown_0x1ED3
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$5345
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret

UnknownData_0xD534:
INCBIN "baserom.gb", $D534, $D595 - $D534

Unknown_0xD595:
INCBIN "baserom.gb", $D595, $D5B1 - $D595
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc hl
	ld a,[de]
	sbc a,[hl]
	ret nc
	ld a,c
	cp $F8
	ret nc
	ld e,$03
	ld bc,Unknown_0xD595
	jp Unknown_0x0846

UnknownData_0xD5CA:
INCBIN "baserom.gb", $D5CA, $D615 - $D5CA

Unknown_0xD615:
INCBIN "baserom.gb", $D615, $D621 - $D615

Unknown_0xD621:
INCBIN "baserom.gb", $D621, $D62B - $D621
	call Unknown_0x0DA4
	ld bc,$5353
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	jr nz,Unknown_0xD64A
	ld e,$03
	ld bc,Unknown_0xD615
	jp Unknown_0x0846

Unknown_0xD64A:
	call Unknown_0xD656
	ld e,$4D
	ld a,[de]
	cp $04
	ret c
	jp Unknown_0x1EF9

Unknown_0xD656:
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 4,a
	ret z
	jp Unknown_0x1EF9
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5353
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld e,$03
	ld bc,Unknown_0xD621
	jp Unknown_0x0846

UnknownData_0xD688:
INCBIN "baserom.gb", $D688, $D6AB - $D688
	ld e,$5C
	ld a,[de]
	ld hl,Unknown_0xD373
	or a
	jr z,Unknown_0xD6B5
	inc hl

Unknown_0xD6B5:
	ld e,$26
	ld a,[hli]
	ld [de],a
	ld e,$3B
	ld [de],a
	inc e
	inc hl
	ld a,[hli]
	ld [de],a
	inc e
	inc hl
	ld a,[hli]
	ld [de],a
	inc e
	inc hl
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0xD6C9:
INCBIN "baserom.gb", $D6C9, $D6E2 - $D6C9
	ld e,$5C
	ld a,[de]
	ld e,a
	rlca
	add a,e
	ld hl,$537F
	add a,l
	ld l,a
	jr nc,Unknown_0xD6F0
	inc h

Unknown_0xD6F0:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	ld a,[hli]
	inc e
	ld [de],a
	ld a,[hl]
	ld e,$26
	ld [de],a
	ret
	call Unknown_0x0DA4
	ld bc,$5353
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	jr nz,Unknown_0xD71B
	ld e,$03
	ld bc,Unknown_0xD615
	jp Unknown_0x0846

Unknown_0xD71B:
	call Unknown_0xD656
	call Unknown_0x2235
	ld h,d
	ld l,$40
	cp [hl]
	jr z,Unknown_0xD72E
	ld [hl],a
	ld hl,$536B
	call Unknown_0x23CA

Unknown_0xD72E:
	ld l,$26
	ld h,d
	dec [hl]
	ret nz
	ld e,$3B
	ld a,[de]
	ld [hl],a
	ld e,$07
	ld h,$A0
	ld l,e
	ld a,[de]
	sub [hl]
	ld c,a
	inc l
	inc e
	ld a,[de]
	sbc a,[hl]
	ld e,$3C
	jr c,Unknown_0xD74B
	ld a,[de]
	cp c
	jr c,Unknown_0xD74C

Unknown_0xD74B:
	inc e

Unknown_0xD74C:
	inc e
	ld a,[de]
	ld b,a
	call Unknown_0x0647
	cp b
	ret nc
	ld e,$03
	ld bc,$56C9
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$5353
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	ld h,d
	bit 5,a
	jr nz,Unknown_0xD78F
	bit 6,a
	jr nz,Unknown_0xD77E
	ld l,$26
	dec [hl]
	ret nz
	jr Unknown_0xD783

Unknown_0xD77E:
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a

Unknown_0xD783:
	ld h,d
	ld l,$1F
	ld [hl],$43
	inc l
	ld [hl],$57
	inc l
	ld [hl],$D6
	ret

Unknown_0xD78F:
	ld l,$0D
	xor a
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld h,d
	ld l,$1F
	ld [hl],$43
	inc l
	ld [hl],$57
	inc l
	ld [hl],$A2
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5353
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$03
	ld bc,$5688
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5353
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	ld b,a
	ld h,d
	bit 5,b
	jr z,Unknown_0xD7FE
	ld l,$0D
	xor a
	ld [hli],a
	ld [hli],a
	inc l
	bit 7,[hl]
	jr z,Unknown_0xD7FE
	ld [hld],a
	ld [hl],a

Unknown_0xD7FE:
	bit 7,b
	ret z
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$03
	ld bc,$5688
	jp Unknown_0x0846

UnknownData_0xD81C:
INCBIN "baserom.gb", $D81C, $D854 - $D81C

Unknown_0xD854:
INCBIN "baserom.gb", $D854, $D86C - $D854

Unknown_0xD86C:
INCBIN "baserom.gb", $D86C, $D8E4 - $D86C
	ld bc,$538D
	call Unknown_0x255B
	ret c
	call Unknown_0x19CB
	bit 7,a
	ret nz
	ld e,$03
	ld bc,$5848
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$538D
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0xDA2D
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xD854
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$538D
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0xDA2D
	call Unknown_0x19CB
	bit 7,a
	jr z,Unknown_0xD94C
	bit 5,a
	jr z,Unknown_0xD93E
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a

Unknown_0xD93E:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	ret nz
	ld e,$03
	ld bc,Unknown_0xD86C
	jp Unknown_0x0846

Unknown_0xD94C:
	ld e,$03
	ld bc,$5848
	jp Unknown_0x0846
	ld bc,$538D
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0xDA2D
	call Unknown_0x19CB
	bit 7,a
	jr nz,Unknown_0xD979
	ld hl,$53B5
	call Unknown_0x2048
	ld h,d
	ld l,$1F
	ld [hl],$43
	inc l
	ld [hl],$59
	inc l
	ld [hl],$99

Unknown_0xD979:
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0xD982
	dec a
	ld [de],a
	ret

Unknown_0xD982:
	ld a,$06
	ld [de],a
	ld e,$3D
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	ld b,a
	ld a,h
	ld [de],a
	dec e
	ld a,l
	ld [de],a
	ld a,b
	ld e,$31
	jp Unknown_0x230F

UnknownData_0xD999:
INCBIN "baserom.gb", $D999, $D9C2 - $D999
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$539B
	jp Unknown_0x255B
	push bc
	call Unknown_0xD120
	or a
	jr z,Unknown_0xD9E2
	call Unknown_0x0647
	cp $80
	jr nc,Unknown_0xD9E2
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a

Unknown_0xD9E2:
	pop bc
	ret
	ld a,[bc]
	inc bc
	push bc
	ld b,a
	ld e,$04
	call Unknown_0x1F9C
	jr c,Unknown_0xD9F4
	pop bc
	inc bc
	xor a
	jr Unknown_0xDA06

Unknown_0xD9F4:
	pop bc
	ld a,[bc]
	inc bc
	push bc
	ld b,a
	ld e,$07
	call Unknown_0x1F9C
	jr nc,Unknown_0xDA04
	ld a,$01
	jr Unknown_0xDA05

Unknown_0xDA04:
	xor a

Unknown_0xDA05:
	pop bc

Unknown_0xDA06:
	ld e,$27
	ld [de],a
	ret
	ld e,$3D
	ld hl,$53C1
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
	ld e,$5B
	ld a,[de]
	ld e,a
	rlca
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0xDA27
	inc h

Unknown_0xDA27:
	call Unknown_0x20F9
	jp Unknown_0x20BE

Unknown_0xDA2D:
	ld e,$F8
	call Unknown_0x1AC1
	ret nz
	ld e,$03
	ld bc,$5A3B
	jp Unknown_0x0846

UnknownData_0xDA3B:
INCBIN "baserom.gb", $DA3B, $DBF7 - $DA3B

Unknown_0xDBF7:
INCBIN "baserom.gb", $DBF7, $DC2A - $DBF7

Unknown_0xDC2A:
INCBIN "baserom.gb", $DC2A, $DC90 - $DC2A

Unknown_0xDC90:
INCBIN "baserom.gb", $DC90, $DCAF - $DC90
	ld e,$3F
	ld a,[de]
	dec a
	jr nz,Unknown_0xDCB8
	call Unknown_0x1EE6

Unknown_0xDCB8:
	call Unknown_0x0DA4
	ld bc,$5B84
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x19CB
	or a
	jr z,Unknown_0xDD1E
	bit 5,a
	jr nz,Unknown_0xDCED
	ld e,$4D
	ld a,[de]
	cp $04
	jr c,Unknown_0xDD09
	ld l,$45
	ld h,d
	bit 7,[hl]
	jr nz,Unknown_0xDCE9
	cp $04
	jr z,Unknown_0xDCED

Unknown_0xDCE1:
	ld e,$03
	ld bc,$5C49
	jp Unknown_0x0846

Unknown_0xDCE9:
	cp $04
	jr z,Unknown_0xDCE1

Unknown_0xDCED:
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ld e,$0D
	ld a,[de]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[de]
	cpl
	adc a,$00
	ld [de],a
	call Unknown_0x0DA4

Unknown_0xDD09:
	ld h,d
	ld l,$26
	dec [hl]
	ret nz
	ld e,$3F
	ld a,[de]
	inc a
	cp $03
	jr c,Unknown_0xDD17
	xor a

Unknown_0xDD17:
	ld [de],a
	ld hl,$5B98
	jp Unknown_0xDEBC

Unknown_0xDD1E:
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$03
	ld bc,$5C1E
	jp Unknown_0x0846
	ld bc,$5B84
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5B84
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	jr nz,Unknown_0xDD58
	bit 5,a
	ret z
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0xDD58:
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld e,$03
	ld bc,Unknown_0xDC2A
	jp Unknown_0x0846
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0xDD71
	dec a
	ld [de],a
	call Unknown_0x21C5

Unknown_0xDD71:
	call Unknown_0x0DA4
	ld bc,$5B84
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x19CB
	bit 7,a
	jr z,Unknown_0xDD9B
	ld e,$4D
	ld a,[de]
	cp $01
	ret nz
	ld e,$40
	xor a
	ld [de],a
	ld h,d
	ld l,$1F
	ld [hl],$43
	inc l
	ld [hl],$5D
	inc l
	ld [hl],$A3
	ret

Unknown_0xDD9B:
	ld e,$03
	ld bc,$5C97
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$5B84
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x19CB
	bit 7,a
	jr z,Unknown_0xDE06
	bit 5,a
	jr z,Unknown_0xDDC9

Unknown_0xDDBB:
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$03
	ld bc,$5BF7
	jp Unknown_0x0846

Unknown_0xDDC9:
	ld e,$45
	ld a,[de]
	rlca
	ld e,$4D
	ld a,[de]
	jr c,Unknown_0xDDE2
	cp $04
	jr z,Unknown_0xDDBB
	cp $05
	jr nz,Unknown_0xDDF2
	ld e,$03
	ld bc,$5C49
	jp Unknown_0x0846

Unknown_0xDDE2:
	cp $05
	jr z,Unknown_0xDDBB
	cp $04
	jr nz,Unknown_0xDDF2
	ld e,$03
	ld bc,$5C49
	jp Unknown_0x0846

Unknown_0xDDF2:
	ld e,$15
	ld a,[de]
	cp $02
	ret nz
	ld e,$3E
	ld a,[de]
	ld e,$11
	ld [de],a
	ld e,$03
	ld bc,Unknown_0xDC90
	jp Unknown_0x0846

Unknown_0xDE06:
	ld e,$03
	ld bc,$5C97
	jp Unknown_0x0846

UnknownData_0xDE0E:
INCBIN "baserom.gb", $DE0E, $DE4B - $DE0E
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0xDE5A
	ld e,$03
	ld bc,Unknown_0xDBF7
	jp Unknown_0x0846

Unknown_0xDE5A:
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$5B84
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x19CB
	bit 7,a
	jr z,Unknown_0xDEAA
	bit 5,a
	jr z,Unknown_0xDE83

Unknown_0xDE75:
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$03
	ld bc,$5BF7
	jp Unknown_0x0846

Unknown_0xDE83:
	ld e,$45
	ld a,[de]
	rlca
	ld e,$4D
	ld a,[de]
	jr c,Unknown_0xDE9B
	cp $04
	jr z,Unknown_0xDE75
	cp $05
	ret nz
	ld e,$03
	ld bc,$5C49
	jp Unknown_0x0846

Unknown_0xDE9B:
	cp $05
	jr z,Unknown_0xDE75
	cp $04
	ret nz
	ld e,$03
	ld bc,$5C49
	jp Unknown_0x0846

Unknown_0xDEAA:
	ld e,$03
	ld bc,$5C97
	jp Unknown_0x0846
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$3F
	xor a
	ld [de],a

Unknown_0xDEBC:
	ld e,$5C
	ld a,[de]
	rlca
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0xDEC8
	inc h

Unknown_0xDEC8:
	call Unknown_0x2123
	call Unknown_0x20F9
	ld e,$3F
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0xDED6
	inc h

Unknown_0xDED6:
	ld e,$26
	ld a,[hl]
	ld [de],a
	ret
	ld e,$45
	ld a,[de]
	rlca
	ld e,$4D
	ld a,[de]
	jr c,Unknown_0xDEE9
	cp $04
	ret nz
	jr Unknown_0xDEEC

Unknown_0xDEE9:
	cp $05
	ret nz

Unknown_0xDEEC:
	ld e,$45
	ld a,[de]
	cpl
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
	rlca
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0xDF05
	inc h

Unknown_0xDF05:
	ld e,$26
	ld a,[hli]
	ld [de],a
	call Unknown_0x21A5
	ld e,$45
	ld a,[de]
	rlca
	ld e,$3E
	ld a,[hl]
	jr c,Unknown_0xDF17
	ld [de],a
	ret

Unknown_0xDF17:
	cpl
	inc a
	ld [de],a
	ret

UnknownData_0xDF1B:
INCBIN "baserom.gb", $DF1B, $DF88 - $DF1B

Unknown_0xDF88:
INCBIN "baserom.gb", $DF88, $DF9F - $DF88

Unknown_0xDF9F:
INCBIN "baserom.gb", $DF9F, $E031 - $DF9F
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5BAE
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xDF88
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$5BAE
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 7,a
	jp z,Unknown_0xE0E4
	bit 5,a
	jr nz,Unknown_0xE07D
	bit 4,a
	jr nz,Unknown_0xE07D
	ld e,$4D
	ld a,[de]
	cp $04
	jr z,Unknown_0xE07D
	cp $05
	jr nz,Unknown_0xE099

Unknown_0xE07D:
	ld e,$0D
	ld a,[de]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[de]
	cpl
	adc a,$00
	ld [de],a
	ld e,$3C
	ld a,[de]
	and $F0
	swap a
	dec e
	ld [de],a
	ld e,$40
	ld a,[de]
	xor $80
	ld [de],a

Unknown_0xE099:
	ld e,$26
	ld a,[de]
	or a
	ret z
	xor a
	ld [de],a
	ld h,d
	ld l,$3D
	dec [hl]
	jr nz,Unknown_0xE0C8
	ld e,$3E
	ld a,[de]
	ld [hl],a
	ld l,$40
	bit 0,[hl]
	jr nz,Unknown_0xE0BE
	call Unknown_0x0647
	ld l,$3F
	ld h,d
	cp [hl]
	inc l
	jr c,Unknown_0xE0BE
	set 0,[hl]
	jr Unknown_0xE0C8

Unknown_0xE0BE:
	res 0,[hl]
	ld e,$03
	ld bc,Unknown_0xDF9F
	jp Unknown_0x0846

Unknown_0xE0C8:
	ld l,$3B
	dec [hl]
	ret nz
	ld e,$3C
	ld a,[de]
	and $0F
	ld [hl],a
	call Unknown_0x1EC0
	ld l,$40
	ld h,d
	ld e,$45
	ld a,[de]
	rlca
	jr c,Unknown_0xE0E1
	res 7,[hl]
	ret

Unknown_0xE0E1:
	set 7,[hl]
	ret

Unknown_0xE0E4:
	ld e,$03
	ld bc,$5F7C
	jp Unknown_0x0846
	ld bc,$5BAE
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19CB
	or a
	ret nz
	ld e,$03
	ld bc,$5F7C
	jp Unknown_0x0846
	call Unknown_0x1ED3
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr z,Unknown_0xE126
	call Unknown_0x0DA4
	ld bc,$5BAE
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 6,a
	ret z

Unknown_0xE126:
	ld e,$03
	ld bc,$5FD9
	jp Unknown_0x0846
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5BAE
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$03
	ld bc,$5F28
	jp Unknown_0x0846
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0xE181
	dec a
	ld [de],a
	jr nz,Unknown_0xE19E
	ld e,$40
	ld a,[de]
	cp $02
	ld h,d
	jp z,Unknown_0x0BBA
	inc a
	ld [de],a
	ld hl,$5BDC
	ld b,a
	rlca
	add a,b
	add a,l
	ld l,a
	jr nc,Unknown_0xE17C
	inc h

Unknown_0xE17C:
	call Unknown_0x2164
	jr Unknown_0xE19E

Unknown_0xE181:
	call Unknown_0x1EE6
	ld e,$3B
	ld h,d
	ld l,$0D
	ld a,[de]
	cp [hl]
	jr nz,Unknown_0xE19E
	inc e
	inc l
	ld a,[de]
	cp [hl]
	jr nz,Unknown_0xE19E
	ld e,$40
	ld a,[de]
	ld e,$3D
	add a,e
	ld e,a
	ld a,[de]
	ld e,$26
	ld [de],a

Unknown_0xE19E:
	call Unknown_0x0DA4
	ld bc,$5BBC
	jp Unknown_0x255B
	call Unknown_0x1EE6
	ld e,$3B
	ld h,d
	ld l,$0D
	ld a,[de]
	cp [hl]
	jr nz,Unknown_0xE1BD
	inc e
	inc l
	ld a,[de]
	cp [hl]
	jr nz,Unknown_0xE1BD
	ld e,$11
	xor a
	ld [de],a

Unknown_0xE1BD:
	call Unknown_0x0DA4
	ld bc,$5BBC
	jp Unknown_0x255B
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	push bc
	ld e,$5B
	ld a,[de]
	rlca
	ld e,a
	rlca
	add a,e
	ld b,a
	ld e,$5C
	ld a,[de]
	ld e,a
	rlca
	add a,e
	add a,b
	add a,l
	ld l,a
	jr nc,Unknown_0xE1E1
	inc h

Unknown_0xE1E1:
	ld e,$3C
	ld a,[hli]
	ld [de],a
	dec e
	and $0F
	ld [de],a
	ld e,$3D
	ld a,[hli]
	ld [de],a
	inc e
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	inc e
	ld l,$45
	ld h,d
	ld a,[hl]
	and $80
	ld [de],a
	xor a
	ld e,$26
	ld [de],a
	pop bc
	ret
	ld h,d
	ld l,$26
	ld [hl],$01
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$40
	ld a,[de]
	rlca
	jr c,Unknown_0xE21A
	ld e,$0D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

Unknown_0xE21A:
	ld e,$0D
	ld a,l
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,h
	cpl
	adc a,$00
	ld [de],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$45
	ld a,[hl]
	ld e,l
	ld [de],a
	ld l,$27
	ld a,[hl]
	ld h,d
	ld [hl],a
	ld l,$3D
	ld a,$20
	ld [hli],a
	ld a,$08
	ld [hli],a
	ld a,$26
	ld [hli],a
	xor a
	ld [hl],a
	ret

UnknownData_0xE244:
INCBIN "baserom.gb", $E244, $E26B - $E244

Unknown_0xE26B:
INCBIN "baserom.gb", $E26B, $E29E - $E26B

Unknown_0xE29E:
INCBIN "baserom.gb", $E29E, $E2A8 - $E29E

Unknown_0xE2A8:
INCBIN "baserom.gb", $E2A8, $E2D8 - $E2A8

Unknown_0xE2D8:
INCBIN "baserom.gb", $E2D8, $E366 - $E2D8

Unknown_0xE366:
INCBIN "baserom.gb", $E366, $E370 - $E366

Unknown_0xE370:
INCBIN "baserom.gb", $E370, $E3FB - $E370
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$6244
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xE366
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$6244
	call Unknown_0x255B
	ret c
	call Unknown_0xE485
	call Unknown_0x2375
	call Unknown_0x1A25
	ld h,d
	bit 5,a
	jr nz,Unknown_0xE453
	bit 6,a
	jr nz,Unknown_0xE442
	bit 7,a
	jr nz,Unknown_0xE456
	ret

Unknown_0xE442:
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a
	ld h,d
	ld l,$1F
	ld [hl],$43
	inc l
	ld [hl],$63
	inc l
	ld [hl],$FB
	ret

Unknown_0xE453:
	jp Unknown_0x1EF9

Unknown_0xE456:
	ld h,d
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0xE473
	ld e,$3F
	ld a,[de]
	inc a
	ld [de],a
	cp $0C
	jr z,Unknown_0xE47D
	rra
	jr c,Unknown_0xE473
	rra
	jr c,Unknown_0xE473
	call Unknown_0x0647
	cp $80
	jr c,Unknown_0xE47D

Unknown_0xE473:
	ld e,$3D
	ld l,$0F
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hl],a
	ret

Unknown_0xE47D:
	ld e,$03
	ld bc,Unknown_0xE370
	jp Unknown_0x0846

Unknown_0xE485:
	ld e,$10
	ld a,[de]
	ld e,$15
	and $80
	jr nz,Unknown_0xE499
	ld e,$0F
	ld a,[de]
	sub $3C
	ret nc
	xor a
	ld e,$15
	ld [de],a
	ret

Unknown_0xE499:
	ld e,$0F
	ld a,[de]
	sub $C4
	ret nc
	ld a,$01
	ld e,$15
	ld [de],a
	ret
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$6244
	call Unknown_0x255B
	ret c
	ld e,$10
	ld a,[de]
	and a
	ret nz
	ld e,$03
	ld bc,$6381
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$6244
	call Unknown_0x255B
	ret
	ld e,$3F
	ld a,[de]
	ld b,a
	ld e,$5C
	ld a,[de]
	ld hl,Unknown_0xE26B
	add a,l
	ld a,[hl]
	cp b
	jr nz,Unknown_0xE51F
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
	jr z,Unknown_0xE4F8
	bit 3,b
	jr nz,Unknown_0xE4F4
	set 0,b

Unknown_0xE4F4:
	set 3,b
	jr Unknown_0xE500

Unknown_0xE4F8:
	bit 3,b
	jr z,Unknown_0xE4FE
	set 0,b

Unknown_0xE4FE:
	res 3,b

Unknown_0xE500:
	call Unknown_0x201D
	ld e,$27
	ld a,[de]
	and a
	jr z,Unknown_0xE513
	bit 7,b
	jr nz,Unknown_0xE50F
	set 4,b

Unknown_0xE50F:
	set 7,b
	jr Unknown_0xE51B

Unknown_0xE513:
	bit 7,b
	jr z,Unknown_0xE519
	set 4,b

Unknown_0xE519:
	res 7,b

Unknown_0xE51B:
	ld e,$40
	ld a,b
	ld [de],a

Unknown_0xE51F:
	ld e,$40
	ld a,[de]
	bit 3,a
	jr nz,Unknown_0xE53A
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 0,a
	jr z,Unknown_0xE530
	ld e,$00

Unknown_0xE530:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CB4
	jr Unknown_0xE54C

Unknown_0xE53A:
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 0,a
	jr z,Unknown_0xE544
	ld e,$00

Unknown_0xE544:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CE5

Unknown_0xE54C:
	ld e,$40
	ld a,[de]
	bit 7,a
	jr z,Unknown_0xE567
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 4,a
	jr z,Unknown_0xE55D
	ld e,$00

Unknown_0xE55D:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	jr Unknown_0xE579

Unknown_0xE567:
	ld h,d
	ld l,$12
	ld e,[hl]
	bit 4,a
	jr z,Unknown_0xE571
	ld e,$00

Unknown_0xE571:
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D66

Unknown_0xE579:
	call Unknown_0x0DA4
	ld bc,$6244
	call Unknown_0x255B
	ret c
	ld e,$3F
	ld a,[de]
	inc a
	ld [de],a
	ret

UnknownData_0xE589:
INCBIN "baserom.gb", $E589, $E643 - $E589

Unknown_0xE643:
INCBIN "baserom.gb", $E643, $E677 - $E643
	ld e,$11
	ld a,[de]
	call Unknown_0x0C83
	ld e,$12
	ld a,[de]
	call Unknown_0x0C94
	call Unknown_0x0DA4
	ld bc,$5353
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	call nz,Unknown_0xE7F6
	bit 7,a
	jr nz,Unknown_0xE6B3
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$4C
	ld a,[hl]
	and a
	jr z,Unknown_0xE6C5
	ld l,e
	ld a,[hl]
	cp $FF
	jr z,Unknown_0xE6C5
	ld l,$4C
	ld a,[hl]
	and a
	jr z,Unknown_0xE6C5
	ret

Unknown_0xE6B3:
	ld e,$25
	ld a,$01
	ld [de],a
	ld e,$40
	ld a,$01
	ld [de],a
	ld e,$03
	ld bc,$65F5
	jp Unknown_0x0846

Unknown_0xE6C5:
	ld e,$25
	xor a
	ld [de],a
	call Unknown_0xE7BE
	ret

UnknownData_0xE6CD:
INCBIN "baserom.gb", $E6CD, $E6E7 - $E6CD
	ld e,$11
	ld a,[de]
	call Unknown_0x0C83
	ld e,$12
	ld a,[de]
	call Unknown_0x0C94
	call Unknown_0x0DA4
	ld bc,$6244
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret
	ld bc,$5353
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret
	ld bc,$6244
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$4C
	ld a,[hl]
	and a
	jr z,Unknown_0xE756
	ld l,$40
	ld a,[hl]
	and a
	jr nz,Unknown_0xE74A
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
	sub $10
	ld [de],a
	inc e
	ld a,[hl]
	sbc a,$00
	ld [de],a
	ld bc,$6244
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret

Unknown_0xE74A:
	ld e,$25
	xor a
	ld [de],a
	ld e,$03
	ld bc,$6630
	jp Unknown_0x0846

Unknown_0xE756:
	ld e,$25
	ld a,$00
	ld [de],a
	ld e,$03
	ld bc,Unknown_0xE643
	jp Unknown_0x0846
	call Unknown_0xE7DD
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$5C
	ld e,l
	ld a,[hl]
	ld [de],a
	ret
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret
	ld e,$45
	ld a,[de]
	ld e,$27
	and $80
	jr z,Unknown_0xE784
	ld a,$01
	ld [de],a
	ret

Unknown_0xE784:
	xor a
	ld [de],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,e
	ld [hl],d
	ld l,$5B
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld [de],a
	ret
	ld e,$48
	ld a,d
	ld [de],a
	ret
	ld e,$5B
	ld a,[de]
	ld hl,$626D
	ld e,a
	add a,a
	add a,a
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0xE7A9
	inc h

Unknown_0xE7A9:
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld e,$5C
	ld a,[hli]
	ld [de],a
	ld e,$5B
	ld a,[hli]
	ld [de],a
	ld a,[hl]
	push bc
	push de
	call ChangeBankNoInturrupts
	pop de
	pop bc
	ret

Unknown_0xE7BE:
	ld e,$5B
	ld a,[de]
	ld hl,$626D
	ld e,a
	add a,a
	add a,a
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0xE7CD
	inc h

Unknown_0xE7CD:
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld e,$5C
	ld a,[hli]
	ld [de],a
	ld e,$5B
	ld a,[hli]
	ld [de],a
	ld e,[hl]
	jp Unknown_0x0846

Unknown_0xE7DD:
	ld hl,$DB7F

Unknown_0xE7E0:
	ld a,[hli]
	cp $FF
	ret z
	cp $04
	jr nz,Unknown_0xE7ED
	ld e,$46
	ld a,[hl]
	ld [de],a
	ret

Unknown_0xE7ED:
	ld a,$04
	add a,l
	ld l,a
	jr nc,Unknown_0xE7E0
	inc h
	jr Unknown_0xE7E0

Unknown_0xE7F6:
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$11
	ld [de],a
	ret

UnknownData_0xE800:
INCBIN "baserom.gb", $E800, $E827 - $E800

Unknown_0xE827:
INCBIN "baserom.gb", $E827, $E82F - $E827

Unknown_0xE82F:
INCBIN "baserom.gb", $E82F, $E83A - $E82F

Unknown_0xE83A:
INCBIN "baserom.gb", $E83A, $E845 - $E83A

Unknown_0xE845:
INCBIN "baserom.gb", $E845, $E84D - $E845

Unknown_0xE84D:
INCBIN "baserom.gb", $E84D, $E8BF - $E84D

Unknown_0xE8BF:
INCBIN "baserom.gb", $E8BF, $E8D0 - $E8BF

Unknown_0xE8D0:
INCBIN "baserom.gb", $E8D0, $E900 - $E8D0
	ld bc,$6277
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1964
	bit 7,a
	jr z,Unknown_0xE940
	ld e,$3E
	ld a,[de]
	dec a
	ld [de],a
	ret nz
	ld hl,$6296
	ld e,$5C
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0xE922
	inc h

Unknown_0xE922:
	ld a,[hl]
	ld e,$3E
	ld [de],a
	call Unknown_0xEBD5
	ld b,a
	ld e,$45
	ld a,[de]
	cp b
	jr z,Unknown_0xE938
	ld e,$03
	ld bc,Unknown_0xE845
	jp Unknown_0x0846

Unknown_0xE938:
	ld e,$03
	ld bc,Unknown_0xE84D
	jp Unknown_0x0846

Unknown_0xE940:
	ld e,$03
	ld bc,Unknown_0xE82F
	jp Unknown_0x0846
	ld bc,$6277
	call Unknown_0x255B
	ret c
	call Unknown_0x1964
	bit 7,a
	jr z,Unknown_0xE95A
	call Unknown_0x2375
	ret

Unknown_0xE95A:
	ld e,$03
	ld bc,$682F
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$6277
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	call nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xE827
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$6277
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	call nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xE8D0
	jp Unknown_0x0846
	call Unknown_0x1964
	bit 7,a
	jr z,Unknown_0xE9BA
	ld bc,$6277
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret

Unknown_0xE9BA:
	ld e,$03
	ld bc,Unknown_0xE82F
	jp Unknown_0x0846
	call Unknown_0x1964
	bit 7,a
	jp z,Unknown_0xEA55
	ld bc,$6277
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld e,$3E
	ld a,[de]
	dec a
	ld [de],a
	ret nz
	ld a,$0C
	ld [de],a
	ld e,$45
	ld a,[de]
	ld b,a
	ld e,$40
	ld a,[de]
	cp b
	jr nz,Unknown_0xE9EF
	ld e,$03
	ld bc,Unknown_0xE84D
	jp Unknown_0x0846

Unknown_0xE9EF:
	ld c,a
	ld a,b
	cp $40
	jr z,Unknown_0xEA1C
	cp $20
	jr z,Unknown_0xEA15
	cp $00
	jr z,Unknown_0xEA0A
	cp $E0
	jr z,Unknown_0xEA03
	jr Unknown_0xEA29

Unknown_0xEA03:
	ld a,c
	cp $C0
	jr z,Unknown_0xEA34
	jr Unknown_0xEA1E

Unknown_0xEA0A:
	ld a,c
	cp $E0
	jr z,Unknown_0xEA29
	cp $C0
	jr z,Unknown_0xEA29
	jr Unknown_0xEA3F

Unknown_0xEA15:
	ld a,c
	cp $40
	jr z,Unknown_0xEA4A
	jr Unknown_0xEA1E

Unknown_0xEA1C:
	jr Unknown_0xEA3F

Unknown_0xEA1E:
	ld a,$00
	ld e,$45
	ld [de],a
	ld e,$15
	ld a,$00
	ld [de],a
	ret

Unknown_0xEA29:
	ld a,$E0
	ld e,$45
	ld [de],a
	ld e,$15
	ld a,$02
	ld [de],a
	ret

Unknown_0xEA34:
	ld a,$C0
	ld e,$45
	ld [de],a
	ld e,$15
	ld a,$04
	ld [de],a
	ret

Unknown_0xEA3F:
	ld a,$20
	ld e,$45
	ld [de],a
	ld e,$15
	ld a,$02
	ld [de],a
	ret

Unknown_0xEA4A:
	ld a,$40
	ld e,$45
	ld [de],a
	ld e,$15
	ld a,$04
	ld [de],a
	ret

Unknown_0xEA55:
	ld e,$03
	ld bc,$682F
	jp Unknown_0x0846
	call Unknown_0x1964
	bit 7,a
	jr z,Unknown_0xEA6F
	ld bc,$6277
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret

Unknown_0xEA6F:
	ld e,$03
	ld bc,Unknown_0xE83A
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$6285
	call Unknown_0x255B
	ret c
	call Unknown_0x197F
	ret nc
	ld e,$03
	ld bc,Unknown_0xE8BF
	jp Unknown_0x0846
	ld hl,$6296
	ld e,$5C
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0xEA98
	inc h

Unknown_0xEA98:
	ld e,$3E
	ld a,[hl]
	ld [de],a
	ret
	push bc
	ld bc,Unknown_0xE29E
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$45
	ld a,[hl]
	cp $40
	jp z,Unknown_0xEB45
	cp $20
	jr z,Unknown_0xEB22
	cp $00
	jr z,Unknown_0xEAFF
	cp $E0
	jr z,Unknown_0xEADC
	ld a,$08
	add a,c
	ld c,a
	jr nc,Unknown_0xEAC0
	inc b

Unknown_0xEAC0:
	call Unknown_0xEC3E
	ld e,$0D
	ld hl,$62A8
	ld a,$10
	add a,l
	ld l,a
	jr nc,Unknown_0xEACF
	inc h

Unknown_0xEACF:
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

Unknown_0xEADC:
	ld a,$06
	add a,c
	ld c,a
	jr nc,Unknown_0xEAE3
	inc b

Unknown_0xEAE3:
	call Unknown_0xEC3E
	ld e,$0D
	ld hl,$62A8
	ld a,$0C
	add a,l
	ld l,a
	jr nc,Unknown_0xEAF2
	inc h

Unknown_0xEAF2:
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

Unknown_0xEAFF:
	ld a,$04
	add a,c
	ld c,a
	jr nc,Unknown_0xEB06
	inc b

Unknown_0xEB06:
	call Unknown_0xEC3E
	ld e,$0D
	ld hl,$62A8
	ld a,$08
	add a,l
	ld l,a
	jr nc,Unknown_0xEB15
	inc h

Unknown_0xEB15:
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

Unknown_0xEB22:
	ld a,$02
	add a,c
	ld c,a
	jr nc,Unknown_0xEB29
	inc b

Unknown_0xEB29:
	call Unknown_0xEC3E
	ld e,$0D
	ld hl,$62A8
	ld a,$04
	add a,l
	ld l,a
	jr nc,Unknown_0xEB38
	inc h

Unknown_0xEB38:
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

Unknown_0xEB45:
	call Unknown_0xEC3E
	ld e,$0D
	ld hl,Unknown_0xE2A8
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
	push bc
	push de
	call Unknown_0x1AEA
	push bc
	ld a,c
	add a,$04
	ld c,a
	jr nc,Unknown_0xEB67
	inc b

Unknown_0xEB67:
	call Unknown_0x1646
	and $07
	and a
	pop bc
	jr nz,Unknown_0xEB86
	ld a,c
	sub $04
	ld c,a
	jr nc,Unknown_0xEB77
	dec b

Unknown_0xEB77:
	call Unknown_0x1646
	and $07
	and a
	jr nz,Unknown_0xEB86
	pop de
	pop bc
	ld e,$27
	xor a
	ld [de],a
	ret

Unknown_0xEB86:
	pop de
	pop bc
	ld e,$27
	ld a,$01
	ld [de],a
	ret
	ld e,$15
	ld a,[de]
	inc a
	ld [de],a
	ret
	ld e,$15
	ld a,[de]
	dec a
	ld [de],a
	ret
	ld hl,$6298
	ld e,$5C
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0xEBA5
	inc h

Unknown_0xEBA5:
	ld a,[hl]
	ld e,a
	call Unknown_0x0647
	cp e
	ld e,$27
	jr c,Unknown_0xEBB2
	xor a
	ld [de],a
	ret

Unknown_0xEBB2:
	ld a,$01
	ld [de],a
	ret
	call Unknown_0x0647
	ld e,$27
	cp $00
	jr c,Unknown_0xEBCB
	cp $A0
	jr c,Unknown_0xEBC7
	ld a,$03
	ld [de],a
	ret

Unknown_0xEBC7:
	ld a,$02
	ld [de],a
	ret

Unknown_0xEBCB:
	ld a,$01
	ld [de],a
	ret
	ld e,$27
	ld a,[de]
	dec a
	ld [de],a
	ret

Unknown_0xEBD5:
	ld h,$A0
	ld e,$0B
	ld l,e
	ld a,[de]
	sub [hl]
	bit 7,a
	jr z,Unknown_0xEBE2
	ld a,$01

Unknown_0xEBE2:
	ld c,a
	ld e,$09
	ld l,e
	ld a,[de]
	sub [hl]
	bit 7,a
	ld e,$01
	jr z,Unknown_0xEBF4
	ld b,$01
	ld e,$00
	cpl
	inc a

Unknown_0xEBF4:
	ld b,a
	ld l,c
	xor a
	sla l
	rla
	sla l
	rla
	ld h,a
	ld c,$00

Unknown_0xEC00:
	and a
	ld a,l
	sub b
	ld l,a
	jr nc,Unknown_0xEC0C
	ld a,h
	sub $01
	jr c,Unknown_0xEC14
	ld h,a

Unknown_0xEC0C:
	inc c
	ld a,c
	sub $0C
	jr nz,Unknown_0xEC00
	jr Unknown_0xEC2D

Unknown_0xEC14:
	ld a,c
	sub $02
	jr nc,Unknown_0xEC23
	ld a,e
	and a
	jr nz,Unknown_0xEC38
	ld e,$40
	ld a,$40
	ld [de],a
	ret

Unknown_0xEC23:
	ld a,e
	and a
	jr nz,Unknown_0xEC32
	ld e,$40
	ld a,$20
	ld [de],a
	ret

Unknown_0xEC2D:
	ld e,$40
	xor a
	ld [de],a
	ret

Unknown_0xEC32:
	ld e,$40
	ld a,$E0
	ld [de],a
	ret

Unknown_0xEC38:
	ld e,$40
	ld a,$C0
	ld [de],a
	ret

Unknown_0xEC3E:
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$03
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	bit 7,a
	jr nz,Unknown_0xEC59
	add a,[hl]
	ld [de],a
	inc e
	inc l
	ld a,[hli]
	adc a,$00
	ld [de],a
	inc e
	jr Unknown_0xEC68

Unknown_0xEC59:
	push bc
	cpl
	inc a
	ld b,a
	ld a,[hl]
	sub b
	ld [de],a
	inc e
	inc l
	ld a,[hli]
	sbc a,$00
	ld [de],a
	inc e
	pop bc

Unknown_0xEC68:
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[bc]
	bit 7,a
	jr nz,Unknown_0xEC79
	add a,[hl]
	ld [de],a
	inc l
	inc e
	ld a,[hl]
	adc a,$00
	ld [de],a
	ret

Unknown_0xEC79:
	cpl
	inc a
	ld b,a
	ld a,[hl]
	sub b
	ld [de],a
	inc e
	inc l
	ld a,[hli]
	sbc a,$00
	ld [de],a
	ret

UnknownData_0xEC86:
INCBIN "baserom.gb", $EC86, $EC90 - $EC86

Unknown_0xEC90:
INCBIN "baserom.gb", $EC90, $EC99 - $EC90

Unknown_0xEC99:
INCBIN "baserom.gb", $EC99, $ECB9 - $EC99

Unknown_0xECB9:
INCBIN "baserom.gb", $ECB9, $ECD6 - $ECB9
	call Unknown_0xEDEA
	ret nc
	ld e,$03
	ld bc,Unknown_0xEC90
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$62BC
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xEC99
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$62BC
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$03
	ld bc,$6C99
	jp Unknown_0x0846

UnknownData_0xED25:
INCBIN "baserom.gb", $ED25, $ED26 - $ED25
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld hl,$62EC
	call Unknown_0x23CA
	call Unknown_0x0DA4
	ld bc,$62BC
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x19CB
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	jr z,Unknown_0xED57
	call Unknown_0xED84
	ret nc
	ld e,$03
	ld bc,$6CC6
	jp Unknown_0x0846

Unknown_0xED57:
	ld e,$03
	ld bc,Unknown_0xECB9
	jp Unknown_0x0846
	ld bc,$62BC
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0xED84
	jr c,Unknown_0xED76
	ld e,$03
	ld bc,$6C99
	jp Unknown_0x0846

Unknown_0xED76:
	call Unknown_0x19CB
	bit 7,a
	ret nz
	ld e,$03
	ld bc,$6CB9
	jp Unknown_0x0846

Unknown_0xED84:
	ld h,$A0
	ld e,$04
	ld l,e
	ld a,[de]
	sub [hl]
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	jr c,Unknown_0xEDA0
	ld e,$45
	ld a,[de]
	bit 7,a
	jr z,Unknown_0xEDAF
	ld l,e
	ld a,[hl]
	bit 7,a
	jr nz,Unknown_0xEDAF
	jr Unknown_0xEDB1

Unknown_0xEDA0:
	ld e,$45
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0xEDAF
	ld l,e
	ld a,[hl]
	bit 7,a
	jr z,Unknown_0xEDAF
	jr Unknown_0xEDB1

Unknown_0xEDAF:
	and a
	ret

Unknown_0xEDB1:
	scf
	ret

UnknownData_0xEDB3:
INCBIN "baserom.gb", $EDB3, $EDEA - $EDB3

Unknown_0xEDEA:
	ld e,$5B
	ld a,[de]
	and a
	ld h,$A0
	ld l,$45
	ld a,[hl]
	jr nz,Unknown_0xEDFB
	bit 7,a
	jr nz,Unknown_0xEE14
	jr Unknown_0xEDFF

Unknown_0xEDFB:
	bit 7,a
	jr z,Unknown_0xEE14

Unknown_0xEDFF:
	ld hl,$DB51
	ld a,[hli]
	sub $08
	ld e,a
	ld a,[hl]
	ld l,e
	jr nc,Unknown_0xEE0B
	dec a

Unknown_0xEE0B:
	ld h,a
	ld e,$04
	ld a,[de]
	sub l
	inc e
	ld a,[de]
	sbc a,h
	ret

Unknown_0xEE14:
	ld hl,$DB51
	ld a,[hli]
	add a,$A8
	ld e,a
	ld a,[hl]
	ld l,e
	jr nc,Unknown_0xEE20
	inc a

Unknown_0xEE20:
	ld h,a
	ld e,$04
	ld a,[de]
	sub l
	inc e
	ld a,[de]
	sbc a,h
	jr c,Unknown_0xEE2C
	scf
	ret

Unknown_0xEE2C:
	and a
	ret

UnknownData_0xEE2E:
INCBIN "baserom.gb", $EE2E, $EE38 - $EE2E

Unknown_0xEE38:
INCBIN "baserom.gb", $EE38, $EE42 - $EE38

Unknown_0xEE42:
INCBIN "baserom.gb", $EE42, $EE66 - $EE42

Unknown_0xEE66:
INCBIN "baserom.gb", $EE66, $EEAB - $EE66
	call Unknown_0xEDEA
	ret nc
	ld e,$03
	ld bc,Unknown_0xEE38
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$62CA
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0xE2D8
	call Unknown_0x24CD
	bit 6,a
	jr nz,Unknown_0xEEE1
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xEE42
	jp Unknown_0x0846

Unknown_0xEEE1:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ret
	call Unknown_0x0DA4
	ld bc,$62CA
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0xE2D8
	call Unknown_0x24A5
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret nz
	ld e,$03
	ld bc,$6E9C
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$62CA
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0xE2D8
	call Unknown_0x24CD
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xEE66
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$62CA
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ld bc,Unknown_0xE2D8
	call Unknown_0x24CD
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xEE66
	jp Unknown_0x0846

UnknownData_0xEF57:
INCBIN "baserom.gb", $EF57, $F043 - $EF57
	ld e,$46
	ld a,[de]
	ld hl,$DD5C
	ld [hl],a
	ret

UnknownData_0xF04B:
INCBIN "baserom.gb", $F04B, $F072 - $F04B
	call Unknown_0x0DA4
	ld bc,$6F57
	call Unknown_0x255B
	call Unknown_0x1A25
	bit 7,a
	jp nz,Unknown_0x1FAF
	bit 6,a
	jp nz,Unknown_0x1FAF
	bit 5,a
	ret z
	jp Unknown_0x1FBD
	ld e,$26
	ld a,[de]
	or a
	jr nz,Unknown_0xF0B4
	ld e,$3E
	ld a,[de]
	inc a
	and $01
	ld [de],a
	jr nz,Unknown_0xF0A4
	ld e,$3B
	ld a,[de]
	ld e,$26
	jr Unknown_0xF0B4

Unknown_0xF0A4:
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	inc e
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ld e,$3C
	ld a,[de]
	ld e,$26

Unknown_0xF0B4:
	dec a
	ld [de],a
	ld e,$3E
	ld a,[de]
	or a
	jr z,Unknown_0xF0C2
	call Unknown_0x1EE6
	call Unknown_0x1ED3

Unknown_0xF0C2:
	call Unknown_0x0DA4
	ld bc,$6F57
	jp Unknown_0x255B
	ld bc,$6F57
	jp Unknown_0x255B
	ld e,$07
	ld l,e
	ld h,$A0
	ld a,[de]
	sub [hl]
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	ld e,$3F
	jr c,Unknown_0xF0E4
	ld a,$00
	ld [de],a
	ret

Unknown_0xF0E4:
	ld a,$80
	ld [de],a
	ret
	ld e,$5B
	ld a,[de]
	rlca
	rlca
	ld l,a
	ld e,$5C
	ld a,[de]
	rlca
	add a,l
	ld hl,$6F65
	add a,l
	ld l,a
	jr nc,Unknown_0xF0FB
	inc h

Unknown_0xF0FB:
	ld e,$5B
	ld a,[de]
	rrca
	jr c,Unknown_0xF11C
	ld e,$3F
	ld a,[de]
	cp $80
	ld e,$0F
	jr z,Unknown_0xF116
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hl]
	cpl
	adc a,$00
	ld [de],a
	ret

Unknown_0xF116:
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

Unknown_0xF11C:
	ld e,$45
	ld a,[de]
	rlca
	ld e,$0D
	jr nc,Unknown_0xF130
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hl]
	cpl
	adc a,$00
	ld [de],a
	ret

Unknown_0xF130:
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld e,$5B
	ld a,[de]
	sub $02
	swap a
	rrca
	ld l,a
	ld e,$5C
	ld a,[de]
	rlca
	rlca
	add a,l
	ld hl,$6F7D
	add a,l
	ld l,a
	jr nc,Unknown_0xF14D
	inc h

Unknown_0xF14D:
	ld a,[hli]
	ld e,$26
	ld [de],a
	ld e,$3C
	ld a,[hli]
	ld [de],a
	dec e
	ld a,[hli]
	ld [de],a
	ld e,$3E
	xor a
	ld [de],a
	ld e,$5B
	ld a,[de]
	rrca
	jr c,Unknown_0xF17B
	ld e,$3F
	ld a,[de]
	cp $80
	jr z,Unknown_0xF173
	ld e,$11
	xor a
	ld [de],a
	inc e
	ld a,[hl]
	cpl
	inc a
	ld [de],a
	ret

Unknown_0xF173:
	ld e,$11
	xor a
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

Unknown_0xF17B:
	ld e,$45
	ld a,[de]
	rlca
	ld e,$11
	jr c,Unknown_0xF189
	ld a,[hl]
	ld [de],a
	xor a
	inc e
	ld [de],a
	ret

Unknown_0xF189:
	ld a,[hl]
	cpl
	inc a
	ld [de],a
	xor a
	inc e
	ld [de],a
	ret

UnknownData_0xF191:
INCBIN "baserom.gb", $F191, $F1CD - $F191

Unknown_0xF1CD:
INCBIN "baserom.gb", $F1CD, $F1E1 - $F1CD

Unknown_0xF1E1:
INCBIN "baserom.gb", $F1E1, $F1E9 - $F1E1
	call Unknown_0x0DA4
	ld bc,$6F57
	call Unknown_0x255B
	call Unknown_0x197F
	ret nc
	ld a,[$FF00+$9E]
	cp $04
	jr c,Unknown_0xF20A
	jr z,Unknown_0xF221
	cp $05
	jr z,Unknown_0xF210
	cp $07
	jr z,Unknown_0xF221
	cp $06
	jr z,Unknown_0xF210

Unknown_0xF20A:
	call Unknown_0x1FBD
	jp Unknown_0x1FAF

Unknown_0xF210:
	ld e,$0D
	ld h,d
	ld l,$0F
	ld a,[de]
	ld b,[hl]
	ld [hli],a
	ld a,b
	ld [de],a
	inc e
	ld a,[de]
	ld b,[hl]
	ld [hl],a
	ld a,b
	ld [de],a
	ret

Unknown_0xF221:
	ld e,$0D
	ld a,[de]
	cpl
	add a,$01
	ld c,a
	inc e
	ld a,[de]
	cpl
	adc a,$00
	ld b,a
	dec e
	ld l,$0F
	ld h,d
	ld a,[hl]
	ld [hl],c
	cpl
	add a,$01
	ld [de],a
	inc l
	inc e
	ld a,[hl]
	ld [hl],b
	cpl
	adc a,$00
	ld [de],a
	ret
	ld bc,$6F57
	call Unknown_0x255B
	call Unknown_0x0DA4
	ld e,$40
	ld a,[de]
	rlca
	ld hl,$725A
	add a,l
	ld l,a
	jr nc,Unknown_0xF256
	inc h

Unknown_0xF256:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0xF25A:
INCBIN "baserom.gb", $F25A, $F262 - $F25A
	call Unknown_0xD026

Unknown_0xF265:
	or a
	jr z,Unknown_0xF281
	bit 5,a
	ld h,d
	ld l,$3D
	ld [hl],$03
	ret z
	call Unknown_0x1FAF

Unknown_0xF273:
	ld e,$0E
	ld a,[de]
	and $80
	xor $80
	rlca
	add a,$02
	ld e,$40
	ld [de],a
	ret

Unknown_0xF281:
	ld e,$3D
	ld a,[de]
	dec a
	ld [de],a
	cp $02
	jr z,Unknown_0xF294
	or a
	ret nz
	ld e,$03
	ld bc,Unknown_0xF1CD
	jp Unknown_0x0846

Unknown_0xF294:
	call Unknown_0x1FBD
	jr Unknown_0xF273
	call Unknown_0x19CB
	jr Unknown_0xF265
	call Unknown_0xD0D0

Unknown_0xF2A1:
	or a
	jr z,Unknown_0xF2BF
	bit 7,a
	jr nz,Unknown_0xF2B0
	bit 6,a
	ld h,d
	ld l,$3D
	ld [hl],$03
	ret z

Unknown_0xF2B0:
	call Unknown_0x1FBD

Unknown_0xF2B3:
	ld e,$10
	ld a,[de]
	and $80
	xor $80
	rlca
	ld e,$40
	ld [de],a
	ret

Unknown_0xF2BF:
	ld e,$3D
	ld a,[de]
	dec a
	ld [de],a
	cp $02
	jr z,Unknown_0xF2D2
	or a
	ret nz
	ld e,$03
	ld bc,$71CD
	jp Unknown_0x0846

Unknown_0xF2D2:
	call Unknown_0x1FAF
	jr Unknown_0xF2B3
	call Unknown_0xD0F8
	jr Unknown_0xF2A1
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$6F57
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	jr nz,Unknown_0xF31E
	ld e,$3E
	ld a,[de]
	or a
	ret nz
	call Unknown_0x1AB3
	ret nz
	ld e,$0F
	ld a,[de]
	inc e
	ld c,a
	ld a,[de]
	ld b,a
	ld hl,$6FA1
	ld e,$39
	ld a,[hli]
	ld [de],a
	inc e
	ld h,[hl]
	ld l,a
	ld a,h
	ld [de],a
	ld a,l
	sub c
	ld a,h
	sbc a,b
	ld hl,$6FA0
	ld e,$12
	ld a,[hl]
	jr c,Unknown_0xF31A
	ld [de],a
	ret

Unknown_0xF31A:
	cpl
	inc a
	ld [de],a
	ret

Unknown_0xF31E:
	ld e,$40
	ld a,$01
	ld [de],a
	ld e,$3E
	xor a
	ld [de],a
	ld e,$03
	ld bc,Unknown_0xF1E1
	jp Unknown_0x0846
	ld e,$5C
	ld a,[de]
	rlca
	ld hl,$6FA3
	add a,l
	ld l,a
	jr nc,Unknown_0xF33B
	inc h

Unknown_0xF33B:
	ld e,$5B
	ld a,[de]
	cp $01
	jr c,Unknown_0xF366
	jr z,Unknown_0xF35E
	cp $02
	jr z,Unknown_0xF350
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

Unknown_0xF350:
	ld e,$0D
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hl]
	cpl
	adc a,$00
	ld [de],a
	ret

Unknown_0xF35E:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

Unknown_0xF366:
	ld e,$0F
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hl]
	cpl
	adc a,$00
	ld [de],a
	ret
	ld hl,$6FA7
	ld e,$5C
	ld a,[de]
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0xF380
	inc h

Unknown_0xF380:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld e,$40
	ld a,[de]
	cp $01
	jr c,Unknown_0xF3CA
	jr z,Unknown_0xF3C1
	cp $02
	jr z,Unknown_0xF399
	ld e,$0D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	jr Unknown_0xF3A6

Unknown_0xF399:
	ld e,$0D
	ld a,l
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,h
	cpl
	adc a,$00
	ld [de],a

Unknown_0xF3A6:
	ld e,$3F
	ld a,[de]
	cp $00
	ld e,$0F
	jr z,Unknown_0xF3B5
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

Unknown_0xF3B5:
	ld a,l
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,h
	cpl
	adc a,$00
	ld [de],a
	ret

Unknown_0xF3C1:
	ld e,$0F
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	jr Unknown_0xF3D7

Unknown_0xF3CA:
	ld e,$0F
	ld a,l
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,h
	cpl
	adc a,$00
	ld [de],a

Unknown_0xF3D7:
	ld e,$45
	ld a,[de]
	rlca
	ld e,$0D
	jr c,Unknown_0xF3E5
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

Unknown_0xF3E5:
	ld a,l
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,h
	cpl
	adc a,$00
	ld [de],a
	ret

UnknownData_0xF3F1:
INCBIN "baserom.gb", $F3F1, $F561 - $F3F1

Unknown_0xF561:
INCBIN "baserom.gb", $F561, $F569 - $F561
	call Unknown_0x21C5
	ld e,$0D
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	or c
	jr nz,Unknown_0xF57C
	ld e,$39
	ld a,$01
	ld [de],a
	jr Unknown_0xF58C

Unknown_0xF57C:
	ld e,$39
	ld a,[de]
	or a
	jr z,Unknown_0xF58C
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ld e,$39
	xor a
	ld [de],a

Unknown_0xF58C:
	call Unknown_0x0DA4
	ld bc,$6FAB
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 4,a
	jr nz,Unknown_0xF5AE
	bit 5,a
	jr nz,Unknown_0xF5AE
	ld e,$4D
	ld a,[de]
	cp $04
	jr c,Unknown_0xF5C7

Unknown_0xF5AE:
	ld e,$0D
	ld a,[de]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[de]
	cpl
	adc a,$00
	ld [de],a
	call Unknown_0x0DA4
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ld e,$11
	ld [de],a

Unknown_0xF5C7:
	ld h,d
	ld l,$26
	dec [hl]
	ret nz
	ld e,$3D
	ld a,[de]
	ld e,$26
	ld [de],a
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
	ld e,$3A
	ld a,[de]
	ld e,$11
	ld [de],a
	ld l,$40
	ld h,d
	dec [hl]
	ret nz
	call Unknown_0x0647
	ld l,$3F
	ld h,d
	cp [hl]
	jr c,Unknown_0xF5FA
	ld l,$3E
	ld a,[hl]
	ld l,$40
	ld [hl],a
	ret

Unknown_0xF5FA:
	ld e,$03
	ld bc,$745D
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$6FAB
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$4D
	ld a,[de]
	cp $04
	jr nc,Unknown_0xF62A
	ld e,$03
	ld bc,$7455
	jp Unknown_0x0846

Unknown_0xF62A:
	ld e,$0D
	ld a,[de]
	inc e
	ld c,a
	ld a,[de]
	or c
	ret nz

Unknown_0xF632:
	ld hl,$0100
	ld e,$4D
	ld a,[de]
	cp $04
	jr z,Unknown_0xF644
	ld e,$0D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

Unknown_0xF644:
	ld e,$0D
	ld a,l
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,h
	cpl
	add a,$00
	ld [de],a
	ret
	ld e,$40
	ld a,[de]
	cp $01
	jr z,Unknown_0xF66D
	jr c,Unknown_0xF66A
	ld e,$0D
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	or c
	jp z,Unknown_0xF704
	call Unknown_0x1EE6
	jr Unknown_0xF66D

Unknown_0xF66A:
	call Unknown_0x21C5

Unknown_0xF66D:
	call Unknown_0x0DA4
	ld bc,$6FAB
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x19F3
	or a
	jp z,Unknown_0xF6FC
	bit 5,a
	jr nz,Unknown_0xF6AF
	ld e,$4D
	ld a,[de]
	cp $04
	jr c,Unknown_0xF6B8
	ld l,$0E
	ld h,d
	bit 7,[hl]
	jr nz,Unknown_0xF69C
	cp $04
	jr z,Unknown_0xF6AF
	jr Unknown_0xF6A0

Unknown_0xF69C:
	cp $04
	jr nz,Unknown_0xF6AF

Unknown_0xF6A0:
	call Unknown_0xF632
	ld h,d
	ld l,$1F
	ld [hl],$43
	inc l
	ld [hl],$77
	inc l
	ld [hl],$58
	ret

Unknown_0xF6AF:
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ld e,$11
	ld [de],a

Unknown_0xF6B8:
	ld h,d
	ld l,$26
	dec [hl]
	ret nz
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
	jr nc,Unknown_0xF6D3
	rlca
	jp c,Unknown_0xF704
	jr Unknown_0xF6D7

Unknown_0xF6D3:
	rlca
	jp nc,Unknown_0xF704

Unknown_0xF6D7:
	ld e,$40
	ld a,[de]
	inc a
	ld [de],a
	cp $02
	jr z,Unknown_0xF6EB
	ld e,$3D
	ld a,[de]
	ld e,$26
	ld [de],a
	xor a
	ld e,$11
	ld [de],a
	ret

Unknown_0xF6EB:
	ld e,$45
	ld a,[de]
	rlca
	ld e,$3A
	ld a,[de]
	ld e,$11
	jr nc,Unknown_0xF6F8
	ld [de],a
	ret

Unknown_0xF6F8:
	cpl
	inc a
	ld [de],a
	ret

Unknown_0xF6FC:
	ld e,$03
	ld bc,$748E
	jp Unknown_0x0846

Unknown_0xF704:
	call Unknown_0x0647
	ld l,$3F
	ld h,d
	cp [hl]
	jr nc,Unknown_0xF715
	ld e,$03
	ld bc,$746F
	jp Unknown_0x0846

Unknown_0xF715:
	ld e,$03
	ld bc,$7415
	jp Unknown_0x0846

UnknownData_0xF71D:
INCBIN "baserom.gb", $F71D, $F77D - $F71D
	ld bc,$6FAB
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret

UnknownData_0xF788:
INCBIN "baserom.gb", $F788, $F7FC - $F788
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$6FAB
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 5,a
	jr z,Unknown_0xF81F
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x1FBD

Unknown_0xF81F:
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xF561
	jp Unknown_0x0846
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	rlca
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0xF83C
	inc h

Unknown_0xF83C:
	ld e,$11
	ld a,[hli]
	ld [de],a
	ld e,$3A
	ld [de],a
	ld e,$45
	ld a,[de]
	rlca
	jr c,Unknown_0xF852
	ld e,$3B
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	jr Unknown_0xF85F

Unknown_0xF852:
	ld e,$3B
	ld a,[hli]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[hli]
	cpl
	adc a,$00
	ld [de],a

Unknown_0xF85F:
	ld e,$26
	ld a,[hli]
	ld [de],a
	ld e,$3D
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$40
	ld [de],a
	dec e
	ld a,[hl]
	ld [de],a
	xor a
	ld e,$39
	ld [de],a
	ret
	ld e,$26
	ld a,[de]
	rrca
	ld [de],a
	ld e,$40
	ld a,[de]
	inc a
	ld [de],a
	ret

UnknownData_0xF87F:
INCBIN "baserom.gb", $F87F, $F92B - $F87F
	call Unknown_0x0647
	ld e,$00
	cp $40
	jr c,Unknown_0xF93A
	inc e
	cp $C0
	jr c,Unknown_0xF93A
	inc e

Unknown_0xF93A:
	ld a,e
	ld e,$27
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
	swap a
	ld c,a
	ld e,$5C
	ld a,[de]
	swap a
	rrca
	add a,c
	add a,l
	ld l,a
	jr nc,Unknown_0xF958
	inc h

Unknown_0xF958:
	pop bc
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	call Unknown_0x2053
	jp Unknown_0x20F9

UnknownData_0xF966:
INCBIN "baserom.gb", $F966, $F98A - $F966
	call Unknown_0x1ED3
	jp Unknown_0x0DA4

UnknownData_0xF990:
INCBIN "baserom.gb", $F990, $F9A7 - $F990
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc hl
	ld a,[de]
	sbc a,[hl]
	ret c
	ld a,c
	ld h,d
	ld l,$45
	bit 7,[hl]
	ld l,$27
	jr nz,Unknown_0xF9C2
	cp [hl]
	ret c
	jr Unknown_0xF9C4

Unknown_0xF9C2:
	cp [hl]
	ret nc

Unknown_0xF9C4:
	ld e,$03
	ld bc,Unknown_0xF9CC
	jp Unknown_0x0846

Unknown_0xF9CC:
INCBIN "baserom.gb", $F9CC, $FA14 - $F9CC
	ld hl,$21D8
	ld a,$00
	call CallForeignBankNoInturrupts
	call Unknown_0x0DA4
	ld bc,$6FAB
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0xFA3A
	jp Unknown_0x0846

Unknown_0xFA3A:
INCBIN "baserom.gb", $FA3A, $FA68 - $FA3A
	call Unknown_0x0DA4
	ld bc,$6FAB
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	ret
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$6FAB
	call Unknown_0x255B
	ret c
	call Unknown_0x2385
	call Unknown_0x2375
	call Unknown_0x1A25
	bit 7,a
	jr nz,Unknown_0xFA96
	bit 5,a
	ret z
	jp Unknown_0x1EF9

Unknown_0xFA96:
	ld e,$03
	ld bc,Unknown_0xFA9E
	jp Unknown_0x0846

Unknown_0xFA9E:
INCBIN "baserom.gb", $FA9E, $FB08 - $FA9E

Unknown_0xFB08:
INCBIN "baserom.gb", $FB08, $FB3E - $FB08

Unknown_0xFB3E:
INCBIN "baserom.gb", $FB3E, $FB51 - $FB3E

Unknown_0xFB51:
INCBIN "baserom.gb", $FB51, $FB63 - $FB51
	ld e,$5B
	ld a,[de]
	and a
	jr nz,Unknown_0xFB70
	call Unknown_0x1964
	bit 7,a
	jr z,Unknown_0xFBAA

Unknown_0xFB70:
	ld bc,$7ACC
	call Unknown_0x255B
	ret c
	ld e,$5C
	ld a,[de]
	cp $02
	jr z,Unknown_0xFB82
	ld b,$0D
	jr Unknown_0xFB84

Unknown_0xFB82:
	ld b,$0B

Unknown_0xFB84:
	ld c,$0B
	call Unknown_0x1F14
	jr c,Unknown_0xFBD8
	call Unknown_0x1F0D
	jr nz,Unknown_0xFBBD
	ld e,$3E
	ld a,[de]
	and a
	ret z
	xor a
	ld [de],a
	ld e,$03
	ld bc,Unknown_0xFB08
	call Unknown_0x0846
	ld e,$42
	ld a,[de]
	and a
	ret z
	ld e,$47
	ld a,$80
	ld [de],a
	ret

Unknown_0xFBAA:
	ld e,$03
	ld bc,$7B2F
	call Unknown_0x0846
	ld e,$42
	ld a,[de]
	and a
	ret z
	ld e,$47
	ld a,$80
	ld [de],a
	ret

Unknown_0xFBBD:
	ld e,$3E
	ld a,[de]
	and a
	ret nz
	ld a,$01
	ld [de],a
	ld e,$03
	ld bc,Unknown_0xFB3E
	call Unknown_0x0846
	ld e,$42
	ld a,[de]
	and a
	ret z
	ld e,$47
	ld a,$80
	ld [de],a
	ret

Unknown_0xFBD8:
	ld e,$03
	ld bc,Unknown_0xFB51
	call Unknown_0x0846
	ld e,$42
	ld a,[de]
	and a
	ret z
	ld e,$47
	ld a,$80
	ld [de],a
	ret
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld bc,$7ACC
	call Unknown_0x255B
	ret c
	ld e,$5C
	ld a,[de]
	cp $02
	jr z,Unknown_0xFC0C
	ld b,$0D
	jr Unknown_0xFC0E

Unknown_0xFC0C:
	ld b,$0B

Unknown_0xFC0E:
	ld c,$0B
	call Unknown_0x1F14
	jr c,Unknown_0xFC3B
	call Unknown_0x1A25
	bit 7,a
	jr nz,Unknown_0xFC69
	call Unknown_0x1F0D
	jr nz,Unknown_0xFC4E
	ld e,$3E
	ld a,[de]
	and a
	ret z
	xor a
	ld [de],a
	ld e,$03
	ld bc,$7B2F
	call Unknown_0x0846
	ld e,$42
	ld a,[de]
	and a
	ret z
	ld e,$47
	ld a,$80
	ld [de],a
	ret

Unknown_0xFC3B:
	ld e,$03
	ld bc,$7B51
	call Unknown_0x0846
	ld e,$42
	ld a,[de]
	and a
	ret z
	ld e,$47
	ld a,$80
	ld [de],a
	ret

Unknown_0xFC4E:
	ld e,$3E
	ld a,[de]
	and a
	ret nz
	ld a,$01
	ld [de],a
	ld e,$03
	ld bc,$7B3E
	call Unknown_0x0846
	ld e,$42
	ld a,[de]
	and a
	ret z
	ld e,$47
	ld a,$80
	ld [de],a
	ret

Unknown_0xFC69:
	ld e,$03
	ld bc,Unknown_0xFB08
	call Unknown_0x0846
	ld e,$42
	ld a,[de]
	and a
	ret z
	ld e,$47
	ld a,$80
	ld [de],a
	ret

Unknown_0xFC7C:
	push bc
	push de
	ld hl,$A084
	ld a,[hl]
	cp $99
	jr nc,Unknown_0xFC89
	and a
	inc a
	daa

Unknown_0xFC89:
	ld [hl],a
	ld e,$21
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld hl,$DEDE
	set 2,[hl]
	pop de
	pop bc
	ret
	ld e,$5C
	ld a,[de]
	cp $03
	jr z,Unknown_0xFCD8
	ld hl,$DEDF
	bit 1,[hl]
	jr nz,Unknown_0xFCC1
	ld hl,$A04C
	ld e,$5C
	ld a,[de]
	cp $02
	jr z,Unknown_0xFCB8

Unknown_0xFCB4:
	ld a,$0C
	ld [hl],a
	ret

Unknown_0xFCB8:
	ld a,[hl]
	add a,$04
	cp $0C
	jr nc,Unknown_0xFCB4
	ld [hl],a
	ret

Unknown_0xFCC1:
	ld hl,$A072
	ld e,$5C
	ld a,[de]
	cp $02
	jr z,Unknown_0xFCCF

Unknown_0xFCCB:
	ld a,$06
	ld [hl],a
	ret

Unknown_0xFCCF:
	ld a,[hl]
	add a,$02
	cp $06
	jr nc,Unknown_0xFCCB
	ld [hl],a
	ret

Unknown_0xFCD8:
	ld hl,$DEE1
	ld a,[hl]
	inc a
	cp $07
	jr nz,Unknown_0xFCF5
	call Unknown_0xFC7C
	ld hl,$DEE6
	ld [hl],$57
	inc hl
	ld [hl],$5F
	inc hl
	ld [hl],$07
	ld hl,$DEDE
	set 7,[hl]
	xor a

Unknown_0xFCF5:
	ld hl,$DEE1
	ld [hl],a
	ld hl,$DEDE
	set 5,[hl]
	ret
	ld e,$49
	ld a,[de]
	inc a
	ret z
	ld a,[$DB57]
	inc a
	jr z,Unknown_0xFD27
	ld hl,$DCFD
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld e,$5C
	ld a,[de]
	inc a
	ld [hli],a
	ld a,[$DB57]
	ld [hli],a
	ld e,$49
	ld a,[de]
	ld [hli],a
	ld [hl],$00
	ld a,l
	ld [$DCFD],a
	ld a,h
	ld [$DCFE],a

Unknown_0xFD27:
	ld a,$FF
	ld [de],a
	ret

UnknownData_0xFD2B:
INCBIN "baserom.gb", $FD2B, $FD78 - $FD2B
	ld a,[$DB60]
	call Unknown_0x0663
	ld hl,$DD63
	and [hl]
	ld e,$27
	ld [de],a
	ret
	ld e,$3E
	ld a,[de]
	dec a
	ld [de],a
	jr nz,Unknown_0xFD9A
	ld a,$04
	ld [de],a
	ld e,$15
	ld a,[de]
	inc a
	cp $07
	jr c,Unknown_0xFD99
	xor a

Unknown_0xFD99:
	ld [de],a

Unknown_0xFD9A:
	ld e,$15
	ld bc,$0200
	call Unknown_0x0D35
	call Unknown_0x0DA4
	call Unknown_0x1A25
	ld bc,$7E03
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 3,a
	jr nz,Unknown_0xFDD0
	bit 2,a
	ld e,$3D
	ld a,[de]
	jr nz,Unknown_0xFDC6
	dec a
	ret nz
	ld e,$03
	ld bc,$7D53
	jp Unknown_0x0846

Unknown_0xFDC6:
	or a
	ret nz
	ld e,$03
	ld bc,$7D5F
	jp Unknown_0x0846

Unknown_0xFDD0:
	call Unknown_0x2809
	ret c
	ld a,[$A051]
	cp $0C
	ret z
	ld e,$08
	ld bc,$6195
	call Unknown_0x0C3A
	ld hl,$A003
	ld e,l
	ld b,$06

Unknown_0xFDE8:
	ld a,[de]
	ld [hli],a
	inc e
	dec b
	jr nz,Unknown_0xFDE8
	ld e,$46
	ld a,[de]
	ld l,$39
	ld [hl],a
	ld a,[$DB60]
	call Unknown_0x0663
	ld hl,$DD63
	or [hl]
	ld [hl],a
	ld h,d
	jp Unknown_0x0BBA

UnknownData_0xFE03:
INCBIN "baserom.gb", $FE03, $FE11 - $FE03
	ld h,d
	ld l,$04
	ld e,$39
	call Unknown_0xFE1A
	inc l

Unknown_0xFE1A:
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ret

UnknownData_0xFE21:
INCBIN "baserom.gb", $FE21, $FE2C - $FE21
	ld h,d
	ld l,$39
	ld e,$04
	jr Unknown_0xFE1A

UnknownData_0xFE33:
INCBIN "baserom.gb", $FE33, $10000 - $FE33