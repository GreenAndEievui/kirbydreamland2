SECTION "Bank07", ROMX, BANK[$07]
	ld a,$01
	ld [$DA3B],a
	ld a,$02
	ld [$DA3A],a
	ld hl,$DA3C
	ld bc,$BC00
	ld [hl],c
	inc hl
	ld [hl],b
	xor a
	ld hl,$DA30
	ld [hli],a
	ld [hl],a
	ld [$DA0E],a
	ret
UnknownForeignCall_0x1C01D:
	ld hl,$D900

Unknown_0x1C020:
	ld b,$08

Unknown_0x1C022:
	rrc l
	rla
	dec b
	jr nz,Unknown_0x1C022
	ld [hli],a
	inc a
	jr nz,Unknown_0x1C020
	ret

UnknownData_0x1C02D:
INCBIN "baserom.gb", $1C02D, $1C0E2 - $1C02D
	ld hl,$CC00
	ld a,[$DB5F]
	inc a
	ld b,a
	jr Unknown_0x1C0F3

Unknown_0x1C0EC:
	ld a,[hli]
	sub $BD
	cp $10
	jr c,Unknown_0x1C0F9

Unknown_0x1C0F3:
	dec b
	jr nz,Unknown_0x1C0EC
	ld a,[$DB60]

Unknown_0x1C0F9:
	add a,$24
	ld e,a
	ld hl,$6002
	ld a,$1E
	call CallForeignBankNoInturrupts
	ret
	ld a,[$DB61]
	cp $08
	jr nz,Unknown_0x1C120
	ld a,[$DB60]
	ld hl,$4121
	add a,l
	ld l,a
	jr nc,Unknown_0x1C117
	inc h

Unknown_0x1C117:
	ld e,[hl]
	ld hl,$606D
	ld a,$1E
	call CallForeignBankNoInturrupts

Unknown_0x1C120:
	ret

UnknownData_0x1C121:
INCBIN "baserom.gb", $1C121, $1C128 - $1C121
	ld a,[$DEFF]
	or a
	ret nz
	ld hl,$CC00
	ld a,[$DB5F]
	inc a
	ld b,a
	jr Unknown_0x1C13C

Unknown_0x1C137:
	ld a,[hli]
	cp $B2
	jr z,Unknown_0x1C141

Unknown_0x1C13C:
	dec b
	jr nz,Unknown_0x1C137
	jr Unknown_0x1C155

Unknown_0x1C141:
	ld a,[$DB60]
	call Unknown_0x0663
	ld hl,$DD63
	and [hl]
	jr nz,Unknown_0x1C155
	ld a,$12
	ld [$DB6F],a
	ld e,a
	jr Unknown_0x1C1AD

Unknown_0x1C155:
	ld a,[$DB73]
	or a
	ld a,$FF
	jr nz,Unknown_0x1C17B
	ld a,[$DB60]
	ld hl,$41B6
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1C169
	inc h

Unknown_0x1C169:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[$DB61]
	sub $08
	jr nc,Unknown_0x1C175
	ld a,$02

Unknown_0x1C175:
	add a,l
	ld l,a
	jr nc,Unknown_0x1C17A
	inc h

Unknown_0x1C17A:
	ld a,[hl]

Unknown_0x1C17B:
	ld [$DB6F],a
	ld a,[$DB38]
	or a
	jr z,Unknown_0x1C18A
	xor a
	ld [$DB38],a
	jr Unknown_0x1C1B5

Unknown_0x1C18A:
	ld a,[$DB6F]
	ld e,a
	ld a,[$DB61]
	cp $08
	jr nc,Unknown_0x1C1AD
	ld a,[$A071]
	or a
	jr nz,Unknown_0x1C1A4
	ld a,[$DDE4]
	inc a
	cp e
	jr z,Unknown_0x1C1B5
	jr Unknown_0x1C1AD

Unknown_0x1C1A4:
	ld hl,$41D8
	add a,l
	ld l,a
	jr nc,Unknown_0x1C1AC
	inc h

Unknown_0x1C1AC:
	ld e,[hl]

Unknown_0x1C1AD:
	ld hl,$4232
	ld a,$1F
	call CallForeignBankNoInturrupts

Unknown_0x1C1B5:
	ret

UnknownData_0x1C1B6:
INCBIN "baserom.gb", $1C1B6, $1C1DC - $1C1B6

Unknown_0x1C1DC:
	ld hl,$DB51
	ld a,[hli]
	ld [$DA01],a
	sub $10
	ld c,a
	ld a,[hli]
	ld b,a
	jr nc,Unknown_0x1C1EB
	dec b

Unknown_0x1C1EB:
	ld a,[hli]
	ld [$DA00],a
	sub $10
	ld e,a
	ld d,[hl]
	jr nc,Unknown_0x1C1F6
	dec d

Unknown_0x1C1F6:
	call Unknown_0x15E3
	push hl
	call Unknown_0x15FC
	pop bc
	ld d,$0D
	ld e,$0B
	jr Unknown_0x1C21E

Unknown_0x1C204:
	ld a,c
	add a,$10
	ld c,a
	jr c,Unknown_0x1C213
	ld a,l
	add a,$40
	ld l,a
	jr nc,Unknown_0x1C21E
	inc h
	jr Unknown_0x1C21E

Unknown_0x1C213:
	ld a,[$DB3D]
	add a,b
	ld b,a
	ld h,$98
	ld a,l
	and $1F
	ld l,a

Unknown_0x1C21E:
	push bc
	push hl
	push de
	jr Unknown_0x1C236

Unknown_0x1C223:
	inc c
	ld a,c
	and $0F
	jr z,Unknown_0x1C22D
	inc l
	inc l
	jr Unknown_0x1C236

Unknown_0x1C22D:
	ld a,c
	sub $10
	ld c,a
	inc b
	ld a,l
	and $E0
	ld l,a

Unknown_0x1C236:
	ld a,[bc]
	push bc
	ld c,a
	ld b,$C5
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hl],a
	inc b
	ld a,l
	add a,$1F
	ld l,a
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hl],a
	ld a,l
	sub $21
	ld l,a
	pop bc
	dec d
	jr nz,Unknown_0x1C223
	pop de
	pop hl
	pop bc
	dec e
	jr nz,Unknown_0x1C204
	ret

Unknown_0x1C259:
	ld hl,$DB51
	ld a,[hli]
	ld [$DA01],a
	sub $10
	ld c,a
	ld a,[hli]
	ld b,a
	jr nc,Unknown_0x1C268
	dec b

Unknown_0x1C268:
	ld a,[hli]
	ld [$DA00],a
	sub $10
	ld e,a
	ld d,[hl]
	jr nc,Unknown_0x1C273
	dec d

Unknown_0x1C273:
	ld a,e
	and $F0
	ld h,a
	ld a,[$DB56]
	sub h
	jr z,Unknown_0x1C294
	push bc
	push de
	rla
	jr nc,Unknown_0x1C289
	ld a,e
	add a,$A0
	ld e,a
	jr nc,Unknown_0x1C289
	inc d

Unknown_0x1C289:
	ld a,h
	ld [$DB56],a
	ld a,$0D
	call Unknown_0x1C2BC
	pop de
	pop bc

Unknown_0x1C294:
	ld a,c
	and $F0
	ld h,a
	ld a,[$DB55]
	sub h
	jr z,Unknown_0x1C2BB
	rla
	jr nc,Unknown_0x1C2A8
	ld a,c
	add a,$B0
	ld c,a
	jr nc,Unknown_0x1C2A8
	inc b

Unknown_0x1C2A8:
	ld a,h
	ld [$DB55],a
	push bc
	ld bc,$0400

Unknown_0x1C2B0:
	dec bc
	ld a,b
	or c
	jr nz,Unknown_0x1C2B0
	pop bc
	ld a,$0B
	call Unknown_0x1C318

Unknown_0x1C2BB:
	ret

Unknown_0x1C2BC:
	ld [$FF00+$84],a
	ld [$FF00+$80],a
	call Unknown_0x15FC
	push hl
	call Unknown_0x15E3
	ld b,h
	ld c,l
	pop de
	ld a,[$DA22]
	ld l,a
	ld a,[$DA28]
	ld h,a
	jr Unknown_0x1C2E9

Unknown_0x1C2D4:
	ld [$FF00+$84],a
	inc c
	ld a,c
	and $0F
	jr z,Unknown_0x1C2E0
	inc e
	inc e
	jr Unknown_0x1C2E9

Unknown_0x1C2E0:
	ld a,c
	sub $10
	ld c,a
	inc b
	ld a,e
	and $E0
	ld e,a

Unknown_0x1C2E9:
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld a,[bc]
	push bc
	ld c,a
	ld b,$C5
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	pop bc
	ld a,[$FF00+$84]
	dec a
	jr nz,Unknown_0x1C2D4
	ld a,l
	ld [$DA22],a
	ld a,[$DA28]
	ld hl,$DA23
	rra
	jr nc,Unknown_0x1C313
	ld hl,$DA24

Unknown_0x1C313:
	ld a,[$FF00+$80]
	add a,[hl]
	ld [hl],a
	ret

Unknown_0x1C318:
	ld [$FF00+$84],a
	ld [$FF00+$80],a
	call Unknown_0x15FC
	push hl
	call Unknown_0x15E3
	ld b,h
	ld c,l
	pop de
	ld a,[$DA22]
	ld l,a
	ld a,[$DA28]
	ld h,a
	jr Unknown_0x1C34C

