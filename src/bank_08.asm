SECTION "Bank08", ROMX, BANK[$08]

Unknown_0x20000:
	ld a,$A0
	ld [$DA48],a
	xor a
	ld [$DA46],a
	ld [$DA47],a
	ld hl,$B201
	ld [hl],a
	dec h
	ld b,$12
	ld a,$B2

Unknown_0x20015:
	ld [hl],a
	dec h
	dec a
	dec b
	jr nz,Unknown_0x20015
	ld a,$FF
	ld b,$13
	ld hl,$A000

Unknown_0x20022:
	ld [hl],a
	inc h
	dec b
	jr nz,Unknown_0x20022
	ret
	ld hl,$A000
	ld de,$DAE6
	ld bc,$004D
	call LoadDataToRamInit
	ld a,[$DA46]
	ld [$DB33],a
	ld a,$A0
	ld [$DA46],a
	xor a
	ld [$A001],a
	ret
	ld de,$A000
	ld hl,$DAE6
	ld bc,$004D
	call LoadDataToRamInit
	ld a,[$DB33]
	ld [$DA46],a
	ret
	xor a
	ld b,$2F
	ld hl,$A050

Unknown_0x2005D:
	ld [hli],a
	dec b
	jr nz,Unknown_0x2005D
	ret

Unknown_0x20062:
	ld hl,Unknown_0x21FE1
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x21F68
	ld a,$1E
	call CallForeignBankNoInturrupts
	xor a
	ld [$DEFF],a

Unknown_0x20076:
	ld hl,$7A2D
	ld a,$10
	call CallForeignBankNoInturrupts

Unknown_0x2007E:
	ld hl,$5FEE
	ld a,$07
	call CallForeignBankNoInturrupts
	ld a,[$DEFF]
	or a
	jp nz,Unknown_0x203F3
	ld hl,$68D2
	ld a,$0F
	call CallForeignBankNoInturrupts
	ld a,[$DF0A]
	cp $FF
	jr z,Unknown_0x2007E
	cp $03
	jr c,Unknown_0x200AB
	cp $04
	jp c,Unknown_0x203E8
	jp z,Unknown_0x2032C
	jp Unknown_0x2038C

Unknown_0x200AB:
	call Unknown_0x2049B
	ld hl,$DB39
	ld [hl],$00

Unknown_0x200B3:
	ld e,$07
	ld hl,Unknown_0x2206D
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld hl,$32FF
	ld a,$00
	call CallForeignBankNoInturrupts
	ld e,$00
	ld hl,Unknown_0x2206D
	ld a,$1E
	call CallForeignBankNoInturrupts
	call Unknown_0x206EF
	cp $FF
	jr z,Unknown_0x200E8
	cp $07
	jr nc,Unknown_0x200E8
	ld e,a
	ld hl,$2A2B
	ld a,$00
	call CallForeignBankNoInturrupts
	ld a,$01
	ld [$DB38],a

Unknown_0x200E8:
	ld hl,$10E6
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$1166
	ld a,$00
	call CallForeignBankNoInturrupts
	ld a,[$DB60]
	ld hl,$4278
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x20104
	inc h

Unknown_0x20104:
	ld a,[hli]
	ld h,[hl]
	ld l,a

Unknown_0x20107:
	call Unknown_0x204D0

Unknown_0x2010A:
	ld hl,$11BE
	ld a,$00
	call CallForeignBankNoInturrupts
	ld a,[$A082]
	dec a
	ld hl,$4123
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x2011F
	inc h

Unknown_0x2011F:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x20123:
INCBIN "baserom.gb", $20123, $20128 - $20123

Unknown_0x20128:
INCBIN "baserom.gb", $20128, $20135 - $20128
	ld a,[$DB61]
	ld [$DB6D],a
	cp $08
	jr nz,Unknown_0x20149
	ld e,$00
	ld hl,Unknown_0x2206D
	ld a,$1E
	call CallForeignBankNoInturrupts

Unknown_0x20149:
	ld hl,$1220
	ld a,$00
	call CallForeignBankNoInturrupts
	ld a,[hl]
	cp $20
	jp nc,Unknown_0x20107
	cp $01
	jp nz,Unknown_0x20107
	ld a,$FF
	ld [$DB57],a
	ld hl,$3212
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$10E6
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$1166
	ld a,$00
	call CallForeignBankNoInturrupts
	ld a,[$DB61]
	ld e,a
	ld a,[$DB60]
	call Unknown_0x162A
	or a
	jr nz,Unknown_0x2018D
	ld a,$01
	ld [$DB3A],a
	jr Unknown_0x20195

Unknown_0x2018D:
	ld hl,$6D6C
	ld a,$0F
	call CallForeignBankNoInturrupts

Unknown_0x20195:
	xor a
	ld [$DB6E],a
	ld hl,$4851
	ld a,$08
	call CallForeignBankNoInturrupts
	jp Unknown_0x20107
	ld e,$04
	ld hl,Unknown_0x20280
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ld a,[$DF0A]
	cp $04
	jp z,Unknown_0x2007E
	call Unknown_0x206CB
	ld a,[$A084]
	or a
	jr z,Unknown_0x201FB
	dec a
	daa
	ld [$A084],a
	ld hl,$6D6C
	ld a,$0F
	call CallForeignBankNoInturrupts
	ld hl,$DEDE
	set 2,[hl]
	ld hl,$1166
	ld a,$00
	call CallForeignBankNoInturrupts
	ld e,$01
	ld hl,$459C
	ld a,$07
	call CallForeignBankNoInturrupts
	ld e,$02
	ld hl,$459C
	ld a,$07
	call CallForeignBankNoInturrupts
	ld a,[$DB36]
	ld l,a
	ld a,[$DB37]
	ld h,a
	jp Unknown_0x20107

Unknown_0x201FB:
	ld a,$02
	ld [$A084],a
	ld hl,$5A7C
	ld a,$07
	call CallForeignBankNoInturrupts
	ld hl,$6D6C
	ld a,$0F
	call CallForeignBankNoInturrupts
	ld hl,$2A29
	ld a,$00
	call CallForeignBankNoInturrupts
	ld a,[$DA2C]
	cp $01
	jp z,Unknown_0x2007E
	ld hl,$10E6
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$1166
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$4851
	ld a,$08
	call CallForeignBankNoInturrupts
	jp Unknown_0x20107
	ld e,$04
	ld hl,Unknown_0x20280
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ld a,[$DB61]
	cp $08
	jr nz,Unknown_0x2025C
	ld e,$00
	ld hl,$606D
	ld a,$1E
	call CallForeignBankNoInturrupts
	jp Unknown_0x200B3

Unknown_0x2025C:
	ld a,[$DB60]
	cp $06
	jp nz,Unknown_0x200B3
	ld hl,$DEDF
	res 1,[hl]
	xor a
	ld [$DEE3],a
	ld a,$00
	ld [$A071],a
	ld hl,$50E4
	jp Unknown_0x20107

UnknownData_0x20278:
INCBIN "baserom.gb", $20278, $20280 - $20278

Unknown_0x20280:
INCBIN "baserom.gb", $20280, $20286 - $20280
	ld a,[$CD4D]
	or a
	jp nz,Unknown_0x2010A
	ld a,[$DEFF]
	or a
	jp nz,Unknown_0x20473
	ld hl,Unknown_0x22145
	ld a,$0F
	call CallForeignBankNoInturrupts
	ld a,[$DF04]
	rra
	jp nc,Unknown_0x2010A
	ld hl,$79F4
	ld a,$01
	call CallForeignBankNoInturrupts
	ld hl,$6D6C
	ld a,$0F
	call CallForeignBankNoInturrupts
	ld hl,$4851
	ld a,$08
	call CallForeignBankNoInturrupts
	jp Unknown_0x20107
	ld e,$04
	ld hl,$4280
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ld hl,$1126
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$79F4
	ld a,$01
	call CallForeignBankNoInturrupts
	ld a,[$DF0A]
	cp $05
	jp z,Unknown_0x203BD
	ld a,[$DB60]
	call Unknown_0x0663
	ld hl,$DB6E
	or [hl]
	ld [hl],a
	ld a,$01
	ld [$DB3C],a
	ld hl,$6D6C
	ld a,$0F
	call CallForeignBankNoInturrupts
	ld hl,$4851
	ld a,$08
	call CallForeignBankNoInturrupts
	jp Unknown_0x20107
	ld e,$08
	ld hl,Unknown_0x20280
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ld hl,$3C92
	ld a,$00
	call CallForeignBankNoInturrupts
	jp Unknown_0x2007E
	call Unknown_0x0437
	ld hl,$4000
	ld a,$19
	call CallForeignBankNoInturrupts
	jp Unknown_0x2007E

Unknown_0x2032C:
	call Unknown_0x2049B
	xor a
	ld [$DB6A],a
	ld [$DB6B],a
	ld [$A084],a
	ld [$A071],a
	ld [$A051],a
	ld hl,$DEDB
	ld [hli],a
	ld [hli],a
	ld [hl],a
	dec a
	ld [$A05B],a
	ld [$DB60],a
	ld a,$7F
	ld [$DD63],a
	ld hl,$10E6
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$1166
	ld a,$00
	call CallForeignBankNoInturrupts
	jr Unknown_0x20370

UnknownData_0x20363:
INCBIN "baserom.gb", $20363, $20370 - $20363

