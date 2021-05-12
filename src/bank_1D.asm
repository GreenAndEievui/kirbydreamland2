SECTION "Bank1D", ROMX, BANK[$1D]

UnknownData_0x74000:
INCBIN "baserom.gb", $74000, $7400E - $74000

Unknown_0x7400E:
INCBIN "baserom.gb", $7400E, $7408E - $7400E

Unknown_0x7408E:
INCBIN "baserom.gb", $7408E, $74092 - $7408E

Unknown_0x74092:
INCBIN "baserom.gb", $74092, $740FD - $74092
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$1D
	ld bc,Unknown_0x748E5
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x255B
	ld bc,Unknown_0x7400E
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$0D
	call Unknown_0x0F7A
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$1D
	ld bc,Unknown_0x74131
	jp Unknown_0x0846

Unknown_0x74131:
INCBIN "baserom.gb", $74131, $74162 - $74131

Unknown_0x74162:
INCBIN "baserom.gb", $74162, $74180 - $74162
	call Unknown_0x0647
	and $01
	ld h,d
	ld l,$43
	add a,[hl]
	ld hl,$4015
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x74192
	inc h

Unknown_0x74192:
	ld e,$3D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ld e,$43
	ld a,[de]
	inc a
	cp $03
	jr c,Unknown_0x741A2
	xor a

Unknown_0x741A2:
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
	cp $FF
	ret z
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	ld e,$27
	ld a,[de]
	rlca
	ld hl,$4035
	add a,l
	ld l,a
	jr nc,Unknown_0x741C6
	inc h

Unknown_0x741C6:
	ld e,$3F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld e,$3F
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	ld e,$27
	ld [de],a
	cp $FF
	ret z
	ld e,$3F
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

UnknownData_0x741E4:
INCBIN "baserom.gb", $741E4, $74259 - $741E4
	ld hl,$5E9D
	ld a,$06
	call FarCall
	ret
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret

UnknownData_0x74269:
INCBIN "baserom.gb", $74269, $7428B - $74269

Unknown_0x7428B:
INCBIN "baserom.gb", $7428B, $74299 - $7428B

Unknown_0x74299:
INCBIN "baserom.gb", $74299, $742A6 - $74299

Unknown_0x742A6:
INCBIN "baserom.gb", $742A6, $742D9 - $742A6
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x74345
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x742EB
	call Unknown_0x1EE6

Unknown_0x742EB:
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x7400E
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x74310
	ld e,$41
	ld a,[de]
	or a
	ret z
	call Unknown_0x7434D
	ret nc
	xor a
	ld e,$41
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x1EF9

Unknown_0x74310:
	ld e,$D5
	ld a,$0E
	call Unknown_0x2319
	ld e,$41
	ld a,[de]
	or a
	jr z,Unknown_0x7433D
	dec a
	jr z,Unknown_0x74335
	ld [de],a
	cp $04
	jr z,Unknown_0x7432D
	ld e,$1D
	ld bc,Unknown_0x7428B
	jp Unknown_0x0846

Unknown_0x7432D:
	ld e,$1D
	ld bc,Unknown_0x742A6
	jp Unknown_0x0846

Unknown_0x74335:
	ld e,$1D
	ld bc,Unknown_0x74162
	jp Unknown_0x0846

Unknown_0x7433D:
	ld e,$1D
	ld bc,$42CC
	jp Unknown_0x0846

Unknown_0x74345:
	ld e,$1D
	ld bc,$48E5
	jp Unknown_0x0846

Unknown_0x7434D:
	ld e,$0E
	ld a,[de]
	rlca
	ld hl,$DB51
	ld e,$04
	ld a,[de]
	jr c,Unknown_0x7435E
	sub [hl]
	cp $93
	ccf
	ret

Unknown_0x7435E:
	sub [hl]
	cp $0D
	ret

UnknownData_0x74362:
INCBIN "baserom.gb", $74362, $74425 - $74362
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x74446
	call Unknown_0x7434D
	ret nc
	xor a
	call Unknown_0x74EFD
	ld e,$1D
	ld bc,$441C
	jp Unknown_0x0846

Unknown_0x74446:
	ld e,$1D
	ld bc,$48E5
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x7448B
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x7400E
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x7446D
	call Unknown_0x7434D
	ret nc
	jp Unknown_0x74EFD

Unknown_0x7446D:
	ld e,$0D
	call Unknown_0x0F7A
	ld e,$D5
	ld a,$0C
	call Unknown_0x2319
	ld e,$D5
	ld a,$0D
	call Unknown_0x2319
	ld a,[$FF00+$9A]
	ld a,d
	ld e,$1D
	ld bc,Unknown_0x74162
	jp Unknown_0x0846

Unknown_0x7448B:
	ld e,$1D
	ld bc,$48E5
	jp Unknown_0x0846
	ld hl,$DB51
	ld e,$45
	ld a,[de]
	rlca
	ld e,$04
	ld a,[de]
	jr c,Unknown_0x744B4
	add a,$38
	sub [hl]
	cp $98
	jr nc,Unknown_0x744B1
	ld h,$A0
	ld l,$04
	cp [hl]
	jr nc,Unknown_0x744B1
	ld a,$01
	jr Unknown_0x744C8

Unknown_0x744B1:
	xor a
	jr Unknown_0x744C8

Unknown_0x744B4:
	sub $38
	jr c,Unknown_0x744B1
	sub [hl]
	jr c,Unknown_0x744B1
	cp $08
	jr c,Unknown_0x744B1
	ld h,$A0
	ld l,$04
	cp [hl]
	jr c,Unknown_0x744B1
	ld a,$01

Unknown_0x744C8:
	ld e,$27
	ld [de],a
	ret
	push bc
	ld hl,Unknown_0x75AB0
	ld a,$04
	call FarCall
	ld l,$41
	ld h,d
	dec [hl]
	jr nz,Unknown_0x744DF
	ld l,$27
	ld [hl],$01

Unknown_0x744DF:
	pop bc
	ret

UnknownData_0x744E1:
INCBIN "baserom.gb", $744E1, $744F8 - $744E1
	ld a,[bc]
	ld e,a
	inc bc
	ld h,$A0
	ld l,$07
	ld a,[hl]
	ld hl,$DB53
	sub [hl]
	cp e
	jr c,Unknown_0x7450B
	ld a,$01
	jr Unknown_0x7450C

Unknown_0x7450B:
	xor a

Unknown_0x7450C:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x74510:
INCBIN "baserom.gb", $74510, $745F0 - $74510

Unknown_0x745F0:
INCBIN "baserom.gb", $745F0, $74604 - $745F0
	call Unknown_0x74622
	ret c
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$458A
	jp Unknown_0x0846
	call Unknown_0x74622
	ret c
	bit 7,a
	ret z
	ld e,$1D
	ld bc,Unknown_0x745F0
	jp Unknown_0x0846

Unknown_0x74622:
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x74640
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x7434D
	jr nc,Unknown_0x74638
	call Unknown_0x74EFD

Unknown_0x74638:
	ld bc,Unknown_0x7400E
	call Unknown_0x24CD
	or a
	ret

Unknown_0x74640:
	ld e,$1D
	ld bc,$48E5
	call Unknown_0x0846
	scf
	ret

UnknownData_0x7464A:
INCBIN "baserom.gb", $7464A, $74674 - $7464A
	call Unknown_0x74622
	ret c
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$4683
	jp Unknown_0x0846

UnknownData_0x74683:
INCBIN "baserom.gb", $74683, $746B1 - $74683
	call Unknown_0x74622
	ret c
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$4162
	jp Unknown_0x0846

UnknownData_0x746C0:
INCBIN "baserom.gb", $746C0, $7472E - $746C0
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x7474F
	call Unknown_0x7434D
	ret nc
	call Unknown_0x74F04
	ld h,d
	ld l,$1F
	ld [hl],$5D
	inc l
	ld [hl],$47
	inc l
	ld [hl],$31
	ret

Unknown_0x7474F:
	ld e,$1D
	ld bc,$48E5
	jp Unknown_0x0846
	ld hl,$409C
	ld e,$41
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	push bc
	ld e,$41
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
	add a,$06
	ld e,$D5
	call Unknown_0x2319
	pop bc
	ret

UnknownData_0x7477B:
INCBIN "baserom.gb", $7477B, $74863 - $7477B
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x74887
	call Unknown_0x7434D
	ret nc
	call Unknown_0x74F04
	ld h,d
	ld l,$1F
	ld [hl],$5D
	inc l
	ld [hl],$48
	inc l
	ld [hl],$66
	ret

Unknown_0x74887:
	ld e,$1D
	ld bc,$48E5
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x748B6
	call Unknown_0x203D
	ld e,$0E
	ld a,[de]
	jr c,Unknown_0x748B1
	rlca
	jr nc,Unknown_0x748A9

Unknown_0x748A5:
	call Unknown_0x7434D
	ret nc

Unknown_0x748A9:
	ld e,$1D
	ld bc,$4854
	jp Unknown_0x0846

Unknown_0x748B1:
	rlca
	jr c,Unknown_0x748A9
	jr Unknown_0x748A5

Unknown_0x748B6:
	ld e,$1D
	ld bc,$48E5
	jp Unknown_0x0846
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x748DD
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,Unknown_0x7400E
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$458A
	jp Unknown_0x0846

Unknown_0x748DD:
	ld e,$1D
	ld bc,$48E5
	jp Unknown_0x0846

Unknown_0x748E5:
INCBIN "baserom.gb", $748E5, $748FD - $748E5
	call Unknown_0x2323
	ret nz
	ld e,$4C
	ld a,[de]
	cp $1F
	ret nc
	ld a,$01
	ld e,$5C
	ld [de],a
	ret

