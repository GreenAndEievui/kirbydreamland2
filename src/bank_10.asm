SECTION "Bank10", ROMX, BANK[$10]

UnknownData_0x40000:
INCBIN "baserom.gb", $40000, $40232 - $40000

Unknown_0x40232:
INCBIN "baserom.gb", $40232, $40246 - $40232

Unknown_0x40246:
INCBIN "baserom.gb", $40246, $4027B - $40246

Unknown_0x4027B:
INCBIN "baserom.gb", $4027B, $40299 - $4027B

Unknown_0x40299:
INCBIN "baserom.gb", $40299, $41ADA - $40299

Unknown_0x41ADA:
INCBIN "baserom.gb", $41ADA, $41B06 - $41ADA

Unknown_0x41B06:
INCBIN "baserom.gb", $41B06, $42011 - $41B06

Unknown_0x42011:
INCBIN "baserom.gb", $42011, $4206D - $42011

Unknown_0x4206D:
INCBIN "baserom.gb", $4206D, $432D1 - $4206D

Unknown_0x432D1:
INCBIN "baserom.gb", $432D1, $43944 - $432D1

Unknown_0x43944:
INCBIN "baserom.gb", $43944, $43A2D - $43944
	call Unknown_0x2AF8
	xor a
	ld [$DF32],a
	ld [$DA2D],a
	ld a,$E4
	ld [$CD09],a
	ld a,$D0
	ld [$CD0A],a
	ld a,$E4
	ld [$CD0B],a
	ld hl,$9800
	ld bc,$0400
	ld a,$00
	call LoadByteToRamInit
	ld hl,$9C00
	ld bc,$0400
	ld a,$00
	call LoadByteToRamInit
	ld e,$FF
	ld hl,Unknown_0x40232
	ld a,$1F
	call CallForeignBankNoInturrupts
	ld e,$00
	ld hl,Unknown_0x4206D
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x432D1
	ld de,$8000
	call StoreDEToRAM
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call LoadDataToRamInit
	ld hl,$8FF0
	ld bc,$0010
	ld a,$FF
	call LoadByteToRamInit
	ld hl,Unknown_0x43944
	ld de,$CF00
	call StoreDEToRAM
	call Unknown_0x43C90
	ld a,$45
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld e,$1F
	ld hl,Unknown_0x42011
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld de,$0201
	ld hl,Unknown_0x40246
	ld a,$1A
	call CallForeignBankNoInturrupts
	ld b,$00
	ld hl,Unknown_0x41B06
	ld a,$07
	call CallForeignBankNoInturrupts
	ld a,$A8
	ld [$DA2D],a
	ld a,$14
	ld [$DF33],a
	ld e,$47
	ld hl,Unknown_0x40299
	ld a,$1E
	call CallForeignBankNoInturrupts

Unknown_0x43AD6:
	call Unknown_0x43B84
	ld a,[$DA2D]
	sub $04
	ld [$DA2D],a
	call Unknown_0x0496
	call Unknown_0x04AE
	call Unknown_0x0343
	ld a,[$DA2D]
	and a
	jr nz,Unknown_0x43AD6
	ld hl,$DA29
	ld a,$2F
	ld [hl],a
	ld [$FF00+$45],a
	ld a,$58
	ld [$DA2D],a
	ld a,$FF
	ld [$DF33],a
	ld e,$47
	ld hl,Unknown_0x40299
	ld a,$1E
	call CallForeignBankNoInturrupts

Unknown_0x43B0C:
	call Unknown_0x43BCC
	ld a,[$DA2D]
	add a,$04
	ld [$DA2D],a
	call Unknown_0x0496
	call Unknown_0x04AE
	call Unknown_0x0343
	ld a,[$DA2D]
	and a
	jr nz,Unknown_0x43B0C
	ld hl,$DA29
	ld a,$5F
	ld [hl],a
	ld [$FF00+$45],a
	ld a,$A8
	ld [$DA2D],a
	ld a,$14
	ld [$DF33],a
	ld e,$47
	ld hl,Unknown_0x40299
	ld a,$1E
	call CallForeignBankNoInturrupts

Unknown_0x43B42:
	call Unknown_0x43C15
	ld a,[$DA2D]
	sub $04
	ld [$DA2D],a
	call Unknown_0x0496
	call Unknown_0x04AE
	call Unknown_0x0343
	ld a,[$DA2D]
	and a
	jr nz,Unknown_0x43B42
	ld a,$40