Unknown_0x20370:
	ld hl,$DEDE
	set 6,[hl]
	ld a,[$DB60]
	inc a
	ld [$DB60],a
	inc a
	ld bc,$0005
	ld hl,$50E8
	jr Unknown_0x20386

Unknown_0x20385:
	add hl,bc

Unknown_0x20386:
	dec a
	jr nz,Unknown_0x20385
	jp Unknown_0x20107

Unknown_0x2038C:
	call Unknown_0x2049B
	xor a
	ld [$A084],a
	ld [$A071],a
	ld [$A051],a
	ld hl,$DEDB
	ld [hli],a
	ld [hli],a
	ld [hl],a
	dec a
	ld [$A05B],a
	ld [$DB60],a
	ld a,$7F
	ld [$DB6A],a
	ld hl,$10E6
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$1166
	ld a,$00
	call CallForeignBankNoInturrupts
	jr Unknown_0x203BD

Unknown_0x203BD:
	ld hl,$DEDE
	set 6,[hl]
	ld a,[$DB60]
	inc a
	cp $06
	jr z,Unknown_0x203DD
	ld [$DB60],a
	inc a
	ld bc,$0005
	ld hl,$50E8
	jr Unknown_0x203D7

Unknown_0x203D6:
	add hl,bc

Unknown_0x203D7:
	dec a
	jr nz,Unknown_0x203D6
	jp Unknown_0x20107

Unknown_0x203DD:
	ld hl,$6C52
	ld a,$0E
	call CallForeignBankNoInturrupts
	jp Unknown_0x2007E

Unknown_0x203E8:
	ld hl,$655F
	ld a,$0E
	call CallForeignBankNoInturrupts
	jp Unknown_0x2007E

Unknown_0x203F3:
	ld a,$06
	ld [$DF0A],a
	ld e,$FF
	ld hl,$4232
	ld a,$1F
	call CallForeignBankNoInturrupts
	call Unknown_0x2049B
	ld a,[$DEFF]
	dec a
	ld c,a
	add a,a
	add a,c
	ld c,a
	ld b,$00
	ld hl,Unknown_0x2046A
	add hl,bc
	ld a,[hli]
	ld [$A071],a
	ld a,[hli]
	ld [$A051],a
	ld a,[hl]
	ld [$A05B],a
	xor a
	ld [$DB6A],a
	ld hl,$DEDB
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld [$DD63],a
	ld a,$02
	ld [$A084],a
	ld a,$0C
	ld [$DEE3],a
	ld a,$06
	ld [$DEE5],a
	ld hl,$10E6
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$1166
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$DEDE
	set 6,[hl]
	set 1,[hl]
	ld a,[$DEFF]
	ld hl,$4462
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x2045E
	inc h

Unknown_0x2045E:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp Unknown_0x20107

UnknownData_0x20464:
INCBIN "baserom.gb", $20464, $2046A - $20464

Unknown_0x2046A:
INCBIN "baserom.gb", $2046A, $20473 - $2046A

Unknown_0x20473:
	xor a
	ld [$DA3A],a
	ld e,$04
	ld hl,Unknown_0x20280
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	jp Unknown_0x20076

UnknownData_0x20487:
INCBIN "baserom.gb", $20487, $2049B - $20487

Unknown_0x2049B:
	ld hl,Unknown_0x21A7C
	ld a,$07
	call CallForeignBankNoInturrupts
	ld a,$86
	ld [$A083],a
	call Unknown_0x206CB
	xor a
	ld [$DB7B],a
	ld [$DB6E],a
	ld hl,$DBD0
	ld bc,$012C
	ld a,$00
	call LoadByteToRamInit
	ld a,$D0
	ld [$DCFD],a
	ld a,$DB
	ld [$DCFE],a
	ld hl,$6D21
	ld a,$0F
	call CallForeignBankNoInturrupts
	ret

Unknown_0x204D0:
	push hl
	xor a
	ld [$A07E],a
	ld [$DB73],a
	ld [$DB74],a
	ld [$DB75],a
	ld [$DB76],a
	ld [$DB77],a
	ld hl,$A077
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld hl,$DB78
	ld a,$E4
	ld [hli],a
	ld a,$D0
	ld [hli],a
	ld a,$E4
	ld [hli],a
	ld hl,$4000
	ld a,$08
	call CallForeignBankNoInturrupts
	pop hl
	ld a,l
	ld [$DB36],a
	ld a,h
	ld [$DB37],a

Unknown_0x20508:
	ld a,[hl]
	and $E0
	cp $20
	jp z,Unknown_0x20647
	cp $40
	jp z,Unknown_0x20650
	cp $80
	jp z,Unknown_0x20694
	cp $60
	jr nz,Unknown_0x20521
	inc hl
	jr Unknown_0x20508

Unknown_0x20521:
	ld a,[$DB3A]
	or a
	jr z,Unknown_0x20532
	xor a
	ld [$DB3A],a
	ld a,[hli]
	and $0F
	add a,$03
	jr Unknown_0x20565

Unknown_0x20532:
	ld a,[$DA2C]
	cp $02
	jr nz,Unknown_0x20542
	xor a
	ld [$DA2C],a
	inc hl
	ld a,$00
	jr Unknown_0x20565

Unknown_0x20542:
	ld a,[$DB60]
	cp $06
	jr nc,Unknown_0x20562
	ld a,[$DB61]
	cp $09
	jr nz,Unknown_0x20562
	push hl
	ld a,[$DB60]
	call Unknown_0x0663
	pop hl
	ld e,a
	ld a,[$DB6A]
	and e
	jr z,Unknown_0x20562
	ld [$DB73],a

Unknown_0x20562:
	ld a,[hli]
	and $1F

Unknown_0x20565:
	ld [$A07F],a
	ld a,[hli]
	ld [$DB57],a
	ld a,[hli]
	ld c,a
	rla
	sbc a,a
	scf
	rl c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
	ld a,[hli]
	ld e,a
	rla
	sbc a,a
	scf
	rl e
	rla
	sla e
	rla
	sla e
	rla
	sla e
	rla
	ld d,a
	inc de
	ld a,$00
	ld hl,$A0A1
	call Unknown_0x07C4
	ld a,$08
	ld [$A00B],a
	ld [$A009],a
	ld hl,$1286
	ld a,$00
	call CallForeignBankNoInturrupts
	ld hl,$473A
	ld a,$08
	call CallForeignBankNoInturrupts
	ld hl,$41DC
	ld a,$07
	call CallForeignBankNoInturrupts
	ld hl,$4584
	ld a,$07
	call CallForeignBankNoInturrupts
	ld hl,$43A0
	ld a,$07
	call CallForeignBankNoInturrupts
	ld a,[$A07F]
	cp $02
	jr nz,Unknown_0x205E0
	ld a,$10
	ld hl,$6211
	ld de,$8100
	ld bc,$0360
	call Unknown_0x05BF
	jr Unknown_0x205F4

Unknown_0x205E0:
	cp $05
	jr nz,Unknown_0x205F4
	ld a,$0B
	ld hl,$6980
	ld de,$8000
	call Unknown_0x060D
	ld a,$01
	ld [$DB74],a

Unknown_0x205F4:
	ld hl,$4105
	ld a,$07
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x20128
	ld a,$07
	call CallForeignBankNoInturrupts
	ld hl,$40E2
	ld a,$07
	call CallForeignBankNoInturrupts
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
	call Unknown_0x3131
	ld a,$67
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld hl,$DEDF
	res 0,[hl]
	ld a,[$DB60]
	cp $02
	jr nz,Unknown_0x2063C
	ld a,[$DB61]
	cp $09
	jr nz,Unknown_0x2063C
	ld a,$01
	ld [$DB75],a

Unknown_0x2063C:
	ld e,$04
	ld hl,$424E
	ld a,$1A
	call CallForeignBankNoInturrupts
	ret

Unknown_0x20647:
	ld a,[hli]
	and $1F
	ld [$DB60],a
	jp Unknown_0x20508

Unknown_0x20650:
	ld a,[hli]
	and $1F
	ld [$DB61],a
	push hl
	cp $08
	jr nc,Unknown_0x20690
	ld e,$01
	ld hl,$459C
	ld a,$07
	call CallForeignBankNoInturrupts
	ld e,$02
	ld hl,$459C
	ld a,$07
	call CallForeignBankNoInturrupts
	ld a,[$DB3B]
	ld b,a
	ld a,[$DB60]
	cp b
	jr z,Unknown_0x20690
	ld [$DB3B],a
	ld e,$00
	ld hl,$459C
	ld a,$07
	call CallForeignBankNoInturrupts
	ld e,$03
	ld hl,$459C
	ld a,$07
	call CallForeignBankNoInturrupts

Unknown_0x20690:
	pop hl
	jp Unknown_0x20508

Unknown_0x20694:
	ld a,[hli]
	push hl
	and $1F
	cp $04
	jr z,Unknown_0x206B8
	ld bc,$0080
	ld hl,$A077
	cp $02
	jr c,Unknown_0x206AE
	ld bc,$FF80
	jr z,Unknown_0x206AE
	ld hl,$A079

Unknown_0x206AE:
	ld [hl],c
	inc hl
	ld [hl],b
	ld [$DB77],a
	pop hl
	jp Unknown_0x20508

Unknown_0x206B8:
	ld a,$01
	ld [$DB76],a
	ld a,$FA
	ld hl,$DB78
	ld [hli],a
	ld a,$F8
	ld [hli],a
	ld [hl],a
	pop hl
	jp Unknown_0x20508

