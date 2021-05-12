SECTION "Bank19", ROMX, BANK[$19]
	ld bc,$1777
	ld hl,$5AA4
	ld a,$07
	call FarCall
	xor a
	ld [$DF17],a
	call Unknown_0x1584
	ld hl,$DF19
	ld [hli],a
	ld [hl],a
	ld [$DF1B],a
	ld [$DA2E],a
	ld [$DA2F],a
	ld e,$FF
	ld hl,$4232
	ld a,$1F
	call FarCall
	ld a,$19
	call Unknown_0x640CD

Unknown_0x6402F:
	call Unknown_0x0496
	call Unknown_0x086B
	call Unknown_0x04AE
	call Unknown_0x0343
	ld a,[$DF18]
	ld h,a
	ld l,$00
	ld a,[hl]
	inc a
	jr nz,Unknown_0x6402F
	ld a,[$DF17]
	cp $03
	jr z,Unknown_0x64068
	cp $04
	jr z,Unknown_0x64068
	cp $06
	jr nc,Unknown_0x64083
	ld hl,$40BB
	add a,l
	ld l,a
	jr nc,Unknown_0x6405C
	inc h

Unknown_0x6405C:
	ld a,[hl]
	ld d,a
	ld e,$04
	ld hl,$4271
	ld a,$1A
	call FarCall

Unknown_0x64068:
	call Unknown_0x0437
	ld a,[$DF17]
	ld hl,$40C1
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x64077
	inc h

Unknown_0x64077:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	call Unknown_0x0620
	ld hl,$DF17
	inc [hl]
	jr Unknown_0x6402F

Unknown_0x64083:
	call Unknown_0x0496
	call Unknown_0x04AE
	call Unknown_0x0343
	call Unknown_0x0357
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x64099
	bit 3,a
	jr z,Unknown_0x64083

Unknown_0x64099:
	ld e,$FF
	ld hl,$4232
	ld a,$1F
	call FarCall
	ld a,[$DF0A]
	cp $04
	ld de,$1505
	jr nz,Unknown_0x640B0
	ld de,$1705

Unknown_0x640B0:
	ld hl,$427B
	ld a,$1A
	call FarCall
	jp Unknown_0x0437

UnknownData_0x640BB:
INCBIN "baserom.gb", $640BB, $640CD - $640BB

Unknown_0x640CD:
	call Unknown_0x64233
	call Unknown_0x64218
	ld hl,$4000
	ld a,$08
	call FarCall
	ld a,$DA
	ld hl,$A0B3
	call Unknown_0x07C4
	ld a,h
	ld [$DF18],a
	ld a,$E4
	ld [$CD09],a
	ld a,$D0
	ld [$CD0A],a
	ld a,$E4
	ld [$CD0B],a
	ld a,$47
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld de,$0D16
	push de
	ld a,e
	cp $FF
	jr z,Unknown_0x6410E
	ld hl,$6011
	ld a,$1E
	call FarCall

Unknown_0x6410E:
	push af
	ld hl,$5DF3
	ld a,$1E
	call FarCall
	call Unknown_0x0357
	pop af
	dec a
	jr nz,Unknown_0x6410E
	pop de
	ld e,$04
	ld hl,$4246
	ld a,$1A
	call FarCall
	ret
	call Unknown_0x64251
	ld hl,$4000
	ld a,$08
	call FarCall
	ld a,$DB
	ld hl,$A0B3
	call Unknown_0x07C4
	ld a,h
	ld [$DF18],a
	ld a,$E4
	ld [$CD09],a
	ld de,$0F17
	jp Unknown_0x6434C
	call Unknown_0x6426F
	ld hl,$4000
	ld a,$08
	call FarCall
	ld a,$DB
	ld hl,$A0B3
	call Unknown_0x07C4
	ld a,h
	ld [$DF18],a
	ld a,$E4
	ld [$CD09],a
	ld de,$1018
	jp Unknown_0x6434C
	call Unknown_0x6428D
	call Unknown_0x6422A
	ld hl,$4000
	ld a,$08
	call FarCall
	ld a,$DC
	ld hl,$A0B3
	call Unknown_0x07C4
	ld a,h
	ld [$DF18],a
	ld a,$E4
	ld [$CD09],a
	ld de,$1119
	jp Unknown_0x6434C
	call Unknown_0x642AB
	call Unknown_0x64218
	ld hl,$4000
	ld a,$08
	call FarCall
	ld a,$DE
	ld hl,$A0B3
	call Unknown_0x07C4
	ld a,h
	ld [$DF18],a
	ld a,$D2
	ld [$CD09],a
	ld de,$121B
	jp Unknown_0x6434C
	call Unknown_0x642C9
	call Unknown_0x64221
	ld hl,$4000
	ld a,$08
	call FarCall
	ld a,$E2
	ld hl,$A0B3
	call Unknown_0x07C4
	ld a,h
	ld [$DF18],a
	ld a,$E8
	ld [$FF00+$42],a
	ld [$DA2E],a
	ld a,$E4
	ld [$CD09],a
	ld de,$141C
	jp Unknown_0x6434C
	call Unknown_0x64305
	xor a
	ld [$FF00+$42],a
	ld [$FF00+$43],a
	ld [$DA00],a
	ld [$DA01],a
	ld [$DA2E],a
	ld [$DA2F],a
	ld a,$E4
	ld [$CD09],a
	ld hl,$5ADA
	ld a,$07
	call FarCall
	ld a,[$DF0A]
	cp $04
	jr z,Unknown_0x64212
	ld de,$161E
	jp Unknown_0x6434C

