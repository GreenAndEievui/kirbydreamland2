SECTION "Bank06", ROMX, BANK[$06]

UnknownData_0x18000:
INCBIN "baserom.gb", $18000, $18299 - $18000

Unknown_0x18299:
INCBIN "baserom.gb", $18299, $1834E - $18299

Unknown_0x1834E:
INCBIN "baserom.gb", $1834E, $184B5 - $1834E
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	sub [hl]
	cp $19
	jr c,Unknown_0x184C3
	xor a
	jr Unknown_0x184C5

Unknown_0x184C3:
	ld a,$01

Unknown_0x184C5:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x184C9:
INCBIN "baserom.gb", $184C9, $185CE - $184C9

Unknown_0x185CE:
INCBIN "baserom.gb", $185CE, $185E6 - $185CE

Unknown_0x185E6:
INCBIN "baserom.gb", $185E6, $1861C - $185E6
	call Unknown_0x2323
	ret nz
	ld e,$4C
	ld a,[de]
	cp $15
	ret nc
	ld a,$01
	ld e,$5C
	ld [de],a
	ret

UnknownData_0x1862C:
INCBIN "baserom.gb", $1862C, $18668 - $1862C

Unknown_0x18668:
INCBIN "baserom.gb", $18668, $18686 - $18668

Unknown_0x18686:
INCBIN "baserom.gb", $18686, $18758 - $18686
	ld a,[bc]
	inc bc
	ld h,d
	ld l,$15
	add a,[hl]
	ld [hl],a
	ret

UnknownData_0x18760:
INCBIN "baserom.gb", $18760, $188E2 - $18760

Unknown_0x188E2:
INCBIN "baserom.gb", $188E2, $18966 - $188E2

Unknown_0x18966:
INCBIN "baserom.gb", $18966, $18B97 - $18966
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$06
	ld bc,Unknown_0x185CE
	jp Unknown_0x0846
	call Unknown_0x19017
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$06
	ld bc,$45E6
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	cp $10
	jr c,Unknown_0x18BCD
	cp $91
	jr c,Unknown_0x18BD8

Unknown_0x18BCD:
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$4B
	inc l
	ld [hl],$D8

Unknown_0x18BD8:
	ld bc,$4000
	call Unknown_0x233C
	jr nc,Unknown_0x18BE8
	ld e,$06
	ld bc,$45CE
	jp Unknown_0x0846

Unknown_0x18BE8:
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x18BF1
	dec a
	ld [de],a
	ret

Unknown_0x18BF1:
	ld a,$06
	ld [de],a
	ld e,$27
	ld a,[de]
	ld e,$CB
	call Unknown_0x2319
	ld e,$40
	ld a,[de]
	cp $05
	jr z,Unknown_0x18C0D
	inc a
	ld [de],a
	cp $03
	ret nz
	ld h,d
	ld l,$27
	inc [hl]
	ret

Unknown_0x18C0D:
	ld e,$27
	ld a,[de]
	cp $05
	jr nz,Unknown_0x18C20
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$4C
	inc l
	ld [hl],$2C
	ret

Unknown_0x18C20:
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$4B
	inc l
	ld [hl],$97
	ret
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x18C47
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x18C3D
	dec a
	ld [de],a
	ret

Unknown_0x18C3D:
	ld a,$06
	ld [de],a
	ld a,$06
	ld e,$CB
	jp Unknown_0x2319

Unknown_0x18C47:
	ld e,$06
	ld bc,$45CE
	jp Unknown_0x0846
	call Unknown_0x19017
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$06
	ld bc,$45E6
	jp Unknown_0x0846
	call Unknown_0x19017
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x18CA8
	ld b,$00
	ld h,d
	ld e,$04
	ld l,$40
	ld a,[de]
	cp [hl]
	jr nz,Unknown_0x18C8A
	inc b
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a

Unknown_0x18C8A:
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	cp $18
	ret nc
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$12
	ld [de],a
	ld a,b
	or a
	ret z
	ld e,$06
	ld bc,Unknown_0x1834E
	jp Unknown_0x0846

Unknown_0x18CA8:
	ld e,$06
	ld bc,$45E6
	jp Unknown_0x0846
	call Unknown_0x19017
	call Unknown_0x1ED3
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	ret nc
	ld e,$06
	ld bc,$45E6
	jp Unknown_0x0846
	call Unknown_0x19017
	call Unknown_0x1EE6
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x233C
	jr c,Unknown_0x18CF1
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	sub [hl]
	cp $70
	ret c
	ld e,$06
	ld bc,$45BC
	jp Unknown_0x0846

Unknown_0x18CF1:
	ld e,$06
	ld bc,Unknown_0x185E6
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x255B
	call Unknown_0x1A25
	bit 7,a
	jr z,Unknown_0x18D14
	ld e,$06
	ld bc,Unknown_0x18668
	jp Unknown_0x0846

Unknown_0x18D14:
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x18D1C
	dec a
	ld [de],a

Unknown_0x18D1C:
	ld a,$08
	ld [de],a
	call Unknown_0x0647
	and $03
	add a,$15
	ld e,$CB
	jp Unknown_0x2319
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	call Unknown_0x255B
	call Unknown_0x1A25
	bit 7,a
	jr nz,Unknown_0x18D51
	call Unknown_0x18D14
	ld e,$04
	ld a,[de]
	ld h,d
	ld l,$40
	cp [hl]
	ret nz
	ld e,$06
	ld bc,$4686
	jp Unknown_0x0846

Unknown_0x18D51:
	ld h,d
	ld l,$3F
	dec [hl]
	jr nz,Unknown_0x18D69
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$4D
	inc l
	ld [hl],$7C
	ret

Unknown_0x18D69:
	ld a,[hl]
	ld hl,$40D4
	ld e,a
	rlca
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x18D76
	inc h

Unknown_0x18D76:
	call Unknown_0x20F9
	jp Unknown_0x20BE
	call Unknown_0x0DA4
	call Unknown_0x18D14
	ld bc,$4000
	call Unknown_0x255B
	ld e,$04
	ld a,[de]
	ld h,d
	ld l,$40
	cp [hl]
	ret nz
	ld e,$06
	ld bc,Unknown_0x18686
	jp Unknown_0x0846
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$4000
	jp Unknown_0x255B
	call Unknown_0x0DA4
	ld bc,$40E3
	jp Unknown_0x255B
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$40FF
	jp Unknown_0x255B
	call Unknown_0x21D8
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$40FF
	call Unknown_0x255B
	ret c
	ld h,d
	ld l,$26
	dec [hl]
	ret nz
	ld [hl],$04
	ld l,$40
	dec [hl]
	jr nz,Unknown_0x18DDD
	ld e,$06
	ld bc,$47FB
	jp Unknown_0x0846

Unknown_0x18DDD:
	call Unknown_0x203D
	ld e,$3C
	ld a,[de]
	jr nc,Unknown_0x18DEA
	rlca
	jr nc,Unknown_0x18E00
	jr Unknown_0x18DED

Unknown_0x18DEA:
	rlca
	jr c,Unknown_0x18E00

Unknown_0x18DED:
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

Unknown_0x18E00:
	call Unknown_0x202B
	ld e,$3A
	ld a,[de]
	jr nc,Unknown_0x18E0C
	rlca
	ret nc
	jr Unknown_0x18E0E

Unknown_0x18E0C:
	rlca
	ret c

Unknown_0x18E0E:
	ld e,$39
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
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D70
	call Unknown_0x0DA4
	ld bc,$40FF
	jp Unknown_0x255B

