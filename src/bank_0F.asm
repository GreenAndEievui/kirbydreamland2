SECTION "Bank0F", ROMX, BANK[$0F]

Unknown_0x3C000:
INCBIN "baserom.gb", $3C000, $3C028 - $3C000

Unknown_0x3C028:
INCBIN "baserom.gb", $3C028, $3C044 - $3C028

Unknown_0x3C044:
INCBIN "baserom.gb", $3C044, $3C0E2 - $3C044

Unknown_0x3C0E2:
INCBIN "baserom.gb", $3C0E2, $3C1DC - $3C0E2

Unknown_0x3C1DC:
INCBIN "baserom.gb", $3C1DC, $3C232 - $3C1DC

Unknown_0x3C232:
INCBIN "baserom.gb", $3C232, $3C246 - $3C232

Unknown_0x3C246:
INCBIN "baserom.gb", $3C246, $3C24E - $3C246

Unknown_0x3C24E:
INCBIN "baserom.gb", $3C24E, $3C27B - $3C24E

Unknown_0x3C27B:
INCBIN "baserom.gb", $3C27B, $3C280 - $3C27B

Unknown_0x3C280:
INCBIN "baserom.gb", $3C280, $3C299 - $3C280

Unknown_0x3C299:
INCBIN "baserom.gb", $3C299, $3C545 - $3C299
	ld a,$01
	ld [$DD5B],a
	ret
	xor a
	ld [$DD5B],a
	ret

Unknown_0x3C550:
INCBIN "baserom.gb", $3C550, $3C7F8 - $3C550

Unknown_0x3C7F8:
INCBIN "baserom.gb", $3C7F8, $3C818 - $3C7F8
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld e,$27
	ld a,[de]
	and a
	jr z,Unknown_0x3C82A
	dec a
	ld [de],a
	ret

Unknown_0x3C82A:
	ld a,$04
	ld [de],a
	ld bc,Unknown_0x3C834
	call Unknown_0x0F50
	ret

Unknown_0x3C834:
INCBIN "baserom.gb", $3C834, $3C837 - $3C834
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ret
	call Unknown_0x0357
	ld a,[$FF00+$9A]
	ld d,a
	ld a,[$DD5B]
	and a
	jr nz,Unknown_0x3C861
	ld e,$43
	ld a,[de]
	and a
	jr z,Unknown_0x3C857
	dec a
	ld [de],a
	jr Unknown_0x3C861

Unknown_0x3C857:
	ld a,[$FF00+$A6]
	bit 0,a
	jr nz,Unknown_0x3C8D4
	bit 3,a
	jr nz,Unknown_0x3C8D4

Unknown_0x3C861:
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld hl,$DB60
	ld a,[hl]
	add a,a
	ld c,a
	ld a,[$DB6A]
	ld hl,$DB7B
	cp [hl]
	ret nz
	ld a,[$DD5B]
	and a
	ret nz
	ld e,$40
	ld a,[de]
	cp $10
	jr c,Unknown_0x3C88F
	ld a,[$FF00+$A5]
	bit 4,a
	jr nz,Unknown_0x3C892
	bit 5,a
	jr nz,Unknown_0x3C8B0
	ret

Unknown_0x3C88F:
	inc a
	ld [de],a
	ret

Unknown_0x3C892:
	ld hl,$DB6A
	ld b,[hl]
	ld hl,$DB60
	ld a,[hl]
	cp $06
	ret z
	inc a

Unknown_0x3C89E:
	and a
	jr z,Unknown_0x3C8AA
	ld e,$00
	srl b
	rl e
	dec a
	jr Unknown_0x3C89E

Unknown_0x3C8AA:
	bit 0,e
	ret z
	inc [hl]
	jr Unknown_0x3C8B9

Unknown_0x3C8B0:
	ld hl,$DB60
	ld a,[hl]
	cp $00
	ret z
	dec [hl]
	dec c

Unknown_0x3C8B9:
	ld a,c
	cp $0C
	ret nc
	ld [$DD59],a
	push de
	ld e,$56
	ld hl,Unknown_0x3C299
	ld a,$1E
	call FarCall
	pop de
	ld e,$0F
	ld bc,Unknown_0x3C7F8
	jp Unknown_0x0846

Unknown_0x3C8D4:
	push de
	ld e,$2D
	ld hl,Unknown_0x3C299
	ld a,$1E
	call FarCall
	pop de
	ld e,$0F
	ld bc,Unknown_0x3C550
	jp Unknown_0x0846
	ld e,$27
	ld a,[$DD59]
	ld [de],a
	ret
	ld e,$15
	ld hl,$A071
	ld a,[hl]
	ld [de],a
	ld a,[$DB60]
	ld hl,$6111
	add a,a
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x3C903
	inc h

