SECTION "Bank0E", ROMX, BANK[$0E]

UnknownData_0x38000:
INCBIN "baserom.gb", $38000, $3819A - $38000
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
	jr nc,Unknown_0x381A9
	inc h

Unknown_0x381A9:
	ld a,[bc]
	ld e,a
	inc bc
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld a,[bc]
	ld e,a
	inc bc
	push bc
	ld a,[de]
	ld b,e
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	ld e,$27
	ld [de],a
	ld e,b
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	pop bc
	ret

UnknownData_0x381C8:
INCBIN "baserom.gb", $381C8, $381D1 - $381C8

Unknown_0x381D1:
	ld a,[$DB51]
	ld [$DD08],a
	ret
	call Unknown_0x381ED
	call Unknown_0x388F9
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$0E
	ld bc,$488B
	jp Unknown_0x0846

Unknown_0x381ED:
	ld hl,$DD08
	ld a,[$DB51]
	sub [hl]
	ld [$DD09],a
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
	jp Unknown_0x381D1

Unknown_0x38207:
	ld a,[$DD09]
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
	ret

UnknownData_0x38218:
INCBIN "baserom.gb", $38218, $38264 - $38218
	call Unknown_0x381ED
	call Unknown_0x388F9
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x382B0
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	sub [hl]
	ld c,a
	ld e,$27
	ld a,[de]
	cp $01
	jr c,Unknown_0x382A2
	jr z,Unknown_0x3829C
	cp $02
	jr z,Unknown_0x38296
	ld a,c
	cp $4C
	jr c,Unknown_0x382A6
	ret

Unknown_0x38296:
	ld a,c
	cp $70
	jr nc,Unknown_0x382A6
	ret

Unknown_0x3829C:
	ld a,c
	cp $4C
	jr nc,Unknown_0x382A6
	ret

Unknown_0x382A2:
	ld a,c
	cp $28
	ret nc

Unknown_0x382A6:
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ld e,$12
	ld [de],a
	ret

Unknown_0x382B0:
	ld e,$0E
	ld bc,$488B
	jp Unknown_0x0846
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$27
	ld a,[de]
	rlca
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x382CA
	inc h

Unknown_0x382CA:
	call Unknown_0x20F9
	call Unknown_0x2123
	jp Unknown_0x20BE
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$27
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0x382E1
	inc h

Unknown_0x382E1:
	ld e,$12
	ld a,[hli]
	ld [de],a
	ret

UnknownData_0x382E6:
INCBIN "baserom.gb", $382E6, $383F3 - $382E6
	call Unknown_0x381ED
	call Unknown_0x388F9
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x3841E
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	sub [hl]
	cp $7F
	ret c
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ld e,$11
	ld [de],a
	ret

Unknown_0x3841E:
	ld e,$0E
	ld bc,$488B
	jp Unknown_0x0846
	ld a,[bc]
	inc bc
	ld l,a
	ld e,$27
	ld a,[de]
	sub l
	ld [de],a
	ret

UnknownData_0x3842F:
INCBIN "baserom.gb", $3842F, $38844 - $3842F
	call Unknown_0x381ED
	call Unknown_0x388F9
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$0E
	ld bc,$488B
	jp Unknown_0x0846
	call Unknown_0x0647
	and $01
	ld e,$41
	ld [de],a
	ld l,a
	ld e,$27
	ld a,[de]
	rlca
	add a,l
	add a,$01
	ld [de],a
	ret
	push bc
	ld e,$27
	ld a,[de]
	ld e,$CD
	call Unknown_0x2319
	ld e,$27
	ld a,[de]
	ld h,d
	ld l,$41
	bit 0,[hl]
	jr nz,Unknown_0x38887
	inc a
	jr Unknown_0x38888

Unknown_0x38887:
	dec a

Unknown_0x38888:
	ld [de],a
	pop bc
	ret

UnknownData_0x3888B:
INCBIN "baserom.gb", $3888B, $388A8 - $3888B
	call Unknown_0x381ED
	ld bc,$4000
	call Unknown_0x255B
	ld e,$41
	ld a,[de]
	or a
	ret nz
	ld hl,$6B9D
	ld a,$1D
	call FarCall
	call Unknown_0x0C71
	ld hl,$6B86
	ld a,$1D
	call FarCall
	ld h,d
	ld l,$60
	ld [hl],$3F
	ld l,$44
	ld [hl],$18
	ld e,$4C
	ld a,[de]
	cp $0F
	jr c,Unknown_0x388EC
	cp $1E
	jr c,Unknown_0x388E8
	cp $2D
	jr c,Unknown_0x388E4
	xor a
	jr Unknown_0x388EE