Unknown_0x18E31:
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$04
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld l,$07
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld l,$47
	ld e,l
	ld a,[hl]
	ld [de],a
	ld bc,$40F1
	jp Unknown_0x255B
	call Unknown_0x18E31
	ld e,$27
	ld a,[de]
	cp $01
	ret nz
	ld e,$06
	ld bc,Unknown_0x188E2
	jp Unknown_0x0846
	call Unknown_0x0DA4
	ld bc,$410D
	jp Unknown_0x255B

UnknownData_0x18E6A:
INCBIN "baserom.gb", $18E6A, $18E88 - $18E6A
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$40FF
	call Unknown_0x255B
	ret c
	ld h,d
	ld l,$26
	dec [hl]
	ret nz
	ld [hl],$20
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
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
	push bc
	call Unknown_0x0647
	ld c,$00
	ld b,a

Unknown_0x18ECB:
	ld a,[hli]
	or a
	jr z,Unknown_0x18ED5
	cp b
	jr nc,Unknown_0x18ED5
	inc c
	jr Unknown_0x18ECB

Unknown_0x18ED5:
	ld a,c
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
	ld e,$27
	ld a,[de]
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x18EEA
	inc h

Unknown_0x18EEA:
	ld e,$04
	ld a,[$DB51]
	add a,[hl]
	ld [de],a
	inc e
	inc hl
	ld a,[$DB52]
	adc a,[hl]
	ld [de],a
	ret
	ld a,[bc]
	ld e,a
	inc bc
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0x18F08
	inc h

Unknown_0x18F08:
	ld a,[hl]
	ld e,$24
	ld [de],a
	ret
	push bc
	ld h,$A0
	ld e,$04
	ld l,e
	ld a,[de]
	sub [hl]
	ld b,a
	inc l
	inc e
	ld a,[de]
	sbc a,[hl]
	jr nc,Unknown_0x18F20
	ld a,b
	cpl
	inc a
	ld b,a

Unknown_0x18F20:
	ld e,$07
	ld l,e
	ld a,[de]
	sub $08
	sub [hl]
	ld c,a
	inc l
	inc e
	ld a,[de]
	sbc a,[hl]
	jr nc,Unknown_0x18F32
	ld a,c
	cpl
	inc a
	ld c,a

Unknown_0x18F32:
	ld a,b
	sra a
	cp c
	jr c,Unknown_0x18F3C
	ld a,$1B
	jr Unknown_0x18F4F

Unknown_0x18F3C:
	ld a,b
	or a
	jr z,Unknown_0x18F4D
	ld a,c
	call Unknown_0x18F79
	ld a,c
	cp $05
	jr nc,Unknown_0x18F4D
	ld a,$1C
	jr Unknown_0x18F4F

Unknown_0x18F4D:
	ld a,$1D

Unknown_0x18F4F:
	ld e,$15
	ld [de],a
	pop bc
	ret
	ld e,$15
	ld a,[de]
	cp $1F
	jr z,Unknown_0x18F5E
	inc a
	ld [de],a
	xor a

Unknown_0x18F5E:
	ld a,$01
	ld e,$27
	ld [de],a
	ret

UnknownData_0x18F64:
INCBIN "baserom.gb", $18F64, $18F66 - $18F64

Unknown_0x18F66:
	ld a,[bc]
	inc bc
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
	ret
	ld e,$07
	jp Unknown_0x18F66

Unknown_0x18F79:
	ld c,$00

Unknown_0x18F7B:
	sub b
	jr c,Unknown_0x18F81
	inc c
	jr Unknown_0x18F7B

Unknown_0x18F81:
	add a,b
	srl b
	sbc a,b
	ret c
	inc c
	ret
	ld e,$5B
	ld a,[de]

Unknown_0x18F8B:
	ld hl,$4129
	ld e,a
	rlca
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x18F97
	inc h

Unknown_0x18F97:
	call Unknown_0x20F9
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$15
	ld a,[hl]
	ld [de],a
	ret
	ld e,$04
	ld a,[de]
	ld e,$40
	ld hl,$DB51
	sub [hl]
	cp $50
	jr c,Unknown_0x18FBB
	ld a,$88
	add a,[hl]
	ld [de],a
	ld a,$40
	jr Unknown_0x18FC1

Unknown_0x18FBB:
	ld a,$18
	add a,[hl]
	ld [de],a
	ld a,$C0

Unknown_0x18FC1:
	ld e,$45
	ld [de],a
	ret
	ld hl,$404D
	ld e,$41
	ld a,[de]
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x18FD1
	inc h

Unknown_0x18FD1:
	ld e,$0D
	ld a,[hli]
	ld [de],a
	ld a,[hl]
	inc e
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
	sub $0D
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x18FEA
	inc h

Unknown_0x18FEA:
	jp Unknown_0x20F9
	ld e,$45
	ld a,[de]
	rlca
	jr c,Unknown_0x18FF8
	ld hl,$0100
	jr Unknown_0x18FFB

Unknown_0x18FF8:
	ld hl,$FF00

Unknown_0x18FFB:
	ld e,$3B
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	call Unknown_0x202B
	jr nc,Unknown_0x1900C
	ld hl,$0100
	jr Unknown_0x1900F

Unknown_0x1900C:
	ld hl,$FF00

Unknown_0x1900F:
	ld e,$39
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

Unknown_0x19017:
	call Unknown_0x1EC0
	call Unknown_0x202B
	jr nc,Unknown_0x19023
	ld a,$07
	jr Unknown_0x19025

Unknown_0x19023:
	ld a,$0A

Unknown_0x19025:
	ld e,$15
	ld [de],a
	ret
	call Unknown_0x0647
	ld hl,$4059
	and $07
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x19037
	inc h

Unknown_0x19037:
	ld a,[hli]
	ld h,[hl]
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
	cp $80
	jr nz,Unknown_0x19059
	ld e,a
	call Unknown_0x0647
	cp e
	jr c,Unknown_0x19057
	inc hl
	ld a,[hli]
	jr Unknown_0x19059

Unknown_0x19057:
	ld a,[hli]
	inc hl

Unknown_0x19059:
	ld e,$27
	ld [de],a
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret
	ld e,$42
	ld a,[de]
	rlca
	ld e,$0D
	jr c,Unknown_0x19074
	ld a,[bc]
	ld [de],a
	inc bc
	inc e
	ld a,[bc]
	ld [de],a
	inc bc
	ret

Unknown_0x19074:
	ld a,[bc]
	cpl
	add a,$01
	ld [de],a
	inc bc
	inc e
	ld a,[bc]
	cpl
	adc a,$00
	ld [de],a
	inc bc
	ret
	ld e,$42
	ld a,[de]
	rlca
	ld e,$11
	jr c,Unknown_0x1908E
	ld a,[bc]
	ld [de],a
	inc bc
	ret

Unknown_0x1908E:
	ld a,[bc]
	cpl
	inc a
	ld [de],a
	inc bc
	ret
	ld e,$04
	ld a,[de]
	ld e,$40
	ld hl,$DB51
	sub [hl]
	cp $50
	jr nc,Unknown_0x190A9
	ld a,$88
	add a,[hl]
	ld [de],a
	ld a,$40
	jr Unknown_0x190AF

Unknown_0x190A9:
	ld a,$18
	add a,[hl]
	ld [de],a
	ld a,$C0

Unknown_0x190AF:
	ld e,$45
	ld [de],a
	ld e,$42
	ld [de],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$27
	ld a,[bc]
	inc bc
	ld [hl],a
	ret
	call Unknown_0x0647
	and $07
	ld e,a
	rlca
	add a,e
	ld hl,$40B1
	add a,l
	ld l,a
	jr nc,Unknown_0x190D0
	inc h