Unknown_0x3C903:
	ld e,$04
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$07
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld hl,$DB60
	ld a,[hl]
	cp $06
	jr z,Unknown_0x3C92F
	ld a,[$DB6A]
	ld hl,$DB7B
	cp [hl]
	jr nz,Unknown_0x3C929

Unknown_0x3C923:
	ld e,$27
	ld a,$01
	ld [de],a
	ret

Unknown_0x3C929:
	ld [hl],a
	ld e,$27
	xor a
	ld [de],a
	ret

Unknown_0x3C92F:
	ld a,[$DB6A]
	ld hl,$DB7B
	ld [hl],a
	jr Unknown_0x3C923
	ld a,[$DB6A]
	ld e,a
	xor a

Unknown_0x3C93D:
	srl e
	jr nc,Unknown_0x3C944
	inc a
	jr Unknown_0x3C93D

Unknown_0x3C944:
	ld hl,$6111
	add a,a
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x3C94E
	inc h

Unknown_0x3C94E:
	ld e,$04
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$07
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	push de
	push bc
	ld e,$07
	ld hl,$6035
	ld a,$1E
	call FarCall
	pop bc
	pop de
	ret
	push de
	push bc
	ld a,[$DA36]
	or a
	jr nz,Unknown_0x3C980
	ld hl,$DB60
	ld e,[hl]
	ld hl,$6035
	ld a,$1E
	call FarCall

Unknown_0x3C980:
	pop bc
	pop de
	ret

Unknown_0x3C983:
INCBIN "baserom.gb", $3C983, $3DD82 - $3C983

Unknown_0x3DD82:
INCBIN "baserom.gb", $3DD82, $3DDDE - $3DD82

Unknown_0x3DDDE:
INCBIN "baserom.gb", $3DDDE, $3DDFF - $3DDDE

Unknown_0x3DDFF:
INCBIN "baserom.gb", $3DDFF, $3DE1D - $3DDFF
	ld e,$3E
	ld a,[de]
	cp $0F
	ld e,$27
	jr z,Unknown_0x3DE29
	xor a
	ld [de],a
	ret

Unknown_0x3DE29:
	ld a,$01
	ld [de],a
	ret

UnknownData_0x3DE2D:
INCBIN "baserom.gb", $3DE2D, $3DE3D - $3DE2D
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
	bit 7,a
	ret z
	ld e,$0F
	ld bc,Unknown_0x3DDFF
	jp Unknown_0x0846
	call Unknown_0x3E0BC
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld e,$08
	ld a,[de]
	cp $02
	ret nz
	dec e
	ld a,[de]
	cp $C0
	ret c
	ld e,$0F
	ld bc,$5D69
	jp Unknown_0x0846
	ld e,$27
	ld a,[de]
	and a
	jr nz,Unknown_0x3DEB1
	ld e,$3F
	ld a,[de]
	add a,a
	add a,a
	ld c,$00

Unknown_0x3DE8C:
	sub $18
	jr c,Unknown_0x3DE93
	inc c
	jr Unknown_0x3DE8C

Unknown_0x3DE93:
	ld a,$04
	sub c
	ld c,a
	ld e,$3C
	ld a,[de]
	and a
	ld e,$07
	jr nz,Unknown_0x3DEA8
	ld a,[de]
	add a,c
	ld [de],a
	inc e
	ld a,[de]
	adc a,$00
	ld [de],a
	ret

Unknown_0x3DEA8:
	ld a,[de]
	sub c
	ld [de],a
	inc e
	ld a,[de]
	sbc a,$00
	ld [de],a
	ret

Unknown_0x3DEB1:
	ld e,$0F
	ld bc,Unknown_0x3DD82
	jp Unknown_0x0846
	ld hl,$A008
	ld a,[hld]
	cp $02
	ret nz
	ld a,[hl]
	cp $C0
	ret c
	ld e,$0F
	ld bc,$5D5B
	jp Unknown_0x0846
	ld hl,$741F
	ld a,$08
	call FarCall
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld e,$10
	ld a,[de]
	bit 7,a
	ret nz
	ld e,$3C
	ld a,[de]
	and a
	jr nz,Unknown_0x3DEEE
	ld e,$0F
	ld bc,Unknown_0x3DDDE
	jp Unknown_0x0846

Unknown_0x3DEEE:
	ld e,$0F
	ld bc,$5DEA
	jp Unknown_0x0846
	ld e,$3A
	ld a,[de]
	and a
	jr nz,Unknown_0x3DF14
	ld hl,$A03F
	inc [hl]
	ld a,[hl]
	cp $18
	jr nz,Unknown_0x3DF2A
	ld e,$3A
	ld a,$01
	ld [de],a
	ld hl,$A042
	ld [hl],a
	ld hl,$A03C
	ld [hl],a
	jr Unknown_0x3DF2A