UnknownData_0x7490D:
INCBIN "baserom.gb", $7490D, $74918 - $7490D
	ld hl,Unknown_0x74CE4
	ld a,$03
	call FarCall
	ret

UnknownData_0x74921:
INCBIN "baserom.gb", $74921, $74966 - $74921

Unknown_0x74966:
INCBIN "baserom.gb", $74966, $749B5 - $74966
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4072
	jp Unknown_0x255B
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4072
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x7408E
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld a,$03
	ld e,$D5
	call Unknown_0x2319
	ld a,$04
	ld e,$D5
	call Unknown_0x2319
	ld e,$2E
	ld hl,Unknown_0x74299
	ld a,$1E
	call FarCall
	ld a,[$FF00+$9A]
	ld h,a
	jp Unknown_0x0BBA
	ld h,$A0
	ld l,$04
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ld a,[bc]
	inc bc
	push bc
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$07
	ld hl,$DB53
	ld a,c
	add a,[hl]
	ld [de],a
	inc e
	inc hl
	ld a,b
	adc a,[hl]
	ld [de],a
	pop bc
	ret
	ld hl,$4096
	ld e,$5B
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0x74A20
	inc h

Unknown_0x74A20:
	ld e,$24
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x74A25:
INCBIN "baserom.gb", $74A25, $74A2E - $74A25
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,e
	ld a,[hl]
	ld [de],a
	ret
	call Unknown_0x0647
	and $08
	add a,$18
	ld [$FF00+$80],a
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	sub [hl]
	cp $20
	ld a,[$FF00+$80]
	ld e,$04
	jr c,Unknown_0x74A53
	ld l,a
	ld a,[de]
	sub l
	ld [de],a
	ret

Unknown_0x74A53:
	add a,$20
	ld l,a
	ld a,[de]
	add a,l
	ld [de],a
	ret

UnknownData_0x74A5A:
INCBIN "baserom.gb", $74A5A, $74A63 - $74A5A
	call Unknown_0x0647
	and $08
	add a,$18
	ld [$FF00+$80],a
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	sub [hl]
	cp $80
	ld a,[$FF00+$80]
	ld e,$04
	jr nc,Unknown_0x74A80
	ld l,a
	ld a,[de]
	add a,l
	ld [de],a
	ret

Unknown_0x74A80:
	add a,$20
	ld l,a
	ld a,[de]
	sub l
	ld [de],a
	ret

UnknownData_0x74A87:
INCBIN "baserom.gb", $74A87, $74AA8 - $74A87
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4072
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x74092
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$1D
	ld bc,Unknown_0x74AC6
	jp Unknown_0x0846

Unknown_0x74AC6:
INCBIN "baserom.gb", $74AC6, $74AD7 - $74AC6
	call Unknown_0x0DA4
	ld bc,$4072
	jp Unknown_0x255B

UnknownData_0x74AE0:
INCBIN "baserom.gb", $74AE0, $74B26 - $74AE0
	ld bc,$4072
	jp Unknown_0x255B
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x74B37
	dec a
	ld [de],a
	call Unknown_0x1EE6

Unknown_0x74B37:
	call Unknown_0x0DA4
	ld bc,$4072
	jp Unknown_0x255B

UnknownData_0x74B40:
INCBIN "baserom.gb", $74B40, $74B67 - $74B40
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4080
	jp Unknown_0x255B
	ld hl,$40B0
	ld e,$5B
	ld a,[de]
	sub $06
	rlca
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x74B87
	inc h

Unknown_0x74B87:
	call Unknown_0x20F9
	call Unknown_0x2123
	jp Unknown_0x20BE

UnknownData_0x74B90:
INCBIN "baserom.gb", $74B90, $74BAA - $74B90
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	jp Unknown_0x0DA4

UnknownData_0x74BB3:
INCBIN "baserom.gb", $74BB3, $74C36 - $74BB3

Unknown_0x74C36:
INCBIN "baserom.gb", $74C36, $74CD8 - $74C36

Unknown_0x74CD8:
INCBIN "baserom.gb", $74CD8, $74CE4 - $74CD8

Unknown_0x74CE4:
INCBIN "baserom.gb", $74CE4, $74CF5 - $74CE4

Unknown_0x74CF5:
INCBIN "baserom.gb", $74CF5, $74D34 - $74CF5

Unknown_0x74D34:
INCBIN "baserom.gb", $74D34, $74D37 - $74D34

Unknown_0x74D37:
INCBIN "baserom.gb", $74D37, $74D98 - $74D37
	ld bc,$4C28
	call Unknown_0x251B
	ret nc
	ld e,$1D
	ld bc,Unknown_0x75ADA
	jp Unknown_0x0846
	xor a
	ld [$DD12],a
	ld e,$4C
	ld a,[de]
	ld [$DD13],a
	ret
	ld hl,$4C3A
	ld e,$3D
	ld a,l
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
	cp $04
	jr nz,Unknown_0x74DD2
	ld a,[$DD12]
	set 0,a
	ld [$DD12],a
	ld a,[hli]

Unknown_0x74DD2:
	cp $FF
	jr nz,Unknown_0x74DE0
	ld a,[hli]
	cpl
	inc a
	add a,l
	ld l,a
	ld a,$FF
	adc a,h
	ld h,a
	ld a,[hli]

Unknown_0x74DE0:
	ld [$FF00+$80],a
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ld a,[$FF00+$80]
	rlca
	ld hl,$4C47
	add a,l
	ld l,a
	jr nc,Unknown_0x74DF4
	inc h

Unknown_0x74DF4:
	ld e,$3F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld e,$3F
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	ld e,$27
	ld [de],a
	cp $FF
	ret z
	ld e,$3F
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	ld hl,$DD12
	bit 0,[hl]
	jr z,Unknown_0x74E21
	bit 1,[hl]
	jr z,Unknown_0x74E21
	ld a,$01
	jr Unknown_0x74E22

Unknown_0x74E21:
	xor a

Unknown_0x74E22:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x74E26:
INCBIN "baserom.gb", $74E26, $74EB6 - $74E26
	call Unknown_0x1EE6
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x74EF5
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x74C36
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x74EE9
	call Unknown_0x74F0B
	ret nc
	call Unknown_0x74EFD
	ld e,$41
	ld a,$01
	ld [de],a
	ld h,d
	ld l,$1F
	ld [hl],$5D
	inc l
	ld [hl],$4E
	inc l
	ld [hl],$B9
	ret

Unknown_0x74EE9:
	ld h,d
	ld l,$1F
	ld [hl],$5D
	inc l
	ld [hl],$4D
	inc l
	ld [hl],$98
	ret

Unknown_0x74EF5:
	ld e,$1D
	ld bc,Unknown_0x75ADA
	jp Unknown_0x0846

Unknown_0x74EFD:
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x74F04:
	call Unknown_0x74EFD
	ld e,$11
	ld [de],a
	ret

Unknown_0x74F0B:
	ld e,$0E
	ld a,[de]
	rlca
	ld hl,$DB51
	ld e,$04
	ld a,[de]
	jr c,Unknown_0x74F1C
	sub [hl]
	cp $97
	ccf
	ret

Unknown_0x74F1C:
	sub [hl]
	cp $09
	ret
	ld e,$41
	ld a,[de]
	dec a
	jr z,Unknown_0x74F3F
	ld [de],a
	cp $03
	jr nc,Unknown_0x74F3A
	ld hl,$4C6E
	dec a
	add a,l
	ld l,a
	jr nc,Unknown_0x74F34
	inc h

Unknown_0x74F34:
	call Unknown_0x0647
	cp [hl]
	jr c,Unknown_0x74F3F

Unknown_0x74F3A:
	xor a

Unknown_0x74F3B:
	ld e,$27
	ld [de],a
	ret

Unknown_0x74F3F:
	ld a,$01
	jr Unknown_0x74F3B

UnknownData_0x74F43:
INCBIN "baserom.gb", $74F43, $74F6D - $74F43
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x74FB0
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x74F0B
	jr nc,Unknown_0x74F83
	call Unknown_0x74EFD

Unknown_0x74F83:
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	ret nz
	call Unknown_0x203D
	ld e,$45
	ld a,[de]
	jr nc,Unknown_0x74FA5
	rlca
	jr c,Unknown_0x74FA8

Unknown_0x74F94:
	ld e,$04
	ld b,$10
	call Unknown_0x1F9C
	jr c,Unknown_0x74FA8
	ld e,$1D
	ld bc,$4FD6
	jp Unknown_0x0846

Unknown_0x74FA5:
	rlca
	jr c,Unknown_0x74F94

Unknown_0x74FA8:
	ld e,$1D
	ld bc,Unknown_0x74FCD
	jp Unknown_0x0846

Unknown_0x74FB0:
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846
	ld a,[bc]
	inc bc
	push bc
	ld e,$04
	ld b,a
	call Unknown_0x1F9C
	jr c,Unknown_0x74FC9
	xor a

Unknown_0x74FC4:
	ld e,$27
	ld [de],a
	pop bc
	ret

Unknown_0x74FC9:
	ld a,$01
	jr Unknown_0x74FC4

Unknown_0x74FCD:
INCBIN "baserom.gb", $74FCD, $74FE0 - $74FCD
	call Unknown_0x74FEF
	ret c
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$5017
	jp Unknown_0x0846

Unknown_0x74FEF:
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x7500D
	call Unknown_0x21EB
	call Unknown_0x0DA4
	call Unknown_0x74F0B
	jr nc,Unknown_0x75005
	call Unknown_0x74EFD

Unknown_0x75005:
	ld bc,Unknown_0x74C36
	call Unknown_0x24CD
	or a
	ret