Unknown_0x206CB:
	ld hl,$4057
	ld a,$08
	call CallForeignBankNoInturrupts
	ld hl,$DEDF
	res 1,[hl]
	ld a,$0C
	ld [$A04C],a
	ld a,$06
	ld [$A072],a
	xor a
	ld [$DEE3],a
	ld [$DEE5],a
	ld a,$FF
	ld [$A05B],a
	ret

Unknown_0x206EF:
	ld hl,$DB60
	ld a,[hl]
	ld b,$01
	and a

Unknown_0x206F6:
	jr z,Unknown_0x206FD
	sla b
	dec a
	jr Unknown_0x206F6

Unknown_0x206FD:
	ld hl,$DB39
	ld a,[hl]
	and b
	jr nz,Unknown_0x2070B
	ld a,[hl]
	or b
	ld [hl],a
	ld a,[$DB60]
	ret

Unknown_0x2070B:
	ld a,$FF
	ret
	push bc
	ld h,d
	ld l,$3B
	ld c,[hl]
	inc l
	ld b,[hl]
	inc l
	ld e,[hl]
	inc l
	ld d,[hl]
	call Unknown_0x2072B
	ld a,e
	sub $10
	ld e,a
	jr nc,Unknown_0x20723
	dec d

Unknown_0x20723:
	call Unknown_0x2072B
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x2072B:
	call Unknown_0x15E3
	inc [hl]
	ld a,[hl]
	ld [$FF00+$84],a
	push bc
	push de
	call Unknown_0x15B0
	pop de
	pop bc
	ret
	ld a,[$DB61]
	cp $08
	ret nz
	ld a,[$DB60]
	ld hl,$47C0
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x2074C
	inc h

Unknown_0x2074C:
	ld a,[hli]
	ld h,[hl]
	ld l,a

Unknown_0x2074F:
	ld a,[hli]
	cp $FF
	ret z
	ld c,a
	ld a,[hli]
	ld e,a
	push bc
	push de

Unknown_0x20758:
	ld a,[hl]
	and $E0
	cp $40
	jr z,Unknown_0x2076B
	inc hl
	jr Unknown_0x20758

Unknown_0x20762:
	pop hl
	pop de
	pop bc

Unknown_0x20765:
	inc hl
	inc hl
	inc hl
	inc hl
	jr Unknown_0x2074F

Unknown_0x2076B:
	ld a,[hli]
	push hl
	and $1F
	cp $09
	ld e,a
	ld a,[$DB60]
	jr z,Unknown_0x20784
	inc e
	dec e
	jr z,Unknown_0x20762
	dec e
	call Unknown_0x162A
	or a
	jr nz,Unknown_0x20762
	jr Unknown_0x2079C

Unknown_0x20784:
	call Unknown_0x1611
	or a
	jr nz,Unknown_0x2079C
	ld a,[$DB3C]
	or a
	jr nz,Unknown_0x20762
	ld a,[$DB60]
	call Unknown_0x0663
	ld hl,$DB6E
	and [hl]
	jr z,Unknown_0x20762

Unknown_0x2079C:
	pop hl
	pop de
	pop bc
	push hl
	swap c
	ld a,c
	and $0F
	ld b,a
	swap e
	ld a,e
	and $0F
	ld d,a
	call Unknown_0x15E3
	inc [hl]
	swap e
	dec e
	swap e
	ld a,e
	and $0F
	ld d,a
	call Unknown_0x15E3
	inc [hl]
	pop hl
	jr Unknown_0x20765

UnknownData_0x207C0:
INCBIN "baserom.gb", $207C0, $207CE - $207C0
	ld a,[$DB60]
	call Unknown_0x1611
	or a
	ld d,$49
	jr z,Unknown_0x207E0
	ld a,[$DB6D]
	inc a
	or $40
	ld d,a

Unknown_0x207E0:
	ld a,[$DB60]
	ld hl,$47C0
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x207EC
	inc h

Unknown_0x207EC:
	ld a,[hli]
	ld h,[hl]
	ld l,a

Unknown_0x207EF:
	ld a,[hli]
	cp $FF
	ret z
	ld c,a
	ld a,[hli]
	ld e,a
	push bc
	push de

Unknown_0x207F8:
	ld a,[hl]
	and $E0
	cp $40
	jr z,Unknown_0x2080A
	inc hl
	jr Unknown_0x207F8

Unknown_0x20802:
	pop de
	pop bc
	inc hl
	inc hl
	inc hl
	inc hl
	jr Unknown_0x207EF

Unknown_0x2080A:
	ld a,[hli]
	cp d
	jr nz,Unknown_0x20802
	pop de
	pop bc
	swap c
	ld a,c
	and $0F
	ld b,a
	swap e
	ld a,e
	and $0F
	ld d,a
	push bc
	push de
	call Unknown_0x2082C
	pop de
	pop bc
	swap e
	dec e
	swap e
	ld a,e
	and $0F
	ld d,a

Unknown_0x2082C:
	call Unknown_0x15E3
	ld a,[hl]
	dec a
	ld [hl],a
	ld [$FF00+$81],a
	push de
	ld d,$C9
	ld e,a
	ld a,[de]
	pop de
	cp $10
	jr z,Unknown_0x20846
	cp $18
	jr z,Unknown_0x20846
	cp $90
	jr nz,Unknown_0x20849

Unknown_0x20846:
	call Unknown_0x3BFB

Unknown_0x20849:
	ld a,[$FF00+$81]
	ld [$FF00+$84],a
	call Unknown_0x15B0
	ret
	ld a,[$DB60]
	ld hl,$4873
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x2085D
	inc h

Unknown_0x2085D:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[$DB61]
	inc a
	cp $09
	jr c,Unknown_0x20869
	xor a

Unknown_0x20869:
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x2086F
	inc h

Unknown_0x2086F:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ret

UnknownData_0x20873:
INCBIN "baserom.gb", $20873, $2133E - $20873
	ld a,[$DB70]
	ld e,$27
	ld [de],a
	or a
	jr nz,Unknown_0x21357
	ld a,$01
	ld [$DB70],a
	ld hl,$A17B

Unknown_0x2134F:
	ld [hl],$00
	inc h
	ld a,h
	cp $B3
	jr nz,Unknown_0x2134F

Unknown_0x21357:
	ld hl,$A17B

Unknown_0x2135A:
	ld a,[hl]
	or a
	jr z,Unknown_0x21365
	inc h
	ld a,h
	cp $B3
	jr nz,Unknown_0x2135A
	ret

Unknown_0x21365:
	ld e,$49
	ld a,[de]
	inc a
	ld [hl],a
	ld a,$FF
	ld [de],a
	ld e,$04
	ld l,$7F
	ld a,[de]
	ld [hl],a
	ld l,$88
	ld [hl],a
	inc e
	ld l,$80
	ld a,[de]
	ld [hl],a
	ld l,$89
	ld [hl],a
	inc e
	inc e
	ld l,$82
	ld a,[de]
	ld [hl],a
	ld l,$8A
	ld [hl],a
	inc e
	ld l,$83
	ld a,[de]
	ld [hl],a
	ld l,$8B
	ld [hl],a
	push bc
	push hl
	call Unknown_0x1AEA
	call Unknown_0x1646
	sub $A0
	rrca
	ld l,a
	ld h,$00
	ld bc,$53BB
	add hl,bc
	pop de
	ld e,$84
	ld c,$04

Unknown_0x213A6:
	ld a,[hli]
	ld [de],a
	inc e
	dec c
	jr nz,Unknown_0x213A6
	pop bc
	ld e,$7D
	ld a,$08
	ld [de],a
	ld e,$7C
	ld a,$13
	ld [de],a
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0x213BB:
INCBIN "baserom.gb", $213BB, $213CB - $213BB

Unknown_0x213CB:
	ld hl,$FF93
	xor a
	ld [hli],a
	ld a,$86
	ld [hli],a
	xor a
	ld [hl],a
	ld de,$A17B

Unknown_0x213D8:
	push de
	ld a,[de]
	or a
	jr nz,Unknown_0x213E8

Unknown_0x213DD:
	pop de
	inc d
	ld a,d
	cp $B3
	jr nz,Unknown_0x213D8
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x213E8:
	xor a
	ld [$FF00+$84],a
	ld a,[$FF00+$9A]
	ld h,a
	ld l,$19
	ld a,[hl]
	bit 5,a
	jr nz,Unknown_0x21428
	ld e,$7D
	ld a,[de]
	dec a
	ld [de],a
	jr nz,Unknown_0x21420
	ld a,$08
	ld [de],a
	ld e,$7C
	ld a,[de]
	inc a
	ld [de],a
	cp $16
	jr nz,Unknown_0x21420
	ld a,$13
	ld [de],a
	ld h,d
	ld l,$7F
	ld e,$88
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	inc e
	ld [hli],a
	inc l
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	ld [hl],a
	ld a,$01
	ld [$FF00+$84],a

Unknown_0x21420:
	ld e,$84
	ld h,d
	ld l,$7E
	call Unknown_0x0DA9

Unknown_0x21428:
	ld e,$7F
	ld hl,$DB51
	ld bc,$FF80
	call Unknown_0x0E34
	ld a,[$FF00+$84]
	or a
	jr z,Unknown_0x2146F
	ld a,[$FF00+$81]
	inc a
	cp $01
	ld a,[$FF00+$80]
	jr z,Unknown_0x21449
	jr nc,Unknown_0x21462
	cp $E0
	jr nc,Unknown_0x2144D
	jr Unknown_0x21462