Unknown_0x1C330:
	ld [$FF00+$84],a
	ld a,c
	add a,$10
	ld c,a
	jr c,Unknown_0x1C341
	ld a,e
	add a,$40
	ld e,a
	jr nc,Unknown_0x1C34C
	inc d
	jr Unknown_0x1C34C

Unknown_0x1C341:
	ld a,[$DB3D]
	add a,b
	ld b,a
	ld d,$98
	ld a,e
	and $1F
	ld e,a

Unknown_0x1C34C:
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld a,[bc]
	push bc
	ld c,a
	ld b,$C5
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	pop bc
	ld a,[$FF00+$84]
	dec a
	jr nz,Unknown_0x1C330
	ld a,l
	ld [$DA22],a
	ld a,[$DA28]
	ld hl,$DA23
	rra
	jr nc,Unknown_0x1C376
	ld hl,$DA24

Unknown_0x1C376:
	ld a,[$FF00+$80]
	add a,[hl]
	ld [hl],a
	ret

Unknown_0x1C37B:
	push bc
	push de
	push hl
	call Unknown_0x15E3
	ld b,h
	ld c,l
	pop hl
	ld a,[$FF00+$80]
	ld e,a
	jr Unknown_0x1C394

Unknown_0x1C389:
	inc c
	ld a,c
	and $0F
	jr nz,Unknown_0x1C394
	ld a,c
	sub $10
	ld c,a
	inc b

Unknown_0x1C394:
	ld a,[hli]
	ld [bc],a
	dec e
	jr nz,Unknown_0x1C389
	ld a,[$FF00+$80]
	pop de
	pop bc
	jp Unknown_0x1C2BC
	ld hl,$DB51
	ld a,[hli]
	sub $10
	ld c,a
	ld a,[hli]
	ld b,a
	jr nc,Unknown_0x1C3AC
	dec b

Unknown_0x1C3AC:
	ld a,[hli]
	sub $10
	ld e,a
	ld d,[hl]
	jr nc,Unknown_0x1C3B4
	dec d

Unknown_0x1C3B4:
	ld a,$0B

Unknown_0x1C3B6:
	push af
	push bc
	push de
	ld a,$0D
	call Unknown_0x1C41E
	pop hl
	ld de,$0010
	add hl,de
	ld d,h
	ld e,l
	pop bc
	pop af
	dec a
	jr nz,Unknown_0x1C3B6
	ret

Unknown_0x1C3CB:
	ld hl,$DB51
	ld a,[hli]
	sub $10
	ld c,a
	ld a,[hli]
	ld b,a
	jr nc,Unknown_0x1C3D7
	dec b

Unknown_0x1C3D7:
	ld a,[hli]
	sub $10
	ld e,a
	ld d,[hl]
	jr nc,Unknown_0x1C3DF
	dec d

Unknown_0x1C3DF:
	ld a,e
	and $F0
	ld h,a
	ld a,[$DB7E]
	sub h
	jr z,Unknown_0x1C400
	push bc
	push de
	rla
	jr nc,Unknown_0x1C3F5
	ld a,e
	add a,$A0
	ld e,a
	jr nc,Unknown_0x1C3F5
	inc d

Unknown_0x1C3F5:
	ld a,h
	ld [$DB7E],a
	ld a,$0D
	call Unknown_0x1C41E
	pop de
	pop bc

Unknown_0x1C400:
	ld a,c
	and $F0
	ld h,a
	ld a,[$DB7D]
	sub h
	jr z,Unknown_0x1C41D
	rla
	jr nc,Unknown_0x1C414
	ld a,c
	add a,$C0
	ld c,a
	jr nc,Unknown_0x1C414
	inc b

Unknown_0x1C414:
	ld a,h
	ld [$DB7D],a
	ld a,$0B
	call Unknown_0x1C493

Unknown_0x1C41D:
	ret

Unknown_0x1C41E:
	swap a
	ld [$FF00+$80],a
	ld a,[$DB3E]
	dec a
	cp d
	ret c
	ld a,d
	ld [$FF00+$83],a
	ld a,e
	and $F0
	ld e,a
	ld a,c
	and $F0
	ld c,a

Unknown_0x1C433:
	ld a,[$DB3D]
	dec a
	cp b
	jr nc,Unknown_0x1C445
	ld a,[$FF00+$80]
	add a,c
	ret nc
	ld [$FF00+$80],a
	inc b
	ld c,$00
	jr Unknown_0x1C433

Unknown_0x1C445:
	ld a,b
	ld [$FF00+$82],a
	ld hl,$CD35
	ld a,d
	add a,l
	ld l,a
	ld a,b
	rlca
	add a,[hl]
	ld l,a
	ld h,$CD
	ld a,[hli]
	ld d,a
	ld l,[hl]
	ld a,[$FF00+$80]
	add a,c
	ld b,$FF
	jr c,Unknown_0x1C461
	ld b,a
	dec b
	xor a

Unknown_0x1C461:
	ld [$FF00+$80],a
	inc d
	jr Unknown_0x1C480

Unknown_0x1C466:
	ld h,$CB
	ld a,[hl]
	and $F0
	cp e
	jr nz,Unknown_0x1C47F
	ld h,$CA
	ld a,[hl]
	cp c
	jr c,Unknown_0x1C47F
	scf
	sbc a,b
	jr nc,Unknown_0x1C47F
	ld h,$BB
	ld a,[hl]
	or a
	call z,Unknown_0x1C508

Unknown_0x1C47F:
	inc l

Unknown_0x1C480:
	dec d
	jr nz,Unknown_0x1C466
	ld a,[$FF00+$80]
	or a
	ret z
	ld a,[$FF00+$83]
	ld d,a
	ld a,[$FF00+$82]
	ld b,a
	inc b
	ld c,$00
	jp Unknown_0x1C433

Unknown_0x1C493:
	swap a
	ld [$FF00+$80],a
	ld a,[$DB3D]
	dec a
	cp b
	ret c
	ld a,b
	ld [$FF00+$82],a
	ld a,c
	and $F0
	ld c,a
	ld a,e
	and $F0
	ld e,a

Unknown_0x1C4A8:
	ld a,[$DB3E]
	dec a
	cp d
	jr nc,Unknown_0x1C4BA
	ld a,[$FF00+$80]
	add a,e
	ret nc
	ld [$FF00+$80],a
	inc d
	ld e,$00
	jr Unknown_0x1C4A8

Unknown_0x1C4BA:
	ld a,d
	ld [$FF00+$83],a
	ld hl,$CD35
	ld a,d
	add a,l
	ld l,a
	ld a,b
	rlca
	add a,[hl]
	ld l,a
	ld h,$CD
	ld a,[hli]
	ld b,a
	ld l,[hl]
	ld a,[$FF00+$80]
	add a,e
	ld d,$FF
	jr c,Unknown_0x1C4D6
	ld d,a
	dec d
	xor a

Unknown_0x1C4D6:
	ld [$FF00+$80],a
	inc b
	jr Unknown_0x1C4F5

Unknown_0x1C4DB:
	ld h,$CA
	ld a,[hl]
	and $F0
	cp c
	jr nz,Unknown_0x1C4F4
	ld h,$CB
	ld a,[hl]
	cp e
	jr c,Unknown_0x1C4F4
	scf
	sbc a,d
	jr nc,Unknown_0x1C4F4
	ld h,$BB
	ld a,[hl]
	or a
	call z,Unknown_0x1C508

Unknown_0x1C4F4:
	inc l

Unknown_0x1C4F5:
	dec b
	jr nz,Unknown_0x1C4DB
	ld a,[$FF00+$80]
	or a
	ret z
	ld a,[$FF00+$82]
	ld b,a
	ld a,[$FF00+$83]
	ld d,a
	inc d
	ld e,$00
	jp Unknown_0x1C4A8

Unknown_0x1C508:
	push bc
	push de
	push hl
	ld h,$CA
	ld c,[hl]
	ld h,$CB
	ld e,[hl]
	ld a,[$FF00+$82]
	ld b,a
	ld a,[$FF00+$83]
	ld d,a
	ld h,$CC
	ld l,[hl]
	ld h,$7A
	push hl
	ld a,[hl]
	ld hl,$A8B2
	call Unknown_0x07C4
	ld d,h
	pop hl
	ld a,d
	or a
	jr z,Unknown_0x1C580
	inc h
	ld e,$5C
	ld a,[hl]
	swap a
	and $0F
	ld [de],a
	ld e,$5B
	ld a,[hl]
	and $0F
	ld [de],a
	inc h
	ld e,$4C
	ld a,[hl]
	ld [de],a
	inc h
	ld e,$4A
	ld a,[hl]
	ld [de],a
	inc h
	inc e
	ld a,[hl]
	ld [de],a
	ld e,$62
	ld a,$FF
	ld [de],a
	inc h
	ld a,[hl]
	ld bc,$0005
	ld hl,$DB7F
	jr Unknown_0x1C557

Unknown_0x1C556:
	add hl,bc

Unknown_0x1C557:
	cp [hl]
	jr nz,Unknown_0x1C556
	inc hl
	ld e,$46
	ld a,[hli]
	ld [de],a
	ld e,$18
	ld a,[hli]
	ld [de],a
	dec e
	ld a,[hli]
	ld [de],a
	dec e
	ld a,[hl]
	ld [de],a
	ld e,$5E
	ld a,$08
	ld [de],a
	inc e
	ld [de],a
	ld e,$60
	xor a
	ld [de],a
	inc e
	ld [de],a
	pop hl
	ld [hl],$01
	ld e,$49
	ld a,l
	ld [de],a
	pop de
	pop bc
	ret