Unknown_0x7500D:
	ld e,$1D
	ld bc,$5ADA
	call Unknown_0x0846
	pop hl
	ret

UnknownData_0x75017:
INCBIN "baserom.gb", $75017, $7504B - $75017
	call Unknown_0x75057
	ret c
	ld e,$1D
	ld bc,$50A7
	jp Unknown_0x0846

Unknown_0x75057:
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x7509D
	ld e,$41
	ld a,[de]
	or a
	jr nz,Unknown_0x75068
	call Unknown_0x1EE6

Unknown_0x75068:
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x74C36
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x75086
	call Unknown_0x74F0B
	jr nc,Unknown_0x7509B
	call Unknown_0x74F04
	ld h,d
	ld l,$41
	inc [hl]
	scf
	ret

Unknown_0x75086:
	ld e,$41
	ld a,[de]
	or a
	jr nz,Unknown_0x75099
	ld h,d
	ld l,$1F
	ld [hl],$5D
	inc l
	ld [hl],$4D
	inc l
	ld [hl],$98
	scf
	ret

Unknown_0x75099:
	or a
	ret

Unknown_0x7509B:
	ccf
	ret

Unknown_0x7509D:
	ld e,$1D
	ld bc,Unknown_0x75ADA
	call Unknown_0x0846
	pop hl
	ret

UnknownData_0x750A7:
INCBIN "baserom.gb", $750A7, $750E4 - $750A7
	call Unknown_0x1EE6
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x7510E
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x74F0B
	jr nc,Unknown_0x75108
	call Unknown_0x74EFD
	ld h,d
	ld l,$1F
	ld [hl],$5D
	inc l
	ld [hl],$50
	inc l
	ld [hl],$E7

Unknown_0x75108:
	ld bc,Unknown_0x74C36
	jp Unknown_0x24CD

Unknown_0x7510E:
	ld e,$1D
	ld bc,Unknown_0x75ADA
	jp Unknown_0x0846

UnknownData_0x75116:
INCBIN "baserom.gb", $75116, $7512B - $75116
	call Unknown_0x75057
	ret c
	ld e,$1D
	ld bc,$5137
	jp Unknown_0x0846

UnknownData_0x75137:
INCBIN "baserom.gb", $75137, $75177 - $75137
	ld bc,$4C28
	call Unknown_0x251B
	ret nc
	ld e,$1D
	ld bc,Unknown_0x75ADA
	jp Unknown_0x0846
	ld hl,$DD12
	bit 2,[hl]
	jr nz,Unknown_0x75190
	xor a
	jr Unknown_0x75192

Unknown_0x75190:
	ld a,$01

Unknown_0x75192:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x75196:
INCBIN "baserom.gb", $75196, $751E3 - $75196
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	call z,Unknown_0x74F04
	call Unknown_0x74F0B
	ret nc
	jp Unknown_0x74F04
	push bc
	ld e,$01
	ld bc,$5544
	call Unknown_0x0C3A
	ld a,$80
	ld [$A054],a
	ld l,$04
	ld e,l
	ld a,[de]
	add a,$04
	ld [hli],a
	inc e
	ld a,[de]
	adc a,$00
	ld [hl],a
	ld l,$07
	ld e,l
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hl],a
	pop bc
	ret
	ld hl,$DD12
	res 2,[hl]
	ret
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	cp $50
	jr c,Unknown_0x75231
	ld a,$C0
	jr Unknown_0x75233

Unknown_0x75231:
	ld a,$40

Unknown_0x75233:
	ld e,$45
	ld [de],a
	ret

UnknownData_0x75237:
INCBIN "baserom.gb", $75237, $75278 - $75237
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x75286
	call Unknown_0x1ED3
	jp Unknown_0x0DA4

Unknown_0x75286:
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846

UnknownData_0x7528E:
INCBIN "baserom.gb", $7528E, $752CA - $7528E
	call Unknown_0x75057
	ret c
	ld e,$1D
	ld bc,$52DB
	jp Unknown_0x0846
	ld h,d
	ld l,$26
	dec [hl]
	ret

UnknownData_0x752DB:
INCBIN "baserom.gb", $752DB, $75340 - $752DB
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x75354
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x74C36
	jp Unknown_0x24CD

Unknown_0x75354:
	ld e,$1D
	ld bc,Unknown_0x75ADA
	jp Unknown_0x0846

UnknownData_0x7535C:
INCBIN "baserom.gb", $7535C, $7541E - $7535C
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4C28
	call Unknown_0x251B
	ret nc
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846

UnknownData_0x75433:
INCBIN "baserom.gb", $75433, $75463 - $75433
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x75482
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x74C36
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$548A
	jp Unknown_0x0846

Unknown_0x75482:
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846

UnknownData_0x7548A:
INCBIN "baserom.gb", $7548A, $75490 - $7548A

Unknown_0x75490:
INCBIN "baserom.gb", $75490, $754CE - $75490
	push bc
	ld e,$48
	ld a,[de]
	ld h,a
	call Unknown_0x0BBA
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret

UnknownData_0x754DB:
INCBIN "baserom.gb", $754DB, $755E7 - $754DB
	call Unknown_0x0647
	and $01
	ld l,a
	ld e,$5C
	ld a,[de]
	dec a
	rlca
	add a,l
	rlca
	ld hl,$4C86
	add a,l
	ld l,a
	jr nc,Unknown_0x755FC
	inc h

Unknown_0x755FC:
	ld a,[hli]
	ld e,[hl]
	ld hl,$DD14
	ld [hli],a
	ld [hl],e
	ret
	ld hl,$DD14
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hli]
	ld e,$27
	ld [de],a
	cp $FF
	ret z
	ld a,l
	ld e,h
	ld hl,$DD14
	ld [hli],a
	ld [hl],e
	ret
	ld hl,$DD12
	res 1,[hl]
	ret

UnknownData_0x7561F:
INCBIN "baserom.gb", $7561F, $7563B - $7561F
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x7565E
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x74C36
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld h,d
	ld l,$1F
	ld [hl],$5D
	inc l
	ld [hl],$4D
	inc l
	ld [hl],$98
	ret

Unknown_0x7565E:
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846

UnknownData_0x75666:
INCBIN "baserom.gb", $75666, $7571B - $75666
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x7575E
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x74F0B
	jr nc,Unknown_0x75731
	call Unknown_0x74F04

Unknown_0x75731:
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	ret nz
	call Unknown_0x203D
	ld e,$45
	ld a,[de]
	jr nc,Unknown_0x75753
	rlca
	jr c,Unknown_0x75756

Unknown_0x75742:
	ld e,$04
	ld b,$20
	call Unknown_0x1F9C
	jr c,Unknown_0x75756
	ld e,$1D
	ld bc,Unknown_0x75776
	jp Unknown_0x0846

Unknown_0x75753:
	rlca
	jr c,Unknown_0x75742

Unknown_0x75756:
	ld e,$1D
	ld bc,Unknown_0x75766
	jp Unknown_0x0846

Unknown_0x7575E:
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846

Unknown_0x75766:
INCBIN "baserom.gb", $75766, $75776 - $75766

Unknown_0x75776:
INCBIN "baserom.gb", $75776, $7578C - $75776
	call Unknown_0x74FEF
	ret c
	bit 7,a
	ret z
	ld hl,$DD12
	set 7,[hl]
	ld e,$1D
	ld bc,Unknown_0x757A0
	jp Unknown_0x0846

Unknown_0x757A0:
INCBIN "baserom.gb", $757A0, $757A9 - $757A0

Unknown_0x757A9:
INCBIN "baserom.gb", $757A9, $757BC - $757A9
	call Unknown_0x74FEF
	ret c
	bit 7,a
	ret z
	ld hl,$DD12
	set 7,[hl]
	ld e,$22
	ld hl,Unknown_0x74299
	ld a,$1E
	call FarCall
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$1D
	ld bc,Unknown_0x757A9
	jp Unknown_0x0846
	ld hl,$4C76
	ld e,$27
	ld a,[de]
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x757EB
	inc h

Unknown_0x757EB:
	jp Unknown_0x20BE
	ld h,d
	ld l,$27
	ld a,[hl]
	inc [hl]
	rlca
	ld hl,$4C7C
	add a,l
	ld l,a
	jr nc,Unknown_0x757FC
	inc h

Unknown_0x757FC:
	jp Unknown_0x20F9

UnknownData_0x757FF:
INCBIN "baserom.gb", $757FF, $75827 - $757FF
	ld e,$41
	ld a,[de]
	ld e,a
	rlca
	add a,e
	ld hl,$4C80
	add a,l
	ld l,a
	jr nc,Unknown_0x75835
	inc h

Unknown_0x75835:
	call Unknown_0x20F9
	jp Unknown_0x2123

UnknownData_0x7583B:
INCBIN "baserom.gb", $7583B, $75850 - $7583B
	call Unknown_0x75057
	ret c
	ld e,$1D
	ld bc,$585C
	jp Unknown_0x0846

UnknownData_0x7585C:
INCBIN "baserom.gb", $7585C, $758C7 - $7585C
	call Unknown_0x0DA4
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x758DE
	call Unknown_0x74F0B
	ret nc
	ld e,$1D
	ld bc,$5892
	jp Unknown_0x0846

Unknown_0x758DE:
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x758FB
	call Unknown_0x74F0B
	ret nc
	jp Unknown_0x74F04

Unknown_0x758FB:
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846

UnknownData_0x75903:
INCBIN "baserom.gb", $75903, $7594B - $75903
	call Unknown_0x75057
	ret c
	ld e,$1D
	ld bc,$5973
	jp Unknown_0x0846