Unknown_0x3DF14:
	ld hl,$A03F
	ld a,[hl]
	dec a
	bit 7,a
	jr z,Unknown_0x3DF23
	ld e,$3B
	ld a,$01
	ld [de],a
	xor a

Unknown_0x3DF23:
	ld [hl],a
	ld e,$39
	ld a,[de]
	and a
	jr nz,Unknown_0x3DF58

Unknown_0x3DF2A:
	push de
	call Unknown_0x0357
	pop de
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x3DF39
	bit 1,a
	jr z,Unknown_0x3DF58

Unknown_0x3DF39:
	ld e,$39
	ld a,$01
	ld [de],a
	inc e
	ld [de],a
	ld hl,$A03F
	ld a,[hl]
	ld l,$3D
	ld [hl],a
	ld hl,$A03C
	ld [hl],$01
	push de
	ld e,$11
	ld hl,Unknown_0x3C299
	ld a,$1E
	call FarCall
	pop de

Unknown_0x3DF58:
	ld e,$3B
	ld a,[de]
	and a
	jr nz,Unknown_0x3DF93
	ld b,$08
	ld hl,$A03F
	ld a,[hl]
	cp $12
	jr nc,Unknown_0x3DF72
	cp $0C
	jr nc,Unknown_0x3DF73
	cp $06
	jr nc,Unknown_0x3DF74
	jr Unknown_0x3DF75

Unknown_0x3DF72:
	inc b

Unknown_0x3DF73:
	inc b

Unknown_0x3DF74:
	inc b

Unknown_0x3DF75:
	ld e,$15
	ld a,b
	ld [de],a
	sub $08
	add a,a
	ld b,a
	ld a,$10
	sub b
	ld b,a
	ld hl,$A007
	ld a,[hl]
	add a,b
	ld b,a
	inc l
	ld e,$08
	ld a,[hl]
	jr nc,Unknown_0x3DF8E
	inc a

Unknown_0x3DF8E:
	ld [de],a
	ld a,b
	dec e
	ld [de],a
	ret

Unknown_0x3DF93:
	ld hl,$A027
	ld [hl],$01
	push de
	ld e,$45
	ld hl,Unknown_0x3C299
	ld a,$1E
	call FarCall
	pop de
	ld e,$0F
	ld bc,$5D3D
	jp Unknown_0x0846
	ld h,d
	ld e,$3E
	ld a,[de]
	cp $0F
	jr z,Unknown_0x3DFEF
	ld e,$3D
	ld a,[de]
	cp $18
	jr z,Unknown_0x3DFEF
	cp $17
	jr nc,Unknown_0x3DFF7
	cp $16
	jr nc,Unknown_0x3E009
	cp $15
	jr nc,Unknown_0x3E011
	cp $14
	jr nc,Unknown_0x3E01D
	cp $13
	jr nc,Unknown_0x3E025
	cp $11
	jr nc,Unknown_0x3E031
	cp $10
	jr nc,Unknown_0x3E039
	cp $0E
	jr nc,Unknown_0x3E045
	cp $0C
	jr nc,Unknown_0x3E04D
	cp $09
	jr nc,Unknown_0x3E059
	cp $07
	jr nc,Unknown_0x3E061
	ld a,$01
	ld l,$27
	ld [hl],$06
	jr Unknown_0x3E06B

Unknown_0x3DFEF:
	ld a,$78
	ld l,$27
	ld [hl],$00
	jr Unknown_0x3E06B

Unknown_0x3DFF7:
	ld e,$42
	ld a,[de]
	and a
	jr nz,Unknown_0x3E009
	ld a,$6E
	ld l,$3C
	ld [hl],$01
	ld l,$27
	ld [hl],$00
	jr Unknown_0x3E06B

Unknown_0x3E009:
	ld a,$64
	ld l,$27
	ld [hl],$01
	jr Unknown_0x3E06B

Unknown_0x3E011:
	ld a,$5A
	ld l,$3C
	ld [hl],$01
	ld l,$27
	ld [hl],$01
	jr Unknown_0x3E06B

Unknown_0x3E01D:
	ld a,$50
	ld l,$27
	ld [hl],$02
	jr Unknown_0x3E06B

Unknown_0x3E025:
	ld a,$46
	ld l,$3C
	ld [hl],$01
	ld l,$27
	ld [hl],$02
	jr Unknown_0x3E06B

Unknown_0x3E031:
	ld a,$3C
	ld l,$27
	ld [hl],$03
	jr Unknown_0x3E06B