Unknown_0x1C580:
	pop hl
	pop de
	pop bc
	ret
	ld a,[$DB57]
	ld b,a
	ld hl,$DBCF
	ld d,$BB

Unknown_0x1C58D:
	inc hl

Unknown_0x1C58E:
	ld a,[hli]
	or a
	ret z
	ld a,[hli]
	cp b
	jr nz,Unknown_0x1C58D
	ld a,[hli]
	ld e,a
	ld a,$01
	ld [de],a
	jr Unknown_0x1C58E
	inc e
	ld hl,$DBD0
	ld b,h
	ld c,l

Unknown_0x1C5A2:
	ld a,[hli]
	or a
	jr z,Unknown_0x1C5B7
	cp e
	jr nz,Unknown_0x1C5AD
	inc hl
	inc hl
	jr Unknown_0x1C5A2

Unknown_0x1C5AD:
	ld [bc],a
	inc bc
	ld a,[hli]
	ld [bc],a
	inc bc
	ld a,[hli]
	ld [bc],a
	inc bc
	jr Unknown_0x1C5A2

Unknown_0x1C5B7:
	xor a
	ld [bc],a
	ld a,c
	ld [$DCFD],a
	ld a,b
	ld [$DCFE],a
	ret

UnknownData_0x1C5C2:
INCBIN "baserom.gb", $1C5C2, $1C611 - $1C5C2
	call Unknown_0x0647
	ld e,$45
	ld [de],a
	and $E0
	swap a
	rra
	ld e,$3A
	ld [de],a
	ld hl,$4658
	add a,l
	ld l,a
	jr nc,Unknown_0x1C627
	inc h

Unknown_0x1C627:
	ld a,[hl]
	ld l,a
	rla
	sbc a,a
	ld h,a
	ld e,$07
	ld a,[de]
	add a,l
	ld [de],a
	inc e
	ld a,[de]
	adc a,h
	ld [de],a
	ld e,$3A
	ld a,[de]
	ld hl,$465A
	add a,l
	ld l,a
	jr nc,Unknown_0x1C640
	inc h

Unknown_0x1C640:
	ld a,[hl]
	ld l,a
	rla
	sbc a,a
	ld h,a
	ld e,$04
	ld a,[de]
	add a,l
	ld [de],a
	inc e
	ld a,[de]
	adc a,h
	ld [de],a
	call Unknown_0x1C662
	ld e,$3A
	ld a,[de]
	add a,$0A
	ld [de],a
	ret

UnknownData_0x1C658:
INCBIN "baserom.gb", $1C658, $1C662 - $1C658

Unknown_0x1C662:
	ld e,$3A
	ld a,[de]
	ld hl,$4689
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1C66E
	inc h

Unknown_0x1C66E:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ld e,$3A
	ld a,[de]
	ld hl,$468D
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1C681
	inc h

Unknown_0x1C681:
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x1C689:
INCBIN "baserom.gb", $1C689, $1C6C7 - $1C689
	call Unknown_0x0647
	ld e,$45
	ld [de],a
	and $E0
	swap a
	rra
	ld hl,$46D8
	jp Unknown_0x1C6EC

UnknownData_0x1C6D8:
INCBIN "baserom.gb", $1C6D8, $1C6EC - $1C6D8

Unknown_0x1C6EC:
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1C6F2
	inc h

Unknown_0x1C6F2:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc hl
	inc hl
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

UnknownData_0x1C703:
INCBIN "baserom.gb", $1C703, $1C780 - $1C703
	call Unknown_0x0C91
	jp Unknown_0x0DA4

UnknownData_0x1C786:
INCBIN "baserom.gb", $1C786, $1C804 - $1C786
	ld e,$04
	call Unknown_0x0647
	and $0F
	sub $08
	ld l,a
	rla
	sbc a,a
	ld h,a
	ld a,[de]
	add a,l
	ld [de],a
	inc e
	ld a,[de]
	adc a,h
	ld [de],a
	ld e,$07
	ld a,[de]
	sub $04
	ld [de],a
	inc e
	ld a,[de]
	sbc a,$00
	ld [de],a
	ld e,$39
	call Unknown_0x0647
	and $03
	ld [de],a
	ld e,$3A
	ld a,$01
	ld [de],a
	ld a,[$A083]
	ld e,$46
	ld [de],a
	ret
	call Unknown_0x0DA4
	call Unknown_0x1AB3
	jr z,Unknown_0x1C843
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1C843:
	ld e,$3A
	ld a,[de]
	dec a
	ld [de],a
	ret nz
	ld a,$08
	ld [de],a
	ld e,$39
	ld a,[de]
	inc a
	and $03
	ld [de],a
	ld hl,$4867
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1C85C
	inc h

Unknown_0x1C85C:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld e,$0D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

UnknownData_0x1C867:
INCBIN "baserom.gb", $1C867, $1C88C - $1C867
	ld e,$07
	ld a,[de]
	and $F0
	ld [de],a
	ld a,[$A083]
	ld e,$46
	ld [de],a
	ret

UnknownData_0x1C899:
INCBIN "baserom.gb", $1C899, $1C8C9 - $1C899
	ld e,$3A
	ld a,[de]
	ld hl,$48E4
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1C8D5
	inc h

Unknown_0x1C8D5:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld e,$39
	ld a,[de]
	call Unknown_0x1C6EC
	ld e,$3A
	ld a,[de]
	inc a
	ld [de],a
	ret

UnknownData_0x1C8E4:
INCBIN "baserom.gb", $1C8E4, $1C9B5 - $1C8E4
	call Unknown_0x0C80
	call Unknown_0x0C91
	jp Unknown_0x0DA4

UnknownData_0x1C9BE:
INCBIN "baserom.gb", $1C9BE, $1C9D3 - $1C9BE
	push bc
	ld h,d
	call Unknown_0x0647
	and $1F
	ld e,a
	sub $10
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld l,$07
	ld a,[hl]
	add a,c
	ld [hli],a
	ld a,[hl]
	adc a,b
	ld [hl],a
	call Unknown_0x0647
	and $1F
	sub $10
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld l,$04
	ld a,[hl]
	add a,c
	ld [hli],a
	ld a,[hl]
	adc a,b
	ld [hl],a
	ld a,e
	rra
	rra
	rra
	and $03
	inc b
	ld b,$00
	jr nz,Unknown_0x1CA0B
	ld b,$04
	xor $03

Unknown_0x1CA0B:
	add a,b
	ld hl,$4A14
	call Unknown_0x1C6EC
	pop bc
	ret

UnknownData_0x1CA14:
INCBIN "baserom.gb", $1CA14, $1CA35 - $1CA14
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$39
	ld a,[hl]
	ld e,$15
	ld [de],a
	ld l,$45
	ld e,l
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x1CA45:
INCBIN "baserom.gb", $1CA45, $1CA52 - $1CA45
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$3A
	ld a,[hl]
	ld e,$15
	ld [de],a
	ld l,$45
	ld e,l
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x1CA62:
INCBIN "baserom.gb", $1CA62, $1CA93 - $1CA62
	push bc
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$3D
	ld c,[hl]
	dec l
	ld b,[hl]
	dec l
	push bc
	call Unknown_0x0647
	and $1F
	ld e,a
	ld a,[hl]
	sub $40
	sub $0F
	add a,e
	ld [$FF00+$84],a
	call Unknown_0x291C
	call Unknown_0x28E0
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$0D
	ld a,c
	ld [de],a
	inc e
	ld a,b
	ld [de],a
	pop bc
	ld a,[$FF00+$84]
	call Unknown_0x291E
	call Unknown_0x28E0
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$0F
	ld a,c
	ld [de],a
	inc e
	ld a,b
	ld [de],a
	call Unknown_0x0647
	and $03
	ld e,$27
	ld [de],a
	pop bc
	ret

UnknownData_0x1CADA:
INCBIN "baserom.gb", $1CADA, $1CB84 - $1CADA
	ld hl,$DA06
	ld e,$07
	ld a,[de]
	add a,[hl]
	ld [hli],a
	ld e,$04
	ld a,[de]
	add a,[hl]
	ld [hl],a
	ret

UnknownData_0x1CB92:
INCBIN "baserom.gb", $1CB92, $1CBC4 - $1CB92
	call Unknown_0x0C80
	call Unknown_0x0C91
	jp Unknown_0x0DA4

UnknownData_0x1CBCD:
INCBIN "baserom.gb", $1CBCD, $1CBD3 - $1CBCD
	ld e,$45
	ld a,[de]
	cpl
	ld [de],a
	ret

UnknownData_0x1CBD9:
INCBIN "baserom.gb", $1CBD9, $1CBE3 - $1CBD9

Unknown_0x1CBE3:
INCBIN "baserom.gb", $1CBE3, $1CC16 - $1CBE3
	ld a,[$A083]
	ld e,$46
	ld [de],a
	ret
	call Unknown_0x0DA4
	ld hl,$FFAF
	ld a,$03
	ld [hli],a
	ld a,$00
	ld [hli],a
	ld a,$00
	ld [hli],a
	call Unknown_0x1C88
	jr nc,Unknown_0x1CC39
	ld e,$07
	ld bc,Unknown_0x1CBE3
	jp Unknown_0x0846

Unknown_0x1CC39:
	ret

UnknownData_0x1CC3A:
INCBIN "baserom.gb", $1CC3A, $1CC83 - $1CC3A

Unknown_0x1CC83:
INCBIN "baserom.gb", $1CC83, $1CCDF - $1CC83