UnknownData_0x75957:
INCBIN "baserom.gb", $75957, $75A56 - $75957
	ld bc,$4C28
	call Unknown_0x251B
	jr c,Unknown_0x75A75
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x74C36
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$5A7D
	jp Unknown_0x0846

Unknown_0x75A75:
	ld e,$1D
	ld bc,$5ADA
	jp Unknown_0x0846

UnknownData_0x75A7D:
INCBIN "baserom.gb", $75A7D, $75AB0 - $75A7D

Unknown_0x75AB0:
INCBIN "baserom.gb", $75AB0, $75ADA - $75AB0

Unknown_0x75ADA:
INCBIN "baserom.gb", $75ADA, $75AF5 - $75ADA
	ld hl,$DD12
	res 3,[hl]
	ret
	call Unknown_0x2323
	ret nz
	ld b,$00
	ld e,$4C
	ld a,[de]
	cp $5B
	ret nc
	inc b
	cp $2E
	jr nc,Unknown_0x75B0D
	inc b

Unknown_0x75B0D:
	ld e,$5C
	ld a,b
	ld [de],a
	ld hl,$DD12
	bit 1,[hl]
	ret nz
	ld e,$4C
	ld a,[de]
	add a,$14
	ld hl,$DD13
	cp [hl]
	jr c,Unknown_0x75B23
	ret nz

Unknown_0x75B23:
	ld a,[de]
	ld [hl],a
	ld hl,$DD12
	set 1,[hl]
	ret

UnknownData_0x75B2B:
INCBIN "baserom.gb", $75B2B, $75B87 - $75B2B
	call Unknown_0x0DA4
	ld bc,$5B79
	call Unknown_0x255B
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	cp $50
	ret nz
	ld e,$1D
	ld bc,$5BF1
	jp Unknown_0x0846
	ld hl,$DB53
	ld e,$07
	ld a,[de]
	sub [hl]
	cp $60
	jr c,Unknown_0x75BB1
	ld a,$01
	jr Unknown_0x75BB2

Unknown_0x75BB1:
	xor a

Unknown_0x75BB2:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x75BB6:
INCBIN "baserom.gb", $75BB6, $75BC6 - $75BB6
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5B79
	call Unknown_0x255B
	ld hl,$DB53
	ld e,$07
	ld a,[de]
	sub [hl]
	cp $60
	ret c
	ld e,$22
	ld hl,Unknown_0x74299
	ld a,$1E
	call FarCall
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$1D
	ld bc,$5B47
	jp Unknown_0x0846

UnknownData_0x75BF1:
INCBIN "baserom.gb", $75BF1, $75C2A - $75BF1
	ld bc,$5B79
	jp Unknown_0x255B
	xor a
	ld [$DF16],a
	ret
	ld a,[$DF16]
	ld e,$27
	ld [de],a
	ret
	ld hl,Unknown_0x74CE4
	ld a,$03
	call FarCall
	ret

UnknownData_0x75C45:
INCBIN "baserom.gb", $75C45, $75CC0 - $75C45
	ld e,$11
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret

UnknownData_0x75CC7:
INCBIN "baserom.gb", $75CC7, $75D35 - $75CC7
	call Unknown_0x1ED3
	call Unknown_0x1EE6
	jp Unknown_0x0DA4

UnknownData_0x75D3E:
INCBIN "baserom.gb", $75D3E, $75D54 - $75D3E
	push bc
	call Unknown_0x0647
	ld b,a
	ld c,$05
	call Unknown_0x2885
	ld hl,$4CDC
	ld a,b
	rlca
	rlca
	add a,b
	add a,l
	ld l,a
	jr nc,Unknown_0x75D6A
	inc h

Unknown_0x75D6A:
	ld b,h
	ld c,l
	call Unknown_0x1FD1
	ld h,b
	ld l,c
	call Unknown_0x2123
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	pop bc
	ret

UnknownData_0x75D7D:
INCBIN "baserom.gb", $75D7D, $75D88 - $75D7D
	ld bc,Unknown_0x74CF5
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$15
	ld a,[hl]
	sub $08
	ret c
	rlca
	rlca
	add a,c
	ld c,a
	jr nc,Unknown_0x75D9C
	inc b

Unknown_0x75D9C:
	call Unknown_0x24E8
	call Unknown_0x75DA8
	ld bc,$4CAE
	jp Unknown_0x255B

Unknown_0x75DA8:
	ld e,$5E
	ld a,[bc]
	ld [de],a
	inc bc
	inc e
	ld a,[bc]
	ld [de],a
	ret

UnknownData_0x75DB1:
INCBIN "baserom.gb", $75DB1, $75DE7 - $75DB1
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4CAE
	jp Unknown_0x255B

UnknownData_0x75DF6:
INCBIN "baserom.gb", $75DF6, $75E7B - $75DF6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4CAE
	jp Unknown_0x255B

UnknownData_0x75E87:
INCBIN "baserom.gb", $75E87, $75F48 - $75E87
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4CBC
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x74CD8
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld h,d
	ld l,$26
	dec [hl]
	jr z,Unknown_0x75F77
	ld e,$0D
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	sra a
	ld [de],a
	dec e
	ld a,l
	rra
	ld [de],a
	ld hl,Unknown_0x74D34
	jp Unknown_0x20BE

Unknown_0x75F77:
	ld h,d
	jp Unknown_0x0BBA

UnknownData_0x75F7B:
INCBIN "baserom.gb", $75F7B, $75FB4 - $75F7B
	call Unknown_0x1ED3
	jp Unknown_0x0DA4
	ld hl,$DD12
	bit 7,[hl]
	jr nz,Unknown_0x75FC4
	xor a
	jr Unknown_0x75FC8

Unknown_0x75FC4:
	res 7,[hl]
	ld a,$01

Unknown_0x75FC8:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x75FCC:
INCBIN "baserom.gb", $75FCC, $76065 - $75FCC
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4CCA
	jp Unknown_0x255B
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4CCA
	jp Unknown_0x255B

UnknownData_0x7607D:
INCBIN "baserom.gb", $7607D, $760A3 - $7607D
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4CCA
	call Unknown_0x255B
	ret c
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	ret nz
	ld e,$1D
	ld bc,Unknown_0x760C1
	jp Unknown_0x0846

Unknown_0x760C1:
INCBIN "baserom.gb", $760C1, $76125 - $760C1
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$4C
	ld a,[hl]
	or a
	jr nz,Unknown_0x76133
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x76133:
	ld hl,$DD12
	bit 3,[hl]
	ret nz
	call Unknown_0x2809
	ret c
	ld bc,Unknown_0x74D37
	call Unknown_0x24E8
	ld e,$04
	ld b,$18
	call Unknown_0x1F9C
	ret nc
	ld e,$07
	ld b,$18
	call Unknown_0x1F9C
	ret nc
	ld hl,$DD12
	set 2,[hl]
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$60
	ld [hl],$BF
	ld l,$61
	ld [hl],$C0
	ld e,$01
	ld bc,Unknown_0x75490
	call Unknown_0x0C3A
	ld a,$80
	ld [$A054],a
	ld e,$48
	ld a,[de]
	ld [$A048],a
	ld h,d
	jp Unknown_0x0BBA

UnknownData_0x7617B:
INCBIN "baserom.gb", $7617B, $761AA - $7617B
	call Unknown_0x0DA4
	ld bc,$4CAE
	call Unknown_0x255B
	ret c
	call Unknown_0x74F0B
	ret nc
	ld e,$1D
	ld bc,Unknown_0x761C0
	jp Unknown_0x0846

Unknown_0x761C0:
INCBIN "baserom.gb", $761C0, $761E6 - $761C0
	call Unknown_0x761F4
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$6207
	jp Unknown_0x0846

Unknown_0x761F4:
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4CAE
	call Unknown_0x255B
	jr c,Unknown_0x76205
	jp Unknown_0x1A25

Unknown_0x76205:
	pop hl
	ret

UnknownData_0x76207:
INCBIN "baserom.gb", $76207, $7621C - $76207
	call Unknown_0x761F4
	bit 7,a
	ret z
	ld e,$1D
	ld bc,Unknown_0x7622A
	jp Unknown_0x0846

Unknown_0x7622A:
INCBIN "baserom.gb", $7622A, $7623E - $7622A
	ld bc,$4CAE
	jp Unknown_0x255B

UnknownData_0x76244:
INCBIN "baserom.gb", $76244, $762DB - $76244
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	push bc
	ld b,h
	ld c,l
	call Unknown_0x0647
	and $03
	rlca
	add a,c
	ld c,a
	jr nc,Unknown_0x762EF
	inc b

Unknown_0x762EF:
	call Unknown_0x24E8
	pop bc
	ret

UnknownData_0x762F4:
INCBIN "baserom.gb", $762F4, $7631E - $762F4
	call Unknown_0x761F4
	bit 7,a
	ret z
	ld e,$1D
	ld bc,$632C
	jp Unknown_0x0846

UnknownData_0x7632C:
INCBIN "baserom.gb", $7632C, $7640F - $7632C
	call Unknown_0x764B0
	call Unknown_0x0DA4
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	sub [hl]
	ld b,a
	inc e
	ld a,[de]
	inc hl
	sbc a,[hl]
	ret nc
	ld a,b
	cp $E8
	ret nc
	ld e,$1D
	ld bc,Unknown_0x7642E
	jp Unknown_0x0846

Unknown_0x7642E:
INCBIN "baserom.gb", $7642E, $76443 - $7642E
	call Unknown_0x764B0
	call Unknown_0x0DA4
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	ld b,a
	inc e
	inc hl
	ld a,[de]
	sbc a,[hl]
	ret c
	ld a,b
	cp $18
	ret c
	ld e,$1D
	ld bc,$6462
	jp Unknown_0x0846