Unknown_0x190D0:
	call Unknown_0x20F9
	ld e,$45
	ld a,[de]
	rlca
	ld e,$41
	jr c,Unknown_0x190DE
	ld a,[hl]
	ld [de],a
	ret

Unknown_0x190DE:
	ld a,[hl]
	cpl
	inc a
	ld [de],a
	ret
	push bc
	ld e,$48
	ld a,[de]
	cp $A8
	jr c,Unknown_0x190FD
	cp $B2
	jr nc,Unknown_0x190FD
	ld h,a
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x190FD
	call Unknown_0x0BBA
	ld a,[$FF00+$9A]
	ld d,a

Unknown_0x190FD:
	pop bc
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	call Unknown_0x20F9
	jp Unknown_0x20BE

UnknownData_0x1910B:
INCBIN "baserom.gb", $1910B, $1913C - $1910B
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	inc bc
	ld e,$3E
	ld [de],a
	dec e
	ld a,l
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
	jr nz,Unknown_0x19158
	ld hl,$416D
	ld a,[hli]

Unknown_0x19158:
	ld e,$27
	ld [de],a
	ld e,$3D
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

UnknownData_0x19163:
INCBIN "baserom.gb", $19163, $192CA - $19163

Unknown_0x192CA:
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x196CD
	ld bc,$415F
	call Unknown_0x233C
	ret nc
	ld e,$06
	ld bc,Unknown_0x1960C
	jp Unknown_0x0846

UnknownData_0x192E2:
INCBIN "baserom.gb", $192E2, $19322 - $192E2

Unknown_0x19322:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x1934F
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	sub [hl]
	cp $18
	jr c,Unknown_0x19340
	cp $88
	jr c,Unknown_0x1934F
	ld e,$0E
	ld a,[de]
	rlca
	jr c,Unknown_0x1934F
	jr Unknown_0x19346

Unknown_0x19340:
	ld e,$0E
	ld a,[de]
	rlca
	jr nc,Unknown_0x1934F

Unknown_0x19346:
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ld e,$11
	ld [de],a

Unknown_0x1934F:
	call Unknown_0x1EE6
	jp Unknown_0x192CA
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	sub [hl]
	cp $48
	jr c,Unknown_0x19368
	cp $58
	jr nc,Unknown_0x19368
	ld a,$01
	jr Unknown_0x19369

Unknown_0x19368:
	xor a

Unknown_0x19369:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x1936D:
INCBIN "baserom.gb", $1936D, $193DA - $1936D

Unknown_0x193DA:
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	cp $20
	jr c,Unknown_0x193F9
	cp $80
	jr c,Unknown_0x193F2
	ld e,$45
	ld a,[de]
	rlca
	jr c,Unknown_0x193F2
	cpl
	inc a
	ld [de],a

Unknown_0x193F2:
	ld e,$45
	ld a,[de]
	ld e,$42
	ld [de],a
	ret

Unknown_0x193F9:
	ld e,$45
	ld a,[de]
	rlca
	jr nc,Unknown_0x193F2
	cpl
	inc a
	ld [de],a
	jr Unknown_0x193F2
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	jp Unknown_0x193DA

UnknownData_0x1940D:
INCBIN "baserom.gb", $1940D, $1949C - $1940D
	ld e,$07
	ld a,[de]
	ld hl,$DB53
	sub [hl]
	cp $2D
	ld a,$00
	jr nc,Unknown_0x194AA
	inc a

Unknown_0x194AA:
	ld e,$27
	ld [de],a
	ret
	ld e,$3F
	ld a,[de]
	or a
	jr z,Unknown_0x194B8
	dec a
	ld [de],a
	jr Unknown_0x194C1

Unknown_0x194B8:
	ld a,$02
	ld [de],a
	ld e,$47
	ld a,[de]
	xor $10
	ld [de],a

Unknown_0x194C1:
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x194CC
	dec a
	ld [de],a
	jp Unknown_0x19322

Unknown_0x194CC:
	ld a,$08
	ld [de],a
	ld a,$1B
	ld e,$CB
	call Unknown_0x2319
	jp Unknown_0x19322

UnknownData_0x194D9:
INCBIN "baserom.gb", $194D9, $1954C - $194D9
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	sub [hl]
	ld l,$01
	cp $40
	jr c,Unknown_0x19563
	cp $60
	jr nc,Unknown_0x19567
	ld e,$45
	ld a,[de]
	dec l
	jr Unknown_0x19569

Unknown_0x19563:
	ld a,$40
	jr Unknown_0x19569

Unknown_0x19567:
	ld a,$C0

Unknown_0x19569:
	ld e,$3A
	ld [de],a
	ld e,$41
	ld a,l
	ld [de],a
	call Unknown_0x202B
	jr c,Unknown_0x19578
	xor a
	jr Unknown_0x1957A

Unknown_0x19578:
	ld a,$01

Unknown_0x1957A:
	ld e,$43
	ld [de],a
	ret

UnknownData_0x1957E:
INCBIN "baserom.gb", $1957E, $195A5 - $1957E
	push bc
	ld e,$27
	ld a,[de]
	ld e,$CB
	call Unknown_0x2319
	pop bc
	ret
	ld h,d
	ld l,$27
	inc [hl]
	ret

UnknownData_0x195B5:
INCBIN "baserom.gb", $195B5, $195D7 - $195B5
	ld h,d
	ld l,$26
	dec [hl]
	jp nz,Unknown_0x192CA
	ld e,$27
	ld a,[de]
	or a
	jr z,Unknown_0x195E8
	ld [hl],$04
	jr Unknown_0x195EA

Unknown_0x195E8:
	ld [hl],$0C

Unknown_0x195EA:
	add a,$25
	ld l,$3F
	add a,[hl]
	ld e,$CB
	call Unknown_0x2319
	ld e,$3F
	ld a,[de]
	inc a
	ld [de],a
	cp $02
	jp c,Unknown_0x192CA
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$52
	inc l
	ld [hl],$CA
	jp Unknown_0x192CA

Unknown_0x1960C:
INCBIN "baserom.gb", $1960C, $19648 - $1960C
	ld bc,$415F
	call Unknown_0x255B
	ld e,$41
	ld a,[de]
	or a
	ret nz
	call Unknown_0x0C71
	ld h,d
	ld l,$60
	ld [hl],$3F
	ld l,$44
	ld [hl],$10
	xor a
	ret

UnknownData_0x19661:
INCBIN "baserom.gb", $19661, $1966F - $19661
	ld hl,$4CE4
	ld a,$03
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x19678:
INCBIN "baserom.gb", $19678, $196CD - $19678

Unknown_0x196CD:
	call Unknown_0x1EC0
	call Unknown_0x202B
	jr nc,Unknown_0x196D9
	ld a,$03
	jr Unknown_0x196DB

Unknown_0x196D9:
	ld a,$06

Unknown_0x196DB:
	ld e,$15
	ld [de],a
	ret

UnknownData_0x196DF:
INCBIN "baserom.gb", $196DF, $19719 - $196DF
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$40FF
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$06
	ld bc,$5734
	jp Unknown_0x0846

UnknownData_0x19734:
INCBIN "baserom.gb", $19734, $1976E - $19734
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$40FF
	jp Unknown_0x255B

UnknownData_0x1977A:
INCBIN "baserom.gb", $1977A, $19795 - $1977A
	call Unknown_0x0DA4
	ld bc,$40E3
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$06
	ld bc,Unknown_0x197BA
	jp Unknown_0x0846
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$0D
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

Unknown_0x197BA:
INCBIN "baserom.gb", $197BA, $197DC - $197BA
	ld bc,$40E3
	jp Unknown_0x255B