Unknown_0x1CCDF:
INCBIN "baserom.gb", $1CCDF, $1CD39 - $1CCDF
	call Unknown_0x0C80
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	call Unknown_0x197F
	jr nc,Unknown_0x1CD50
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$11
	ld [de],a

Unknown_0x1CD50:
	ret

UnknownData_0x1CD51:
INCBIN "baserom.gb", $1CD51, $1CD76 - $1CD51
	call Unknown_0x0DA4
	call Unknown_0x1CD90
	jr nc,Unknown_0x1CD82
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1CD82:
	call Unknown_0x197F
	jr nc,Unknown_0x1CD8F
	ld e,$07
	ld bc,$4C83
	jp Unknown_0x0846

Unknown_0x1CD8F:
	ret

Unknown_0x1CD90:
	call Unknown_0x1AEA
	ld a,$FF
	jr Unknown_0x1CD9D

Unknown_0x1CD97:
	call Unknown_0x1AEA

Unknown_0x1CD9A:
	ld a,[$A05B]

Unknown_0x1CD9D:
	ld [$DF15],a
	call Unknown_0x3B8F
	jr c,Unknown_0x1CDAA
	ld a,[$FF00+$9A]
	ld d,a
	and a
	ret

Unknown_0x1CDAA:
	ld a,[$FF00+$9A]
	ld d,a
	scf
	ret

UnknownData_0x1CDAF:
INCBIN "baserom.gb", $1CDAF, $1CDDE - $1CDAF
	call Unknown_0x0DA4
	call Unknown_0x1CD90
	jr nc,Unknown_0x1CDEA
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1CDEA:
	call Unknown_0x197F
	jr nc,Unknown_0x1CE04
	ld e,$2E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$07
	ld bc,Unknown_0x1CC83
	jp Unknown_0x0846

Unknown_0x1CE04:
	ret

UnknownData_0x1CE05:
INCBIN "baserom.gb", $1CE05, $1CE1E - $1CE05
	ld e,$04
	ld bc,$0030
	call Unknown_0x0D35
	call Unknown_0x0DA4
	call Unknown_0x1CD90
	jr nc,Unknown_0x1CE32
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1CE32:
	call Unknown_0x197F
	jr nc,Unknown_0x1CE4C
	ld e,$2E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$07
	ld bc,$4C83
	jp Unknown_0x0846

Unknown_0x1CE4C:
	ret

UnknownData_0x1CE4D:
INCBIN "baserom.gb", $1CE4D, $1CE85 - $1CE4D
	call Unknown_0x0DA4
	call Unknown_0x1CD90
	call Unknown_0x197F
	jr nc,Unknown_0x1CEA5
	ld e,$26
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$07
	ld bc,Unknown_0x1CC83
	jp Unknown_0x0846

Unknown_0x1CEA5:
	ret

UnknownData_0x1CEA6:
INCBIN "baserom.gb", $1CEA6, $1CF23 - $1CEA6
	push bc
	ld a,[$A070]
	or a
	ld c,$00
	jr z,Unknown_0x1CF2E
	ld c,$03

Unknown_0x1CF2E:
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$39
	ld a,[hl]
	add a,c
	ld hl,$4F66
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1CF3F
	inc h

Unknown_0x1CF3F:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld e,$45
	ld a,[de]
	rla
	jr nc,Unknown_0x1CF56
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x1CF56:
	ld e,$0D
	ld a,c
	ld [de],a
	inc e
	ld a,b
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	pop bc
	ret

UnknownData_0x1CF66:
INCBIN "baserom.gb", $1CF66, $1CF8A - $1CF66
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1CF96
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1CF96:
	call Unknown_0x197F
	jr nc,Unknown_0x1CFA3
	ld e,$07
	ld bc,Unknown_0x1CC83
	jp Unknown_0x0846

Unknown_0x1CFA3:
	ret

UnknownData_0x1CFA4:
INCBIN "baserom.gb", $1CFA4, $1D007 - $1CFA4
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D013
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D013:
	call Unknown_0x197F
	jr nc,Unknown_0x1D020
	ld e,$07
	ld bc,Unknown_0x1CC83
	jp Unknown_0x0846

Unknown_0x1D020:
	ret

UnknownData_0x1D021:
INCBIN "baserom.gb", $1D021, $1D08E - $1D021

Unknown_0x1D08E:
INCBIN "baserom.gb", $1D08E, $1D0B0 - $1D08E
	call Unknown_0x0DA4
	ld hl,$A009
	ld e,l
	ld a,[de]
	sub [hl]
	add a,$08
	cp $10
	jr nc,Unknown_0x1D0DE
	ld l,$0B
	ld e,l
	ld a,[de]
	sub [hl]
	add a,$08
	cp $10
	jr nc,Unknown_0x1D0DE
	ld e,$0E
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	jp Unknown_0x0BBA
	call Unknown_0x0DA4

Unknown_0x1D0DE:
	ld e,$3B
	ld a,[de]
	or a
	ld e,$15
	ld a,[$DA0E]
	jr nz,Unknown_0x1D0EE
	and $06
	rrca
	jr Unknown_0x1D0F2

Unknown_0x1D0EE:
	and $0C
	rrca
	rrca

Unknown_0x1D0F2:
	add a,$03
	ld [de],a
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D0FE
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D0FE:
	call Unknown_0x197F
	jr nc,Unknown_0x1D10B
	ld e,$07
	ld bc,Unknown_0x1D08E
	jp Unknown_0x0846

Unknown_0x1D10B:
	ret
	call Unknown_0x0C91
	call Unknown_0x0C94
	call Unknown_0x0DA4
	ld e,$15
	ld a,[$DA0E]
	and $0C
	rrca
	rrca
	add a,$03
	ld [de],a
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D12A
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D12A:
	ret

UnknownData_0x1D12B:
INCBIN "baserom.gb", $1D12B, $1D16B - $1D12B

Unknown_0x1D16B:
INCBIN "baserom.gb", $1D16B, $1D16C - $1D16B
	push bc
	ld h,d
	ld l,$45
	ld a,[hl]
	rla
	ld a,$E0
	ld bc,$000A
	jr nc,Unknown_0x1D17E
	ld a,$20
	ld bc,$FFF6

Unknown_0x1D17E:
	ld l,$11
	ld [hl],a
	ld l,$3B
	ld a,$80
	ld [hli],a
	ld [hl],c
	inc l
	ld [hl],b
	inc l
	ld a,$80
	ld [hli],a
	ld a,$F8
	ld [hli],a
	ld [hl],$FF
	pop bc
	ret
	call Unknown_0x1D1C0
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	call Unknown_0x1D1CE
	call Unknown_0x1CD97
	ld hl,$A009
	ld e,l
	ld a,[de]
	sub [hl]
	add a,$08
	cp $10
	jr nc,Unknown_0x1D1BF
	ld a,$01
	ld [$A07C],a
	ld e,$07
	ld bc,Unknown_0x1D16B
	jp Unknown_0x0846

Unknown_0x1D1BF:
	ret

Unknown_0x1D1C0:
	ld e,$03
	ld h,d
	ld l,$3B
	ld c,$06

Unknown_0x1D1C7:
	ld a,[hli]
	ld [de],a
	inc e
	dec c
	jr nz,Unknown_0x1D1C7
	ret

Unknown_0x1D1CE:
	ld hl,$A003
	ld e,$3B
	ld b,d
	ld c,l
	ld a,[bc]
	ld [de],a
	add a,[hl]
	ld [bc],a
	inc e
	inc l
	inc c
	ld a,[bc]
	ld [de],a
	adc a,[hl]
	ld [bc],a
	inc e
	inc l
	inc c
	ld a,[bc]
	ld [de],a
	adc a,[hl]
	ld [bc],a
	inc e
	inc l
	inc c
	ld a,[bc]
	ld [de],a
	add a,[hl]
	ld [bc],a
	inc e
	inc l
	inc c
	ld a,[bc]
	ld [de],a
	adc a,[hl]
	ld [bc],a
	inc e
	inc l
	inc c
	ld a,[bc]
	ld [de],a
	adc a,[hl]
	ld [bc],a
	ret

UnknownData_0x1D1FD:
INCBIN "baserom.gb", $1D1FD, $1D23C - $1D1FD
	call Unknown_0x1D1C0
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	jp Unknown_0x1D1CE

UnknownData_0x1D24B:
INCBIN "baserom.gb", $1D24B, $1D272 - $1D24B
	call Unknown_0x0DA4
	ld e,$15
	ld a,[de]
	cp $07
	jr nc,Unknown_0x1D285
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D2A8

Unknown_0x1D281:
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D285:
	ld h,d
	ld bc,$0000
	ld de,$FFF9
	call Unknown_0x1AD9
	call Unknown_0x1CD9A
	push af
	ld h,d
	ld bc,$0000
	ld de,$0007
	call Unknown_0x1AD9
	call Unknown_0x1CD9A
	jr nc,Unknown_0x1D2A5
	pop af
	jr Unknown_0x1D281

Unknown_0x1D2A5:
	pop af
	jr c,Unknown_0x1D281

Unknown_0x1D2A8:
	ret

UnknownData_0x1D2A9:
INCBIN "baserom.gb", $1D2A9, $1D2F7 - $1D2A9
	call Unknown_0x0C91
	call Unknown_0x0C80
	call Unknown_0x0C83
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D30C
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D30C:
	call Unknown_0x197F
	jr nc,Unknown_0x1D319
	ld e,$07
	ld bc,Unknown_0x1CC83
	jp Unknown_0x0846

Unknown_0x1D319:
	call Unknown_0x1AB3
	jr nz,Unknown_0x1D32B
	ld e,$3C
	ld a,[de]
	inc a
	ld [de],a
	cp $10
	jr c,Unknown_0x1D32B
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D32B:
	ret