UnknownData_0x76462:
INCBIN "baserom.gb", $76462, $7649E - $76462
	call Unknown_0x764B0
	ld bc,$6363
	call Unknown_0x233C
	ret nc
	ld e,$1D
	ld bc,Unknown_0x76B2A
	jp Unknown_0x0846

Unknown_0x764B0:
	ld hl,$A07A
	bit 7,[hl]
	jr z,Unknown_0x764CB
	ld hl,$DD19
	ld a,[hl]
	add a,$90
	ld [hl],a
	jr nc,Unknown_0x764CB
	ld hl,$A079
	ld a,[hl]
	add a,$01
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hl],a

Unknown_0x764CB:
	ld hl,$DD17
	ld a,[$DB53]
	sub [hl]
	ld [$DD18],a
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
	ld a,[$DB53]
	ld [$DD17],a
	ret

Unknown_0x764E9:
	ld hl,$DD19
	ld a,[hl]
	add a,$08
	ld [hl],a
	jp nc,Unknown_0x764CB
	ld hl,$A079
	ld a,[hl]
	add a,$01
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hl],a
	jp Unknown_0x764CB

Unknown_0x76501:
	ld a,[$DD18]
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
	ret
	ld a,d
	ld [$DD27],a
	ret
	ld hl,$A079
	ld a,[bc]
	ld [hli],a
	inc bc
	ld a,[bc]
	ld [hl],a
	inc bc
	ret
	xor a
	ld [$DD16],a
	ret
	ld e,$3D
	ld a,[bc]
	ld [de],a
	inc bc
	inc e
	ld a,[bc]
	ld [de],a
	inc bc
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
	cp $FF
	ret z
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

UnknownData_0x76546:
INCBIN "baserom.gb", $76546, $76561 - $76546
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	cp $02
	jr nc,Unknown_0x76589
	push hl
	rlca
	ld h,d
	ld l,$41
	add a,[hl]
	inc [hl]
	pop hl
	add a,l
	ld l,a
	jr nc,Unknown_0x7657B
	inc h

Unknown_0x7657B:
	ld a,[hl]
	or a
	jr z,Unknown_0x76589
	ld e,a
	call Unknown_0x0647
	cp e
	jr c,Unknown_0x76589
	xor a
	jr Unknown_0x7658B

Unknown_0x76589:
	ld a,$01

Unknown_0x7658B:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x7658F:
INCBIN "baserom.gb", $7658F, $765BD - $7658F

Unknown_0x765BD:
	call Unknown_0x764B0
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$6363
	call Unknown_0x233C
	ret nc
	ld e,$1D
	ld bc,$6B2A
	call Unknown_0x0846
	scf
	ret

Unknown_0x765D7:
	ld hl,$DD16
	bit 0,[hl]
	ret z
	ld e,$15
	ld a,[de]
	ld hl,$65EB
	add a,l
	ld l,a
	jr nc,Unknown_0x765E8
	inc h

Unknown_0x765E8:
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x765EB:
INCBIN "baserom.gb", $765EB, $765F7 - $765EB

Unknown_0x765F7:
	ld hl,$DB51
	ld e,$04
	ld a,[de]
	sub [hl]
	cp $50
	jr c,Unknown_0x76606
	ld a,$C0
	jr Unknown_0x76608

Unknown_0x76606:
	ld a,$40

Unknown_0x76608:
	ld e,$45
	ld [de],a
	ret
	call Unknown_0x76763
	jr c,Unknown_0x76614
	xor a
	jr Unknown_0x76616

Unknown_0x76614:
	ld a,$01

Unknown_0x76616:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x7661A:
INCBIN "baserom.gb", $7661A, $7663E - $7661A
	call Unknown_0x764B0
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$6363
	call Unknown_0x233C
	jr c,Unknown_0x76660
	call Unknown_0x765D7
	call Unknown_0x7674E
	ret nc
	call Unknown_0x74F04
	call Unknown_0x76763
	ret nc
	jp Unknown_0x76668

Unknown_0x76660:
	ld e,$1D
	ld bc,Unknown_0x76B2A
	jp Unknown_0x0846

Unknown_0x76668:
	xor a
	ld e,$12
	ld [de],a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret
	push bc
	ld hl,$DD17
	ld e,$07
	ld a,[de]
	sub [hl]
	ld b,a
	ld e,$41
	sub $18
	jr nc,Unknown_0x76683
	cpl
	inc a

Unknown_0x76683:
	cp $08
	jr c,Unknown_0x7668B
	ld a,$18
	ld [de],a
	inc e

Unknown_0x7668B:
	ld a,b
	sub $40
	jr nc,Unknown_0x76692
	cpl
	inc a

Unknown_0x76692:
	cp $08
	jr c,Unknown_0x7669F
	ld a,$40
	ld [de],a
	ld a,e
	cp $42
	jr z,Unknown_0x766A2
	inc e

Unknown_0x7669F:
	ld a,$68
	ld [de],a

Unknown_0x766A2:
	pop bc
	ret
	call Unknown_0x0647
	cp $80
	jr c,Unknown_0x766B9
	call Unknown_0x0647
	and $01
	ld e,$41
	add a,e
	ld e,a
	ld a,[de]
	ld e,$41
	ld [de],a
	ret

Unknown_0x766B9:
	push bc
	ld b,$A0
	ld c,$07
	ld hl,$DB53
	ld a,[bc]
	sub [hl]
	ld b,a
	ld e,$41
	ld a,[de]
	sub b
	jr nc,Unknown_0x766CC
	cpl
	inc a

Unknown_0x766CC:
	ld c,a
	inc e
	ld a,[de]
	sub b
	jr nc,Unknown_0x766D4
	cpl
	inc a

Unknown_0x766D4:
	cp c
	jr c,Unknown_0x766D8
	dec e

Unknown_0x766D8:
	ld a,[de]
	ld e,$41
	ld [de],a
	pop bc
	ret
	ld e,$07
	ld a,[de]
	ld hl,$DD17
	sub [hl]
	ld h,d
	ld l,$41
	sub [hl]
	jr c,Unknown_0x766F0
	ld hl,$FF00
	jr Unknown_0x766F5

Unknown_0x766F0:
	ld hl,$0100
	cpl
	inc a

Unknown_0x766F5:
	cp $3C
	jr c,Unknown_0x766FB
	sla h

Unknown_0x766FB:
	ld e,$0F
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

UnknownData_0x76703:
INCBIN "baserom.gb", $76703, $76731 - $76703
	call Unknown_0x764B0
	call Unknown_0x0DA4
	ld bc,$6363
	call Unknown_0x233C
	jr c,Unknown_0x76746
	call Unknown_0x7674E
	ret nc
	jp Unknown_0x74EFD

Unknown_0x76746:
	ld e,$1D
	ld bc,Unknown_0x76B2A
	jp Unknown_0x0846

Unknown_0x7674E:
	ld e,$0E
	ld a,[de]
	rlca
	ld hl,$DB51
	ld e,$04
	ld a,[de]
	jr c,Unknown_0x7675F
	sub [hl]
	cp $8B
	ccf
	ret

Unknown_0x7675F:
	sub [hl]
	cp $15
	ret

Unknown_0x76763:
	ld e,$10
	ld a,[de]
	rlca
	ld hl,$DB53
	ld e,$07
	ld a,[de]
	jr c,Unknown_0x76776
	sub [hl]
	ld h,d
	ld l,$3F
	cp [hl]
	ccf
	ret

Unknown_0x76776:
	sub [hl]
	ld h,d
	ld l,$3F
	cp [hl]
	ret
	ld hl,$DD16
	bit 0,[hl]
	jr nz,Unknown_0x76786
	xor a
	jr Unknown_0x76788

Unknown_0x76786:
	ld a,$01

Unknown_0x76788:
	ld e,$27
	ld [de],a
	ret
	ld hl,$DD16
	set 0,[hl]
	ret
	ld hl,$DD16
	res 0,[hl]
	ret

UnknownData_0x76798:
INCBIN "baserom.gb", $76798, $767ED - $76798
	call Unknown_0x765BD
	ret c
	call Unknown_0x228D
	ret nc
	ld e,$1D
	ld bc,$67FD
	jp Unknown_0x0846

UnknownData_0x767FD:
INCBIN "baserom.gb", $767FD, $768BD - $767FD
	call Unknown_0x765BD
	ret c
	call Unknown_0x228D
	ret nc
	ld e,$1D
	ld bc,$6915
	jp Unknown_0x0846
	ld e,$07
	ld hl,$DD17
	ld a,[de]
	sub [hl]
	cp $2C
	jr c,Unknown_0x768F9
	cp $54
	jr nc,Unknown_0x76900
	ld a,$01
	ld e,$42
	ld [de],a
	call Unknown_0x0647
	cp $40
	jr c,Unknown_0x76900
	cp $80
	jr c,Unknown_0x768F9
	ld a,$01
	ld e,$27
	ld [de],a
	ld a,$FF
	ld e,$42
	ld [de],a
	jp Unknown_0x76668

Unknown_0x768F9:
	ld hl,Unknown_0x7690F
	ld a,$01
	jr Unknown_0x76904

Unknown_0x76900:
	ld hl,Unknown_0x76912
	xor a

Unknown_0x76904:
	ld e,$41
	ld [de],a
	call Unknown_0x20BE
	xor a
	ld e,$27
	ld [de],a
	ret

Unknown_0x7690F:
INCBIN "baserom.gb", $7690F, $76912 - $7690F