Unknown_0x21449:
	cp $C0
	jr nc,Unknown_0x21462

Unknown_0x2144D:
	ld a,[$FF00+$83]
	inc a
	cp $01
	ld a,[$FF00+$82]
	jr z,Unknown_0x2145E
	jr nc,Unknown_0x21462
	cp $E0
	jr nc,Unknown_0x2146F
	jr Unknown_0x21462

Unknown_0x2145E:
	cp $A0
	jr c,Unknown_0x2146F

Unknown_0x21462:
	ld e,$7B
	ld a,[de]
	dec a
	ld l,a
	ld h,$BB
	xor a
	ld [hl],a
	ld [de],a
	jp Unknown_0x213DD

Unknown_0x2146F:
	ld e,$7C
	ld a,[de]
	add a,a
	ld c,a
	ld b,$00
	ld hl,Unknown_0x21486
	add hl,bc
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld de,$FF83
	call Unknown_0x051C
	jp Unknown_0x213DD

Unknown_0x21486:
INCBIN "baserom.gb", $21486, $2160E - $21486
	ld a,[$DB71]
	ld e,$27
	ld [de],a
	or a
	jr nz,Unknown_0x21627
	ld a,$01
	ld [$DB71],a
	ld hl,$A18C

Unknown_0x2161F:
	ld [hl],$00
	inc h
	ld a,h
	cp $B3
	jr nz,Unknown_0x2161F

Unknown_0x21627:
	ld hl,$A18C

Unknown_0x2162A:
	ld a,[hl]
	or a
	jr z,Unknown_0x21635
	inc h
	ld a,h
	cp $B3
	jr nz,Unknown_0x2162A
	ret

Unknown_0x21635:
	ld e,$49
	ld a,[de]
	inc a
	ld [hl],a
	ld a,$FF
	ld [de],a
	ld e,$04
	ld l,$90
	ld a,[de]
	ld [hl],a
	ld l,$99
	ld [hl],a
	inc e
	ld l,$91
	ld a,[de]
	ld [hl],a
	ld l,$9A
	ld [hl],a
	inc e
	inc e
	ld l,$93
	ld a,[de]
	ld [hl],a
	ld l,$9B
	ld [hl],a
	inc e
	ld l,$94
	ld a,[de]
	ld [hl],a
	ld l,$9C
	ld [hl],a
	push bc
	push hl
	call Unknown_0x1AEA
	call Unknown_0x1646
	cp $F0
	jr nz,Unknown_0x2166F
	ld a,$10
	jr Unknown_0x21672

Unknown_0x2166F:
	sub $20
	rrca

Unknown_0x21672:
	ld l,a
	ld h,$00
	ld bc,$5692
	add hl,bc
	pop de
	ld e,$95
	ld c,$04

Unknown_0x2167E:
	ld a,[hli]
	ld [de],a
	inc e
	dec c
	jr nz,Unknown_0x2167E
	pop bc
	ld e,$8E
	ld a,$10
	ld [de],a
	ld e,$8D
	xor a
	ld [de],a
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0x21692:
INCBIN "baserom.gb", $21692, $216A6 - $21692

Unknown_0x216A6:
	ld hl,$FF93
	xor a
	ld [hli],a
	ld e,$46
	ld a,[de]
	ld [hli],a
	xor a
	ld [hl],a
	ld de,$A18C

Unknown_0x216B4:
	push de
	ld a,[de]
	or a
	jr nz,Unknown_0x216C4

Unknown_0x216B9:
	pop de
	inc d
	ld a,d
	cp $B3
	jr nz,Unknown_0x216B4
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x216C4:
	xor a
	ld [$FF00+$84],a
	ld a,[$FF00+$9A]
	ld h,a
	ld l,$19
	ld a,[hl]
	bit 5,a
	jr nz,Unknown_0x21703
	ld e,$8E
	ld a,[de]
	dec a
	ld [de],a
	jr nz,Unknown_0x216FB
	ld a,$10
	ld [de],a
	ld e,$8D
	ld a,[de]
	inc a
	ld [de],a
	cp $03
	jr nz,Unknown_0x216FB
	xor a
	ld [de],a
	ld h,d
	ld l,$90
	ld e,$99
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	inc e
	ld [hli],a
	inc l
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	ld [hl],a
	ld a,$01
	ld [$FF00+$84],a

Unknown_0x216FB:
	ld e,$95
	ld h,d
	ld l,$8F
	call Unknown_0x0DA9

Unknown_0x21703:
	ld e,$90
	ld hl,$DB51
	ld bc,$FF80
	call Unknown_0x0E34
	ld a,[$FF00+$84]
	or a
	jr z,Unknown_0x2174A
	ld a,[$FF00+$81]
	inc a
	cp $01
	ld a,[$FF00+$80]
	jr z,Unknown_0x21724
	jr nc,Unknown_0x2173D
	cp $E0
	jr nc,Unknown_0x21728
	jr Unknown_0x2173D

Unknown_0x21724:
	cp $C0
	jr nc,Unknown_0x2173D

Unknown_0x21728:
	ld a,[$FF00+$83]
	inc a
	cp $01
	ld a,[$FF00+$82]
	jr z,Unknown_0x21739
	jr nc,Unknown_0x2173D
	cp $E0
	jr nc,Unknown_0x2174A
	jr Unknown_0x2173D

Unknown_0x21739:
	cp $A0
	jr c,Unknown_0x2174A

Unknown_0x2173D:
	ld e,$8C
	ld a,[de]
	dec a
	ld l,a
	ld h,$BB
	xor a
	ld [hl],a
	ld [de],a
	jp Unknown_0x216B9

Unknown_0x2174A:
	ld e,$8D
	ld a,[de]
	add a,a
	ld c,a
	ld b,$00
	ld hl,Unknown_0x21761
	add hl,bc
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld de,$FF83
	call Unknown_0x051C
	jp Unknown_0x216B9

Unknown_0x21761:
INCBIN "baserom.gb", $21761, $217AC - $21761

Unknown_0x217AC:
	ld e,$5B
	ld a,[de]
	ld [$FF00+$85],a
	ld hl,$FF93
	ld e,$45
	ld a,[de]
	ld [hli],a
	ld e,$46
	ld a,[de]
	ld [hli],a
	xor a
	ld [hl],a
	ld de,$A170

Unknown_0x217C1:
	push de
	ld a,[de]
	or a
	jp nz,Unknown_0x21866
	inc a
	ld [de],a
	ld a,[$FF00+$85]
	or a
	jr nz,Unknown_0x2182C
	call Unknown_0x0647
	ld [$FF00+$84],a
	bit 7,a
	jr z,Unknown_0x217FB
	and $3F
	rlca
	sub $08
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$75
	ld hl,$DB53
	call Unknown_0x218AE
	ld a,[$FF00+$84]
	bit 6,a
	ld bc,$FFF8
	jr z,Unknown_0x217F4
	ld bc,$00A8

Unknown_0x217F4:
	ld e,$72
	ld hl,$DB51
	jr Unknown_0x21827

Unknown_0x217FB:
	ld hl,$FF93
	bit 7,[hl]
	ld b,$F8
	jr z,Unknown_0x21806
	ld b,$28

Unknown_0x21806:
	and $3F
	rlca
	add a,b
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$72
	ld hl,$DB51
	call Unknown_0x218AE
	ld a,[$FF00+$84]
	bit 6,a
	ld bc,$FFF8
	jr z,Unknown_0x21822
	ld bc,$0088

Unknown_0x21822:
	ld e,$75
	ld hl,$DB53

Unknown_0x21827:
	call Unknown_0x218AE
	jr Unknown_0x21866

Unknown_0x2182C:
	call Unknown_0x0647
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld hl,$0050
	add hl,bc
	ld b,h
	ld c,l
	ld e,$72
	ld hl,$DB51
	call Unknown_0x218AE
	call Unknown_0x0647
	ld b,a
	and $1F
	bit 7,b
	jr nz,Unknown_0x21854
	cpl
	sub $07
	ld c,a
	rla
	sbc a,a
	ld b,a
	jr Unknown_0x2185E

Unknown_0x21854:
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld hl,$0088
	add hl,bc
	ld b,h
	ld c,l

Unknown_0x2185E:
	ld e,$75
	ld hl,$DB53
	call Unknown_0x218AE

Unknown_0x21866:
	ld a,[$FF00+$9A]
	ld h,a
	ld l,$19
	ld a,[hl]
	bit 5,a
	jr nz,Unknown_0x21878
	ld e,$77
	ld h,d
	ld l,$71
	call Unknown_0x0DA9

Unknown_0x21878:
	ld e,$72
	ld hl,$DB51
	ld bc,$FF80
	call Unknown_0x0E34
	ld a,[$FF00+$80]
	sub $CC
	cp $08
	jr c,Unknown_0x21893
	ld a,[$FF00+$82]
	sub $BC
	cp $08
	jr nc,Unknown_0x21899

Unknown_0x21893:
	ld e,$70
	xor a
	ld [de],a
	jr Unknown_0x218A2

Unknown_0x21899:
	ld de,$FF83
	ld hl,Unknown_0x218E2
	call Unknown_0x051C

Unknown_0x218A2:
	pop de
	inc d
	ld a,d
	cp $AA
	jp nz,Unknown_0x217C1
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x218AE:
	ld a,[hli]
	add a,c
	ld [de],a
	inc e
	ld a,[hl]
	adc a,b
	ld [de],a
	ret
	ld a,[$DB72]
	ld e,$27
	ld [de],a
	ret
	push bc
	ld a,$01
	ld [$DB72],a
	ld c,$09
	ld h,$A1