UnknownData_0x197E2:
INCBIN "baserom.gb", $197E2, $1981A - $197E2
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$43
	ld e,l
	ld a,[hl]
	ld [de],a
	ld l,$41
	ld e,l
	ld a,[hl]
	ld [de],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$3A
	ld a,[hl]
	ld e,$45
	ld [de],a
	ret
	ld e,$41
	ld a,[de]
	rlca
	ld hl,$586A
	add a,l
	ld l,a
	jr nc,Unknown_0x19840
	inc h

Unknown_0x19840:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld e,$5B
	ld a,[de]
	sub $1C
	add a,l
	ld l,a
	jr nc,Unknown_0x1984D
	inc h

Unknown_0x1984D:
	ld a,[hl]
	call Unknown_0x18F8B
	ld e,$43
	ld a,[de]
	or a
	ret z
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
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

UnknownData_0x1986A:
INCBIN "baserom.gb", $1986A, $1987C - $1986A
	call Unknown_0x0DA4
	ld bc,$40E3
	call Unknown_0x255B
	ret c
	ld bc,Unknown_0x198A7
	call Unknown_0x24CD
	bit 7,a
	jr nz,Unknown_0x1989F
	bit 5,a
	jr nz,Unknown_0x19897
	bit 6,a
	ret z

Unknown_0x19897:
	ld h,d
	call Unknown_0x0BBA
	ld a,[$FF00+$9A]
	ld [de],a
	ret

Unknown_0x1989F:
	ld e,$06
	ld bc,Unknown_0x197BA
	jp Unknown_0x0846

Unknown_0x198A7:
INCBIN "baserom.gb", $198A7, $198DF - $198A7
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$40FF
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$06
	ld bc,$58FA
	jp Unknown_0x0846

UnknownData_0x198FA:
INCBIN "baserom.gb", $198FA, $19943 - $198FA
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D70
	call Unknown_0x0DA4
	ld bc,$40FF
	jp Unknown_0x255B

UnknownData_0x19958:
INCBIN "baserom.gb", $19958, $1999F - $19958
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$40FF
	call Unknown_0x255B
	ret c
	ld e,$3F
	ld a,[de]
	cp $01
	jr nz,Unknown_0x199B9
	call Unknown_0x202B
	ret c
	jr Unknown_0x199BD

Unknown_0x199B9:
	call Unknown_0x202B
	ret nc

Unknown_0x199BD:
	ld e,$06
	ld bc,$59C5
	jp Unknown_0x0846

UnknownData_0x199C5:
INCBIN "baserom.gb", $199C5, $19A2B - $199C5
	call Unknown_0x0647
	cp $80
	ret c
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	jp Unknown_0x0DA4
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,e
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x19A49:
INCBIN "baserom.gb", $19A49, $19A65 - $19A49

Unknown_0x19A65:
INCBIN "baserom.gb", $19A65, $19A69 - $19A65

Unknown_0x19A69:
INCBIN "baserom.gb", $19A69, $19AF1 - $19A69

Unknown_0x19AF1:
INCBIN "baserom.gb", $19AF1, $19C0C - $19AF1
	ld a,d
	ld [$DD0E],a
	ret

UnknownData_0x19C11:
INCBIN "baserom.gb", $19C11, $19C50 - $19C11
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x1B5C1
	ret nc
	ld e,$06
	ld bc,$700F
	jp Unknown_0x0846
	ld bc,$5A57
	call Unknown_0x1B5C1
	ret nc
	ld e,$06
	ld bc,Unknown_0x1B026
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x255B
	ld bc,Unknown_0x19A65
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$0E
	ld hl,Unknown_0x18299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$06
	ld bc,Unknown_0x19CD1
	jp Unknown_0x0846
	call Unknown_0x21EB
	call Unknown_0x0DA4
	ld bc,$5A57
	call Unknown_0x255B
	ld bc,Unknown_0x19A69
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$0E
	ld hl,Unknown_0x18299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$06
	ld bc,$5D02
	jp Unknown_0x0846
	ld a,[bc]
	inc bc
	ld [$CD00],a
	ld [$DB78],a
	ret

Unknown_0x19CD1:
INCBIN "baserom.gb", $19CD1, $19D1D - $19CD1
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$27
	ld [hl],$01
	ret
	call Unknown_0x0647
	and $01
	ld h,d
	ld l,$48
	ld h,[hl]
	ld l,$27
	ld [hl],a
	xor $01
	ld e,l
	ld [de],a
	ret
	call Unknown_0x19D69
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x255B
	ld e,$27
	ld a,[de]
	or a
	ret z
	ld e,$06
	ld bc,$5DC5
	jp Unknown_0x0846
	call Unknown_0x19D7F
	ld bc,$5A49
	call Unknown_0x255B
	ld e,$27
	ld a,[de]
	or a
	ret z
	ld e,$06
	ld bc,$5E33
	jp Unknown_0x0846

Unknown_0x19D69:
	ld a,[$DEE4]
	cp $0C
	ret c
	xor a
	ld [$DEE4],a
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$5D
	inc l
	ld [hl],$3A
	ret

Unknown_0x19D7F:
	ld a,[$DEE4]
	cp $0C
	ret c
	xor a
	ld [$DEE4],a
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$5D
	inc l
	ld [hl],$56
	ret

UnknownData_0x19D95:
INCBIN "baserom.gb", $19D95, $19DAF - $19D95
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$27
	ld [hl],$01
	ret
	xor a
	ld [$DD0A],a
	ret
	ld hl,$DD0A
	ld a,[hl]
	and $80
	ld [hl],a
	ret

UnknownData_0x19DC5:
INCBIN "baserom.gb", $19DC5, $19E70 - $19DC5
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
	ld h,d
	ld l,$40
	add a,[hl]
	inc [hl]
	add a,l
	ld l,a
	jr nc,Unknown_0x19E85
	inc h

Unknown_0x19E85:
	ld a,[hl]
	or a
	jr nz,Unknown_0x19E8D
	ld a,$01
	jr Unknown_0x19E99

Unknown_0x19E8D:
	ld e,a
	call Unknown_0x0647
	cp e
	jr nc,Unknown_0x19E98
	ld a,$01
	jr Unknown_0x19E99

Unknown_0x19E98:
	xor a

Unknown_0x19E99:
	ld e,$27
	ld [de],a
	ret
	call Unknown_0x203D
	ld e,$45
	ld a,[de]
	jr c,Unknown_0x19EAC
	rlca
	jr c,Unknown_0x19EAF

Unknown_0x19EA8:
	ld a,$01
	jr Unknown_0x19EB0

Unknown_0x19EAC:
	rlca
	jr c,Unknown_0x19EA8

Unknown_0x19EAF:
	xor a

Unknown_0x19EB0:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x19EB4:
INCBIN "baserom.gb", $19EB4, $19F19 - $19EB4
	push bc
	ld e,$5C
	ld a,[de]
	ld e,a
	rlca
	rlca
	rlca
	add a,e
	ld l,a
	ld e,$43
	ld a,[de]
	ld h,a
	inc a
	cp $03
	jr c,Unknown_0x19F2E
	sub $03

Unknown_0x19F2E:
	ld [de],a
	ld a,h
	rlca
	add a,h
	add a,l
	ld hl,$5A7E
	add a,l
	ld l,a
	jr nc,Unknown_0x19F3B
	inc h

Unknown_0x19F3B:
	call Unknown_0x0647
	ld e,a
	ld b,$00
	ld c,$03

Unknown_0x19F43:
	ld a,[hl]
	or a
	jr z,Unknown_0x19F4F
	cp e
	jr nc,Unknown_0x19F4F
	inc hl
	inc b
	dec c
	jr nz,Unknown_0x19F43