Unknown_0x3E039:
	ld a,$32
	ld l,$3C
	ld [hl],$01
	ld l,$27
	ld [hl],$03
	jr Unknown_0x3E06B

Unknown_0x3E045:
	ld a,$28
	ld l,$27
	ld [hl],$04
	jr Unknown_0x3E06B

Unknown_0x3E04D:
	ld a,$1E
	ld l,$3C
	ld [hl],$01
	ld l,$27
	ld [hl],$04
	jr Unknown_0x3E06B

Unknown_0x3E059:
	ld a,$14
	ld l,$27
	ld [hl],$05
	jr Unknown_0x3E06B

Unknown_0x3E061:
	ld a,$0A
	ld l,$3C
	ld [hl],$01
	ld l,$27
	ld [hl],$05

Unknown_0x3E06B:
	ld l,$24
	ld [hl],a
	ret
	ld a,$01
	ld [$A054],a
	ret
	ld a,[$A071]
	cp $03
	jr z,Unknown_0x3E0AE
	cp $02
	jr z,Unknown_0x3E0A0
	cp $01
	jr z,Unknown_0x3E092
	ld e,$16
	ld a,$0F
	ld [de],a
	inc e
	ld a,$4B
	ld [de],a
	inc e
	ld a,$99
	ld [de],a
	ret

Unknown_0x3E092:
	ld e,$16
	ld a,$0F
	ld [de],a
	inc e
	ld a,$4E
	ld [de],a
	inc e
	ld a,$ED
	ld [de],a
	ret

Unknown_0x3E0A0:
	ld e,$16
	ld a,$0F
	ld [de],a
	inc e
	ld a,$53
	ld [de],a
	inc e
	ld a,$AB
	ld [de],a
	ret

Unknown_0x3E0AE:
	ld e,$16
	ld a,$0F
	ld [de],a
	inc e
	ld a,$58
	ld [de],a
	inc e
	ld a,$E6
	ld [de],a
	ret

Unknown_0x3E0BC:
	push de
	call Unknown_0x0357
	pop de
	ld hl,$FFA5
	ld e,$3E
	ld a,[de]
	bit 0,a
	jr z,Unknown_0x3E0D8
	bit 1,a
	jr z,Unknown_0x3E0E2
	bit 2,a
	jr z,Unknown_0x3E0EC
	bit 3,a
	jr z,Unknown_0x3E0F6
	ret

Unknown_0x3E0D8:
	ld e,[hl]
	bit 6,e
	ret z
	set 0,a
	ld e,$3E
	ld [de],a
	ret

Unknown_0x3E0E2:
	ld e,[hl]
	bit 7,e
	ret z
	set 1,a
	ld e,$3E
	ld [de],a
	ret

Unknown_0x3E0EC:
	ld e,[hl]
	bit 6,e
	ret z
	set 2,a
	ld e,$3E
	ld [de],a
	ret

Unknown_0x3E0F6:
	ld e,[hl]
	bit 0,e
	ret z
	set 3,a
	ld e,$3E
	ld [de],a
	ld e,$15
	ld a,$04
	ld [de],a
	push de
	ld e,$2D
	ld hl,$4299
	ld a,$1E
	call FarCall
	pop de
	ret

UnknownData_0x3E111:
INCBIN "baserom.gb", $3E111, $3E145 - $3E111
	call Unknown_0x3E2C4
	ld a,$14

Unknown_0x3E14A:
	push af
	xor a
	ld [$FF00+$A6],a
	call Unknown_0x3E169
	pop af
	dec a
	jr nz,Unknown_0x3E14A

Unknown_0x3E155:
	call Unknown_0x3E169
	ld hl,$DF04
	bit 7,[hl]
	jr z,Unknown_0x3E155
	res 7,[hl]
	ld a,[hl]
	or a
	jp z,Unknown_0x3E22C
	jp Unknown_0x3E1F1

Unknown_0x3E169:
	call Unknown_0x0496
	ld hl,$086B
	ld a,$00
	call FarCall
	call Unknown_0x3E180
	call Unknown_0x04AE
	call Unknown_0x0343
	jp Unknown_0x0357

Unknown_0x3E180:
	ld a,[$DA36]
	or a
	jr nz,Unknown_0x3E1B1
	ld a,[$FF00+$A6]
	ld b,a
	and $09
	jr nz,Unknown_0x3E1D1
	ld a,[$DF04]
	bit 6,b
	jr z,Unknown_0x3E19A
	or a
	jr z,Unknown_0x3E1B1
	dec a
	jr Unknown_0x3E1A9

Unknown_0x3E19A:
	bit 7,b
	jr z,Unknown_0x3E1B1
	dec a
	jr z,Unknown_0x3E1B1
	ld a,[$DF05]
	or a
	jr z,Unknown_0x3E1B1
	ld a,$01