Unknown_0x76912:
INCBIN "baserom.gb", $76912, $7699D - $76912
	ld e,$42
	ld a,[de]
	cp $FF
	jp z,Unknown_0x76668
	ld hl,$69B9
	ld e,$41
	ld a,[de]
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x769B1
	inc h

Unknown_0x769B1:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x769B9:
INCBIN "baserom.gb", $769B9, $769BD - $769B9
	push bc
	ld e,$42
	ld a,[de]
	cp $FF
	jr nz,Unknown_0x769C9
	ld a,$06
	jr Unknown_0x769D1

Unknown_0x769C9:
	rlca
	ld b,a
	ld e,$41
	ld a,[de]
	add a,b
	add a,$07

Unknown_0x769D1:
	ld e,$D9
	call Unknown_0x2319
	pop bc
	ret

UnknownData_0x769D8:
INCBIN "baserom.gb", $769D8, $76A19 - $769D8
	call Unknown_0x764B0
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$6363
	call Unknown_0x233C
	jr c,Unknown_0x76A38
	call Unknown_0x7674E
	ret nc
	call Unknown_0x74F04
	call Unknown_0x76763
	ret nc
	jp Unknown_0x76668

Unknown_0x76A38:
	ld e,$1D
	ld bc,Unknown_0x76B2A
	jp Unknown_0x0846

UnknownData_0x76A40:
INCBIN "baserom.gb", $76A40, $76A99 - $76A40
	call Unknown_0x764B0
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$6363
	call Unknown_0x233C
	ret nc
	ld e,$1D
	ld bc,$6B2A
	jp Unknown_0x0846
	ld e,$07
	ld hl,$DD17
	ld a,[de]
	sub [hl]
	cp $2C
	jr c,Unknown_0x76ACC
	cp $54
	jr nc,Unknown_0x76AC8
	call Unknown_0x202B
	jr c,Unknown_0x76ACC

Unknown_0x76AC8:
	ld a,$01
	jr Unknown_0x76ACD

Unknown_0x76ACC:
	xor a

Unknown_0x76ACD:
	ld e,$41
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$41
	ld a,[de]
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jp nc,Unknown_0x20BE
	inc h
	jp Unknown_0x20BE

UnknownData_0x76AE6:
INCBIN "baserom.gb", $76AE6, $76B2A - $76AE6

Unknown_0x76B2A:
INCBIN "baserom.gb", $76B2A, $76B45 - $76B2A
	call Unknown_0x764B0
	call Unknown_0x765D7
	call Unknown_0x76B67
	ret nz
	ld hl,$DD16
	res 4,[hl]
	ld b,$00
	ld e,$4C
	ld a,[de]
	cp $5B
	ret nc
	inc b
	cp $3D
	jr nc,Unknown_0x76B62
	inc b

Unknown_0x76B62:
	ld e,$5C
	ld a,b
	ld [de],a
	ret

Unknown_0x76B67:
	ld bc,$6363
	call Unknown_0x255B
	ld e,$41
	ld a,[de]
	or a
	ret nz
	call Unknown_0x76B9D
	call Unknown_0x0C71
	call Unknown_0x76B86
	ld h,d
	ld l,$60
	ld [hl],$3F
	ld l,$44
	ld [hl],$18
	xor a
	ret

Unknown_0x76B86:
	ld hl,$DD21
	ld e,$03
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
	ld a,[hli]
	ld [de],a
	ret

Unknown_0x76B9D:
	ld hl,$DD21
	ld e,$03
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hli],a
	ret
	ld hl,$DD16
	set 4,[hl]
	ret

UnknownData_0x76BBA:
INCBIN "baserom.gb", $76BBA, $76C22 - $76BBA
	call Unknown_0x764B0
	ld bc,$6363
	call Unknown_0x255B
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x76C34
	dec a
	ld [de],a
	ret

Unknown_0x76C34:
	ld a,$08
	ld [de],a
	ld e,$40
	ld a,[de]
	add a,$14
	ld e,$D9
	call Unknown_0x2319
	ld e,$40
	ld a,[de]
	inc a
	cp $04
	jr c,Unknown_0x76C4A
	xor a

Unknown_0x76C4A:
	ld [de],a
	ret
	call Unknown_0x764B0
	call Unknown_0x21D8
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$6363
	call Unknown_0x255B
	ld hl,$DB51
	ld e,$04
	ld a,[de]
	sub [hl]
	cp $50
	ld e,$3C
	ld a,[de]
	jr c,Unknown_0x76C79
	rlca
	jr c,Unknown_0x76C7C

Unknown_0x76C6F:
	ld hl,$DD16
	set 2,[hl]
	call Unknown_0x74F04
	jr Unknown_0x76C7C

Unknown_0x76C79:
	rlca
	jr c,Unknown_0x76C6F

Unknown_0x76C7C:
	ld hl,$DB53
	ld e,$07
	ld a,[de]
	sub [hl]
	cp $40
	ld e,$3A
	ld a,[de]
	jr c,Unknown_0x76C94
	rlca
	ret c

Unknown_0x76C8C:
	ld hl,$DD16
	set 3,[hl]
	jp Unknown_0x76668

Unknown_0x76C94:
	rlca
	ret nc
	jr Unknown_0x76C8C
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	cp $50
	jr nc,Unknown_0x76CA7
	ld a,$40
	jr Unknown_0x76CA9

Unknown_0x76CA7:
	ld a,$C0

Unknown_0x76CA9:
	ld e,$45
	ld [de],a
	ld hl,Unknown_0x76CD8
	call Unknown_0x21A5
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	cp $40
	ld hl,Unknown_0x76CD8
	ld e,$12
	ld a,[hli]
	ld [de],a
	ld e,$39
	jr c,Unknown_0x76CD2
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

Unknown_0x76CD2:
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

Unknown_0x76CD8:
INCBIN "baserom.gb", $76CD8, $76CDB - $76CD8
	ld hl,$DD16
	bit 2,[hl]
	jr z,Unknown_0x76CEA
	bit 3,[hl]
	jr z,Unknown_0x76CEA
	ld a,$01
	jr Unknown_0x76CEB

Unknown_0x76CEA:
	xor a

Unknown_0x76CEB:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x76CEF:
INCBIN "baserom.gb", $76CEF, $76CF7 - $76CEF
	push bc
	call Unknown_0x0647
	and $07
	add a,$0C
	ld e,$D9
	call Unknown_0x2319
	pop bc
	ret

UnknownData_0x76D06:
INCBIN "baserom.gb", $76D06, $76D17 - $76D06
	call Unknown_0x764B0
	ld bc,$6363
	call Unknown_0x255B
	call Unknown_0x2422
	ld a,[$CD4D]
	or a
	ret nz
	ld e,$1D
	ld bc,$6DDE
	jp Unknown_0x0846
	push bc
	ld hl,$CD4D
	ld [hl],$01
	inc l
	ld a,$60
	ld [hli],a
	ld a,$88
	ld [hli],a
	ld a,$00
	ld [hli],a
	ld a,$40
	ld [hli],a
	ld [hl],$80
	inc l
	ld [hl],$06
	pop bc
	ret

UnknownData_0x76D4A:
INCBIN "baserom.gb", $76D4A, $76E58 - $76D4A

Unknown_0x76E58:
	call Unknown_0x764E9
	ld bc,$6D4A
	call Unknown_0x233C
	ret nc
	ld e,$1D
	ld bc,Unknown_0x77434
	jp Unknown_0x0846
	ld a,$11
	ld [$DD1A],a
	ret
	push bc
	ld e,$3D
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a

Unknown_0x76E78:
	ld a,[hli]
	cp $FF
	jr nz,Unknown_0x76E82
	ld e,$27
	ld [de],a
	pop bc
	ret

Unknown_0x76E82:
	cp $0B
	jr nz,Unknown_0x76E90
	call Unknown_0x0647
	and $01
	ld e,$43
	ld [de],a
	jr Unknown_0x76E78

Unknown_0x76E90:
	cp $05
	jr nc,Unknown_0x76EB9
	or a
	jr z,Unknown_0x76EAD
	sub $01
	rlca
	ld c,a
	ld e,$5C
	ld a,[de]
	or a
	jr nz,Unknown_0x76EA7
	ld e,$43
	ld a,[de]
	add a,c
	jr Unknown_0x76EAD

Unknown_0x76EA7:
	call Unknown_0x0647
	and $01
	add a,c

Unknown_0x76EAD:
	ld e,$27
	ld [de],a
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	pop bc
	ret

Unknown_0x76EB9:
	ld [$DD1B],a
	jp Unknown_0x76E78
	ld e,$27
	ld a,[de]
	rlca
	ld hl,$6D58
	add a,l
	ld l,a
	jr nc,Unknown_0x76ECB
	inc h

Unknown_0x76ECB:
	ld a,[hli]
	ld e,$3F
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld e,$3F
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	ld a,[hli]
	cp $0E
	jr nz,Unknown_0x76EEC
	ld a,[hli]
	ld [$DD1C],a
	ld a,[hli]
	ld [$DD1D],a
	ld a,[hli]
	ld [$DD1E],a
	ld a,[hli]

Unknown_0x76EEC:
	ld e,$27
	ld [de],a
	ld e,$3F
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

UnknownData_0x76EF7:
INCBIN "baserom.gb", $76EF7, $76F37 - $76EF7
	call Unknown_0x764E9
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x76F9C
	ld bc,$6D4A
	call Unknown_0x233C
	ret nc
	ld e,$1D
	ld bc,Unknown_0x77434
	jp Unknown_0x0846
	ld hl,$DD16
	res 0,[hl]
	ret
	ld hl,$DD16
	set 0,[hl]
	ret
	ld a,[$DD16]
	bit 0,a
	jr z,Unknown_0x76F96
	ld hl,$DD1B
	ld a,[hli]
	cp $05
	jr z,Unknown_0x76F96
	cp $09
	jr c,Unknown_0x76F8C
	jr z,Unknown_0x76F85
	call Unknown_0x0647
	ld e,$00

