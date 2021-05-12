SECTION "Bank0B", ROMX, BANK[$0B]

UnknownData_0x2C000:
INCBIN "baserom.gb", $2C000, $2E8A0 - $2C000

Unknown_0x2E8A0:
INCBIN "baserom.gb", $2E8A0, $2ED87 - $2E8A0

Unknown_0x2ED87:
INCBIN "baserom.gb", $2ED87, $2EF8A - $2ED87

Unknown_0x2EF8A:
INCBIN "baserom.gb", $2EF8A, $2F122 - $2EF8A

Unknown_0x2F122:
INCBIN "baserom.gb", $2F122, $2F20F - $2F122

Unknown_0x2F20F:
INCBIN "baserom.gb", $2F20F, $2F85B - $2F20F

Unknown_0x2F85B:
	xor a
	ld [$FF00+$81],a
	ld [$FF00+$83],a
	ld hl,$FF93
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld hl,$A153

Unknown_0x2F869:
	push hl
	ld a,[hl]
	or a
	jr nz,Unknown_0x2F89B
	ld l,$56
	ld [hli],a
	ld [hl],a
	call Unknown_0x0647
	and $0F
	ld bc,$7914
	add a,c
	ld c,a
	jr nc,Unknown_0x2F87F
	inc b

Unknown_0x2F87F:
	ld a,[$A080]
	ld e,a
	ld a,[bc]
	add a,e
	ld l,$55
	ld [hl],a
	ld a,c
	add a,$10
	ld c,a
	jr nc,Unknown_0x2F88F
	inc b

Unknown_0x2F88F:
	ld a,[$A045]
	rla
	ld a,[bc]
	jr nc,Unknown_0x2F898
	cpl
	inc a

Unknown_0x2F898:
	ld l,$53
	ld [hl],a

Unknown_0x2F89B:
	ld a,[$A081]
	ld b,a
	add a,a
	inc a
	ld c,a
	ld l,$53
	ld a,[hl]
	add a,b
	cp c
	jr nc,Unknown_0x2F8AD
	ld [hl],$00
	jr Unknown_0x2F908

Unknown_0x2F8AD:
	ld a,[$A063]
	ld l,$56
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld a,[hl]
	add a,c
	ld [hli],a
	ld a,[hl]
	adc a,b
	ld [hl],a
	ld l,$55
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
	ld l,$58
	ld [hl],c
	inc l
	ld [hl],b
	ld l,$56
	ld d,h
	ld e,$52
	ld a,[de]
	add a,[hl]
	ld [de],a
	inc l
	inc e
	ld a,[de]
	adc a,[hl]
	ld [de],a
	ld b,a
	ld a,[$A009]
	add a,b
	ld [$FF00+$80],a
	inc l
	inc e
	ld a,[de]
	add a,[hl]
	ld [de],a
	inc l
	inc e
	ld a,[de]
	adc a,[hl]
	ld [de],a
	ld b,a
	ld a,[$A00B]
	add a,b
	ld [$FF00+$82],a
	ld de,$FF83
	ld hl,Unknown_0x2EF8A
	call Unknown_0x051C

Unknown_0x2F908:
	pop hl
	inc h
	ld a,h
	cp $A4
	jp nz,Unknown_0x2F869
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0x2F914:
INCBIN "baserom.gb", $2F914, $30000 - $2F914