Unknown_0x388E4:
	ld a,$01
	jr Unknown_0x388EE

Unknown_0x388E8:
	ld a,$02
	jr Unknown_0x388EE

Unknown_0x388EC:
	ld a,$03

Unknown_0x388EE:
	ld h,d
	ld l,$43
	cp [hl]
	ret z
	ld [hl],a
	ld l,$39
	ld [hl],$0C
	ret

Unknown_0x388F9:
	ld e,$39
	ld a,[de]
	or a
	ret z
	dec a
	ld [de],a
	ld h,$A0
	ld l,$77
	ld a,[hl]
	add a,$02
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hl],a
	ret

UnknownData_0x3890D:
INCBIN "baserom.gb", $3890D, $3891B - $3890D
	ld h,$A0
	ld l,$77
	xor a
	ld [hli],a
	ld [hl],a
	ret
	ld hl,$4CE4
	ld a,$03
	call FarCall
	ret

UnknownData_0x3892C:
INCBIN "baserom.gb", $3892C, $38966 - $3892C

Unknown_0x38966:
INCBIN "baserom.gb", $38966, $38976 - $38966
	call Unknown_0x38207
	ld h,d
	ld l,$11
	ld e,[hl]
	ld l,$3B
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0CEF
	call Unknown_0x0DA4
	ld bc,$40BF
	jp Unknown_0x255B

UnknownData_0x3898E:
INCBIN "baserom.gb", $3898E, $389C9 - $3898E
	call Unknown_0x38207
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$40BF
	jp Unknown_0x255B
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
	jr nc,Unknown_0x389E7
	inc h

Unknown_0x389E7:
	ld a,[hli]
	push af
	ld a,[hl]
	ld hl,$DB53
	ld e,$07
	add a,[hl]
	ld [de],a
	inc e
	inc hl
	ld a,[hl]
	adc a,$00
	ld [de],a
	pop af
	ld hl,$DB51
	ld e,$04
	add a,[hl]
	ld [de],a
	inc e
	inc hl
	ld a,[hl]
	adc a,$00
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$26
	ld a,[de]
	inc a
	ld [de],a
	dec a
	ld e,a
	rlca
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x38A1B
	inc h

Unknown_0x38A1B:
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$11
	ld a,[hli]
	ld [de],a
	ld e,$27
	ld a,[de]
	or a
	ld e,$0F
	jr nz,Unknown_0x38A34
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

Unknown_0x38A34:
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

UnknownData_0x38A40:
INCBIN "baserom.gb", $38A40, $38B87 - $38A40
	call Unknown_0x38207
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$40CD
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 1,a
	ret z
	ld [$FF00+$80],a
	ld bc,$0005
	ld h,$02
	call Unknown_0x30E0
	ld a,[$FF00+$80]
	bit 3,a
	jr nz,Unknown_0x38BC5
	call Unknown_0x1EC0
	cpl
	ld [de],a
	ld bc,Unknown_0x38BCE
	call Unknown_0x0FAF
	jr z,Unknown_0x38BC5
	ld l,$46
	ld e,l
	ld a,[de]
	ld [hl],a
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x38BC5:
	ld h,d
	ld e,$03
	ld bc,Unknown_0x38966
	jp Unknown_0x0849

Unknown_0x38BCE:
INCBIN "baserom.gb", $38BCE, $38BD1 - $38BCE
	ld e,$40
	ld a,[de]
	or a
	ret z
	push bc
	ld h,$A0
	ld l,$04
	ld e,l
	ld a,[de]
	sub [hl]
	ld c,a
	ld l,$07
	ld e,l
	ld a,[de]
	sub [hl]
	ld b,a
	inc e
	inc l
	ld a,[de]
	ld e,$00
	sbc a,[hl]
	jr nc,Unknown_0x38BEF
	ld e,$01

Unknown_0x38BEF:
	ld a,c
	srl a
	cp b
	jr nc,Unknown_0x38C0E
	sla a
	cp b
	jr z,Unknown_0x38C06
	jr nc,Unknown_0x38C0A
	ld a,b
	sla a
	cp c
	jr c,Unknown_0x38C06
	ld a,$03
	jr Unknown_0x38C11