UnknownData_0x1D32C:
INCBIN "baserom.gb", $1D32C, $1D351 - $1D32C
	ld a,[$A070]
	ld e,$27
	ld [de],a
	ret
	push bc
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$39
	ld b,[hl]
	ld e,$45
	ld a,[de]
	rla
	ld hl,$5387
	jr nc,Unknown_0x1D36C
	ld hl,$53A7

Unknown_0x1D36C:
	ld a,b
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1D373
	inc h

Unknown_0x1D373:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld bc,$000E
	add hl,bc
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	pop bc
	ret

UnknownData_0x1D387:
INCBIN "baserom.gb", $1D387, $1D3C7 - $1D387
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D3D3
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D3D3:
	ret

UnknownData_0x1D3D4:
INCBIN "baserom.gb", $1D3D4, $1D3E5 - $1D3D4
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D3F5

Unknown_0x1D3ED:
	ld e,$07
	ld bc,Unknown_0x1CC83
	jp Unknown_0x0846

Unknown_0x1D3F5:
	call Unknown_0x197F
	jr nc,Unknown_0x1D402
	ld e,$07
	ld bc,Unknown_0x1CCDF
	jp Unknown_0x0846

Unknown_0x1D402:
	ld a,[$FF00+$A6]
	bit 1,a
	jr nz,Unknown_0x1D3ED
	ret

UnknownData_0x1D409:
INCBIN "baserom.gb", $1D409, $1D449 - $1D409

Unknown_0x1D449:
INCBIN "baserom.gb", $1D449, $1D45B - $1D449

Unknown_0x1D45B:
INCBIN "baserom.gb", $1D45B, $1D45C - $1D45B
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D468
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D468:
	call Unknown_0x197F
	jr nc,Unknown_0x1D475
	ld e,$07
	ld bc,Unknown_0x1D449
	jp Unknown_0x0846

Unknown_0x1D475:
	ld e,$3B
	ld a,[de]
	dec a
	jr nz,Unknown_0x1D47F
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D47F:
	ld [de],a
	call Unknown_0x1AB3
	jr nz,Unknown_0x1D48D
	ld e,$07
	ld bc,Unknown_0x1D45B
	jp Unknown_0x0846

Unknown_0x1D48D:
	ret
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D49A
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D49A:
	ret

UnknownData_0x1D49B:
INCBIN "baserom.gb", $1D49B, $1D4AC - $1D49B
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D4B8
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D4B8:
	call Unknown_0x197F
	jr nc,Unknown_0x1D4C5
	ld e,$07
	ld bc,Unknown_0x1CC83
	jp Unknown_0x0846

Unknown_0x1D4C5:
	ret

UnknownData_0x1D4C6:
INCBIN "baserom.gb", $1D4C6, $1D4DF - $1D4C6
	push bc
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$15
	ld a,[hl]
	dec a
	ld l,$45
	bit 7,[hl]
	jr z,Unknown_0x1D4F2
	sub $05
	cpl
	inc a

Unknown_0x1D4F2:
	ld [$FF00+$84],a
	ld hl,$5541
	add a,l
	ld l,a
	jr nc,Unknown_0x1D4FC
	inc h

Unknown_0x1D4FC:
	ld a,[hl]
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
	ld a,[$FF00+$84]
	ld hl,$5547
	add a,l
	ld l,a
	jr nc,Unknown_0x1D514
	inc h

Unknown_0x1D514:
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
	ld a,[$FF00+$84]
	ld hl,$554D
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1D52D
	inc h

Unknown_0x1D52D:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld bc,$000A
	add hl,bc
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	pop bc
	ret

UnknownData_0x1D541:
INCBIN "baserom.gb", $1D541, $1D565 - $1D541
	call Unknown_0x0DA4
	call Unknown_0x1CD97
	jr nc,Unknown_0x1D571
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D571:
	call Unknown_0x197F
	jr nc,Unknown_0x1D57E
	ld e,$07
	ld bc,Unknown_0x1CC83
	jp Unknown_0x0846

Unknown_0x1D57E:
	call Unknown_0x1AB3
	jr nz,Unknown_0x1D58B
	ld e,$07
	ld bc,$54DE
	jp Unknown_0x0846

Unknown_0x1D58B:
	ret

UnknownData_0x1D58C:
INCBIN "baserom.gb", $1D58C, $1D5B4 - $1D58C
	ld e,$3B
	ld a,[de]
	inc a
	ld [de],a
	and $02
	jr z,Unknown_0x1D5BF
	ld a,$10

Unknown_0x1D5BF:
	ld e,$47
	ld [de],a
	call Unknown_0x0C80
	call Unknown_0x0DA4
	call Unknown_0x1CD90
	jr nc,Unknown_0x1D5D1
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x1D5D1:
	ret

UnknownData_0x1D5D2:
INCBIN "baserom.gb", $1D5D2, $1D623 - $1D5D2
	call Unknown_0x0C80
	jp Unknown_0x0DA4

UnknownData_0x1D629:
INCBIN "baserom.gb", $1D629, $1D7BC - $1D629
UnknownForeignCall_0x1D7BC:
	ld de,$D700
	ld hl,$0000
	jr Unknown_0x1D7CF

Unknown_0x1D7C4:
	ld a,e
	add a,a
	ld c,a
	ld a,$00
	adc a,$00
	ld b,a
	inc bc
	add hl,bc
	inc e

Unknown_0x1D7CF:
	ld a,h
	ld [de],a
	inc d
	ld a,l
	ld [de],a
	dec d
	ld a,e
	inc a
	jr nz,Unknown_0x1D7C4
	ret

UnknownData_0x1D7DA:
INCBIN "baserom.gb", $1D7DA, $1D7DC - $1D7DA

Unknown_0x1D7DC:
INCBIN "baserom.gb", $1D7DC, $1DA1C - $1D7DC
	push de
	ld hl,$CD4D
	ld [hl],$00
	inc l
	ld a,[$DD30]
	ld [hli],a
	ld a,[$DD31]
	ld [hli],a
	ld [hl],$00
	inc l
	ld [hl],$CF
	ld a,[$DD2F]
	ld l,a
	ld h,$00
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	add hl,hl
	ld de,$5629
	add hl,de
	inc hl
	inc hl
	inc hl
	ld a,[hli]
	ld [$DD52],a
	ld a,[hli]
	ld [$DD53],a
	ld a,[hl]
	ld [$DD37],a
	ld a,$01
	ld [$DD58],a
	ld hl,$DD57
	ld a,$2B
	ld [hld],a
	ld [hl],$2C
	ld hl,$DD35
	ld a,$4E
	ld [hli],a
	ld [hl],$DD
	ld hl,$DA14
	ld a,$51
	ld [hli],a
	ld [hl],$2B
	ld hl,$DA16
	ld a,$51
	ld [hli],a
	ld [hl],$2B
	ld a,$50
	ld [$FF00+$45],a
	ld [$DA29],a
	pop de
	ret
	ld hl,$DEDB
	xor a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld hl,$DEE0
	ld [hl],a
	ld hl,$DEE1
	ld [hl],a
	ld hl,$DEE9
	ld [hl],a
	ld hl,$DEEA
	ld [hl],a
	ld hl,$DEE3
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld a,$05
	ld hl,$DEEB
	ld [hl],a
	ld hl,$DEEC
	ld [hl],a
	ret
	ld hl,$DA29
	ld a,b
	ld [hli],a
	ld [$FF00+$45],a
	ld a,c
	ld [hl],a
	ld hl,$DA16
	ld a,$E0
	ld [hli],a
	ld [hl],$02
	ld a,$01
	ld [$DA2B],a
	ld hl,$FF41
	set 6,[hl]
	ld hl,$8FF0
	ld bc,$0010
	ld a,$FF
	call LoadByteToRamInit
	ld hl,$9C00
	ld bc,$0400
	ld a,$FF
	call LoadByteToRamInit
	ld a,$47
	ld [$FF00+$40],a
	ret
	xor a
	ld [$DA2B],a
	ld hl,$DA16
	ld a,$AA
	ld [hli],a
	ld [hl],$02
	ld hl,$DA14
	ld a,$AA
	ld [hli],a
	ld [hl],$02
	ld a,$7F
	ld [$FF00+$45],a
	ld [$DA29],a
	xor a
	ld hl,$FF42
	ld [hli],a
	ld [hl],a
	ld [$DA01],a
	ld [$DA00],a
	ld a,$47
	ld [$FF00+$40],a
	ret
	ld hl,$DA29
	ld a,b
	ld [hl],a
	ld [$FF00+$45],a
	ld hl,$DA16
	ld a,$0C
	ld [hli],a
	ld [hl],$03
	ld hl,$FF41
	set 6,[hl]
	ret
	ld a,$67
	ld [$FF00+$40],a
	ld a,$58
	ld [$FF00+$4A],a
	ld a,$07
	ld [$FF00+$4B],a
	ret
	ld hl,$DA14
	ld a,$AA
	ld [hli],a
	ld [hl],$02
	ld hl,$DA16
	ld a,$AA
	ld [hli],a
	ld [hl],$02
	ld a,$7F
	ld [$FF00+$45],a
	ld [$DA29],a
	ld c,$14
	ld de,Unknown_0x1DB5D
	ld hl,$9C00

Unknown_0x1DB47:
	ld a,[de]
	inc de
	ld [hli],a
	dec c
	jr nz,Unknown_0x1DB47
	ld hl,$9C20