Unknown_0x19F4F:
	ld a,b
	ld e,$27
	ld [de],a
	pop bc
	ret
	xor a
	ld hl,$DD0A
	bit 6,[hl]
	jr nz,Unknown_0x19F64
	bit 0,[hl]
	jr z,Unknown_0x19F64
	set 1,[hl]
	inc a

Unknown_0x19F64:
	ld e,$27
	ld [de],a
	ret
	ld hl,$DD0A
	ld e,$4C
	ld a,[de]
	cp $15
	jr nc,Unknown_0x19F78
	set 6,[hl]

Unknown_0x19F74:
	ld a,$01
	jr Unknown_0x19F7D

Unknown_0x19F78:
	bit 7,[hl]
	jr nz,Unknown_0x19F74
	xor a

Unknown_0x19F7D:
	ld e,$27
	ld [de],a
	ret
	ld hl,$DD0A
	bit 6,[hl]
	jr nz,Unknown_0x19F8B

Unknown_0x19F88:
	xor a
	jr Unknown_0x19F93

Unknown_0x19F8B:
	bit 0,[hl]
	jr z,Unknown_0x19F88
	res 1,[hl]
	ld a,$01

Unknown_0x19F93:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x19F97:
INCBIN "baserom.gb", $19F97, $1A196 - $19F97

Unknown_0x1A196:
	call Unknown_0x1A44B
	ret nc
	xor a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	ret

UnknownData_0x1A1A1:
INCBIN "baserom.gb", $1A1A1, $1A216 - $1A1A1
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	call Unknown_0x1A196
	ld bc,$5A49
	call Unknown_0x1B5C1
	ret nc
	ld e,$06
	ld bc,$700F
	jp Unknown_0x0846
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	call Unknown_0x1A196
	ld bc,$5A57
	call Unknown_0x1B5C1
	jr c,Unknown_0x1A251
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	ret nz
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$5C
	inc l
	ld [hl],$65
	ret

Unknown_0x1A251:
	ld e,$06
	ld bc,Unknown_0x1B026
	jp Unknown_0x0846

UnknownData_0x1A259:
INCBIN "baserom.gb", $1A259, $1A3A5 - $1A259

Unknown_0x1A3A5:
INCBIN "baserom.gb", $1A3A5, $1A3E1 - $1A3A5
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x1B5C1
	jr c,Unknown_0x1A3F8
	call Unknown_0x1A44B
	ret nc
	ld e,$06
	ld bc,$629F
	jp Unknown_0x0846

Unknown_0x1A3F8:
	ld e,$06
	ld bc,$700F
	jp Unknown_0x0846
	ld bc,$5A57
	call Unknown_0x1B5C1
	jr c,Unknown_0x1A421
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,Unknown_0x19A69
	call Unknown_0x24CD
	bit 7,a
	ret z
	xor a
	ld e,$12
	ld [de],a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x1A421:
	ld e,$06
	ld bc,$7026
	jp Unknown_0x0846
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$5A57
	call Unknown_0x1B5C1
	jr c,Unknown_0x1A443
	call Unknown_0x1A44B
	ret nc
	ld e,$06
	ld bc,Unknown_0x1A3A5
	jp Unknown_0x0846

Unknown_0x1A443:
	ld e,$06
	ld bc,$7026
	jp Unknown_0x0846

Unknown_0x1A44B:
	ld e,$0E
	ld a,[de]
	rlca
	ld hl,$DB51
	ld e,$04
	ld a,[de]
	jr c,Unknown_0x1A45C
	sub [hl]
	cp $97
	ccf
	ret

Unknown_0x1A45C:
	sub [hl]
	cp $09
	ret

UnknownData_0x1A460:
INCBIN "baserom.gb", $1A460, $1A4C7 - $1A460
	call Unknown_0x1EE6
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x1B5C1
	ret nc
	ld e,$06
	ld bc,$700F
	jp Unknown_0x0846

Unknown_0x1A4DC:
INCBIN "baserom.gb", $1A4DC, $1A53E - $1A4DC
	ld hl,$DD0A
	res 0,[hl]
	ret
	call Unknown_0x1A55F
	ld bc,$5A49
	call Unknown_0x255B
	call Unknown_0x1A56D
	call c,Unknown_0x1EC0
	call Unknown_0x1A5BC
	ret nc
	ld e,$06
	ld bc,$660A
	jp Unknown_0x0846

Unknown_0x1A55F:
	ld e,$41
	ld a,[de]
	or a
	ret z

Unknown_0x1A564:
	call Unknown_0x21D8
	call Unknown_0x21C5
	jp Unknown_0x0DA4

Unknown_0x1A56D:
	ld e,$41
	ld a,[de]
	or a
	jr z,Unknown_0x1A577
	dec a
	ld [de],a
	or a
	ret

Unknown_0x1A577:
	ld a,$08
	ld [de],a
	ld h,$A0
	ld l,$07
	ld a,[hl]
	ld hl,$DB53
	sub [hl]
	cp $20
	jr c,Unknown_0x1A594
	xor a
	ld h,d
	ld l,$0D
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld l,$41
	ld [hl],$00
	ret

Unknown_0x1A594:
	call Unknown_0x202B
	jr c,Unknown_0x1A59E
	ld bc,$FFA0
	jr Unknown_0x1A5A1

Unknown_0x1A59E:
	ld bc,$0060

Unknown_0x1A5A1:
	ld h,d
	ld l,$39
	ld [hl],c
	inc l
	ld [hl],b
	call Unknown_0x203D
	jr c,Unknown_0x1A5B1
	ld bc,$FFA0
	jr Unknown_0x1A5B4

Unknown_0x1A5B1:
	ld bc,$0060

Unknown_0x1A5B4:
	ld h,d
	ld l,$3B
	ld [hl],c
	inc l
	ld [hl],b
	scf
	ret

Unknown_0x1A5BC:
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x1A5C6
	dec a
	ld [de],a
	or a
	ret

Unknown_0x1A5C6:
	ld e,$40
	ld a,[de]
	cp $02
	jr nc,Unknown_0x1A5E6
	ld hl,$5A93
	ld b,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1A5D6
	inc h

Unknown_0x1A5D6:
	ld a,b
	inc a
	ld [de],a
	call Unknown_0x0647
	cp [hl]
	jr c,Unknown_0x1A5E6
	ld a,$3C
	ld e,$26
	ld [de],a
	or a
	ret

Unknown_0x1A5E6:
	xor a
	ld h,d
	ld l,$0D
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	scf
	ret
	call Unknown_0x1A55F
	ld bc,$5A57
	call Unknown_0x255B
	call Unknown_0x1A56D
	call Unknown_0x1A5BC
	ret nc
	ld e,$06
	ld bc,$66A2
	jp Unknown_0x0846

UnknownData_0x1A60A:
INCBIN "baserom.gb", $1A60A, $1A6CF - $1A60A
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x255B
	call Unknown_0x203D
	ld e,$45
	ld a,[de]
	jr c,Unknown_0x1A6EA
	rlca
	ret c

Unknown_0x1A6E2:
	ld e,$06
	ld bc,$663F
	jp Unknown_0x0846

Unknown_0x1A6EA:
	rlca
	ret nc
	jr Unknown_0x1A6E2
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x255B
	call Unknown_0x1A196
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x1A703
	dec a
	ld [de],a
	ret

Unknown_0x1A703:
	ld a,$08
	ld [de],a
	ld h,d
	ld l,$40
	inc [hl]
	ld a,$03
	ld e,$D3
	jp Unknown_0x2319
	ld bc,$5A57
	call Unknown_0x255B
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x1A720
	dec a
	ld [de],a
	ret