Unknown_0x38C06:
	ld a,$02
	jr Unknown_0x38C11

Unknown_0x38C0A:
	ld a,$01
	jr Unknown_0x38C11

Unknown_0x38C0E:
	xor a
	jr Unknown_0x38C14

Unknown_0x38C11:
	add a,e
	add a,e
	add a,e

Unknown_0x38C14:
	ld e,$27
	ld [de],a
	pop bc
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0x38C36

Unknown_0x38C25:
	ld e,$27
	ld a,[de]
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x38C2E
	inc h

Unknown_0x38C2E:
	ld e,$11
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

Unknown_0x38C36:
	inc a
	ld [de],a
	ld e,$11
	ld a,$FB
	ld [de],a
	ld e,$27
	ld a,[de]
	rrca
	ld e,$12
	jr c,Unknown_0x38C49
	ld a,$02
	ld [de],a
	ret

Unknown_0x38C49:
	ld a,$FE
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$40
	ld a,[de]
	or a
	jp nz,Unknown_0x38C25
	ld e,$11
	ld a,$03
	ld [de],a
	ld e,$27
	ld a,[de]
	rrca
	ld e,$12
	jr c,Unknown_0x38C6B
	ld a,$FF
	ld [de],a
	ret

Unknown_0x38C6B:
	ld a,$01
	ld [de],a
	ret

UnknownData_0x38C6F:
INCBIN "baserom.gb", $38C6F, $38C9C - $38C6F
	ld a,[$A083]
	ld e,$46
	ld [de],a
	ret

UnknownData_0x38CA3:
INCBIN "baserom.gb", $38CA3, $38CAB - $38CA3
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret
	call Unknown_0x1EE6
	call Unknown_0x21D8
	call Unknown_0x0DA4
	call Unknown_0x1AB3
	ret z
	ld h,d
	jp Unknown_0x0BBA

UnknownData_0x38CC3:
INCBIN "baserom.gb", $38CC3, $3A0B2 - $38CC3
	call Unknown_0x0357
	ld a,[$FF00+$9A]
	ld d,a
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld e,$43
	ld a,[de]
	and a
	jr z,Unknown_0x3A0CA
	dec a
	ld [de],a
	ret

Unknown_0x3A0CA:
	ld a,[$FF00+$A6]
	bit 0,a
	jr nz,Unknown_0x3A0D9
	bit 1,a
	jr nz,Unknown_0x3A0D9
	bit 3,a
	jr nz,Unknown_0x3A0D9
	ret

Unknown_0x3A0D9:
	ld hl,$DD2D
	ld [hl],$01
	ret
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ret

UnknownData_0x3A0E9:
INCBIN "baserom.gb", $3A0E9, $3A189 - $3A0E9

Unknown_0x3A189:
INCBIN "baserom.gb", $3A189, $3A1B8 - $3A189

Unknown_0x3A1B8:
INCBIN "baserom.gb", $3A1B8, $3A1CA - $3A1B8

Unknown_0x3A1CA:
INCBIN "baserom.gb", $3A1CA, $3A1FE - $3A1CA
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	ld hl,$616C
	call Unknown_0x23CA
	call Unknown_0x0DA4
	ld bc,$613F
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x19F3
	bit 5,a
	jp nz,Unknown_0x1EF9
	bit 7,a
	jr z,Unknown_0x3A235
	bit 4,a
	call nz,Unknown_0x3A2CA
	ld e,$3F
	ld a,[de]
	and a
	ret z
	ld e,$0E
	ld bc,Unknown_0x3A1CA
	jp Unknown_0x0846

Unknown_0x3A235:
	ld e,$0E
	ld bc,$61B8
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$613F
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	ld b,a
	bit 5,a
	call nz,Unknown_0x1EF9
	ld a,b
	bit 7,a
	ret z
	ld e,$0E
	ld bc,Unknown_0x3A189
	jp Unknown_0x0846
	ld bc,$614D
	call Unknown_0x255B
	ret c
	call Unknown_0x2375
	call Unknown_0x1A25
	call Unknown_0x19CB
	bit 7,a
	jr z,Unknown_0x3A28F
	ld e,$3E
	ld a,[de]
	dec a
	ld [de],a
	ret nz
	ld a,$09
	ld [de],a
	call Unknown_0x3A29D
	ld e,$3F
	ld a,[de]
	and a
	ret nz
	ld e,$0E
	ld bc,Unknown_0x3A189
	jp Unknown_0x0846