Unknown_0x3E1A9:
	ld [$DF04],a
	ld e,$2C
	call Unknown_0x10AA

Unknown_0x3E1B1:
	ld a,[$DA0E]
	and $04
	or a
	ret z

Unknown_0x3E1B8:
	ld hl,$FF80
	ld [hl],$4E
	inc l
	ld [hl],$00
	inc l
	ld a,[$DF04]
	or a
	ld a,$70
	jr z,Unknown_0x3E1CB
	ld a,$7F

Unknown_0x3E1CB:
	ld [hli],a
	ld [hl],$00
	jp Unknown_0x3E1DF

Unknown_0x3E1D1:
	ld e,$2D
	call Unknown_0x10AA
	call Unknown_0x3E1B8
	ld hl,$DF04
	set 7,[hl]
	ret

Unknown_0x3E1DF:
	xor a
	ld hl,$FF93
	ld [hli],a
	ld [hl],$70
	inc l
	ld [hl],a
	ld hl,Unknown_0x3E746
	ld de,$FF83
	jp Unknown_0x051C

Unknown_0x3E1F1:
	ld de,$0B04
	ld hl,Unknown_0x3C27B
	ld a,$1A
	call FarCall
	call Unknown_0x0437
	ld a,[$A051]
	cp $0D
	jr nz,Unknown_0x3E21B
	ld a,[$A05B]
	ld b,$00
	cp $FF
	jr z,Unknown_0x3E217
	cp $01
	ld b,$04
	jr z,Unknown_0x3E217
	ld b,$02

Unknown_0x3E217:
	ld a,b
	ld [$A051],a

Unknown_0x3E21B:
	ld hl,$10E6
	ld a,$00
	call FarCall
	ld hl,$1166
	ld a,$00
	call FarCall
	ret

Unknown_0x3E22C:
	ld de,$0B04
	ld hl,Unknown_0x3C27B
	ld a,$1A
	call FarCall
	call Unknown_0x0437
	ld e,$09
	ld hl,$602E
	ld a,$1E
	call FarCall
	ld hl,$1126
	ld a,$00
	call FarCall
	ld hl,$1134
	ld a,$00
	call FarCall
	ld a,$7F
	ld [$FF00+$45],a
	ld [$DA29],a
	ld a,$07
	ld [$FF00+$4B],a
	ld a,$80
	ld [$FF00+$4A],a
	ld a,[$A05B]
	push af
	ld hl,$1166
	ld a,$00
	call FarCall
	pop af
	ld [$A05B],a
	ld c,$04
	ld hl,$DF06
	ld de,$DB51

Unknown_0x3E27B:
	ld a,[hli]
	ld [de],a
	inc de
	dec c
	jr nz,Unknown_0x3E27B
	ld hl,$14EE
	ld a,$00
	call FarCall
	ld hl,Unknown_0x3C1DC
	ld a,$07
	call FarCall
	ld hl,Unknown_0x3C0E2
	ld a,$07
	call FarCall
	ld hl,$DB78
	ld de,$CD09
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	call Unknown_0x31CD
	ld a,$67
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld hl,Unknown_0x3C044
	ld a,$08
	call FarCall
	ld e,$04
	ld hl,Unknown_0x3C24E
	ld a,$1A
	call FarCall
	ret

Unknown_0x3E2C4:
	ld e,$2A
	ld hl,Unknown_0x3C299
	ld a,$1E
	call FarCall
	ld e,$04
	ld hl,Unknown_0x3C280
	ld a,$1A
	call FarCall
	call Unknown_0x0437
	ld hl,$1126
	ld a,$00
	call FarCall
	ld hl,Unknown_0x3E399
	ld de,$8700
	call StoreDEToRAM
	ld a,[$A071]
	or a
	ld b,$24
	jr z,Unknown_0x3E2F7
	add a,$2A
	ld b,a

Unknown_0x3E2F7:
	ld a,b
	ld [$DF11],a
	ld hl,$115F
	ld a,$00
	call FarCall
	ld hl,Unknown_0x3E39E
	ld de,$9000
	call StoreDEToRAM
	ld hl,Unknown_0x3E67F
	ld de,$9800
	call StoreDEToRAM
	ld c,$04
	ld hl,$DB51
	ld de,$DF06

