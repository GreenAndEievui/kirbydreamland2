SECTION "Bank1F", ROMX, BANK[$1F]

UnknownData_0x7C000:
INCBIN "baserom.gb", $7C000, $7C232 - $7C000
	ld a,[$DDE4]
	cp e
	ret z
	ld a,e
	ld [$DDE4],a
	ld b,e
	ld hl,$CE56
	ld c,$04
	xor a

Unknown_0x7C242:
	ld [hli],a
	dec c
	jr nz,Unknown_0x7C242
	ld hl,Unknown_0x7C281
	ld de,$CE2E
	ld c,$14

Unknown_0x7C24E:
	ld a,[hli]
	ld [de],a
	inc de
	dec c
	jr nz,Unknown_0x7C24E
	ld a,$FF
	cp b
	ret z
	ld e,b
	ld d,$00
	ld hl,Unknown_0x7FE0E
	add hl,de
	add hl,de
	ld a,[hli]
	ld e,a
	ld d,[hl]
	ld a,[de]
	ld h,a
	push hl
	ld bc,$0007

Unknown_0x7C269:
	ld hl,$CE52
	add hl,bc
	ld a,[hl]
	and a
	jr nz,Unknown_0x7C279
	call Unknown_0x2B97
	pop hl
	dec h
	push hl
	jr z,Unknown_0x7C27F

Unknown_0x7C279:
	dec c
	ld a,$03
	cp c
	jr nz,Unknown_0x7C269

Unknown_0x7C27F:
	pop hl
	ret

Unknown_0x7C281:
INCBIN "baserom.gb", $7C281, $7FE0E - $7C281

Unknown_0x7FE0E:
INCBIN "baserom.gb", $7FE0E, $80000 - $7FE0E