Unknown_0x3A28F:
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$0E
	ld bc,Unknown_0x3A1B8
	jp Unknown_0x0846

Unknown_0x3A29D:
	ld e,$04
	ld l,e
	ld h,$A0
	ld a,[de]
	sub [hl]
	bit 7,a
	jr z,Unknown_0x3A2AA
	cpl
	inc a

Unknown_0x3A2AA:
	cp $2C
	jr nc,Unknown_0x3A2C5
	ld e,$07
	ld l,e
	ld h,$A0
	ld a,[de]
	sub [hl]
	bit 7,a
	jr z,Unknown_0x3A2BB
	cpl
	inc a

Unknown_0x3A2BB:
	cp $40
	jr nc,Unknown_0x3A2C5
	ld e,$3F
	ld a,$01
	ld [de],a
	ret

Unknown_0x3A2C5:
	ld e,$3F
	xor a
	ld [de],a
	ret

Unknown_0x3A2CA:
	ld e,$45
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x3A2E4
	ld h,d
	ld l,$0D
	ld e,$03
	ld a,[de]
	sub [hl]
	ld [de],a
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	ld [de],a
	inc e
	ld a,[de]
	sbc a,$00
	ld [de],a
	ret

Unknown_0x3A2E4:
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
	ld e,$03
	ld a,[de]
	add a,c
	ld [de],a
	inc e
	ld a,[de]
	adc a,b
	ld [de],a
	inc e
	ld a,[de]
	adc a,$00
	ld [de],a
	ret

UnknownData_0x3A300:
INCBIN "baserom.gb", $3A300, $3A32F - $3A300

Unknown_0x3A32F:
INCBIN "baserom.gb", $3A32F, $3A497 - $3A32F
	ld bc,$6300
	call Unknown_0x255B
	ret c
	call Unknown_0x19CB
	bit 7,a
	ret nz
	ld e,$0E
	ld bc,$638B
	jp Unknown_0x0846

UnknownData_0x3A4AC:
INCBIN "baserom.gb", $3A4AC, $3A4AD - $3A4AC
	ld bc,$6300
	call Unknown_0x255B
	ret c
	ld e,$40
	ld a,[de]
	and a
	ret z
	ld e,$0E
	ld bc,$6471
	jp Unknown_0x0846

UnknownData_0x3A4C1:
INCBIN "baserom.gb", $3A4C1, $3A4C2 - $3A4C1
	ld e,$F8
	call Unknown_0x1AC1
	jr z,Unknown_0x3A4CE
	ld hl,$630E
	jr Unknown_0x3A4D1

Unknown_0x3A4CE:
	ld hl,$6312

Unknown_0x3A4D1:
	call Unknown_0x2096
	call Unknown_0x0DA4
	ld bc,$6300
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$0E
	ld bc,Unknown_0x3A32F
	jp Unknown_0x0846

UnknownData_0x3A4EC:
INCBIN "baserom.gb", $3A4EC, $3A4ED - $3A4EC
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$6300
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 6,a
	ret z
	ld e,$05
	ld bc,$5C14
	jp Unknown_0x0846

UnknownData_0x3A508:
INCBIN "baserom.gb", $3A508, $3A509 - $3A508
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$6300
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$05
	ld bc,$5C14
	jp Unknown_0x0846

UnknownData_0x3A524:
INCBIN "baserom.gb", $3A524, $3A525 - $3A524
	ld e,$5B
	ld a,[de]
	and a
	ld e,$07
	ld a,[de]
	jr nz,Unknown_0x3A538
	sub $08
	ld [de],a
	jr nc,Unknown_0x3A537
	inc e
	ld a,[de]
	dec a
	ld [de],a

Unknown_0x3A537:
	ret

Unknown_0x3A538:
	add a,$08
	ld [de],a
	jr nc,Unknown_0x3A541
	inc e
	ld a,[de]
	inc a
	ld [de],a

Unknown_0x3A541:
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$5B
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x3A54F:
INCBIN "baserom.gb", $3A54F, $3C000 - $3A54F