Unknown_0x3E31D:
	ld a,[hl]
	ld [hl],$00
	ld [de],a
	inc hl
	inc de
	dec c
	jr nz,Unknown_0x3E31D
	xor a
	ld [$DA01],a
	ld [$DA00],a
	ld a,$FF
	ld [$DA29],a
	ld [$FF00+$45],a
	ld hl,$CD09
	ld a,$E4
	ld [hli],a
	ld a,$D0
	ld [hli],a
	ld a,$E4
	ld [hl],a
	ld a,$47
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld e,$0F
	ld hl,$6011
	ld a,$1E
	call FarCall
	ld hl,Unknown_0x3C028
	ld a,$08
	call FarCall
	ld a,$A7
	ld h,$A0
	call Unknown_0x07FC
	xor a
	ld [$DF04],a
	ld a,[$DB61]
	cp $08
	jr nc,Unknown_0x3E374
	ld e,a
	ld a,[$DB60]
	call Unknown_0x162A
	jr Unknown_0x3E38A

Unknown_0x3E374:
	cp $09
	jr nz,Unknown_0x3E389
	ld a,[$DB73]
	or a
	jr nz,Unknown_0x3E389
	ld a,[$DF0A]
	cp $04
	jr nc,Unknown_0x3E389
	ld a,$01
	jr Unknown_0x3E38A

Unknown_0x3E389:
	xor a

Unknown_0x3E38A:
	ld [$DF05],a
	ld de,$0B04
	ld hl,Unknown_0x3C246
	ld a,$1A
	call FarCall
	ret

Unknown_0x3E399:
INCBIN "baserom.gb", $3E399, $3E39E - $3E399

Unknown_0x3E39E:
INCBIN "baserom.gb", $3E39E, $3E67F - $3E39E

Unknown_0x3E67F:
INCBIN "baserom.gb", $3E67F, $3E746 - $3E67F

Unknown_0x3E746:
INCBIN "baserom.gb", $3E746, $3E89B - $3E746
	call Unknown_0x0C80
	call Unknown_0x0C91
	jp Unknown_0x0DA4

Unknown_0x3E8A4:
INCBIN "baserom.gb", $3E8A4, $3E8D2 - $3E8A4
	call Unknown_0x3EE0B
	ld a,$20

Unknown_0x3E8D7:
	push af
	xor a
	ld [$FF00+$A6],a
	call Unknown_0x3E8FE
	pop af
	dec a
	jr nz,Unknown_0x3E8D7

Unknown_0x3E8E2:
	call Unknown_0x3E8FE
	call Unknown_0x0647
	ld a,[$DF0A]
	cp $06
	jr z,Unknown_0x3E8E2
	ld de,$0104
	ld hl,Unknown_0x3C27B
	ld a,$1A
	call FarCall
	call Unknown_0x0437
	ret

Unknown_0x3E8FE:
	call Unknown_0x0496
	ld hl,$086B
	ld a,$00
	call FarCall
	call Unknown_0x04AE
	call Unknown_0x0343
	jp Unknown_0x0357

UnknownData_0x3E912:
INCBIN "baserom.gb", $3E912, $3E9D2 - $3E912
	ld e,$39
	ld a,[de]
	ld [$DF0A],a
	ret
	ld e,$39
	ld a,[de]
	ld hl,$69F3
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x3E9E5
	inc h

Unknown_0x3E9E5:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld e,$27
	ld a,[hli]
	or a
	jr nz,Unknown_0x3E9F1
	ld a,[hl]
	sub $01

Unknown_0x3E9F1:
	ld [de],a
	ret

UnknownData_0x3E9F3:
INCBIN "baserom.gb", $3E9F3, $3EA1A - $3E9F3

Unknown_0x3EA1A:
	ld e,$39
	ld a,[de]
	ld hl,$6A2A
	add a,l
	ld l,a
	jr nc,Unknown_0x3EA25
	inc h

Unknown_0x3EA25:
	ld a,[hl]
	ld e,$07
	ld [de],a
	ret

UnknownData_0x3EA2A:
INCBIN "baserom.gb", $3EA2A, $3EA2E - $3EA2A
	ld a,[$FF00+$A6]
	ld e,$39
	bit 6,a
	jr nz,Unknown_0x3EA43
	bit 7,a
	jr nz,Unknown_0x3EA51
	bit 1,a
	jr nz,Unknown_0x3EA58
	and $09
	jr nz,Unknown_0x3EA71
	ret

Unknown_0x3EA43:
	ld a,[de]
	or a
	ret z
	dec a

Unknown_0x3EA47:
	ld [de],a
	call Unknown_0x3EA1A
	ld e,$2C
	call Unknown_0x10AA
	ret

Unknown_0x3EA51:
	ld a,[de]
	cp $03
	ret z
	inc a
	jr Unknown_0x3EA47

Unknown_0x3EA58:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x3EA6B
	ld e,$39
	call Unknown_0x10AA
	ld e,$0F
	ld bc,$6939
	jp Unknown_0x0846

Unknown_0x3EA6B:
	ld a,$FF
	ld [$DF0A],a
	ret