Unknown_0x1DB50:
	ld a,[de]
	inc de
	ld [hli],a
	dec c
	jr nz,Unknown_0x1DB50
	ld hl,$DEDE
	xor a
	ld [hli],a
	ld [hl],a
	ret

Unknown_0x1DB5D:
INCBIN "baserom.gb", $1DB5D, $1DB85 - $1DB5D

Unknown_0x1DB85:
	ld hl,$DEDE
	ld b,[hl]
	bit 7,b
	jp nz,Unknown_0x1DBBA
	bit 1,b
	call nz,Unknown_0x1DCC6
	bit 2,b
	call nz,Unknown_0x1DE92
	bit 3,b
	call nz,Unknown_0x1DEC8
	bit 5,b
	call nz,Unknown_0x1DE06
	bit 6,b
	call nz,Unknown_0x1DE6A
	ld hl,$DEDF
	bit 0,[hl]
	jr nz,Unknown_0x1DBB4
	bit 0,b
	call nz,Unknown_0x1DC6D
	ret

Unknown_0x1DBB4:
	bit 4,b
	call nz,Unknown_0x1DF13
	ret

Unknown_0x1DBBA:
	ld hl,$DEE9
	ld a,[hl]
	and a
	jr z,Unknown_0x1DBC4
	dec a
	ld [hl],a
	ret

Unknown_0x1DBC4:
	ld de,$DEE6
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	inc e
	ld a,[de]
	jp CallForeignBankNoInturrupts

UnknownData_0x1DBD1:
INCBIN "baserom.gb", $1DBD1, $1DBD2 - $1DBD1

Unknown_0x1DBD2:
	ld hl,$DEDF
	bit 0,[hl]
	call nz,Unknown_0x1DC12
	ld hl,$DEDF
	bit 1,[hl]
	jr nz,Unknown_0x1DBE9
	ld de,$A04C
	ld hl,$DEE3
	jr Unknown_0x1DBEF

Unknown_0x1DBE9:
	ld de,$A072
	ld hl,$DEE5

Unknown_0x1DBEF:
	ld a,[de]
	cp [hl]
	ret z
	jr nc,Unknown_0x1DC01
	ld a,[de]
	ld [hl],a
	ld hl,$DEEB
	xor a
	ld [hl],a
	ld hl,$DEDE
	set 1,[hl]
	ret

Unknown_0x1DC01:
	ld hl,$DEEB
	ld a,[hl]
	and a
	jr z,Unknown_0x1DC0B
	dec a
	ld [hl],a
	ret

Unknown_0x1DC0B:
	ld a,$05
	ld [hl],a
	call Unknown_0x1DD36
	ret

Unknown_0x1DC12:
	call Unknown_0x1DC39
	ld hl,$DEE4
	cp [hl]
	ret z
	jr nc,Unknown_0x1DC28
	ld [hl],a
	ld hl,$DEEC
	xor a
	ld [hl],a
	ld hl,$DEDE
	set 4,[hl]
	ret

Unknown_0x1DC28:
	ld hl,$DEEC
	ld a,[hl]
	and a
	jr z,Unknown_0x1DC32
	dec a
	ld [hl],a
	ret

Unknown_0x1DC32:
	ld a,$05
	ld [hl],a
	call Unknown_0x1DDBB
	ret

Unknown_0x1DC39:
	push bc
	push hl
	xor a
	ld b,a
	ld d,a
	ld hl,$A085
	ld a,[hl]
	add a,a
	jr nc,Unknown_0x1DC46
	inc b

Unknown_0x1DC46:
	add a,a
	rl b
	ld l,a
	ld h,b
	add a,a
	rl b
	add a,l
	ld c,a
	ld a,b
	adc a,h
	ld b,a
	ld hl,$A086
	ld e,[hl]
	ld a,c

Unknown_0x1DC58:
	ld c,a
	sub e
	jr nc,Unknown_0x1DC61
	dec b
	bit 7,b
	jr nz,Unknown_0x1DC64

Unknown_0x1DC61:
	inc d
	jr Unknown_0x1DC58

Unknown_0x1DC64:
	ld a,c
	and a
	ld a,d
	jr z,Unknown_0x1DC6A
	inc a

Unknown_0x1DC6A:
	pop hl
	pop bc
	ret

Unknown_0x1DC6D:
	ld a,$07
	call Unknown_0x0675
	ret c
	push bc
	ld de,$9C21
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$07
	inc l
	ld c,$70
	ld de,$DEDB
	ld a,[de]
	ld b,a
	inc de
	ld b,a
	swap a
	and $0F
	add a,c
	ld [hl],a
	inc l
	ld a,b
	and $0F
	add a,c
	ld [hl],a
	inc l
	ld a,[de]
	inc de
	ld b,a
	swap a
	and $0F
	add a,c
	ld [hl],a
	inc l
	ld a,b
	and $0F
	add a,c
	ld [hl],a
	inc l
	ld a,[de]
	ld b,a
	swap a
	and $0F
	add a,c
	ld [hl],a
	inc l
	ld a,b
	and $0F
	add a,c
	ld [hl],a
	inc l
	ld a,c
	ld [hl],a
	inc l
	ld a,l
	ld [$FF00+$92],a
	pop bc
	ld hl,$DEDE
	res 0,b
	ld [hl],b
	ret

Unknown_0x1DCC6:
	ld a,$07
	call Unknown_0x0675
	ret c
	ld de,$9C01
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$07
	inc l
	ld [hl],$7B
	inc l
	ld de,$DEDF
	ld a,[de]
	bit 1,a
	jr nz,Unknown_0x1DD13
	ld de,$A04C
	ld a,[de]
	ld d,$06

Unknown_0x1DCEC:
	and a
	jr z,Unknown_0x1DCFF
	sub $02
	jr c,Unknown_0x1DCFB
	ld [hl],$64
	inc l
	dec d
	jr nz,Unknown_0x1DCEC
	jr Unknown_0x1DD09

Unknown_0x1DCFB:
	dec d
	ld [hl],$6E
	inc l

Unknown_0x1DCFF:
	ld a,d
	and a
	jr z,Unknown_0x1DD09
	ld [hl],$63
	inc l
	dec d
	jr nz,Unknown_0x1DCFF

Unknown_0x1DD09:
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DEDE
	res 1,b
	ld [hl],b
	ret

Unknown_0x1DD13:
	ld a,[$A072]
	ld d,$06
	and a
	jr z,Unknown_0x1DD22

Unknown_0x1DD1B:
	ld [hl],$64
	inc l
	dec d
	dec a
	jr nz,Unknown_0x1DD1B

Unknown_0x1DD22:
	ld a,d
	and a
	jr z,Unknown_0x1DD2C

Unknown_0x1DD26:
	ld [hl],$63
	inc l
	dec d
	jr nz,Unknown_0x1DD26

Unknown_0x1DD2C:
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DEDE
	res 1,b
	ld [hl],b
	ret

Unknown_0x1DD36:
	ld a,$07
	call Unknown_0x0675
	jr nc,Unknown_0x1DD43
	ld hl,$DEEB
	ld [hl],$00
	ret

Unknown_0x1DD43:
	ld de,$9C01
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$07
	inc l
	ld [hl],$7B
	inc l
	ld de,$DEDF
	ld a,[de]
	bit 1,a
	jr nz,Unknown_0x1DD91
	ld de,$DEE3
	ld a,[de]
	inc a
	inc a
	ld [de],a
	ld d,$06

Unknown_0x1DD66:
	and a
	jr z,Unknown_0x1DD79
	sub $02
	jr c,Unknown_0x1DD75
	ld [hl],$64
	inc l
	dec d
	jr nz,Unknown_0x1DD66
	jr Unknown_0x1DD83

Unknown_0x1DD75:
	dec d
	ld [hl],$6E
	inc l

Unknown_0x1DD79:
	ld a,d
	and a
	jr z,Unknown_0x1DD83
	ld [hl],$63
	inc l
	dec d
	jr nz,Unknown_0x1DD79

Unknown_0x1DD83:
	ld a,l
	ld [$FF00+$92],a
	ld e,$12
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ret

Unknown_0x1DD91:
	ld de,$DEE5
	ld a,[de]
	inc a
	ld [de],a
	ld d,$06

Unknown_0x1DD99:
	and a
	jr z,Unknown_0x1DDA3
	ld [hl],$64
	inc l
	dec a
	dec d
	jr nz,Unknown_0x1DD99

Unknown_0x1DDA3:
	ld a,d
	and a
	jr z,Unknown_0x1DDAD
	ld [hl],$63
	inc l
	dec d
	jr nz,Unknown_0x1DDA3

Unknown_0x1DDAD:
	ld a,l
	ld [$FF00+$92],a
	ld e,$12
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ret

Unknown_0x1DDBB:
	ld a,$07
	call Unknown_0x0675
	ret c
	ld de,$9C21
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$07
	inc l
	ld [hl],$7A
	inc l
	ld de,$DEE4
	ld a,[de]
	inc a
	ld [de],a
	ld d,$06

Unknown_0x1DDDB:
	and a
	jr z,Unknown_0x1DDEE
	sub $02
	jr c,Unknown_0x1DDEA
	ld [hl],$6F
	inc l
	dec d
	jr nz,Unknown_0x1DDDB
	jr Unknown_0x1DDF8

Unknown_0x1DDEA:
	dec d
	ld [hl],$6E
	inc l

Unknown_0x1DDEE:
	ld a,d
	and a
	jr z,Unknown_0x1DDF8
	ld [hl],$6D
	inc l
	dec d
	jr nz,Unknown_0x1DDEE