Unknown_0x218C7:
	ld l,$70
	ld [hl],$00
	ld e,$0D
	ld l,$77
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	ld [hl],a
	inc h
	dec c
	jr nz,Unknown_0x218C7
	pop bc
	ret

UnknownData_0x218E0:
INCBIN "baserom.gb", $218E0, $218E2 - $218E0

Unknown_0x218E2:
INCBIN "baserom.gb", $218E2, $21A2C - $218E2
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld e,$26
	ld a,[de]
	or a
	jr z,Unknown_0x21A3E
	dec a
	ld [de],a
	ret

Unknown_0x21A3E:
	ld a,[$FF00+$A6]
	and $0B
	ret z
	ld e,$2D
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld e,$00
	ld hl,Unknown_0x2206D
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld de,$0004
	ld hl,$42A4
	ld a,$1A
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$08
	ld bc,$5A6D
	jp Unknown_0x0846

UnknownData_0x21A6D:
INCBIN "baserom.gb", $21A6D, $21A73 - $21A6D
	ld a,$01
	ld [$DF02],a
	ret

UnknownData_0x21A79:
INCBIN "baserom.gb", $21A79, $21A7C - $21A79

Unknown_0x21A7C:
INCBIN "baserom.gb", $21A7C, $21E92 - $21A7C
	ld hl,$DEFF
	ld a,[hl]
	inc a
	cp $04
	jr c,Unknown_0x21E9D
	ld a,$01

Unknown_0x21E9D:
	ld [hl],a
	dec a
	add a,a
	add a,a
	ld hl,$5EBF
	add a,l
	ld l,a
	jr nc,Unknown_0x21EA9
	inc h

Unknown_0x21EA9:
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld de,$BC00
	call LoadDataToRamInit
	ld hl,$4000
	ld a,$07
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x21EBF:
INCBIN "baserom.gb", $21EBF, $21ED9 - $21EBF
	ld e,$27
	ld a,[$DB60]
	ld [de],a
	ret

UnknownData_0x21EE0:
INCBIN "baserom.gb", $21EE0, $21F18 - $21EE0
	ld a,[$A075]
	ld e,$27
	ld [de],a
	ret
	ld bc,$5ECB
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 3,a
	ret z
	ld a,[$A051]
	cp $0C
	ret z
	push de
	ld h,$A0
	call Unknown_0x0BBA
	pop de
	ld hl,$40DA
	ld a,$01
	call CallForeignBankNoInturrupts
	ld e,$08
	ld bc,Unknown_0x21FCD
	jp Unknown_0x0846

UnknownData_0x21F48:
INCBIN "baserom.gb", $21F48, $21F68 - $21F48

Unknown_0x21F68:
INCBIN "baserom.gb", $21F68, $21F6A - $21F68
	ld e,$07
	ld a,[de]
	add a,$30
	ld [de],a
	inc e
	ld a,[de]
	adc a,$00
	ld [de],a
	ret
	ld a,[$DB60]
	call Unknown_0x0663
	ld hl,$DB6A
	and [hl]
	ld e,$27
	ld [de],a
	ret

UnknownData_0x21F84:
INCBIN "baserom.gb", $21F84, $21FCD - $21F84

Unknown_0x21FCD:
INCBIN "baserom.gb", $21FCD, $21FE1 - $21FCD

Unknown_0x21FE1:
INCBIN "baserom.gb", $21FE1, $21FF3 - $21FE1
	ld hl,$CD4D
	ld [hl],$01
	inc l
	ld a,$00
	ld [hli],a
	ld a,$81
	ld [hli],a
	ld a,$11
	ld [hli],a
	ld a,$62
	ld [hli],a
	ld a,$60
	ld [hli],a
	ld [hl],$03
	ret
	call Unknown_0x2422
	ld a,[$CD4D]
	or a
	ret nz
	ld e,$08
	ld bc,$601B
	jp Unknown_0x0846

UnknownData_0x2201B:
INCBIN "baserom.gb", $2201B, $2206D - $2201B

Unknown_0x2206D:
INCBIN "baserom.gb", $2206D, $2207D - $2206D
	ld a,[$A071]
	inc a
	ld e,$15
	ld [de],a
	ret
	ld hl,$A082
	ld [hl],$03
	ret
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	jp Unknown_0x22097

Unknown_0x22097:
	ld e,$3A
	ld a,[de]
	or a
	ld e,$39
	jr nz,Unknown_0x220A2
	xor a
	ld [de],a
	ret

Unknown_0x220A2:
	ld b,a
	ld a,[de]
	or a
	jr z,Unknown_0x220AA
	dec a
	ld [de],a
	ret

Unknown_0x220AA:
	ld a,b
	ld [de],a
	ld bc,Unknown_0x220B2
	jp Unknown_0x0F50

Unknown_0x220B2:
INCBIN "baserom.gb", $220B2, $220C3 - $220B2
	ld e,$04
	ld hl,$DB51
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	inc e
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hli],a
	inc e
	inc e
	ld a,[de]
	ld [hli],a
	inc e
	ld a,[de]
	ld [hli],a
	jp Unknown_0x1513

UnknownData_0x220F1:
INCBIN "baserom.gb", $220F1, $22145 - $220F1

Unknown_0x22145:
INCBIN "baserom.gb", $22145, $2215B - $22145
	call Unknown_0x0DA4
	ld e,$05
	ld a,[de]
	rla
	jr c,Unknown_0x22172
	dec e
	ld a,[de]
	cp $10
	jr c,Unknown_0x22172
	ld hl,$7012
	ld a,$08
	call CallForeignBankNoInturrupts

Unknown_0x22172:
	ld e,$08
	ld a,[de]
	rla
	jr c,Unknown_0x22186
	dec e
	ld a,[de]
	cp $10
	jr c,Unknown_0x22186
	ld hl,$7067
	ld a,$08
	call CallForeignBankNoInturrupts

Unknown_0x22186:
	call Unknown_0x22097
	ld hl,$741F
	ld a,$08
	call CallForeignBankNoInturrupts
	ret
	jp Unknown_0x34FD

UnknownData_0x22195:
INCBIN "baserom.gb", $22195, $221FC - $22195
	ld hl,$77ED
	ld a,$01
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x22205:
INCBIN "baserom.gb", $22205, $2226B - $22205
	push bc
	ld hl,Unknown_0x20128
	ld a,$07
	call CallForeignBankNoInturrupts
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret
	ld hl,$70BC
	ld a,$08
	call CallForeignBankNoInturrupts
	ret

UnknownData_0x22282:
INCBIN "baserom.gb", $22282, $223E5 - $22282
	ld a,[$A071]
	ld hl,$63FA
	add a,l
	ld l,a
	jr nc,Unknown_0x223F0
	inc h

Unknown_0x223F0:
	ld a,[hl]
	ld e,a
	ld a,[$A051]
	sub e
	ld e,$27
	ld [de],a
	ret

UnknownData_0x223FA:
INCBIN "baserom.gb", $223FA, $223FE - $223FA
	ld a,[$A050]
	sub $0D
	ld e,$27
	ld [de],a
	ret
	ld a,[$A051]
	sub $04
	ld e,$27
	ld [de],a
	ret

UnknownData_0x22410:
INCBIN "baserom.gb", $22410, $2256F - $22410
	ld a,$24
	ld [$DF11],a
	ld hl,$748B
	ld a,$07
	call CallForeignBankNoInturrupts
	ret
	ld a,[$A071]
	or a
	ret z
	add a,$24
	ld e,a
	ld a,[$DB60]
	cp $02
	jr nz,Unknown_0x22590
	ld a,e
	add a,$03
	ld e,a

Unknown_0x22590:
	ld a,e
	ld [$DF11],a
	ld hl,$748B
	ld a,$07
	call CallForeignBankNoInturrupts
	ret
	ld hl,$40DA
	ld a,$01
	call CallForeignBankNoInturrupts
	ret
	ld a,[$DB60]
	sub $06
	ld e,$27
	ld [de],a
	ret
	ld a,[$DB74]
	ld e,$27
	ld [de],a
	ret

UnknownData_0x225B6:
INCBIN "baserom.gb", $225B6, $22C6B - $225B6
	ld e,$27
	ld a,[$DB60]
	ld [de],a
	ret
	call Unknown_0x0C80
	call Unknown_0x0C91
	jp Unknown_0x0DA4
	call Unknown_0x0C80
	call Unknown_0x22C84
	jp Unknown_0x0DA4

Unknown_0x22C84:
	ld e,$0F
	ld l,$12
	ld h,d
	ld a,[de]
	add a,[hl]
	ld [de],a
	inc e
	inc l
	inc l
	ld a,[de]
	adc a,[hl]
	ld [de],a
	ret

UnknownData_0x22C93:
INCBIN "baserom.gb", $22C93, $22D03 - $22C93
	xor a
	ld [$DB6E],a
	ld a,[$DB74]
	or a
	jr nz,Unknown_0x22D26
	ld a,[$DB60]
	call Unknown_0x0663
	ld hl,$DB6A
	or [hl]
	ld [hl],a