Unknown_0x76F7B:
	sub $56
	jr c,Unknown_0x76F82
	inc e
	jr Unknown_0x76F7B

Unknown_0x76F82:
	ld a,e
	jr Unknown_0x76F8E

Unknown_0x76F85:
	call Unknown_0x0647
	and $01
	jr Unknown_0x76F8E

Unknown_0x76F8C:
	sub $06

Unknown_0x76F8E:
	add a,l
	ld l,a
	jr nc,Unknown_0x76F93
	inc h

Unknown_0x76F93:
	ld a,[hl]
	jr Unknown_0x76F98

Unknown_0x76F96:
	ld a,$FF

Unknown_0x76F98:
	ld e,$27
	ld [de],a
	ret

Unknown_0x76F9C:
	ld a,[$DD1A]
	cp $11
	ret nz
	ld hl,$DB51
	ld e,$04
	ld a,[de]
	sub [hl]
	cp $50
	ld e,$0E
	ld a,[de]
	jr c,Unknown_0x76FB8
	rlca
	jr c,Unknown_0x76FBB

Unknown_0x76FB3:
	call Unknown_0x74F04
	jr Unknown_0x76FBB

Unknown_0x76FB8:
	rlca
	jr c,Unknown_0x76FB3

Unknown_0x76FBB:
	ld hl,$DB53
	ld e,$07
	ld a,[de]
	sub [hl]
	cp $40
	ld e,$10
	ld a,[de]
	jr c,Unknown_0x76FCE
	rlca
	ret c
	jp Unknown_0x76668

Unknown_0x76FCE:
	rlca
	ret nc
	jp Unknown_0x76668
	ld a,[bc]
	inc bc
	ld [$DD1A],a
	ret
	ld a,[$DD1A]
	ld h,a
	and $0F
	dec a
	rlca
	ld l,a
	rlca
	add a,l
	ld l,a
	ld a,h
	swap a
	and $0F
	sub $02
	swap a
	ld h,a
	rrca
	add a,h
	add a,l
	ld hl,$7008
	add a,l
	ld l,a
	jr nc,Unknown_0x76FFA
	inc h

Unknown_0x76FFA:
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

UnknownData_0x77008:
INCBIN "baserom.gb", $77008, $77062 - $77008
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld a,[$DD1A]
	cp $11
	jr z,Unknown_0x77076
	ld a,$06
	add a,l
	ld l,a
	jr nc,Unknown_0x77076
	inc h

Unknown_0x77076:
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

UnknownData_0x77084:
INCBIN "baserom.gb", $77084, $7716E - $77084
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld a,[$DD1A]
	dec a
	and $01
	rlca
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x77183
	inc h

Unknown_0x77183:
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

UnknownData_0x77191:
INCBIN "baserom.gb", $77191, $77212 - $77191
	call Unknown_0x76E58
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x7721E
	dec a
	ld [de],a
	ret

Unknown_0x7721E:
	ld a,$08
	ld [de],a
	ld e,$41
	ld a,[de]
	cp $10
	ret nc
	inc a
	ld [de],a
	ld a,$1A
	ld e,$D9
	jp Unknown_0x2319

UnknownData_0x77230:
INCBIN "baserom.gb", $77230, $77255 - $77230
	ld a,[$DD1A]
	swap a
	and $0F
	cp $03
	jp c,Unknown_0x1EC0
	jp Unknown_0x765F7
	push bc
	ld a,$1B

Unknown_0x77267:
	push af
	ld e,$D9
	call Unknown_0x2319
	pop af
	inc a
	cp $1F
	jr c,Unknown_0x77267
	pop bc
	ret

UnknownData_0x77275:
INCBIN "baserom.gb", $77275, $77297 - $77275
	push bc
	ld a,[$DD1A]
	ld e,a
	swap a
	and $0F
	sub $03
	ld l,a
	cp $02
	jr z,Unknown_0x772C5
	ld a,e
	and $0F
	dec a
	and $01
	rlca
	ld e,a
	ld a,l
	rlca
	rlca
	add a,e
	ld bc,$72DB
	add a,c
	ld c,a
	jr nc,Unknown_0x772BB
	inc b

Unknown_0x772BB:
	ld hl,$DD1F
	ld a,[bc]
	ld [hli],a
	inc bc
	ld a,[bc]
	ld [hl],a
	pop bc
	ret

Unknown_0x772C5:
	ld e,$10
	ld a,[de]
	rlca
	jr c,Unknown_0x772D0
	ld bc,Unknown_0x772F6
	jr Unknown_0x772D3

Unknown_0x772D0:
	ld bc,$72F3

Unknown_0x772D3:
	ld hl,$DD1F
	ld a,c
	ld [hli],a
	ld [hl],b
	pop bc
	ret

UnknownData_0x772DB:
INCBIN "baserom.gb", $772DB, $772F6 - $772DB

Unknown_0x772F6:
INCBIN "baserom.gb", $772F6, $772F9 - $772F6
	ld hl,$DD1F
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hli]
	cp $FF
	jr nz,Unknown_0x7730A
	ld a,$01
	ld e,$27
	ld [de],a
	ret

Unknown_0x7730A:
	push bc
	ld b,h
	ld c,l
	ld hl,$DD1F
	ld [hl],c
	inc hl
	ld [hl],b
	add a,$1F
	ld e,$D9
	call Unknown_0x2319
	xor a
	ld e,$27
	ld [de],a
	pop bc
	ret

UnknownData_0x77320:
INCBIN "baserom.gb", $77320, $77329 - $77320
	ld hl,$DD16
	bit 4,[hl]
	jr nz,Unknown_0x77335
	set 4,[hl]
	xor a
	jr Unknown_0x77337

Unknown_0x77335:
	ld a,$01

Unknown_0x77337:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x7733B:
INCBIN "baserom.gb", $7733B, $773DC - $7733B
	xor a
	ld [$DD28],a
	ret

UnknownData_0x773E1:
INCBIN "baserom.gb", $773E1, $773F3 - $773E1
	call Unknown_0x764E9
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$6D4A
	call Unknown_0x233C
	ret nc
	ld e,$1D
	ld bc,Unknown_0x77434
	jp Unknown_0x0846
	ld a,[$DD1A]
	swap a
	and $0F
	cp $05
	jr z,Unknown_0x77426
	ld e,$07
	ld hl,$DD17
	ld a,[de]
	sub [hl]
	cp $40
	jr c,Unknown_0x7742F
	jr Unknown_0x7742B

Unknown_0x77426:
	call Unknown_0x202B
	jr c,Unknown_0x7742F

Unknown_0x7742B:
	ld a,$01
	jr Unknown_0x77430

Unknown_0x7742F:
	xor a

Unknown_0x77430:
	ld e,$41
	ld [de],a
	ret

Unknown_0x77434:
INCBIN "baserom.gb", $77434, $77452 - $77434
	call Unknown_0x764E9
	call Unknown_0x77468
	ret nz
	ld b,$00
	ld e,$4C
	ld a,[de]
	cp $3D
	jr nc,Unknown_0x77463
	inc b

Unknown_0x77463:
	ld e,$5C
	ld a,b
	ld [de],a
	ret

Unknown_0x77468:
	ld bc,$6D4A
	call Unknown_0x255B
	ld e,$41
	ld a,[de]
	or a
	ret nz
	call Unknown_0x76B9D
	call Unknown_0x0C71
	call Unknown_0x76B86
	ld h,d
	ld l,$60
	ld [hl],$3F
	ld l,$44
	ld [hl],$16
	xor a
	ret

UnknownData_0x77487:
INCBIN "baserom.gb", $77487, $7749D - $77487
	push bc
	ld bc,$5000
	ld h,$04
	call Unknown_0x30E0
	pop bc
	ret
	ld hl,$4CE4
	ld a,$03
	call FarCall
	ret

UnknownData_0x774B1:
INCBIN "baserom.gb", $774B1, $77542 - $774B1
	call Unknown_0x76501
	ld bc,Unknown_0x77551
	call Unknown_0x24E8
	ld bc,$74B1
	jp Unknown_0x255B

Unknown_0x77551:
INCBIN "baserom.gb", $77551, $77595 - $77551
	call Unknown_0x76501
	ld bc,$74B1
	call Unknown_0x255B
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x775A7
	dec a
	ld [de],a
	ret

Unknown_0x775A7:
	ld a,$04
	ld [de],a
	ld e,$40
	ld a,[de]
	add a,$02
	ld e,$D9
	call Unknown_0x2319
	ld e,$40
	ld a,[de]
	inc a
	cp $04
	jr c,Unknown_0x775BD
	xor a

Unknown_0x775BD:
	ld [de],a
	ret
	ld hl,$DD16
	bit 4,[hl]
	jr nz,Unknown_0x775C9
	xor a
	jr Unknown_0x775CB

Unknown_0x775C9:
	ld a,$01

Unknown_0x775CB:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x775CF:
INCBIN "baserom.gb", $775CF, $775F7 - $775CF
	call Unknown_0x76501
	jp Unknown_0x0DA4
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld a,[bc]
	inc bc
	push bc
	ld c,a
	ld e,$5B
	ld a,[de]
	sub c
	rlca
	ld b,a
	rlca
	add a,b
	add a,l
	ld l,a
	jr nc,Unknown_0x77614
	inc h

Unknown_0x77614:
	call Unknown_0x20F9
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld b,h
	ld c,l
	call Unknown_0x1FD1
	pop bc
	ret