Unknown_0x3EA71:
	ld a,[de]
	cp $03
	ld e,$3A
	jr z,Unknown_0x3EA91
	ld a,[de]
	or a
	jr nz,Unknown_0x3EA89
	ld e,$2D
	call Unknown_0x10AA
	ld e,$0F
	ld bc,$6974
	jp Unknown_0x0846

Unknown_0x3EA89:
	ld e,$0F
	ld bc,$695F
	jp Unknown_0x0846

Unknown_0x3EA91:
	ld a,[de]
	or a
	ret nz
	ld e,$2D
	call Unknown_0x10AA
	ld e,$0F
	ld bc,$694F
	jp Unknown_0x0846

UnknownData_0x3EAA1:
INCBIN "baserom.gb", $3EAA1, $3EC34 - $3EAA1
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$3A
	ld a,[hl]
	or a
	ld a,$FF
	jr nz,Unknown_0x3EC43
	ld e,$39
	ld a,[de]

Unknown_0x3EC43:
	ld e,$15
	ld [de],a
	ret

UnknownData_0x3EC47:
INCBIN "baserom.gb", $3EC47, $3EC6F - $3EC47
	push bc
	ld e,$39
	ld a,[de]
	ld e,a
	call Unknown_0x3EC7F
	call Unknown_0x3EC97
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret

Unknown_0x3EC7F:
	ld a,e
	ld hl,$BF00
	cp $01
	jr c,Unknown_0x3EC8F
	ld hl,$BF1C
	jr z,Unknown_0x3EC8F
	ld hl,$BF38

Unknown_0x3EC8F:
	ld e,$1C
	xor a

Unknown_0x3EC92:
	ld [hli],a
	dec e
	jr nz,Unknown_0x3EC92
	ret

Unknown_0x3EC97:
	ld a,$0F
	call Unknown_0x0675
	ret c
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld de,$98CC
	ld bc,$BF02
	call Unknown_0x3ECC1
	ld de,$992C
	ld bc,$BF1E
	call Unknown_0x3ECC1
	ld de,$998C
	ld bc,$BF3A
	call Unknown_0x3ECC1
	ld a,l
	ld [$FF00+$92],a
	ret

Unknown_0x3ECC1:
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld [hl],$05
	inc l
	ld a,[bc]
	inc a
	ld [hl],a
	inc l
	ld e,$0A
	ld [hl],e
	inc l
	dec bc
	ld a,[bc]
	and $0F
	call Unknown_0x3ECE5
	dec bc
	ld a,[bc]
	swap a
	and $0F
	call Unknown_0x3ECE5
	ld e,$00
	ld a,[bc]
	and $0F

Unknown_0x3ECE5:
	jr nz,Unknown_0x3ECEA
	ld a,e
	jr Unknown_0x3ECEC

Unknown_0x3ECEA:
	ld e,$00

Unknown_0x3ECEC:
	ld [hl],a
	inc l
	ret

Unknown_0x3ECEF:
	ld c,$03
	ld de,$001C
	ld hl,$BF02

Unknown_0x3ECF7:
	ld b,$17
	push hl
	ld a,[hli]

Unknown_0x3ECFB:
	xor [hl]
	inc hl
	dec b
	jr nz,Unknown_0x3ECFB
	cp [hl]
	jr nz,Unknown_0x3ED16
	pop hl
	ld b,$18
	push hl
	ld a,[hli]

Unknown_0x3ED08:
	add a,[hl]
	inc hl
	dec b
	jr nz,Unknown_0x3ED08
	cp [hl]
	jr nz,Unknown_0x3ED16

Unknown_0x3ED10:
	pop hl
	add hl,de
	dec c
	jr nz,Unknown_0x3ECF7
	ret

Unknown_0x3ED16:
	pop hl
	push hl
	ld b,$1A
	xor a

Unknown_0x3ED1B:
	ld [hli],a
	dec b
	jr nz,Unknown_0x3ED1B
	jr Unknown_0x3ED10
	ld a,[$DF0A]
	cp $03
	ret nc
	ld de,$BF02
	cp $01
	jr c,Unknown_0x3ED36
	ld de,$BF1E
	jr z,Unknown_0x3ED36
	ld de,$BF3A

Unknown_0x3ED36:
	ld hl,Unknown_0x3E8A4

Unknown_0x3ED39:
	ld a,[hli]
	or a
	jr z,Unknown_0x3ED50
	ld [$FF00+$84],a
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a

Unknown_0x3ED43:
	ld a,[de]
	inc de
	ld [bc],a
	inc bc
	ld a,[$FF00+$84]
	dec a
	ld [$FF00+$84],a
	jr nz,Unknown_0x3ED43
	jr Unknown_0x3ED39