Unknown_0x22D18:
	push bc
	ld hl,$6D6C
	ld a,$0F
	call CallForeignBankNoInturrupts
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x22D26:
	ld [$DB6B],a
	ld a,[$A05B]
	inc a
	ld hl,$6D3B
	add a,l
	ld l,a
	jr nc,Unknown_0x22D35
	inc h

Unknown_0x22D35:
	ld a,[hl]
	ld [$A051],a
	jr Unknown_0x22D18

UnknownData_0x22D3B:
INCBIN "baserom.gb", $22D3B, $22D62 - $22D3B
	ld a,[$A051]
	sub $0C
	ld e,$27
	ld [de],a
	ret
	ld a,[$DF0A]
	sub $04
	ld e,$27
	ld [de],a
	ret

UnknownData_0x22D74:
INCBIN "baserom.gb", $22D74, $22D7A - $22D74

Unknown_0x22D7A:
	ld e,$39
	ld a,[de]
	srl a
	srl a
	srl a
	ld hl,$6DA9
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x22D8C
	inc h

Unknown_0x22D8C:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld b,d
	ld c,$8D
	ld e,$0D
	ld a,[de]
	ld [bc],a
	add a,l
	ld [de],a
	inc c
	inc e
	ld a,[de]
	ld [bc],a
	adc a,h
	ld [de],a
	ld e,$39
	ld a,[de]
	inc a
	cp $60
	jr c,Unknown_0x22DA7
	xor a

Unknown_0x22DA7:
	ld [de],a
	ret

UnknownData_0x22DA9:
INCBIN "baserom.gb", $22DA9, $22DC1 - $22DA9

Unknown_0x22DC1:
	ld e,$3F
	ld a,[de]
	srl a
	srl a
	srl a
	ld hl,$6DF0
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x22DD3
	inc h

Unknown_0x22DD3:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld b,d
	ld c,$8F
	ld e,$0F
	ld a,[de]
	ld [bc],a
	add a,l
	ld [de],a
	inc c
	inc e
	ld a,[de]
	ld [bc],a
	adc a,h
	ld [de],a
	ld e,$3F
	ld a,[de]
	inc a
	cp $60
	jr c,Unknown_0x22DEE
	xor a

Unknown_0x22DEE:
	ld [de],a
	ret

UnknownData_0x22DF0:
INCBIN "baserom.gb", $22DF0, $22E08 - $22DF0
	ld a,$02
	jr Unknown_0x22E11
	ld a,$01
	jr Unknown_0x22E11
	xor a

Unknown_0x22E11:
	ld [$DF14],a
	ld e,$7D
	xor a
	ld [de],a
	push de
	call Unknown_0x1AEA
	call Unknown_0x1646
	pop de
	ld b,a
	cp $F0
	jr z,Unknown_0x22E2F
	and $78
	cp $20
	jr c,Unknown_0x22E32
	cp $40
	jr nc,Unknown_0x22E32

Unknown_0x22E2F:
	call Unknown_0x23171

Unknown_0x22E32:
	ld a,[$DF14]
	cp $01
	jr c,Unknown_0x22E43
	jr z,Unknown_0x22E40
	call Unknown_0x22DC1
	jr Unknown_0x22E43

Unknown_0x22E40:
	call Unknown_0x22D7A

Unknown_0x22E43:
	call Unknown_0x0DA4
	ld a,[$DB75]
	or a
	jp nz,Unknown_0x22F16
	ld a,[$DB74]
	or a
	jp nz,Unknown_0x22F9A
	ld a,[$DB77]
	or a
	jp nz,Unknown_0x22E9D
	call Unknown_0x22E64
	call Unknown_0x23012
	jp Unknown_0x23067

Unknown_0x22E64:
	ld hl,$DB3F
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld h,d
	ld l,$04
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x22E78
	ld a,b
	ld [hld],a
	ld [hl],c
	jr Unknown_0x22E78

Unknown_0x22E78:
	ld hl,$DB43
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld h,d
	ld l,$04
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x22E8A
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x22E8A:
	ld hl,$DB41
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld h,d
	ld l,$07
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x22E9C
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x22E9C:
	ret

Unknown_0x22E9D:
	call Unknown_0x22EE2
	call Unknown_0x22EFC
	ld a,[$DB77]
	cp $02
	jr z,Unknown_0x22EC4
	jr nc,Unknown_0x22EDC
	ld hl,$DB43
	ld bc,$DB51
	ld a,[bc]
	add a,$98
	ld [hli],a
	inc bc
	ld a,[bc]
	adc a,$00
	ld [hl],a
	call Unknown_0x22E64
	call Unknown_0x23067
	jp Unknown_0x22F4D

Unknown_0x22EC4:
	ld hl,$DB3F
	ld bc,$DB51
	ld a,[bc]
	add a,$08
	ld [hli],a
	inc bc
	ld a,[bc]
	adc a,$00
	ld [hl],a
	call Unknown_0x22E64
	call Unknown_0x23067
	jp Unknown_0x22F80

Unknown_0x22EDC:
	call Unknown_0x22E64
	jp Unknown_0x23012

Unknown_0x22EE2:
	ld hl,$DB4F
	ld e,$77
	ld a,[de]
	add a,[hl]
	ld [hl],a
	ld hl,$DB51
	inc e
	ld a,[de]
	bit 7,a
	ld b,$00
	jr z,Unknown_0x22EF6
	dec b

Unknown_0x22EF6:
	adc a,[hl]
	ld [hli],a
	ld a,b
	adc a,[hl]
	ld [hl],a
	ret

Unknown_0x22EFC:
	ld hl,$DB50
	ld e,$79
	ld a,[de]
	add a,[hl]
	ld [hl],a
	ld hl,$DB53
	inc e
	ld a,[de]
	bit 7,a
	ld b,$00
	jr z,Unknown_0x22F10
	dec b

Unknown_0x22F10:
	adc a,[hl]
	ld [hli],a
	ld a,b
	adc a,[hl]
	ld [hl],a
	ret

Unknown_0x22F16:
	call Unknown_0x22EE2
	ld a,[$DB3D]
	dec a
	ld c,a
	cp [hl]
	jr nz,Unknown_0x22F38
	dec hl
	ld a,[hli]
	cp $10
	jr c,Unknown_0x22F38
	ld [hl],$00
	ld hl,$A005

Unknown_0x22F2C:
	ld a,[hl]
	cp c
	jr nz,Unknown_0x22F32
	ld [hl],$00

Unknown_0x22F32:
	inc h
	ld a,h
	cp $B3
	jr nz,Unknown_0x22F2C

Unknown_0x22F38:
	ld hl,$DB43
	ld bc,$DB51
	ld a,[bc]
	add a,$98
	ld [hli],a
	inc bc
	ld a,[bc]
	adc a,$00
	ld [hl],a
	call Unknown_0x22E78
	jp Unknown_0x22F4D

Unknown_0x22F4D:
	xor a
	ld [$A07B],a
	ld hl,$DB51
	ld a,[hli]
	add a,$08
	ld c,a
	ld a,[hl]
	adc a,$00
	ld b,a
	ld h,d
	ld l,$04
	ld a,[hli]
	sub c
	ld c,a
	ld a,[hld]
	sbc a,b
	ret nc

Unknown_0x22F65:
	ld a,c
	ld [$A07B],a
	cpl
	inc a
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
	ld l,$0E
	ld a,[hl]
	add a,c
	ld [hl],a
	ld l,$8E
	ld a,[hl]
	add a,c
	ld [hl],a
	ret

Unknown_0x22F80:
	xor a
	ld [$A07B],a
	ld hl,$DB51
	ld a,[hli]
	add a,$98
	ld c,a
	ld a,[hl]
	adc a,$00
	ld b,a
	ld h,d
	ld l,$04
	ld a,[hli]
	sub c
	ld c,a
	ld a,[hld]
	sbc a,b
	ret c
	jr Unknown_0x22F65

Unknown_0x22F9A:
	ld e,$39
	ld a,[$DB53]
	ld [de],a
	call Unknown_0x22FB9
	call Unknown_0x22E64
	ld hl,$DB4D
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld h,d
	ld l,$07
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x22FB8
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x22FB8:
	ret

Unknown_0x22FB9:
	call Unknown_0x22EFC
	ld hl,$DB47
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB53
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x22FCE
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x22FCE:
	ld hl,$DB4B
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB53
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x22FE0
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x22FE0:
	ld h,d
	ld l,$39
	ld a,[$DB53]
	sub [hl]
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
	ld hl,$DB41
	ld bc,$DB53
	ld a,[bc]
	add a,$08
	ld [hli],a
	inc bc
	ld a,[bc]
	adc a,$00
	ld [hl],a
	ld hl,$DB4D
	ld bc,$DB53
	ld a,[bc]
	add a,$78
	ld [hli],a
	inc bc
	ld a,[bc]
	adc a,$00
	ld [hl],a
	ret

Unknown_0x23012:
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	cp $48
	jr nc,Unknown_0x23047
	ld a,[de]
	inc e
	sub $48
	ld [hli],a
	ld a,[de]
	sbc a,$00
	ld [hl],a
	jr nc,Unknown_0x23033
	ld hl,$DB45
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB52
	jr Unknown_0x23042

Unknown_0x23033:
	ld hl,$DB45
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB51
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x23066

Unknown_0x23042:
	ld a,b
	ld [hld],a
	ld [hl],c
	jr Unknown_0x23066

Unknown_0x23047:
	cp $50
	jr c,Unknown_0x23066
	ld a,[de]
	inc e
	sub $50
	ld [hli],a
	ld a,[de]
	sbc a,$00
	ld [hl],a
	ld hl,$DB49
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB51
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x23066
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x23066:
	ret