UnknownData_0x77625:
INCBIN "baserom.gb", $77625, $7767E - $77625
	call Unknown_0x76501
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$7625
	call Unknown_0x255B
	jp Unknown_0x77765

UnknownData_0x77693:
INCBIN "baserom.gb", $77693, $77759 - $77693
	call Unknown_0x76501
	call Unknown_0x0DA4
	ld bc,$7625
	call Unknown_0x255B

Unknown_0x77765:
	ld a,[$DD2C]
	bit 1,a
	ret z
	ld [$FF00+$80],a
	ld bc,$0010
	ld h,$02
	call Unknown_0x30E0
	ld a,[$FF00+$80]
	bit 3,a
	jr nz,Unknown_0x777B8
	call Unknown_0x1EC0
	cpl
	ld [de],a
	ld e,$26
	ld hl,$4299
	ld a,$1E
	call FarCall
	ld a,[$FF00+$9A]
	ld d,a
	ld bc,Unknown_0x777C1
	call Unknown_0x0FAF
	jr z,Unknown_0x777B8
	ld l,$46
	ld e,l
	ld a,[de]
	ld [hl],a
	ld bc,Unknown_0x777C4
	call Unknown_0x0FAF
	jr z,Unknown_0x777B8
	ld l,$46
	ld e,l
	ld a,[de]
	ld [hl],a
	ld bc,Unknown_0x777C7
	call Unknown_0x0FAF
	jr z,Unknown_0x777B8
	ld l,$46
	ld e,l
	ld a,[de]
	ld [hl],a
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x777B8:
	ld h,d
	ld e,$03
	ld bc,$4966
	jp Unknown_0x0849

Unknown_0x777C1:
INCBIN "baserom.gb", $777C1, $777C4 - $777C1

Unknown_0x777C4:
INCBIN "baserom.gb", $777C4, $777C7 - $777C4

Unknown_0x777C7:
INCBIN "baserom.gb", $777C7, $777EC - $777C7
	call Unknown_0x76501
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$74B1
	jp Unknown_0x255B

UnknownData_0x777FB:
INCBIN "baserom.gb", $777FB, $77863 - $777FB
	call Unknown_0x76501
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	jp Unknown_0x0DA4
	push bc
	ld e,$5B
	ld a,[de]
	sub $14
	rlca
	rlca
	ld hl,$788D
	add a,l
	ld l,a
	jr nc,Unknown_0x7787F
	inc h

Unknown_0x7787F:
	call Unknown_0x2123
	ld e,$12
	ld a,[hli]
	ld [de],a
	ld b,h
	ld c,l
	call Unknown_0x1FD1
	pop bc
	ret

UnknownData_0x7788D:
INCBIN "baserom.gb", $7788D, $778B0 - $7788D
	call Unknown_0x76501
	call Unknown_0x0DA4
	ld bc,$74B1
	jp Unknown_0x255B
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$42
	ld a,[hl]
	ld e,$45
	ld [de],a
	ld l,$41
	ld a,[hl]
	dec a
	cp $05
	jr c,Unknown_0x778D8
	cp $0D
	jr nc,Unknown_0x778D8
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a

Unknown_0x778D8:
	ld a,[hl]
	dec a
	ld hl,$78E7
	add a,l
	ld l,a
	jr nc,Unknown_0x778E2
	inc h

Unknown_0x778E2:
	ld a,[hl]
	ld e,$15
	ld [de],a
	ret

UnknownData_0x778E7:
INCBIN "baserom.gb", $778E7, $778F7 - $778E7
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$41
	ld a,[hl]
	dec a
	ld hl,$7914
	rlca
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x77909
	inc h

Unknown_0x77909:
	call Unknown_0x20F9
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

UnknownData_0x77914:
INCBIN "baserom.gb", $77914, $779AE - $77914
	call Unknown_0x76501
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$7625
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 1,a
	ret z
	ld [$FF00+$80],a
	ld bc,$0020
	ld h,$02
	call Unknown_0x30E0
	ld a,[$FF00+$80]
	bit 3,a
	jr nz,Unknown_0x779F7
	call Unknown_0x1EC0
	cpl
	inc a
	ld [de],a
	ld bc,Unknown_0x77A00
	call Unknown_0x0FAF
	jr z,Unknown_0x779F7
	ld l,$46
	ld e,l
	ld a,[de]
	ld [hl],a
	ld e,$50
	ld hl,$4299
	ld a,$1E
	call FarCall
	ld a,[$FF00+$9A]
	ld d,a
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x779F7:
	ld h,d
	ld e,$03
	ld bc,Unknown_0x74966
	jp Unknown_0x0849

Unknown_0x77A00:
INCBIN "baserom.gb", $77A00, $77B01 - $77A00
	call Unknown_0x76501
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$7625
	jp Unknown_0x255B

UnknownData_0x77B10:
INCBIN "baserom.gb", $77B10, $77B4D - $77B10
	call Unknown_0x76501
	ld e,$3F
	ld a,[de]
	srl a
	cp $01
	jr z,Unknown_0x77B5F
	jp c,Unknown_0x77B65
	jp Unknown_0x77BB4

Unknown_0x77B5F:
	call Unknown_0x77B65
	jp Unknown_0x77BB4

Unknown_0x77B65:
	ld bc,$7B8C

Unknown_0x77B68:
	ld e,$5B
	ld a,[de]
	sub $1F
	rlca
	ld e,a
	rlca
	rlca
	add a,e
	add a,c
	ld c,a
	jr nc,Unknown_0x77B77
	inc b

Unknown_0x77B77:
	ld a,$05

Unknown_0x77B79:
	push af
	call Unknown_0x24E8
	push bc
	ld bc,$74B1
	call Unknown_0x255B
	pop bc
	pop af
	dec a
	jr nz,Unknown_0x77B79
	jp Unknown_0x77BFA

UnknownData_0x77B8C:
INCBIN "baserom.gb", $77B8C, $77BB4 - $77B8C

Unknown_0x77BB4:
	ld bc,$7BBA
	jp Unknown_0x77B68

UnknownData_0x77BBA:
INCBIN "baserom.gb", $77BBA, $77BE2 - $77BBA
	ld e,$5B
	ld a,[de]
	sub $1F
	rlca
	ld l,a
	rlca
	add a,l
	ld l,a
	ld a,[bc]
	inc bc
	ld h,a
	add a,l
	ld e,$15
	ld [de],a
	ld a,h
	sub $0E
	ld e,$3F
	ld [de],a
	ret

Unknown_0x77BFA:
	ld e,$5B
	ld a,[de]
	sub $1F
	rlca
	ld bc,$7C0E
	add a,c
	ld c,a
	jp nc,Unknown_0x24E8
	jr nc,Unknown_0x77C0B
	inc b

Unknown_0x77C0B:
	jp Unknown_0x24E8

UnknownData_0x77C0E:
INCBIN "baserom.gb", $77C0E, $77C4B - $77C0E
	call Unknown_0x76501
	call Unknown_0x1ED3
	jp Unknown_0x0DA4
	push bc
	ld e,$48
	ld a,$FF
	ld [de],a
	call Unknown_0x0647
	and $03
	ld l,a
	cp $02
	jr c,Unknown_0x77C72
	ld a,[$DD27]
	ld b,a
	ld c,$4C
	ld a,[bc]
	or a
	jr nz,Unknown_0x77C74
	ld a,l
	sub $02
	ld l,a

Unknown_0x77C72:
	ld b,$A0

Unknown_0x77C74:
	ld e,$45
	ld c,e
	ld a,[bc]
	ld [de],a
	ld a,l
	ld hl,$7C96
	ld e,a
	rlca
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x77C86
	inc h

Unknown_0x77C86:
	call Unknown_0x20F9
	ld e,$12
	ld a,[hli]
	ld [de],a
	ld a,b
	ld b,h
	ld c,l
	ld h,a
	call Unknown_0x24EC
	pop bc
	ret

UnknownData_0x77C96:
INCBIN "baserom.gb", $77C96, $77D2A - $77C96
	push bc
	ld hl,$DD28
	ld a,[hl]
	cp $06
	jr nc,Unknown_0x77D3F
	inc [hl]
	ld hl,$7D52
	add a,l
	ld l,a
	jr nc,Unknown_0x77D3C
	inc h

Unknown_0x77D3C:
	ld a,[hl]
	jr Unknown_0x77D44

Unknown_0x77D3F:
	call Unknown_0x0647
	and $03

Unknown_0x77D44:
	ld bc,$7D58
	rlca
	add a,c
	ld c,a
	jr nc,Unknown_0x77D4D
	inc b

Unknown_0x77D4D:
	call Unknown_0x24E8
	pop bc
	ret

UnknownData_0x77D52:
INCBIN "baserom.gb", $77D52, $77D60 - $77D52
	call Unknown_0x76501
	jp Unknown_0x0DA4

UnknownData_0x77D66:
INCBIN "baserom.gb", $77D66, $77D74 - $77D66
	ld hl,$DD28
	ld a,[hl]
	inc [hl]
	ld e,$27
	ld [de],a
	ret

UnknownData_0x77D7D:
INCBIN "baserom.gb", $77D7D, $77E27 - $77D7D
	push bc
	call Unknown_0x0647
	and $07
	rlca
	rlca
	rlca
	ld hl,$7E48
	add a,l
	ld l,a
	jr nc,Unknown_0x77E38
	inc h

Unknown_0x77E38:
	call Unknown_0x20F9
	call Unknown_0x2123
	call Unknown_0x20BE
	ld b,h
	ld c,l
	call Unknown_0x24E8
	pop bc
	ret

UnknownData_0x77E48:
INCBIN "baserom.gb", $77E48, $78000 - $77E48