Unknown_0x64212:
	ld de,$1823
	jp Unknown_0x6434C

Unknown_0x64218:
	ld hl,Unknown_0x64F74
	ld de,$8000
	jp StoreDEToRAM

Unknown_0x64221:
	ld hl,Unknown_0x65193
	ld de,$8000
	jp StoreDEToRAM

Unknown_0x6422A:
	ld hl,Unknown_0x65635
	ld de,$8000
	jp StoreDEToRAM

Unknown_0x64233:
	ld hl,Unknown_0x65B87
	ld de,$8000
	call StoreDEToRAM
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call MemCopy
	ld hl,Unknown_0x6729C
	ld de,$9800
	jp StoreDEToRAM

Unknown_0x64251:
	ld hl,Unknown_0x65F00
	ld de,$8000
	call StoreDEToRAM
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call MemCopy
	ld hl,Unknown_0x6731C
	ld de,$9800
	jp StoreDEToRAM

Unknown_0x6426F:
	ld hl,Unknown_0x662A4
	ld de,$8000
	call StoreDEToRAM
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call MemCopy
	ld hl,Unknown_0x673C9
	ld de,$9800
	jp StoreDEToRAM

Unknown_0x6428D:
	ld hl,Unknown_0x6668B
	ld de,$8000
	call StoreDEToRAM
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call MemCopy
	ld hl,$7478
	ld de,$9800
	jp StoreDEToRAM

Unknown_0x642AB:
	ld hl,Unknown_0x66BA8
	ld de,$8000
	call StoreDEToRAM
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call MemCopy
	ld hl,Unknown_0x6752C
	ld de,$9800
	jp StoreDEToRAM

Unknown_0x642C9:
	ld hl,Unknown_0x66DFC
	ld de,$8000
	call StoreDEToRAM
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call MemCopy
	ld hl,Unknown_0x675BC
	ld de,$CF00
	call StoreDEToRAM
	ld hl,$CF00
	ld de,$9800
	ld bc,$0400
	call MemCopy
	ld a,l
	ld [$DF1C],a
	ld a,h
	ld [$DF1D],a
	ld hl,$DF1E
	ld bc,$9800
	ld a,c
	ld [hli],a
	ld [hl],b
	ret

Unknown_0x64305:
	ld a,[$DF0A]
	cp $04
	jr z,Unknown_0x6432C
	ld a,$1A
	ld hl,$543D
	ld de,$8000
	call Unknown_0x060D
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call MemCopy
	ld hl,Unknown_0x67732
	ld de,$9800
	jp StoreDEToRAM

Unknown_0x6432C:
	ld a,$1A
	ld hl,$58FF
	ld de,$8000
	call Unknown_0x060D
	ld hl,$8000
	ld de,$9000
	ld bc,$0800
	call MemCopy
	ld hl,$7815
	ld de,$9800
	jp StoreDEToRAM

