SECTION "Bank18", ROMX, BANK[$18]

UnknownData_0x60000:
INCBIN "baserom.gb", $60000, $6027B - $60000

Unknown_0x6027B:
INCBIN "baserom.gb", $6027B, $61A1C - $6027B

Unknown_0x61A1C:
INCBIN "baserom.gb", $61A1C, $61ADA - $61A1C

Unknown_0x61ADA:
INCBIN "baserom.gb", $61ADA, $61B1B - $61ADA

Unknown_0x61B1B:
INCBIN "baserom.gb", $61B1B, $62011 - $61B1B

Unknown_0x62011:
INCBIN "baserom.gb", $62011, $6249F - $62011

Unknown_0x6249F:
INCBIN "baserom.gb", $6249F, $62B11 - $6249F

Unknown_0x62B11:
INCBIN "baserom.gb", $62B11, $62D6B - $62B11

Unknown_0x62D6B:
INCBIN "baserom.gb", $62D6B, $6349E - $62D6B
	push de
	push bc
	call Unknown_0x3DB8
	pop bc
	pop de
	ret
	ld a,[$DD2F]
	inc a
	ld e,$27
	ld [de],a
	ret
	push de
	push bc
	call Unknown_0x3D65
	pop bc
	pop de
	ret
	push bc
	ld bc,$9C60
	jr Unknown_0x634C0
	push bc
	ld bc,$9CC0

Unknown_0x634C0:
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld [hl],c
	inc l
	ld [hl],b
	inc l
	ld a,$14
	ld [hl],a
	inc l
	ld b,a
	ld a,$1D

Unknown_0x634D0:
	ld [hl],a
	inc l
	dec b
	jr nz,Unknown_0x634D0
	ld a,l
	ld [$FF00+$92],a
	pop bc
	ret
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld a,$6E
	ld [hl],a
	inc l
	ld a,$9C
	ld [hl],a
	inc l
	ld [hl],$01
	inc l
	ld [hl],$28
	inc l
	ld a,l
	ld [$FF00+$92],a
	ret
	ld a,$01
	ld [$DF37],a
	ret

UnknownData_0x634F7:
INCBIN "baserom.gb", $634F7, $636E5 - $634F7
	call Unknown_0x2B13
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld e,$0E
	ld a,[de]
	and a
	ret nz
	ld e,$40
	ld a,[de]
	cp $04
	jr c,Unknown_0x63707
	xor a
	ld [de],a
	ld a,[$DA01]
	dec a
	ld [$DA01],a
	ret

Unknown_0x63707:
	inc a
	ld [de],a
	ret
	call Unknown_0x0357
	ld a,[$FF00+$9A]
	ld d,a
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x63726
	bit 1,a
	jr nz,Unknown_0x63726
	bit 3,a
	ret z

Unknown_0x63726:
	ld [$DD2D],a
	ret
	ld a,[$DF37]
	ld e,$27
	ld [de],a
	ret
	ld a,$01
	ld [$DF38],a
	ret
	ld a,[$DF38]
	ld e,$27
	ld [de],a
	ret

UnknownData_0x6373E:
INCBIN "baserom.gb", $6373E, $64000 - $6373E