Unknown_0x3ED50:
	ld hl,$FFE6
	add hl,de
	ld a,[hli]
	or [hl]
	ret nz
	ld a,$02
	ld [$A084],a
	ld a,$0C
	ld [$A04C],a
	ld a,$06
	ld [$A072],a
	ld a,$FF
	ld [$A05B],a
	ret
	ld a,[$DF0A]
	cp $03
	ret nc
	ld de,$BF02
	cp $01
	jr c,Unknown_0x3ED81
	ld de,$BF1E
	jr z,Unknown_0x3ED81
	ld de,$BF3A

Unknown_0x3ED81:
	ld hl,Unknown_0x3E8A4

Unknown_0x3ED84:
	ld a,[hli]
	or a
	jr z,Unknown_0x3ED9B
	ld [$FF00+$84],a
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a

Unknown_0x3ED8E:
	ld a,[bc]
	inc bc
	ld [de],a
	inc de
	ld a,[$FF00+$84]
	dec a
	ld [$FF00+$84],a
	jr nz,Unknown_0x3ED8E
	jr Unknown_0x3ED84

Unknown_0x3ED9B:
	ld hl,$FFE8
	add hl,de
	ld b,$17
	push hl
	ld a,[hli]

Unknown_0x3EDA3:
	xor [hl]
	inc hl
	dec b
	jr nz,Unknown_0x3EDA3
	ld [hl],a
	pop hl
	ld b,$18
	ld a,[hli]

Unknown_0x3EDAD:
	add a,[hl]
	inc hl
	dec b
	jr nz,Unknown_0x3EDAD
	ld [hl],a
	ret

Unknown_0x3EDB4:
	ld a,$03
	ld [$FF00+$82],a
	ld hl,$BF00

Unknown_0x3EDBB:
	push hl
	xor a
	ld [$FF00+$80],a
	ld [$FF00+$81],a
	ld de,$0003
	add hl,de
	ld b,$0A
	ld c,$02
	call Unknown_0x3EDED
	ld b,$02
	ld c,$01
	call Unknown_0x3EDED
	ld b,$01
	ld c,$03
	call Unknown_0x3EDED
	pop hl
	ld a,[$FF00+$80]
	ld [hli],a
	ld a,[$FF00+$81]
	ld [hld],a
	ld de,$001C
	add hl,de
	ld a,[$FF00+$82]
	dec a
	ld [$FF00+$82],a
	jr nz,Unknown_0x3EDBB
	ret

Unknown_0x3EDED:
	ld e,[hl]
	inc hl
	ld d,$08

Unknown_0x3EDF1:
	srl e
	call c,Unknown_0x3EDFD
	dec d
	jr nz,Unknown_0x3EDF1
	dec b
	jr nz,Unknown_0x3EDED
	ret

Unknown_0x3EDFD:
	ld a,[$FF00+$80]
	add a,c
	daa
	ld [$FF00+$80],a
	ld a,[$FF00+$81]
	adc a,$00
	daa
	ld [$FF00+$81],a
	ret

Unknown_0x3EE0B:
	ld hl,Unknown_0x3C000
	ld a,$08
	call FarCall
	ld e,$10
	ld hl,$6011
	ld a,$1E
	call FarCall
	ld hl,Unknown_0x3EE8C
	ld de,$8000
	call StoreDEToRAM
	ld hl,$1150
	ld a,$00
	call FarCall
	ld hl,Unknown_0x3F05D
	ld de,$9000
	call StoreDEToRAM
	ld hl,Unknown_0x3F2A3
	ld de,$9800
	call StoreDEToRAM
	call Unknown_0x3ECEF
	call Unknown_0x3EDB4
	call Unknown_0x3EC97
	call Unknown_0x1584
	ld a,$FF
	ld [$DA29],a
	ld [$FF00+$45],a
	ld a,$A8
	ld hl,$A0B3
	call Unknown_0x07C4
	ld e,$2E
	ld hl,Unknown_0x3C232
	ld a,$1F
	call FarCall
	ld hl,$CD09
	ld a,$E4
	ld [hli],a
	ld a,$D0
	ld [hli],a
	ld a,$E4
	ld [hl],a
	ld a,$47
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld a,$06
	ld [$DF0A],a
	call Unknown_0x0357
	ld de,$0104
	ld hl,Unknown_0x3C246
	ld a,$1A
	call FarCall
	ret

Unknown_0x3EE8C:
INCBIN "baserom.gb", $3EE8C, $3F05D - $3EE8C

Unknown_0x3F05D:
INCBIN "baserom.gb", $3F05D, $3F2A3 - $3F05D

Unknown_0x3F2A3:
INCBIN "baserom.gb", $3F2A3, $40000 - $3F2A3