Unknown_0x1DDF8:
	ld a,l
	ld [$FF00+$92],a
	ld e,$12
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ret

Unknown_0x1DE06:
	ld a,$07
	call Unknown_0x0675
	ret c
	ld de,$9C09
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$07
	inc l
	ld de,$DEE1
	ld a,[de]
	and a
	jr z,Unknown_0x1DE4B
	ld [hl],$68
	inc l
	dec a
	jr z,Unknown_0x1DE4E
	ld [hl],$68
	inc l
	dec a
	jr z,Unknown_0x1DE51
	ld [hl],$68
	inc l
	dec a
	jr z,Unknown_0x1DE54
	ld [hl],$68
	inc l
	dec a
	jr z,Unknown_0x1DE57
	ld [hl],$68
	inc l
	dec a
	jr z,Unknown_0x1DE5A
	ld [hl],$68
	inc l
	dec a
	jr z,Unknown_0x1DE5D
	ld [hl],$68
	inc l
	jr Unknown_0x1DE60

Unknown_0x1DE4B:
	ld [hl],$67
	inc l

Unknown_0x1DE4E:
	ld [hl],$67
	inc l

Unknown_0x1DE51:
	ld [hl],$67
	inc l

Unknown_0x1DE54:
	ld [hl],$67
	inc l

Unknown_0x1DE57:
	ld [hl],$67
	inc l

Unknown_0x1DE5A:
	ld [hl],$67
	inc l

Unknown_0x1DE5D:
	ld [hl],$67
	inc l

Unknown_0x1DE60:
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DEDE
	res 5,b
	ld [hl],b
	ret

Unknown_0x1DE6A:
	ld a,$01
	call Unknown_0x0675
	ret c
	ld de,$9C2F
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$01
	inc l
	ld a,[$DB60]
	inc a
	ld e,$70
	add a,e
	ld [hl],a
	inc l
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DEDE
	res 6,b
	ld [hl],b
	ret

Unknown_0x1DE92:
	ld a,$03
	call Unknown_0x0675
	ret c
	ld de,$9C29
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$03
	inc l
	ld [hl],$7C
	inc l
	ld de,$A084
	ld a,[de]
	ld d,$70
	ld e,a
	swap a
	and $0F
	add a,d
	ld [hl],a
	inc l
	ld a,e
	and $0F
	add a,d
	ld [hl],a
	inc l
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DEDE
	res 2,b
	ld [hl],b
	ret

Unknown_0x1DEC8:
	ld a,$40
	call Unknown_0x0675
	ret c
	push bc
	ld de,$9690
	ld a,[$FF00+$92]
	ld c,a
	ld b,$C4
	ld a,e
	ld [bc],a
	inc c
	ld a,d
	ld [bc],a
	inc c
	ld a,$40
	ld [bc],a
	inc c
	ld de,$DEE0
	ld a,[de]
	swap a
	ld l,a
	and $0F
	ld h,a
	ld a,l
	and $F0
	ld l,a
	sla l
	rl h
	sla l
	rl h
	ld a,$07
	call ChangeBankNoInturrupts
	ld de,$57DC
	add hl,de
	ld d,$40

Unknown_0x1DF02:
	ld a,[hli]
	ld [bc],a
	inc c
	dec d
	jr nz,Unknown_0x1DF02
	ld a,c
	ld [$FF00+$92],a
	pop bc
	ld hl,$DEDE
	res 3,b
	ld [hl],b
	ret

Unknown_0x1DF13:
	ld a,$07
	call Unknown_0x0675
	ret c
	ld de,$9C21
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$07
	inc l
	ld [hl],$7A
	inc l
	call Unknown_0x1DC39
	ld d,$06

Unknown_0x1DF30:
	and a
	jr z,Unknown_0x1DF43
	sub $02
	jr c,Unknown_0x1DF3F
	ld [hl],$6F
	inc l
	dec d
	jr nz,Unknown_0x1DF30
	jr Unknown_0x1DF4D

Unknown_0x1DF3F:
	dec d
	ld [hl],$6E
	inc l

Unknown_0x1DF43:
	ld a,d
	and a
	jr z,Unknown_0x1DF4D
	ld [hl],$6D
	inc l
	dec d
	jr nz,Unknown_0x1DF43

Unknown_0x1DF4D:
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DEDE
	res 4,b
	ld [hl],b
	ret
	ld hl,$DEEA
	ld [hl],$04
	ld a,$07
	call Unknown_0x0675
	ret c
	ld de,$9C09
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$07
	inc l
	ld [hl],$68
	inc l
	ld [hl],$68
	inc l
	ld [hl],$68
	inc l
	ld [hl],$68
	inc l
	ld [hl],$68
	inc l
	ld [hl],$68
	inc l
	ld [hl],$68
	inc l
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DEE9
	ld [hl],$14
	ld hl,$DEE6
	ld [hl],$9A
	inc hl
	ld [hl],$5F
	inc hl
	ld [hl],$07
	ret
	ld a,$07
	call Unknown_0x0675
	ret c
	ld de,$9C09
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$07
	inc l
	ld [hl],$67
	inc l
	ld [hl],$67
	inc l
	ld [hl],$67
	inc l
	ld [hl],$67
	inc l
	ld [hl],$67
	inc l
	ld [hl],$67
	inc l
	ld [hl],$67
	inc l
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DEEA
	ld a,[hl]
	and a
	jp z,Unknown_0x1DFE2
	dec a
	ld [hl],a
	ld hl,$DEE9
	ld [hl],$0A
	ld hl,$DEE6
	ld [hl],$5C
	inc hl
	ld [hl],$5F
	inc hl
	ld [hl],$07
	ret

Unknown_0x1DFE2:
	ld hl,$DEDE
	res 7,[hl]
	xor a
	ld hl,$DEE9
	ld [hli],a
	ld [hl],a
	ret
	ld hl,$DF00
	ld a,$3E
	ld [hli],a
	ld [hl],$06
	ld hl,Unknown_0x1E107
	ld de,$8000
	call StoreDEToRAM
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call LoadDataToRamInit
	ld hl,Unknown_0x1E97D
	ld de,$9800
	call StoreDEToRAM
	ld a,$0B
	ld hl,Unknown_0x1E8A0
	ld de,$8000
	call Unknown_0x060D
	ld a,$09
	ld hl,$4000
	ld de,$8100
	ld bc,$0280
	call Unknown_0x05BF
	ld a,$09
	ld hl,$4280
	ld de,$8380
	ld bc,$0220
	call Unknown_0x05BF
	ld hl,$4000
	ld a,$08
	call CallForeignBankNoInturrupts
	ld a,$F8
	ld hl,$A0B3
	call Unknown_0x07C4
	xor a
	ld [$DF02],a
	ld hl,$CD09
	ld a,$E4
	ld [hli],a
	ld a,$D0
	ld [hli],a
	ld a,$E4
	ld [hl],a
	ld e,$FF
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld e,$06
	ld hl,$4232
	ld a,$1F
	call CallForeignBankNoInturrupts
	call Unknown_0x1584
	ld a,$47
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld e,$08
	ld hl,$6011
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld de,$0004
	ld hl,$4246
	ld a,$1A
	call CallForeignBankNoInturrupts
	ld e,$06
	ld hl,$606D
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,$20

Unknown_0x1E09A:
	push af
	call Unknown_0x0496
	ld hl,$086B
	ld a,$00
	call CallForeignBankNoInturrupts
	call Unknown_0x04AE
	call Unknown_0x0343
	call Unknown_0x0357
	pop af
	dec a
	jr nz,Unknown_0x1E09A

Unknown_0x1E0B3:
	call Unknown_0x0496
	ld hl,$086B
	ld a,$00
	call CallForeignBankNoInturrupts
	call Unknown_0x0647
	call Unknown_0x04AE
	call Unknown_0x0343
	call Unknown_0x0357
	ld a,[$DF02]
	or a
	jr nz,Unknown_0x1E0E8
	ld hl,$DF00
	ld a,[hl]
	sub $01
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hld],a
	or [hl]
	jr nz,Unknown_0x1E0B3
	ld hl,$5E92
	ld a,$08
	call CallForeignBankNoInturrupts
	jr Unknown_0x1E0EF

Unknown_0x1E0E8:
	xor a
	ld [$DEFF],a
	jp Unknown_0x0437

Unknown_0x1E0EF:
	ld e,$00
	ld hl,$606D
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld de,$0004
	ld hl,$427B
	ld a,$1A
	call CallForeignBankNoInturrupts
	jp Unknown_0x0437

Unknown_0x1E107:
INCBIN "baserom.gb", $1E107, $1E8A0 - $1E107

Unknown_0x1E8A0:
INCBIN "baserom.gb", $1E8A0, $1E97D - $1E8A0

Unknown_0x1E97D:
INCBIN "baserom.gb", $1E97D, $1EB00 - $1E97D
	ld e,$39
	ld a,[de]
	inc a
	cp $03
	jr c,Unknown_0x1EB09
	xor a

Unknown_0x1EB09:
	ld [de],a
	ret
	ld hl,Unknown_0x1FEA8
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x378B
	call Unknown_0x37A8
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x1EB2D
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x1EB2D
	ld e,$07
	ld bc,$6AEF
	jp Unknown_0x37F4

Unknown_0x1EB2D:
	jp Unknown_0x37F7