Unknown_0x23067:
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	cp $38
	jr nc,Unknown_0x2309C
	ld a,[de]
	inc e
	sub $38
	ld [hli],a
	ld a,[de]
	sbc a,$00
	ld [hl],a
	jr nc,Unknown_0x23088
	ld hl,$DB47
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB54
	jr Unknown_0x23097

Unknown_0x23088:
	ld hl,$DB47
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB53
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x230BB

Unknown_0x23097:
	ld a,b
	ld [hld],a
	ld [hl],c
	jr Unknown_0x230BB

Unknown_0x2309C:
	cp $48
	jr c,Unknown_0x230BB
	ld a,[de]
	inc e
	sub $48
	ld [hli],a
	ld a,[de]
	sbc a,$00
	ld [hl],a
	ld hl,$DB4B
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB53
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x230BB
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x230BB:
	ret
	xor a
	ld [$FF00+$85],a
	ld [$FF00+$86],a
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	cp $4F
	jr nc,Unknown_0x230EF
	ld a,[hl]
	sub $01
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hl],a
	ld a,$01
	ld [$FF00+$85],a
	ld hl,$DB45
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB51
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x23114
	ld a,b
	ld [hld],a
	ld [hl],c
	xor a
	ld [$FF00+$85],a
	jr Unknown_0x23114

Unknown_0x230EF:
	cp $51
	jr c,Unknown_0x23114
	ld a,[hl]
	add a,$01
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hl],a
	ld a,$01
	ld [$FF00+$85],a
	ld hl,$DB49
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB51
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x23114
	ld a,b
	ld [hld],a
	ld [hl],c
	xor a
	ld [$FF00+$85],a

Unknown_0x23114:
	ld e,$07
	ld hl,$DB53
	ld a,[de]
	sub [hl]
	cp $3F
	jr nc,Unknown_0x23142
	ld a,[hl]
	sub $01
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hl],a
	ld a,$01
	ld [$FF00+$86],a
	ld hl,$DB47
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB53
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x23167
	ld a,b
	ld [hld],a
	ld [hl],c
	xor a
	ld [$FF00+$86],a
	jr Unknown_0x23167

Unknown_0x23142:
	cp $41
	jr c,Unknown_0x23167
	ld a,[hl]
	add a,$01
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hl],a
	ld a,$01
	ld [$FF00+$86],a
	ld hl,$DB4B
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB53
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x23167
	ld a,b
	ld [hld],a
	ld [hl],c
	xor a
	ld [$FF00+$86],a

Unknown_0x23167:
	ld a,[$FF00+$85]
	ld b,a
	ld a,[$FF00+$86]
	or b
	ld e,$3A
	ld [de],a
	ret

Unknown_0x23171:
	ld a,b
	cp $F0
	ld a,[$A071]
	jr nz,Unknown_0x231A7
	cp $03
	jr z,Unknown_0x2318A

Unknown_0x2317D:
	ld e,$7F
	ld bc,$FD40
	call Unknown_0x0D54
	call Unknown_0x232DC
	jr Unknown_0x231A1

Unknown_0x2318A:
	ld a,[$A050]
	cp $11
	jr z,Unknown_0x2317D
	ld e,$18
	ld bc,$FD40
	call Unknown_0x0D70
	ld e,$1C
	ld bc,$0040
	call Unknown_0x23331

Unknown_0x231A1:
	ld e,$7D
	ld a,$01
	ld [de],a
	ret

Unknown_0x231A7:
	bit 7,b
	jp nz,Unknown_0x23245
	cp $03
	jr z,Unknown_0x231ED
	bit 3,b
	jr nz,Unknown_0x231D1
	bit 4,b
	jr nz,Unknown_0x231C5

Unknown_0x231B8:
	ld e,$7F
	ld bc,$FE80
	call Unknown_0x0D54
	call Unknown_0x232DC
	jr Unknown_0x231A1

Unknown_0x231C5:
	ld e,$28
	ld bc,$0300
	call Unknown_0x0D23
	call Unknown_0x232EE
	ret

Unknown_0x231D1:
	bit 4,b
	jr nz,Unknown_0x231E1
	ld e,$30
	ld bc,$0180
	call Unknown_0x0CA2
	call Unknown_0x23312
	ret

Unknown_0x231E1:
	ld e,$30
	ld bc,$FE80
	call Unknown_0x0CD3
	call Unknown_0x23300
	ret

Unknown_0x231ED:
	bit 3,b
	jr nz,Unknown_0x2321F
	bit 4,b
	jr nz,Unknown_0x2320E
	ld a,[$A050]
	cp $11
	jr z,Unknown_0x231B8
	ld e,$18
	ld bc,$FE80
	call Unknown_0x0D70
	ld e,$1C
	ld bc,$0040
	call Unknown_0x23331
	jr Unknown_0x231A1

Unknown_0x2320E:
	ld e,$10
	ld bc,$0300
	call Unknown_0x0D35
	ld e,$1C
	ld bc,$FFC0
	call Unknown_0x23324
	ret

Unknown_0x2321F:
	bit 4,b
	jr nz,Unknown_0x23234
	ld e,$10
	ld bc,$0180
	call Unknown_0x0CB4
	ld e,$1C
	ld bc,$FFC0
	call Unknown_0x2333E
	ret

Unknown_0x23234:
	ld e,$10
	ld bc,$FE80
	call Unknown_0x0CEF
	ld e,$1C
	ld bc,$0040
	call Unknown_0x2334B
	ret

Unknown_0x23245:
	cp $02
	jr z,Unknown_0x23285
	bit 3,b
	jr nz,Unknown_0x23269
	bit 4,b
	jr nz,Unknown_0x2325D

Unknown_0x23251:
	ld e,$18
	ld bc,$FE80
	call Unknown_0x0D54
	call Unknown_0x232DC
	ret

Unknown_0x2325D:
	ld e,$18
	ld bc,$0180
	call Unknown_0x0D23
	call Unknown_0x232EE
	ret

Unknown_0x23269:
	bit 4,b
	jr nz,Unknown_0x23279
	ld e,$18
	ld bc,$0180
	call Unknown_0x0CA2
	call Unknown_0x23312
	ret

Unknown_0x23279:
	ld e,$18
	ld bc,$FE80
	call Unknown_0x0CD3
	call Unknown_0x23300
	ret

Unknown_0x23285:
	bit 3,b
	jr nz,Unknown_0x232B6
	bit 4,b
	jr nz,Unknown_0x232A5
	ld a,[$A050]
	cp $12
	jr z,Unknown_0x23251
	ld e,$0C
	ld bc,$FE80
	call Unknown_0x0D70
	ld e,$14
	ld bc,$0040
	call Unknown_0x23331
	ret

Unknown_0x232A5:
	ld e,$0C
	ld bc,$0180
	call Unknown_0x0D35
	ld e,$14
	ld bc,$FFC0
	call Unknown_0x23324
	ret

Unknown_0x232B6:
	bit 4,b
	jr nz,Unknown_0x232CB
	ld e,$0C
	ld bc,$0180
	call Unknown_0x0CB4
	ld e,$14
	ld bc,$FFC0
	call Unknown_0x2333E
	ret

Unknown_0x232CB:
	ld e,$0C
	ld bc,$FE80
	call Unknown_0x0CEF
	ld e,$14
	ld bc,$0040
	call Unknown_0x2334B
	ret

Unknown_0x232DC:
	ld bc,$FFD0
	ld l,$10
	ld a,[hld]
	rla
	jr nc,Unknown_0x232EA
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	ret c

Unknown_0x232EA:
	ld a,c
	ld [hli],a
	ld [hl],b
	ret

Unknown_0x232EE:
	ld bc,$0030
	ld l,$10
	ld a,[hld]
	rla
	jr c,Unknown_0x232FC
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	ret nc

Unknown_0x232FC:
	ld a,c
	ld [hli],a
	ld [hl],b
	ret

Unknown_0x23300:
	ld bc,$FFD0
	ld l,$0E
	ld a,[hld]
	rla
	jr nc,Unknown_0x2330E
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	ret c

Unknown_0x2330E:
	ld a,c
	ld [hli],a
	ld [hl],b
	ret

Unknown_0x23312:
	ld bc,$0030
	ld l,$0E
	ld a,[hld]
	rla
	jr c,Unknown_0x23320
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	ret nc

Unknown_0x23320:
	ld a,c
	ld [hli],a
	ld [hl],b
	ret

Unknown_0x23324:
	ld l,$10
	ld a,[hld]
	rla
	ret nc
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	ret nc
	jp Unknown_0x0D85

Unknown_0x23331:
	ld l,$10
	ld a,[hld]
	rla
	ret c
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	ret c
	jp Unknown_0x0D04

Unknown_0x2333E:
	ld l,$0E
	ld a,[hld]
	rla
	ret nc
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	ret nc
	jp Unknown_0x0D04

Unknown_0x2334B:
	ld l,$0E
	ld a,[hld]
	rla
	ret c
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	ret c
	jp Unknown_0x0D04

Unknown_0x23358:
	ld a,[$DB75]
	or a
	jr nz,Unknown_0x23368
	ld a,[$DB77]
	or a
	jr z,Unknown_0x23379
	cp $03
	jr nc,Unknown_0x23379

Unknown_0x23368:
	ld a,[$A07B]
	or a
	jr z,Unknown_0x23379
	ld b,a
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x23379
	ld a,b
	add a,[hl]
	ld [hl],a