Unknown_0x43B5E:
	dec a
	push af
	call Unknown_0x0496
	call Unknown_0x04AE
	call Unknown_0x0343
	pop af
	and a
	jr nz,Unknown_0x43B5E
	ld de,$0204
	ld hl,Unknown_0x4027B
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ld hl,Unknown_0x41ADA
	ld a,$07
	call CallForeignBankNoInturrupts
	ret

Unknown_0x43B84:
	ld a,[$DA2D]
	and $07
	ret nz
	ld bc,$9800
	ld a,[$DF33]
	and a
	ret z
	dec a
	ld [$DF33],a
	add a,c
	ld c,a
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld a,$06
	ld [$FF00+$81],a
	ld de,$CF00
	ld a,[$DF33]
	add a,e
	ld e,a

Unknown_0x43BA9:
	ld [hl],c
	inc l
	ld [hl],b
	inc l
	ld [hl],$01
	inc l
	ld a,[de]
	ld [hl],a
	inc l
	ld a,e
	add a,$20
	ld e,a
	jr nc,Unknown_0x43BBA
	inc d

Unknown_0x43BBA:
	ld a,c
	add a,$20
	ld c,a
	jr nc,Unknown_0x43BC1
	inc b

Unknown_0x43BC1:
	ld a,[$FF00+$81]
	dec a
	ld [$FF00+$81],a
	jr nz,Unknown_0x43BA9
	ld a,l
	ld [$FF00+$92],a
	ret

Unknown_0x43BCC:
	ld a,[$DA2D]
	and $07
	ret nz
	ld bc,$98C0
	ld a,[$DF33]
	cp $14
	ret z
	inc a
	ld [$DF33],a
	add a,c
	ld c,a
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld a,$06
	ld [$FF00+$81],a
	ld de,$CFC0
	ld a,[$DF33]
	add a,e
	ld e,a

Unknown_0x43BF2:
	ld [hl],c
	inc l
	ld [hl],b
	inc l
	ld [hl],$01
	inc l
	ld a,[de]
	ld [hl],a
	inc l
	ld a,e
	add a,$20
	ld e,a
	jr nc,Unknown_0x43C03
	inc d

Unknown_0x43C03:
	ld a,c
	add a,$20
	ld c,a
	jr nc,Unknown_0x43C0A
	inc b

Unknown_0x43C0A:
	ld a,[$FF00+$81]
	dec a
	ld [$FF00+$81],a
	jr nz,Unknown_0x43BF2
	ld a,l
	ld [$FF00+$92],a
	ret

Unknown_0x43C15:
	ld a,[$DA2D]
	and $07
	ret nz
	ld bc,$9980
	ld a,[$DF33]
	and a
	ret z
	dec a
	ld [$DF33],a
	add a,c
	ld c,a
	ld a,[$FF00+$92]
	ld l,a
	ld h,$C4
	ld a,$06
	ld [$FF00+$81],a
	ld de,$D080
	ld a,[$DF33]
	add a,e
	ld e,a

Unknown_0x43C3A:
	ld [hl],c
	inc l
	ld [hl],b
	inc l
	ld [hl],$01
	inc l
	ld a,[de]
	ld [hl],a
	inc l
	ld a,e
	add a,$20
	ld e,a
	jr nc,Unknown_0x43C4B
	inc d

Unknown_0x43C4B:
	ld a,c
	add a,$20
	ld c,a
	jr nc,Unknown_0x43C52
	inc b

Unknown_0x43C52:
	ld a,[$FF00+$81]
	dec a
	ld [$FF00+$81],a
	jr nz,Unknown_0x43C3A
	ld a,l
	ld [$FF00+$92],a
	ret

UnknownData_0x43C5D:
INCBIN "baserom.gb", $43C5D, $43C90 - $43C5D

Unknown_0x43C90:
	ld hl,$CFA0
	ld a,[hl]
	ld hl,$98A0
	ld b,$20

Unknown_0x43C99:
	ld [hli],a
	dec b
	jr nz,Unknown_0x43C99
	ld hl,$CFC0
	ld a,[hl]
	ld hl,$98C0
	ld b,$20

Unknown_0x43CA6:
	ld [hli],a
	dec b
	jr nz,Unknown_0x43CA6
	ld hl,$D060
	ld a,[hl]
	ld hl,$9960
	ld b,$20

Unknown_0x43CB3:
	ld [hli],a
	dec b
	jr nz,Unknown_0x43CB3
	ld hl,$D080
	ld a,[hl]
	ld hl,$9980
	ld b,$20

Unknown_0x43CC0:
	ld [hli],a
	dec b
	jr nz,Unknown_0x43CC0
	ret

UnknownData_0x43CC5:
INCBIN "baserom.gb", $43CC5, $44000 - $43CC5