Unknown_0x6434C:
	push de
	ld a,$D0
	ld [$CD0A],a
	ld a,$E4
	ld [$CD0B],a
	ld a,$47
	ld [$FF00+$40],a
	call Unknown_0x046D
	pop de
	push de
	ld a,e
	cp $FF
	jr z,Unknown_0x6436D
	ld hl,$6011
	ld a,$1E
	call FarCall

Unknown_0x6436D:
	pop de
	ld e,$04
	ld hl,$4246
	ld a,$1A
	call FarCall
	ret

UnknownData_0x64379:
INCBIN "baserom.gb", $64379, $643F9 - $64379
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	call Unknown_0x0357
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0x64409:
INCBIN "baserom.gb", $64409, $64426 - $64409
	push bc
	ld de,$1104
	ld hl,$4292
	ld a,$1A
	call FarCall
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0x64437:
INCBIN "baserom.gb", $64437, $6446E - $64437
	push bc
	ld de,$1204
	ld hl,$4292
	ld a,$1A
	call FarCall
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0x6447F:
INCBIN "baserom.gb", $6447F, $64BBD - $6447F
	call Unknown_0x0357
	ld a,[$FF00+$9A]
	ld d,a
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	call Unknown_0x64F02
	ld hl,$DF1B
	bit 1,[hl]
	ret nz
	ld hl,$DF1A
	ld bc,$002C
	ld a,c
	add a,[hl]
	ld [hl],a
	ld hl,$DA2E
	ld a,b
	adc a,[hl]
	ld [hl],a
	ld hl,$DF1B
	bit 0,[hl]
	jr nz,Unknown_0x64BFD
	ld a,[$DA2E]
	and $07
	jr nz,Unknown_0x64BFA
	bit 2,[hl]
	ret z
	res 2,[hl]
	jp Unknown_0x64C0F

Unknown_0x64BFA:
	set 2,[hl]
	ret

Unknown_0x64BFD:
	bit 2,[hl]
	jr nz,Unknown_0x64C0A
	ld a,[$DA2E]
	cp $80
	ret nz
	set 1,[hl]
	ret

Unknown_0x64C0A:
	res 2,[hl]
	jp Unknown_0x64C0F

Unknown_0x64C0F:
	ld h,$C4
	ld a,[$FF00+$92]
	ld l,a
	ld bc,$DF1E
	ld a,[bc]
	ld [hl],a
	inc l
	inc bc
	ld a,[bc]
	ld [hl],a
	inc l
	ld [hl],$20
	inc l
	ld bc,$DF1C
	ld a,[bc]
	inc bc
	ld e,a
	ld a,[bc]
	ld b,a
	ld c,e
	ld e,$20

Unknown_0x64C2C:
	ld a,[bc]
	ld [hl],a
	inc l
	inc bc
	dec e
	jr nz,Unknown_0x64C2C
	ld a,l
	ld [$FF00+$92],a
	ld hl,$DF1C
	ld a,c
	ld [hli],a
	ld [hl],b
	ld hl,$DF1E
	ld a,$20
	add a,[hl]
	ld [hli],a
	ld a,$00
	adc a,[hl]
	ld [hl],a
	cp $9C
	ret nz
	ld hl,$DF1B
	set 0,[hl]
	ret

UnknownData_0x64C50:
INCBIN "baserom.gb", $64C50, $64EE6 - $64C50
	ld a,$D0
	sub $18
	ld [$DF20],a
	ret
	push bc
	ld e,$1A
	ld hl,$6035
	ld a,$1E
	call FarCall
	ld a,[$FF00+$9A]
	ld d,a
	ld hl,$DA2F
	inc [hl]
	pop bc
	ret

Unknown_0x64F02:
	ld hl,$DF19
	ld bc,$FFC0
	ld a,c
	add a,[hl]
	ld [hl],a
	ld hl,$DA2F
	ld a,b
	adc a,[hl]
	ld [hl],a
	ret
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	call Unknown_0x64F02
	ld e,$15
	ld a,[de]
	cp $FF
	ret z
	ld e,$04
	ld a,[de]
	ld hl,$DA2F
	add a,[hl]
	add a,$18
	ld e,a
	and $F8
	cp e
	jr z,Unknown_0x64F35
	add a,$08