Unknown_0x1A720:
	ld a,$20
	ld [de],a
	ld a,$06
	ld e,$D3
	jp Unknown_0x2319

UnknownData_0x1A72A:
INCBIN "baserom.gb", $1A72A, $1A74A - $1A72A
	ld hl,$DD0A
	set 0,[hl]
	ret
	ld bc,$5A49
	call Unknown_0x255B
	ld a,[$DD0A]
	bit 6,a
	jr nz,Unknown_0x1A779
	bit 1,a
	ret z
	bit 7,a
	jr nz,Unknown_0x1A76C
	ld e,$06
	ld bc,$6891
	jp Unknown_0x0846

Unknown_0x1A76C:
	ld hl,$DD0A
	res 1,[hl]
	ld e,$06
	ld bc,$64DC
	jp Unknown_0x0846

Unknown_0x1A779:
	ld e,$06
	ld bc,$696F
	jp Unknown_0x0846
	ld bc,$5A57
	call Unknown_0x255B
	ld a,[$DD0A]
	bit 6,a
	jr nz,Unknown_0x1A7AA
	bit 1,a
	ret z
	bit 7,a
	jr nz,Unknown_0x1A79D
	ld e,$06
	ld bc,$68C1
	jp Unknown_0x0846

Unknown_0x1A79D:
	ld hl,$DD0A
	res 1,[hl]
	ld e,$06
	ld bc,$650F
	jp Unknown_0x0846

Unknown_0x1A7AA:
	ld e,$06
	ld bc,$6984
	jp Unknown_0x0846

UnknownData_0x1A7B2:
INCBIN "baserom.gb", $1A7B2, $1A83F - $1A7B2
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x255B
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	cp $08
	jr c,Unknown_0x1A85C
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	ret nz

Unknown_0x1A85C:
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$5C
	inc l
	ld [hl],$56
	ret
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5A57
	call Unknown_0x255B
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	cp $08
	jr c,Unknown_0x1A885
	ld h,d
	ld l,$0F
	ld a,[hli]
	or [hl]
	ret nz

Unknown_0x1A885:
	ld h,d
	ld l,$1F
	ld [hl],$46
	inc l
	ld [hl],$5C
	inc l
	ld [hl],$65
	ret

UnknownData_0x1A891:
INCBIN "baserom.gb", $1A891, $1A903 - $1A891
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x255B
	ld bc,Unknown_0x19A65
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$06
	ld bc,$68F4
	jp Unknown_0x0846
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5A57
	call Unknown_0x255B
	ld bc,Unknown_0x19A69
	call Unknown_0x24CD
	bit 7,a
	ret z
	ld e,$06
	ld bc,$68FA
	jp Unknown_0x0846

UnknownData_0x1A93D:
INCBIN "baserom.gb", $1A93D, $1A98A - $1A93D

Unknown_0x1A98A:
INCBIN "baserom.gb", $1A98A, $1A9AB - $1A98A
	call Unknown_0x1A564
	ld bc,$5A49
	call Unknown_0x255B
	ld e,$10
	ld a,[de]
	rlca
	jp c,Unknown_0x1A9DB
	ld e,$06
	ld bc,Unknown_0x1A4DC
	jp Unknown_0x0846

UnknownData_0x1A9C3:
INCBIN "baserom.gb", $1A9C3, $1A9DB - $1A9C3

Unknown_0x1A9DB:
	ld hl,$DB53
	ld e,$07
	ld a,[de]
	sub [hl]
	cp $30
	jr nc,Unknown_0x1A9F1
	ld e,$12
	ld a,$40
	ld [de],a
	xor a
	ld e,$39
	ld [de],a
	inc e
	ld [de],a

Unknown_0x1A9F1:
	ld h,d
	ld l,$26
	dec [hl]
	ret nz
	ld [hl],$08
	call Unknown_0x1EC0
	ld hl,$5A95
	jp Unknown_0x21A5
	ld hl,$DD0A
	bit 7,[hl]
	jr nz,Unknown_0x1AA0C
	ld a,$01
	jr Unknown_0x1AA0D

Unknown_0x1AA0C:
	xor a

Unknown_0x1AA0D:
	ld e,$27
	ld [de],a
	ret
	push bc
	call Unknown_0x0647
	ld b,a
	ld c,$05
	call Unknown_0x2885
	ld hl,$DD0B
	ld [hl],b
	pop bc
	ret
	ld hl,$DD0A
	set 1,[hl]
	ret

UnknownData_0x1AA27:
INCBIN "baserom.gb", $1AA27, $1AA59 - $1AA27
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x1B5C1
	jr c,Unknown_0x1AA80
	ld e,$10
	ld a,[de]
	rlca
	ret c
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	ld l,$40
	ld h,d
	cp [hl]
	ret c
	ld e,$06
	ld bc,$6A9F
	jp Unknown_0x0846

Unknown_0x1AA80:
	ld e,$06
	ld bc,$700F
	jp Unknown_0x0846
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld a,[$DD0B]
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x1AA97
	inc h

Unknown_0x1AA97:
	ld e,$3F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

UnknownData_0x1AA9F:
INCBIN "baserom.gb", $1AA9F, $1AB05 - $1AA9F
	ld a,[bc]
	inc bc
	push bc
	ld hl,$DB51
	ld c,[hl]
	inc hl
	ld b,[hl]
	swap a
	add a,$80
	ld hl,$DB53
	add a,[hl]
	ld e,a
	inc hl
	ld a,$00
	adc a,[hl]
	ld d,a
	ld hl,$B300
	ld a,[$DD0B]
	inc a
	add a,h
	ld h,a
	ld a,e
	sub $80
	inc a
	add a,l
	ld l,a
	ld a,$0A
	call Unknown_0x1597
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$5A49
	call Unknown_0x1B5C1
	jr c,Unknown_0x1AB67
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	sub [hl]
	ld h,d
	ld l,$3F
	cp [hl]
	ld e,$3C
	ld a,[de]
	jr c,Unknown_0x1AB5D
	rlca
	ret c
	ld e,$06
	ld bc,$6B86
	jp Unknown_0x0846

Unknown_0x1AB5D:
	rlca
	ret nc
	ld e,$06
	ld bc,$6B86
	jp Unknown_0x0846

Unknown_0x1AB67:
	ld e,$06
	ld bc,$700F
	jp Unknown_0x0846
	ld e,$04
	ld a,[de]
	ld hl,$DB51
	sub [hl]
	ld h,d
	ld l,$3F
	cp [hl]
	jr nc,Unknown_0x1AB80
	ld a,$40
	jr Unknown_0x1AB82

Unknown_0x1AB80:
	ld a,$C0

Unknown_0x1AB82:
	ld e,$45
	ld [de],a
	ret

UnknownData_0x1AB86:
INCBIN "baserom.gb", $1AB86, $1ABA4 - $1AB86
	ld bc,$5A49
	call Unknown_0x255B
	ld hl,$DD0A
	bit 0,[hl]
	ret z
	ld e,$06
	ld bc,$6BB8
	jp Unknown_0x0846

UnknownData_0x1ABB8:
INCBIN "baserom.gb", $1ABB8, $1ABC2 - $1ABB8
	ld a,[$DD0D]
	ld hl,$DA06
	add a,[hl]
	ld [hl],a
	ld bc,$5A49
	jp Unknown_0x255B

UnknownData_0x1ABD0:
INCBIN "baserom.gb", $1ABD0, $1AC43 - $1ABD0
	xor a
	ld [$DD0F],a
	ret