Unknown_0x23379:
	ld e,$54
	ld a,[de]
	or a
	jr z,Unknown_0x23393
	bit 7,a
	jr nz,Unknown_0x23385
	dec a
	ld [de],a

Unknown_0x23385:
	and $04
	ld e,$47
	ld a,[de]
	jr nz,Unknown_0x23390
	res 4,a
	jr Unknown_0x23392

Unknown_0x23390:
	set 4,a

Unknown_0x23392:
	ld [de],a

Unknown_0x23393:
	call Unknown_0x23497
	call Unknown_0x2341F
	ld a,[$A064]
	or a
	jr nz,Unknown_0x233EA
	ld e,$0B
	ld a,[de]
	sub $90
	cp $30
	jr nc,Unknown_0x233B0

Unknown_0x233A8:
	ld e,$01
	ld bc,$5383
	jp Unknown_0x0846

Unknown_0x233B0:
	cp $68
	jr nc,Unknown_0x233BF
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a

Unknown_0x233BF:
	ld e,$09
	ld a,[de]
	cp $9A
	jr nc,Unknown_0x233A8
	cp $06
	jr c,Unknown_0x233A8
	ld a,[$A071]
	or a
	ld e,$4C
	jr z,Unknown_0x233D4
	ld e,$72

Unknown_0x233D4:
	ld a,[de]
	or a
	jr nz,Unknown_0x233EA
	ld a,[$A051]
	cp $0C
	jr z,Unknown_0x233EA
	call Unknown_0x1067
	ld e,$01
	ld bc,$5396
	jp Unknown_0x0846

Unknown_0x233EA:
	call Unknown_0x2344F
	ld a,[$FF00+$A6]
	and $08
	jr z,Unknown_0x23417
	ld a,[$A082]
	or a
	jr nz,Unknown_0x23417
	ld a,[$CD4D]
	or a
	jr nz,Unknown_0x23417
	ld a,[$DA36]
	or a
	jr nz,Unknown_0x23417
	ld a,[$DB61]
	cp $08
	jr z,Unknown_0x23417
	ld a,[$A07E]
	or a
	jr nz,Unknown_0x23417
	ld a,$04
	ld [$A082],a

Unknown_0x23417:
	ld a,[$DF12]
	or a
	call nz,Unknown_0x234A7
	ret

Unknown_0x2341F:
	ld hl,$CD54
	ld a,[$A050]
	cp $06
	jr z,Unknown_0x23434
	ld e,$04
	cp $10
	jr nz,Unknown_0x2343B
	ld bc,$FFEF
	jr Unknown_0x2343E

Unknown_0x23434:
	ld bc,$0006
	ld e,$01
	jr Unknown_0x2343E

Unknown_0x2343B:
	ld bc,Unknown_0x0000

Unknown_0x2343E:
	ld a,e
	ld [$FF00+$A1],a
	ld e,$07
	ld a,[de]
	add a,c
	ld [hli],a
	inc e
	ld a,[de]
	adc a,b
	ld [hl],a
	ld a,$04
	ld [$FF00+$A0],a
	ret

Unknown_0x2344F:
	push de
	ld h,d
	ld bc,$0000
	ld a,[$A050]
	cp $10
	ld de,$0000
	jr nz,Unknown_0x23461
	ld de,$FFF4

Unknown_0x23461:
	call Unknown_0x1AD9
	call Unknown_0x1646
	pop de
	and $7F
	cp $08
	ret nz
	ld a,[$A05D]
	cp $01
	ret z
	cp $04
	ret z
	ld a,[$A054]
	or a
	ret nz
	call Unknown_0x2809
	ret c
	ld b,$02
	call Unknown_0x3A8B
	ld e,$44
	ld a,$02
	ld [de],a
	ld e,$45
	ld a,[de]
	ld [$A053],a
	ld e,$01
	ld bc,$4EC9
	jp Unknown_0x0846

Unknown_0x23497:
	ld a,[$A070]
	or a
	ret z
	ld a,[$DA0E]
	and $3F
	ret nz
	ld e,$06
	jp Unknown_0x0F7A

Unknown_0x234A7:
	ld e,$08
	ld hl,$CD56

Unknown_0x234AC:
	ld a,[hli]
	or a
	jr z,Unknown_0x234B6
	dec l
	dec a
	ld [hli],a
	call z,Unknown_0x234BC

Unknown_0x234B6:
	inc l
	inc l
	dec e
	jr nz,Unknown_0x234AC
	ret

Unknown_0x234BC:
	push hl
	push de
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hl]
	inc a
	ld [hl],a
	ld [$FF00+$80],a
	ld e,l
	swap l
	ld c,l
	ld a,[$DB3D]
	ld b,a
	ld a,h
	ld d,$FF
	sub $B3

Unknown_0x234D3:
	inc d
	sub b
	jr nc,Unknown_0x234D3
	add a,b
	ld b,a
	call Unknown_0x3C02
	ld a,[$FF00+$80]
	ld [$FF00+$84],a
	call Unknown_0x15B0
	ld hl,$DF12
	dec [hl]
	ld e,$45
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	pop de
	pop hl
	ret

UnknownData_0x234F4:
INCBIN "baserom.gb", $234F4, $23596 - $234F4
	ld a,[$A051]
	sub $04
	ld e,$27
	ld [de],a
	ret
	call Unknown_0x235AE
	jr Unknown_0x235A7
	call Unknown_0x235B5

Unknown_0x235A7:
	ld a,$00
	rla
	ld e,$27
	ld [de],a
	ret

Unknown_0x235AE:
	ld e,$04
	ld hl,$A088
	jr Unknown_0x235BA

Unknown_0x235B5:
	ld e,$07
	ld hl,$A08B

Unknown_0x235BA:
	ld a,[de]
	sub [hl]
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	ret

Unknown_0x235C1:
	ld e,$04
	ld hl,$A088
	jr Unknown_0x235CD

Unknown_0x235C8:
	ld e,$07
	ld hl,$A08B

Unknown_0x235CD:
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret
	ld e,$11
	ld a,[de]
	ld e,a
	call Unknown_0x0D04
	ld h,d
	ld l,$39
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld l,$12
	ld e,[hl]
	call Unknown_0x0D35
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x235B5
	ret c
	call Unknown_0x235C8
	ld e,$3B
	ld a,$01
	ld [de],a
	ret

UnknownData_0x235FB:
INCBIN "baserom.gb", $235FB, $236AC - $235FB
	ld a,[$A071]
	cp $02
	jr nz,Unknown_0x236BA
	ld e,$16
	call Unknown_0x0D04
	jr Unknown_0x236D1

Unknown_0x236BA:
	ld h,d
	ld l,$39
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld l,$11
	ld e,[hl]
	ld l,$45
	bit 7,[hl]
	jr nz,Unknown_0x236CE
	call Unknown_0x0CB4
	jr Unknown_0x236D1

Unknown_0x236CE:
	call Unknown_0x0CE5

Unknown_0x236D1:
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	call Unknown_0x235AE
	ld e,$45
	ld a,[de]
	jr nc,Unknown_0x236E5
	rla
	ret nc
	jr Unknown_0x236E7

Unknown_0x236E5:
	rla
	ret c

Unknown_0x236E7:
	call Unknown_0x235C1
	ld e,$3B
	ld a,$01
	ld [de],a
	ret

UnknownData_0x236F0:
INCBIN "baserom.gb", $236F0, $2378F - $236F0
	ld bc,$010C
	ld h,d
	ld l,$11
	ld e,[hl]
	ld l,$45
	bit 7,[hl]
	jr nz,Unknown_0x237A1
	call Unknown_0x0CB4
	jr Unknown_0x237A4

Unknown_0x237A1:
	call Unknown_0x0CE5

Unknown_0x237A4:
	ld bc,$00E0
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$3C
	bit 7,[hl]
	jr nz,Unknown_0x237B6
	call Unknown_0x0D35
	jr Unknown_0x237B9

Unknown_0x237B6:
	call Unknown_0x0D66

Unknown_0x237B9:
	ld hl,$6E10
	ld a,$08
	call CallForeignBankNoInturrupts
	ld e,$11
	ld a,[de]
	or a
	jr z,Unknown_0x237E8
	call Unknown_0x235AE
	ld e,$45
	ld a,[de]
	jr nc,Unknown_0x237D4
	rla
	jr nc,Unknown_0x237E8
	jr Unknown_0x237D7

Unknown_0x237D4:
	rla
	jr c,Unknown_0x237E8

Unknown_0x237D7:
	call Unknown_0x235C1
	ld e,$3B
	ld a,[de]
	inc a
	ld [de],a
	xor a
	ld e,$11
	ld [de],a
	ld e,$0D
	ld [de],a
	inc e
	ld [de],a

Unknown_0x237E8:
	ld e,$12
	ld a,[de]
	or a
	ret z
	call Unknown_0x235B5
	ld e,$3C
	ld a,[de]
	jr nc,Unknown_0x237F9
	rla
	ret nc
	jr Unknown_0x237FB

Unknown_0x237F9:
	rla
	ret c

Unknown_0x237FB:
	call Unknown_0x235C8
	ld e,$3B
	ld a,[de]
	inc a
	ld [de],a
	xor a
	ld e,$12
	ld [de],a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	ret

UnknownData_0x2380D:
INCBIN "baserom.gb", $2380D, $24000 - $2380D