Unknown_0x64F35:
	ld e,a
	ld a,[$DF20]
	ld b,$26
	rlca
	rl b
	rlca
	rl b
	and $E0
	ld c,a
	ld a,e
	rra
	rra
	rra
	and $1F
	add a,c
	ld c,a
	ld h,$C4
	ld a,[$FF00+$92]
	ld l,a
	ld [hl],c
	inc l
	ld [hl],b
	inc l
	ld [hl],$01
	inc l
	ld [hl],$28
	inc l
	ld a,$20
	add a,c
	ld [hl],a
	inc l
	ld a,b
	adc a,$00
	ld [hl],a
	inc l
	ld [hl],$01
	inc l
	ld [hl],$29
	inc l
	ld a,l
	ld [$FF00+$92],a
	ret
	ld a,d
	ld [$DF18],a
	ret

Unknown_0x64F74:
INCBIN "baserom.gb", $64F74, $65193 - $64F74

Unknown_0x65193:
INCBIN "baserom.gb", $65193, $65635 - $65193

Unknown_0x65635:
INCBIN "baserom.gb", $65635, $65B87 - $65635

Unknown_0x65B87:
INCBIN "baserom.gb", $65B87, $65F00 - $65B87

Unknown_0x65F00:
INCBIN "baserom.gb", $65F00, $662A4 - $65F00

Unknown_0x662A4:
INCBIN "baserom.gb", $662A4, $6668B - $662A4

Unknown_0x6668B:
INCBIN "baserom.gb", $6668B, $66BA8 - $6668B

Unknown_0x66BA8:
INCBIN "baserom.gb", $66BA8, $66DFC - $66BA8

Unknown_0x66DFC:
INCBIN "baserom.gb", $66DFC, $6729C - $66DFC

Unknown_0x6729C:
INCBIN "baserom.gb", $6729C, $6731C - $6729C

Unknown_0x6731C:
INCBIN "baserom.gb", $6731C, $673C9 - $6731C

Unknown_0x673C9:
INCBIN "baserom.gb", $673C9, $6752C - $673C9

Unknown_0x6752C:
INCBIN "baserom.gb", $6752C, $675BC - $6752C

Unknown_0x675BC:
INCBIN "baserom.gb", $675BC, $67732 - $675BC

Unknown_0x67732:
INCBIN "baserom.gb", $67732, $67B08 - $67732
	push bc
	ld bc,$9DE0
	jr Unknown_0x67B18

UnknownData_0x67B0E:
INCBIN "baserom.gb", $67B0E, $67B14 - $67B0E
	push bc
	ld bc,$9E20

Unknown_0x67B18:
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
	ld a,$FF

Unknown_0x67B28:
	ld [hl],a
	inc l
	dec b
	jr nz,Unknown_0x67B28
	ld a,l
	ld [$FF00+$92],a
	pop bc
	ret
	push bc
	push de
	call Unknown_0x67B3E
	pop de
	pop bc
	ld a,[hl]
	ld e,$43
	ld [de],a
	ret

Unknown_0x67B3E:
	ld hl,$DF35
	ld a,[hli]
	ld c,a
	ld a,[hl]
	ld h,a
	ld l,c
	ld a,[hli]
	and a
	jr nz,Unknown_0x67B67
	inc hl
	ld bc,$9DE1
	ld a,[$FF00+$92]
	ld e,a
	ld d,$C4
	ld a,c
	ld [de],a
	inc e
	ld a,b
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld b,a

Unknown_0x67B5D:
	ld a,[hli]
	ld [de],a
	inc e
	dec b
	jr nz,Unknown_0x67B5D
	ld a,e
	ld [$FF00+$92],a
	inc hl

Unknown_0x67B67:
	ld a,[hli]
	ld bc,$9E20
	add a,c
	ld c,a
	jr nc,Unknown_0x67B70
	inc b

Unknown_0x67B70:
	ld a,[$FF00+$92]
	ld e,a
	ld d,$C4
	ld a,c
	ld [de],a
	inc e
	ld a,b
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld b,a

Unknown_0x67B7F:
	ld a,[hli]
	ld [de],a
	inc e
	dec b
	jr nz,Unknown_0x67B7F
	ld a,e
	ld [$FF00+$92],a
	ld bc,$DF35
	ld a,l
	ld [bc],a
	inc bc
	ld a,h
	ld [bc],a
	ret
	ld hl,$DF35
	ld a,$D1
	ld [hli],a
	ld a,$78
	ld [hl],a
	ret

UnknownData_0x67B9B:
INCBIN "baserom.gb", $67B9B, $68000 - $67B9B