UnknownData_0x1EB30:
INCBIN "baserom.gb", $1EB30, $1EB5D - $1EB30
	ld hl,Unknown_0x1FEA8
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x378B
	call Unknown_0x37A8
	ld e,$15
	ld a,[de]
	cp $01
	jr nz,Unknown_0x1EB7D
	ld a,$08
	ld hl,Unknown_0x1EB94
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0x1EB7D:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x1EB91
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x1EB91
	ld e,$07
	ld bc,$6B4F
	jp Unknown_0x37F4

Unknown_0x1EB91:
	jp Unknown_0x37F7

Unknown_0x1EB94:
INCBIN "baserom.gb", $1EB94, $1EBC2 - $1EB94
	ld e,$39
	ld a,[de]
	inc a
	ld [de],a
	ret
	ld hl,Unknown_0x1FEA8
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

UnknownData_0x1EBD9:
INCBIN "baserom.gb", $1EBD9, $1EBFA - $1EBD9
	ld e,$39
	ld a,[de]
	inc a
	cp $0B
	jr c,Unknown_0x1EC04
	ld a,$02

Unknown_0x1EC04:
	ld [de],a
	ret

UnknownData_0x1EC06:
INCBIN "baserom.gb", $1EC06, $1EC14 - $1EC06
	ld hl,Unknown_0x1FEA8
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x378B
	call Unknown_0x37A8
	ld e,$15
	ld a,[de]
	cp $01
	jr nz,Unknown_0x1EC34
	ld a,$02
	ld hl,Unknown_0x1EC52
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0x1EC34:
	ld e,$3A
	ld a,[de]
	dec a
	jr nz,Unknown_0x1EC4E
	ld a,[$A070]
	or a
	jr nz,Unknown_0x1EC46
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x1EC4F

Unknown_0x1EC46:
	ld e,$07
	ld bc,$6C06
	jp Unknown_0x37F4

Unknown_0x1EC4E:
	ld [de],a

Unknown_0x1EC4F:
	jp Unknown_0x37F7

Unknown_0x1EC52:
INCBIN "baserom.gb", $1EC52, $1EC77 - $1EC52
	ld hl,$7EE2
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x1EC88
	call Unknown_0x37A8
	jp Unknown_0x37F7

Unknown_0x1EC88:
	call Unknown_0x378B
	ret nc
	ld e,$3F
	xor a
	ld [de],a
	scf
	ret

UnknownData_0x1EC92:
INCBIN "baserom.gb", $1EC92, $1ECA6 - $1EC92
	ld hl,$7EE2
	ld a,$02
	call CallForeignBankNoInturrupts
	ld hl,$581E
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x3765
	jr nc,Unknown_0x1ECC3
	ld e,$02
	ld bc,$60A3
	jp Unknown_0x37F4

Unknown_0x1ECC3:
	call Unknown_0x377C
	jr nc,Unknown_0x1ECD0
	ld e,$02
	ld bc,$619E
	jp Unknown_0x37F4

Unknown_0x1ECD0:
	jp Unknown_0x37F7

UnknownData_0x1ECD3:
INCBIN "baserom.gb", $1ECD3, $1ED18 - $1ECD3

Unknown_0x1ED18:
INCBIN "baserom.gb", $1ED18, $1ED20 - $1ED18
	ld hl,$7EE2
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x1EC88
	call Unknown_0x37A8
	ld e,$15
	ld a,[de]
	cp $01
	jr nz,Unknown_0x1ED40
	ld a,$06
	ld hl,Unknown_0x1ED57
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0x1ED40:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x1ED54
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x1ED54
	ld e,$07
	ld bc,$6D12
	jp Unknown_0x37F4

Unknown_0x1ED54:
	jp Unknown_0x37F7

Unknown_0x1ED57:
INCBIN "baserom.gb", $1ED57, $1ED73 - $1ED57
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
	ld hl,$7EE2
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x3765
	jr nc,Unknown_0x1EDA2
	ld e,$02
	ld bc,$60A3
	jp Unknown_0x37F4

Unknown_0x1EDA2:
	call Unknown_0x377C
	jr nc,Unknown_0x1EDAF
	ld e,$02
	ld bc,$619E
	jp Unknown_0x37F4

Unknown_0x1EDAF:
	jp Unknown_0x37F7

UnknownData_0x1EDB2:
INCBIN "baserom.gb", $1EDB2, $1EDDE - $1EDB2
	ld hl,Unknown_0x1FF1C
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

UnknownData_0x1EDEF:
INCBIN "baserom.gb", $1EDEF, $1EE13 - $1EDEF
	ld hl,Unknown_0x1FF1C
	ld a,$02
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x1ED18
	ld a,$02
	call CallForeignBankNoInturrupts
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

UnknownData_0x1EE2C:
INCBIN "baserom.gb", $1EE2C, $1EE80 - $1EE2C
	ld hl,Unknown_0x1FF1C
	ld a,$02
	call CallForeignBankNoInturrupts
	ld a,$03
	ld hl,Unknown_0x1EEA9
	call Unknown_0x3AAA
	call Unknown_0x3AE4
	call Unknown_0x378B
	call Unknown_0x37A8
	call Unknown_0x1EEAE
	jr nc,Unknown_0x1EEA6
	ld e,$02
	ld bc,$6740
	jp Unknown_0x37F4

Unknown_0x1EEA6:
	jp Unknown_0x37F7

Unknown_0x1EEA9:
INCBIN "baserom.gb", $1EEA9, $1EEAE - $1EEA9

Unknown_0x1EEAE:
	ld e,$39
	ld a,[de]
	or a
	jr z,Unknown_0x1EEB8
	dec a
	ld [de],a

Unknown_0x1EEB6:
	and a
	ret

Unknown_0x1EEB8:
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x1EEB6
	scf
	ret

UnknownData_0x1EEC0:
INCBIN "baserom.gb", $1EEC0, $1F178 - $1EEC0
	ld e,$39
	ld a,[de]
	inc a
	ld [de],a
	ret

UnknownData_0x1F17E:
INCBIN "baserom.gb", $1F17E, $1F1A3 - $1F17E
	ld e,$39
	ld a,[de]
	inc a
	cp $0B
	jr c,Unknown_0x1F1AD
	ld a,$02

Unknown_0x1F1AD:
	ld [de],a
	ret

UnknownData_0x1F1AF:
INCBIN "baserom.gb", $1F1AF, $1F279 - $1F1AF
	ld hl,$5CCF
	ld a,$02
	call CallForeignBankNoInturrupts
	ret
	ld hl,$6D73
	ld a,$07
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x1F28B:
INCBIN "baserom.gb", $1F28B, $1F2B4 - $1F28B
	ld e,$3A
	ld a,[de]
	inc a
	cp $0B
	jr c,Unknown_0x1F2BE
	ld a,$02

Unknown_0x1F2BE:
	ld [de],a
	ret

UnknownData_0x1F2C0:
INCBIN "baserom.gb", $1F2C0, $1F3F5 - $1F2C0
	ld e,$15
	ld a,[de]
	cp $04
	ret c
	ld e,$45
	ld a,[de]
	xor $80
	ld [de],a
	ret

UnknownData_0x1F402:
INCBIN "baserom.gb", $1F402, $1F40A - $1F402

Unknown_0x1F40A:
	ld h,d
	ld a,[$A076]
	or a
	jr nz,Unknown_0x1F420
	ld l,$19
	set 5,[hl]
	ld l,$1C
	set 5,[hl]
	ld l,$1F
	set 5,[hl]
	call Unknown_0x0E2C

Unknown_0x1F420:
	ld bc,$A076
	ld a,[bc]
	ld hl,$7402
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1F42D
	inc h

Unknown_0x1F42D:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld e,$09
	ld a,[de]
	add a,h
	ld [de],a
	ld e,$0B
	ld a,[de]
	add a,l
	ld [de],a
	ld a,[bc]
	inc a
	ld [bc],a
	cp $04
	ret c
	ld h,d
	ld l,$19
	res 5,[hl]
	ld l,$1C
	res 5,[hl]
	ld l,$1F
	res 5,[hl]
	ld l,$6C
	res 0,[hl]
	ret
	call Unknown_0x1F458
	jp Unknown_0x1F48B

Unknown_0x1F458:
	ld a,[$A071]
	ld hl,$7468
	add a,l
	ld l,a
	jr nc,Unknown_0x1F463
	inc h

Unknown_0x1F463:
	ld a,[hl]
	ld [$DF11],a
	ret

UnknownData_0x1F468:
INCBIN "baserom.gb", $1F468, $1F46C - $1F468
	call Unknown_0x1F472
	jp Unknown_0x1F48B

Unknown_0x1F472:
	ld a,[$A071]
	ld hl,$7487
	add a,l
	ld l,a
	jr nc,Unknown_0x1F47D
	inc h

Unknown_0x1F47D:
	ld a,[hl]
	ld hl,$A05B
	add a,[hl]
	inc a
	ld [$DF11],a
	ret

UnknownData_0x1F487:
INCBIN "baserom.gb", $1F487, $1F48B - $1F487

Unknown_0x1F48B:
	ld a,[$DF11]
	push bc
	ld h,$00
	ld l,a
	ld b,h
	ld c,l
	add hl,hl
	add hl,bc
	add hl,hl
	add hl,bc
	ld bc,$74BB
	add hl,bc
	ld e,$65
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$67
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$6A
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ld a,$01
	ld e,$64
	ld [de],a
	pop bc
	ret

UnknownData_0x1F4BB:
INCBIN "baserom.gb", $1F4BB, $1FEA8 - $1F4BB

Unknown_0x1FEA8:
INCBIN "baserom.gb", $1FEA8, $1FF1C - $1FEA8

Unknown_0x1FF1C:
INCBIN "baserom.gb", $1FF1C, $20000 - $1FF1C