UnknownData_0x1AC48:
INCBIN "baserom.gb", $1AC48, $1AC54 - $1AC48
	ld bc,$5A49
	call Unknown_0x255B
	ld a,[$DD0D]
	ld hl,$DA06
	add a,[hl]
	ld [hl],a
	ld a,[$DD0B]
	ld hl,$5AF4
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x1AC6E
	inc h

Unknown_0x1AC6E:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	push hl
	ld b,$A0
	ld c,$04
	ld a,[bc]
	ld hl,$DB51
	sub [hl]
	and $FC
	rra
	rra
	rra
	jr nc,Unknown_0x1AC83
	inc a

Unknown_0x1AC83:
	ld e,a
	and $07
	ld hl,$6CBD
	add a,l
	ld l,a
	jr nc,Unknown_0x1AC8E
	inc h

Unknown_0x1AC8E:
	ld a,[hl]
	ld [$FF00+$80],a
	ld c,$07
	ld a,[bc]
	ld hl,$DB53
	sub [hl]
	and $FC
	rra
	rra
	rra
	jr nc,Unknown_0x1ACA0
	inc a

Unknown_0x1ACA0:
	ld c,a
	rlca
	add a,c
	ld c,a
	ld a,e
	and $F8
	swap a
	rlca
	add a,c
	pop hl
	add a,l
	ld l,a
	jr nc,Unknown_0x1ACB1
	inc h

Unknown_0x1ACB1:
	ld a,[$FF00+$80]
	and [hl]
	ret nz
	ld a,$12
	ld [$DD0C],a
	jp Unknown_0x1ACCC

UnknownData_0x1ACBD:
INCBIN "baserom.gb", $1ACBD, $1ACC5 - $1ACBD
	ld hl,$DD0D
	ld a,[bc]
	inc bc
	ld [hl],a
	ret

Unknown_0x1ACCC:
	call Unknown_0x2809
	jr c,Unknown_0x1ACFF
	ld a,[$A05D]
	cp $01
	jr z,Unknown_0x1ACFF
	cp $04
	jr z,Unknown_0x1ACFF
	ld a,[$A054]
	or a
	jp nz,Unknown_0x1ACFF
	ld a,[$DD0C]
	ld [$A044],a
	or a
	jr z,Unknown_0x1ACF2
	and $0F
	ld b,a
	call Unknown_0x3A8B

Unknown_0x1ACF2:
	ld e,$01
	ld bc,$4EC9
	call Unknown_0x0C48
	ld a,$01
	ld [$A054],a

Unknown_0x1ACFF:
	ret
	ld hl,$DD0A
	ld a,[hl]
	and $80
	ld [hl],a
	ret

UnknownData_0x1AD08:
INCBIN "baserom.gb", $1AD08, $1AE0F - $1AD08
	ld e,$3F
	ld hl,$DB51
	ld a,[de]
	add a,[hl]
	ld hl,$DA07
	sub [hl]
	ld e,$04
	ld [de],a
	ld e,$40
	ld hl,$DB53
	ld a,[de]
	add a,[hl]
	ld hl,$DA06
	sub [hl]
	ld l,a
	ld e,$4C
	ld a,[de]
	or a
	ld a,l
	jr nz,Unknown_0x1AE32
	add a,$02

Unknown_0x1AE32:
	ld e,$07
	ld [de],a
	ret

UnknownData_0x1AE36:
INCBIN "baserom.gb", $1AE36, $1AF02 - $1AE36
	ld hl,$DD0A
	bit 1,[hl]
	jr nz,Unknown_0x1AF0C
	xor a
	jr Unknown_0x1AF0E

Unknown_0x1AF0C:
	ld a,$01

Unknown_0x1AF0E:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x1AF12:
INCBIN "baserom.gb", $1AF12, $1AF41 - $1AF12
	ld hl,$DD0A
	set 0,[hl]
	ret

UnknownData_0x1AF47:
INCBIN "baserom.gb", $1AF47, $1AF63 - $1AF47
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$5A57
	call Unknown_0x255B
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	ld h,d
	ld l,$3F
	cp [hl]
	ld e,$45
	ld a,[de]
	jr c,Unknown_0x1AF89
	rlca
	ret c
	ld e,$06
	ld bc,$6F93
	jp Unknown_0x0846

Unknown_0x1AF89:
	rlca
	ret nc
	ld e,$06
	ld bc,$6F93
	jp Unknown_0x0846

UnknownData_0x1AF93:
INCBIN "baserom.gb", $1AF93, $1AFB9 - $1AF93
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5A57
	call Unknown_0x255B
	ld e,$10
	ld a,[de]
	rlca
	ret c
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc hl
	ld a,[de]
	sbc a,[hl]
	ret c
	ld a,c
	ld l,$40
	ld h,d
	cp [hl]
	ret c
	ld e,$06
	ld bc,$6FE5
	jp Unknown_0x0846

UnknownData_0x1AFE5:
INCBIN "baserom.gb", $1AFE5, $1AFFB - $1AFE5
	ld bc,$5A49
	call Unknown_0x255B
	ld hl,$DD0A
	bit 6,[hl]
	ret nz
	ld e,$06
	ld bc,Unknown_0x1A98A
	jp Unknown_0x0846

UnknownData_0x1B00F:
INCBIN "baserom.gb", $1B00F, $1B026 - $1B00F

Unknown_0x1B026:
INCBIN "baserom.gb", $1B026, $1B03D - $1B026
	ld hl,$DD0A
	bit 0,[hl]
	ret z
	set 6,[hl]
	ret

UnknownData_0x1B046:
INCBIN "baserom.gb", $1B046, $1B0FB - $1B046
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$19
	ld [hl],$80
	ld l,$1C
	ld [hl],$80
	ld l,$1F
	ld [hl],$80
	ret
	ld hl,$DD0A
	bit 7,[hl]
	ret nz
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$4A
	ld [hl],$50
	inc l
	ld [hl],$12
	ret

Unknown_0x1B11E:
INCBIN "baserom.gb", $1B11E, $1B129 - $1B11E
	ld hl,$DD0A
	bit 7,[hl]
	ret nz
	ld bc,$5A49
	jp Unknown_0x255B
	call Unknown_0x21D8
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld e,$48
	ld a,[de]
	ld h,a
	ld e,$04
	ld l,e
	ld a,[de]
	sub [hl]
	jr nc,Unknown_0x1B14B
	cpl
	inc a

Unknown_0x1B14B:
	cp $20
	jr nc,Unknown_0x1B164
	ld e,$07
	ld l,e
	ld a,[de]
	sub [hl]
	jr nc,Unknown_0x1B158
	cpl
	inc a

Unknown_0x1B158:
	cp $20
	jr nc,Unknown_0x1B164
	ld e,$06
	ld bc,Unknown_0x1B11E
	jp Unknown_0x0846

Unknown_0x1B164:
	ld hl,$DB51
	ld e,$04
	ld a,[de]
	sub [hl]
	cp $50
	ld e,$3C
	ld a,[de]
	jr c,Unknown_0x1B180
	rlca
	jr c,Unknown_0x1B183

Unknown_0x1B175:
	xor a
	ld e,$11
	ld [de],a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a
	jr Unknown_0x1B183

Unknown_0x1B180:
	rlca
	jr c,Unknown_0x1B175

Unknown_0x1B183:
	ld hl,$DB53
	ld e,$07
	ld a,[de]
	sub [hl]
	cp $20
	ld e,$3A
	ld a,[de]
	jr c,Unknown_0x1B19D
	rlca
	ret c

Unknown_0x1B193:
	xor a
	ld e,$12
	ld [de],a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret

Unknown_0x1B19D:
	rlca
	ret nc
	jr Unknown_0x1B193
	ld hl,$DD0A
	set 7,[hl]
	ret
	ld hl,$DD0A
	bit 7,[hl]
	jr nz,Unknown_0x1B1B1
	xor a
	jr Unknown_0x1B1B3

Unknown_0x1B1B1:
	ld a,$01

Unknown_0x1B1B3:
	ld e,$27
	ld [de],a
	ret
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	cp $50
	jr nc,Unknown_0x1B1C6
	ld a,$40
	jr Unknown_0x1B1C8

Unknown_0x1B1C6:
	ld a,$C0

Unknown_0x1B1C8:
	ld e,$45
	ld [de],a
	ld hl,Unknown_0x19AF1
	call Unknown_0x21A5
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	cp $20
	ld hl,Unknown_0x19AF1
	ld e,$12
	ld a,[hli]
	ld [de],a
	ld e,$39
	jr c,Unknown_0x1B1F1
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

Unknown_0x1B1F1:
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld hl,$DD0A
	bit 7,[hl]
	ret z
	push bc
	ld h,$A8
	ld c,$0A

Unknown_0x1B202:
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x1B228
	ld a,d
	cp h
	jr z,Unknown_0x1B228
	ld e,$48
	ld a,[de]
	ld b,a
	cp h
	jr z,Unknown_0x1B228
	ld l,e
	ld a,[hl]
	cp d
	jr z,Unknown_0x1B21C
	cp b
	jr nz,Unknown_0x1B228

Unknown_0x1B21C:
	ld a,c
	ld [$FF00+$80],a
	call Unknown_0x0BBA
	ld a,[$FF00+$9A]
	ld d,a
	ld a,[$FF00+$80]
	ld c,a

Unknown_0x1B228:
	dec c
	jr z,Unknown_0x1B22E
	inc h
	jr Unknown_0x1B202

Unknown_0x1B22E:
	pop bc
	ret

UnknownData_0x1B230:
INCBIN "baserom.gb", $1B230, $1B294 - $1B230
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x1B29F
	dec a
	ld [de],a
	call Unknown_0x1EE6

Unknown_0x1B29F:
	call Unknown_0x0DA4
	ld bc,$5AB5
	jp Unknown_0x255B

UnknownData_0x1B2A8:
INCBIN "baserom.gb", $1B2A8, $1B2FC - $1B2A8

Unknown_0x1B2FC:
INCBIN "baserom.gb", $1B2FC, $1B317 - $1B2FC
	call Unknown_0x0DA4
	ld bc,$5AB5
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$06
	ld bc,Unknown_0x1B2FC
	jp Unknown_0x0846
	ld bc,$5AB5
	jp Unknown_0x255B
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$40
	ld a,[hl]
	cp $04
	jr z,Unknown_0x1B347
	cp $0C
	jr z,Unknown_0x1B347
	xor a
	jr Unknown_0x1B349

Unknown_0x1B347:
	ld a,$01

Unknown_0x1B349:
	ld e,$27
	ld [de],a
	ret

UnknownData_0x1B34D:
INCBIN "baserom.gb", $1B34D, $1B39A - $1B34D
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,e
	ld a,[hl]
	ld [de],a
	ret
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	call Unknown_0x0DA4
	ld bc,$5AC3
	jp Unknown_0x255B

UnknownData_0x1B3B1:
INCBIN "baserom.gb", $1B3B1, $1B3DF - $1B3B1
	call Unknown_0x21EB
	call Unknown_0x21C5
	call Unknown_0x0DA4
	ld bc,$5AD1
	call Unknown_0x255B
	ret c
	call Unknown_0x1A25
	bit 7,a
	ret z
	ld e,$03
	ld bc,Unknown_0x18966
	jp Unknown_0x0846
	push bc
	call Unknown_0x0647
	ld b,a
	ld c,$13
	call Unknown_0x2885
	ld a,b
	swap a
	rrca
	ld hl,$DB51
	ld e,$04
	add a,[hl]
	ld [de],a
	inc hl
	inc e
	ld a,[hl]
	adc a,$00
	ld [de],a
	call Unknown_0x0647
	ld b,a
	ld c,$05
	call Unknown_0x2885
	ld a,b
	swap a
	rrca
	ld hl,$DB53
	ld e,$07
	add a,[hl]
	ld [de],a
	inc hl
	inc e
	ld a,[hl]
	adc a,$00
	ld [de],a
	pop bc
	ret
	push bc
	ld h,$A0
	ld l,$07
	ld e,l
	ld a,[de]
	sub [hl]
	jr nc,Unknown_0x1B440
	cpl
	inc a

Unknown_0x1B440:
	ld c,a
	ld l,$04
	ld e,l
	ld a,[de]
	sub [hl]
	jr nc,Unknown_0x1B44A
	cpl
	inc a

Unknown_0x1B44A:
	ld b,a
	ld a,c
	sub b
	srl a
	srl a
	cp b
	jr c,Unknown_0x1B457
	xor a
	jr Unknown_0x1B461

Unknown_0x1B457:
	ld a,c
	cp b
	jr c,Unknown_0x1B45F
	ld a,$01
	jr Unknown_0x1B461

Unknown_0x1B45F:
	ld a,$02

Unknown_0x1B461:
	ld hl,$5ADF
	rlca
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x1B46D
	inc h

Unknown_0x1B46D:
	call Unknown_0x21A5
	call Unknown_0x2053
	pop bc
	ret

UnknownData_0x1B475:
INCBIN "baserom.gb", $1B475, $1B47F - $1B475
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,e
	ld h,[hl]
	ld l,$46
	ld e,l
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0x1B48B:
INCBIN "baserom.gb", $1B48B, $1B49B - $1B48B
	ld a,[$DD0E]
	ld h,a
	ld l,$04
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld l,$07
	ld e,l
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret
	ld hl,$DD0F
	ld a,[hl]
	inc [hl]
	ld hl,$74CE
	rlca
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x1B4BF
	inc h

Unknown_0x1B4BF:
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

UnknownData_0x1B4CE:
INCBIN "baserom.gb", $1B4CE, $1B506 - $1B4CE
	call Unknown_0x1EE6
	call Unknown_0x1ED3
	jp Unknown_0x0DA4
	push bc
	ld bc,$7538
	ld hl,$DD0F
	ld a,[hl]
	inc [hl]
	rlca
	rlca
	rlca
	add a,c
	ld c,a
	jr nc,Unknown_0x1B520
	inc b

Unknown_0x1B520:
	ld a,[$DD0E]
	ld h,a
	call Unknown_0x24EC
	ld h,b
	ld l,c
	pop bc
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

UnknownData_0x1B538:
INCBIN "baserom.gb", $1B538, $1B5C1 - $1B538

Unknown_0x1B5C1:
	ld e,$44
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x1B5D2
	sub $01
	ld [de],a
	jr c,Unknown_0x1B5EA
	ld l,$60
	ld h,d
	ld [hl],$3F

Unknown_0x1B5D2:
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 1,a
	jr nz,Unknown_0x1B5E7
	bit 0,a
	jr nz,Unknown_0x1B5E2
	xor a
	ret

Unknown_0x1B5E2:
	call Unknown_0x0C61
	scf
	ret

Unknown_0x1B5E7:
	pop hl
	scf
	ret

Unknown_0x1B5EA:
	ld e,$42
	ld a,[de]
	or a
	jr z,Unknown_0x1B5D2
	ld l,$60
	ld h,d
	ld [hl],$2D
	jr Unknown_0x1B5D2

UnknownData_0x1B5F7:
INCBIN "baserom.gb", $1B5F7, $1C000 - $1B5F7