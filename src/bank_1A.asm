SECTION "Bank1A", ROMX, BANK[$1A]

ResetStackPointer:
	ld sp,$FFFF

InitializeGameboy:
	ld a,[rLY] ;Wait for VBlank
	cp $91
	jr nz,InitializeGameboy
	xor a ;Resets all LCDC flags
	ld [rLCDC],a 
	ld a,CART_RAM_ENABLE
	ld [MBC1RamEnable],a
	ld hl,$8000
	ld bc,$2000
	ld a,$00 ;not sure why they didn't use `xor a`?
	call LoadByteToRamInit
	ld hl,$C000
	ld bc,$2000
	ld a,$00
	call LoadByteToRamInit
	ld sp,$E000
	ld hl,$FE00
	ld bc,$0100
	ld a,$00
	call LoadByteToRamInit
	ld hl,$FF80
	ld bc,$007F
	ld a,$00
	call LoadByteToRamInit
	ld hl,$A000
	ld bc,$1C00
	ld a,$00
	call LoadByteToRamInit
	xor a
	ld [rIF],a 
	ld a, IEF_VBLANK | IEF_LCDC | IEF_TIMER
	ld [rIE],a
	ld a,$FF
	ld [rTIMA],a
	ld a,$BC
	ld [rTMA],a
	xor a
	ld [rTAC],a
	ld a,$40
	ld [rSTAT],a
	ld a,$FF
	ld [rLYC],a
	ld [$DA29],a
	ld a,$1A
	call ChangeBankAndHRAM
	ld hl,Unknown_0x680E8
	ld de,$FF88
	ld bc,$000A
	call LoadDataToRamInit
	ld hl,$DA21
	ld a,$02
	ld [hld],a
	ld [hl],$2B
	xor a
	ld [$DA1C],a
	ld a,bank(UnknownForeignCall_0x78232)
	ld hl,UnknownForeignCall_0x78232
	call CallForeignBank
	ld a,bank(UnknownForeignCall_0x1D7BC)
	ld hl,UnknownForeignCall_0x1D7BC
	call CallForeignBank
	ld a,bank(UnknownForeignCall_0x1C01D)
	ld hl,UnknownForeignCall_0x1C01D
	call CallForeignBank
	xor a
	ld [rBGP],a
	ld [$CD00],a ;Seems like the palletes are stored in RAM, most likely for fades
	ld [rOBP0],a
	ld [$CD01],a
	ld [rOBP1],a
	ld [$CD02],a
	ld [rSCY],a
	ld [rSCX],a
	ld [rWY],a
	ld [rWX],a
	ld [$DA2B],a
	ld a,$C0
	ld [$DA08],a
	ld a,$C2
	ld [$DA28],a
	ld a,$C3
	ld [$DA10],a
	ld hl,$0342
	call StoreHLToRam
	ld hl,$DA13
	ld a,$C3
	ld [hli],a
	ld a,$42
	ld [hli],a
	ld [hl],$03
	ld hl,$DA16
	ld a,$42
	ld [hli],a
	ld [hl],$03
	ei
	ld a,$04
	ld [rTAC],a
	jp Unknown_0x10DE

Unknown_0x680E8:
INCBIN "baserom.gb", $680E8, $681E0 - $680E8

Unknown_0x681E0:
	ld a,[$DEED]
	or a
	ret z
	pop hl
	ld a,d
	ld hl,$40F2
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x681F0
	inc h

Unknown_0x681F0:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hl]
	ld c,a
	ld de,$CD0C
	ld [de],a
	inc e
	ld b,$00
	add hl,bc

Unknown_0x681FD:
	ld a,[hld]
	ld [de],a
	inc e
	dec c
	jr nz,Unknown_0x681FD
	jr Unknown_0x68235

Unknown_0x68205:
	ld a,[$DEED]
	or a
	ret z
	pop hl
	ld a,d
	ld hl,$40F2
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x68215
	inc h

Unknown_0x68215:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hli]
	ld c,a
	ld de,$CD0C
	ld [de],a
	inc e
	inc hl

Unknown_0x68220:
	ld a,[hli]
	ld [de],a
	inc e
	dec c
	jr nz,Unknown_0x68220
	ld hl,$CD09
	ld de,$CD00
	ld b,$03

Unknown_0x6822E:
	ld a,[hli]
	ld [de],a
	ld [$FF00+c],a
	inc e
	dec b
	jr nz,Unknown_0x6822E

Unknown_0x68235:
	ld a,$0D
	ld [$DA34],a
	ld a,$01
	ld [$DA38],a
	ld a,$04
	ld [$FF00+$84],a
	jp Unknown_0x682CA
	ld a,$FF
	ld [$DA37],a
	call Unknown_0x68205
	ld a,e
	ld [$FF00+$84],a
	ld a,[$CD00]
	or a
	ld a,$00
	jr z,Unknown_0x6825B
	ld a,$01

Unknown_0x6825B:
	ld [$DA35],a
	ld hl,$CD08
	ld de,$CD0B
	ld c,$06

Unknown_0x68266:
	ld a,[de]
	dec e
	call Unknown_0x682DD
	ld [hld],a
	dec c
	jr nz,Unknown_0x68266
	jr Unknown_0x682C5
	call Unknown_0x68292
	jr Unknown_0x68283
	call Unknown_0x6829A
	jr Unknown_0x68283
	call Unknown_0x682A4
	jr Unknown_0x68283
	call Unknown_0x682AC

Unknown_0x68283:
	ld a,$01
	ld [$DA39],a
	call Unknown_0x0343
	ld a,[$DA36]
	or a
	jr nz,Unknown_0x68283
	ret

Unknown_0x68292:
	ld a,$01
	ld [$DA37],a
	call Unknown_0x681E0

Unknown_0x6829A:
	ld a,$01
	ld [$DA35],a
	ld a,e
	ld [$FF00+$84],a
	jr Unknown_0x682B4

Unknown_0x682A4:
	ld a,$00
	ld [$DA37],a
	call Unknown_0x681E0

Unknown_0x682AC:
	ld a,$00
	ld [$DA35],a
	ld a,e
	ld [$FF00+$84],a

Unknown_0x682B4:
	ld hl,$CD03
	ld de,$CD00
	ld c,$09

Unknown_0x682BC:
	ld a,[de]
	inc e
	call Unknown_0x682DD
	ld [hli],a
	dec c
	jr nz,Unknown_0x682BC

Unknown_0x682C5:
	ld a,$03
	ld [$DA34],a

Unknown_0x682CA:
	ld a,[$FF00+$84]
	ld [$DA32],a
	ld [$DA33],a
	ld a,$01
	ld [$DA36],a
	ld hl,$0684
	jp Unknown_0x05F9

Unknown_0x682DD:
	ld b,a
	ld a,[$DA35]
	cp $00
	ld a,b
	jr nz,Unknown_0x68305
	ld b,a
	and $C0
	ld a,b
	jr z,Unknown_0x682EF
	sub $40
	ld b,a

Unknown_0x682EF:
	and $30
	ld a,b
	jr z,Unknown_0x682F7
	sub $10
	ld b,a

Unknown_0x682F7:
	and $0C
	ld a,b
	jr z,Unknown_0x682FF
	sub $04
	ld b,a

Unknown_0x682FF:
	and $03
	ld a,b
	ret z
	dec a
	ret

Unknown_0x68305:
	ld b,a
	and $C0
	cp $C0
	ld a,b
	jr z,Unknown_0x68310
	add a,$40
	ld b,a

Unknown_0x68310:
	and $30
	cp $30
	ld a,b
	jr z,Unknown_0x6831A
	add a,$10
	ld b,a

Unknown_0x6831A:
	and $0C
	cp $0C
	ld a,b
	jr z,Unknown_0x68324
	add a,$04
	ld b,a

Unknown_0x68324:
	and $03
	cp $03
	ld a,b
	ret z
	inc a
	ret

UnknownData_0x6832C:
INCBIN "baserom.gb", $6832C, $6834E - $6832C
	ld bc,$437B
	call Unknown_0x255B
	call Unknown_0x68363
	call Unknown_0x68389
	ret nz
	ld e,$1A
	ld bc,Unknown_0x683A1
	jp Unknown_0x0846

Unknown_0x68363:
	ld a,[$DD2C]
	bit 0,a
	jr nz,Unknown_0x6836D
	bit 1,a
	ret z

Unknown_0x6836D:
	ld e,$39
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ret

UnknownData_0x6837B:
INCBIN "baserom.gb", $6837B, $68389 - $6837B

Unknown_0x68389:
	ld h,$A8

Unknown_0x6838B:
	ld a,h
	cp d
	jr z,Unknown_0x6839A
	ld l,$00
	ld a,[hl]
	inc a
	jr z,Unknown_0x6839A
	ld l,$4C
	ld a,[hl]
	or a
	ret nz

Unknown_0x6839A:
	inc h
	ld a,h
	cp $B2
	jr nz,Unknown_0x6838B
	ret

Unknown_0x683A1:
INCBIN "baserom.gb", $683A1, $683AE - $683A1
	ld bc,$437B
	call Unknown_0x255B
	jp Unknown_0x68363

UnknownData_0x683B7:
INCBIN "baserom.gb", $683B7, $683C2 - $683B7
	ld hl,Unknown_0x692CE
	ld a,$03
	call CallForeignBankNoInturrupts
	ret
	ld bc,$437B
	call Unknown_0x255B
	call Unknown_0x68363
	call Unknown_0x2422
	ld a,[$CD4D]
	or a
	ret nz
	ld e,$1A
	ld bc,Unknown_0x68454
	jp Unknown_0x0846
	push bc
	ld hl,$CD4D
	ld a,$01
	ld [hli],a
	ld a,$60
	ld [hli],a
	ld a,$88
	ld [hli],a
	ld a,[$A071]
	ld c,a
	ld e,$5B
	ld a,[de]
	cp $04
	jr z,Unknown_0x68417
	or a
	jr nz,Unknown_0x68414
	ld e,$09
	call Unknown_0x063B
	ld e,$01
	cp $04
	jr c,Unknown_0x68410
	inc e
	cp $06
	jr c,Unknown_0x68410
	inc e

Unknown_0x68410:
	ld a,e
	ld e,$5B
	ld [de],a

Unknown_0x68414:
	cp c
	jr nz,Unknown_0x68430

Unknown_0x68417:
	call Unknown_0x0647
	and $07
	ld a,$04
	jr nz,Unknown_0x68422
	ld a,$05

Unknown_0x68422:
	ld [de],a
	ld bc,$5D91
	ld de,$0240
	jr nz,Unknown_0x68448
	ld bc,$5FD1
	jr Unknown_0x68448

Unknown_0x68430:
	ld bc,$5891
	ld de,$0280
	cp $02
	jr z,Unknown_0x68448
	ld bc,$5631
	ld de,$0260
	jr c,Unknown_0x68448
	ld bc,$5B11
	ld de,$0280

Unknown_0x68448:
	ld [hl],c
	inc l
	ld [hl],b
	inc l
	ld [hl],e
	inc l
	ld [hl],d
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x68454:
INCBIN "baserom.gb", $68454, $68463 - $68454
	ld e,$15
	ld bc,$0200
	call Unknown_0x0D35
	call Unknown_0x0DA4
	call Unknown_0x1A25
	bit 7,a
	jr z,Unknown_0x6847D
	ld e,$1A
	ld bc,Unknown_0x68486
	jp Unknown_0x0846

Unknown_0x6847D:
	ld bc,$437B
	call Unknown_0x255B
	jp Unknown_0x68363

Unknown_0x68486:
INCBIN "baserom.gb", $68486, $68514 - $68486

Unknown_0x68514:
INCBIN "baserom.gb", $68514, $68522 - $68514
	ld e,$15
	ld bc,$0200
	call Unknown_0x0D35
	call Unknown_0x0DA4
	call Unknown_0x1A25
	bit 7,a
	jr z,Unknown_0x6853C
	ld e,$1A
	ld bc,Unknown_0x68514
	jp Unknown_0x0846

Unknown_0x6853C:
	ld bc,$437B
	call Unknown_0x255B
	call Unknown_0x68363
	ld a,[$DD2C]
	bit 3,a
	ret z
	call Unknown_0x2809
	ret c
	ld e,$5B
	ld a,[de]
	cp $04
	jr nc,Unknown_0x6857A
	ld a,[$A051]
	cp $0C
	ret z
	ld e,$5B
	ld a,[de]
	ld [$A043],a
	ld e,$02
	ld bc,Unknown_0x6B340
	call Unknown_0x0C48
	ld hl,$A003
	ld e,l
	ld b,$06

Unknown_0x68570:
	ld a,[de]
	ld [hli],a
	inc e
	dec b
	jr nz,Unknown_0x68570

Unknown_0x68576:
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x6857A:
	jr nz,Unknown_0x6859D
	ld a,[$A071]
	or a
	ld hl,$A04C
	ld e,$0C
	ld b,$02
	jr z,Unknown_0x68590
	ld hl,$A072
	ld e,$06
	ld b,$01

Unknown_0x68590:
	ld a,[hl]
	cp e
	jr nc,Unknown_0x68596
	add a,b
	ld [hl],a

Unknown_0x68596:
	ld e,$10
	call Unknown_0x10AA
	jr Unknown_0x68576

Unknown_0x6859D:
	ld hl,$7C7C
	ld a,$03
	call CallForeignBankNoInturrupts
	ld a,$01
	ld [$DD62],a
	jr Unknown_0x68576

UnknownData_0x685AC:
INCBIN "baserom.gb", $685AC, $685E3 - $685AC
	push bc
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$5B
	ld a,[hl]
	ld hl,$45FE
	add a,l
	ld l,a
	jr nc,Unknown_0x685F3
	inc h

Unknown_0x685F3:
	ld a,[hl]
	ld h,d
	ld l,$07
	add a,[hl]
	ld [hli],a
	ld a,[hl]
	adc a,$FF
	ld [hl],a
	pop bc
	ret

UnknownData_0x685FF:
INCBIN "baserom.gb", $685FF, $6860D - $685FF

Unknown_0x6860D:
INCBIN "baserom.gb", $6860D, $68613 - $6860D
	call Unknown_0x68389
	ret nz
	ld e,$1A
	ld bc,Unknown_0x6860D
	jp Unknown_0x0846

UnknownData_0x6861F:
INCBIN "baserom.gb", $6861F, $6867D - $6861F
	ld e,$3E
	ld a,[de]
	or a
	ld a,$08
	jr z,Unknown_0x68687
	ld a,$03

Unknown_0x68687:
	ld e,$24
	ld [de],a
	ret
	push bc
	call Unknown_0x1964
	pop bc
	ret
	ld e,$0E
	ld a,[de]
	rla
	ld e,$15
	ld a,[de]
	jr nc,Unknown_0x686A3
	dec a
	cp $06
	jr nz,Unknown_0x686AA
	ld a,$0A
	jr Unknown_0x686AA

Unknown_0x686A3:
	inc a
	cp $0B
	jr nz,Unknown_0x686AA
	ld a,$07

Unknown_0x686AA:
	ld [de],a
	ret
	ld e,$3E
	ld a,[de]
	or a
	ld e,$15
	ld bc,$0200
	jr z,Unknown_0x686BC
	ld e,$04
	ld bc,$0030

Unknown_0x686BC:
	call Unknown_0x0D35
	call Unknown_0x0DA4
	ld e,$3E
	ld a,[de]
	or a
	jr nz,Unknown_0x686E1
	call Unknown_0x1AB3
	jr nz,Unknown_0x686E1
	ld a,$01
	ld e,$3E
	ld [de],a
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	ld e,$3A
	ld a,$78
	ld [de],a
	inc e
	ld a,$00
	ld [de],a

Unknown_0x686E1:
	call Unknown_0x1A25
	ld b,a
	bit 7,b
	jr z,Unknown_0x686FC
	ld e,$3E
	ld a,[de]
	or a
	ld hl,$FD80
	jr z,Unknown_0x686F5
	ld hl,$0000

Unknown_0x686F5:
	ld e,$0F
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a

Unknown_0x686FC:
	bit 5,b
	jr z,Unknown_0x6870D
	ld e,$0D
	ld a,[de]
	cpl
	add a,$01
	ld [de],a
	inc e
	ld a,[de]
	cpl
	adc a,$00
	ld [de],a

Unknown_0x6870D:
	ld a,b
	and $A0
	jr z,Unknown_0x6871F
	ld e,$41
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a

Unknown_0x6871F:
	ld e,$3D
	ld a,[de]
	or a
	jr z,Unknown_0x68729
	dec a
	ld [de],a
	jr Unknown_0x68736

Unknown_0x68729:
	ld bc,$4766
	call Unknown_0x255B
	ret c
	ld a,[$A05B]
	inc a
	jr nz,Unknown_0x68745

Unknown_0x68736:
	ld h,d
	ld l,$3A
	ld a,[hl]
	sub $01
	ld [hli],a
	jr nc,Unknown_0x6874D
	ld a,[hl]
	sub $01
	ld [hl],a
	jr nc,Unknown_0x6874D

Unknown_0x68745:
	ld e,$03
	ld bc,Unknown_0x68E33
	jp Unknown_0x0846

Unknown_0x6874D:
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0x68757
	dec a
	ld [de],a
	jr Unknown_0x68765

Unknown_0x68757:
	push de
	call Unknown_0x1AEA
	call Unknown_0x1646
	pop de
	and $7F
	cp $08
	jr z,Unknown_0x68745

Unknown_0x68765:
	ret

UnknownData_0x68766:
INCBIN "baserom.gb", $68766, $687F6 - $68766
	ld e,$5B
	ld a,[de]
	ld e,a
	ld hl,$DB60
	ld a,[hl]
	call Unknown_0x162A
	and a
	ret z
	ld e,$27
	ld [de],a
	ret

UnknownData_0x68807:
INCBIN "baserom.gb", $68807, $68829 - $68807
	ld a,[$DB60]
	ld e,a
	inc e
	ld a,[$DB6A]

Unknown_0x68831:
	rra
	dec e
	jr nz,Unknown_0x68831
	ld a,$00
	rla
	ld e,$27
	ld [de],a
	ret

UnknownData_0x6883C:
INCBIN "baserom.gb", $6883C, $6887A - $6883C
	push bc
	push de
	ld e,$0C
	ld hl,$42AC
	ld a,$1A
	call CallForeignBankNoInturrupts
	pop de
	pop bc
	ret
	ld a,$07
	ld [$A082],a
	ret

UnknownData_0x6888F:
INCBIN "baserom.gb", $6888F, $68A81 - $6888F
	ld a,$06
	ld [$A082],a
	ret
	ld a,[$DD63]
	or $80
	inc a
	ld e,$27
	ld [de],a
	ret
	ld a,$01
	ld [$DF16],a
	ret

UnknownData_0x68A97:
INCBIN "baserom.gb", $68A97, $68E33 - $68A97

Unknown_0x68E33:
INCBIN "baserom.gb", $68E33, $68EA6 - $68E33
	ld hl,$A082
	ld [hl],$03
	ret
	ld e,$39
	jp Unknown_0x101A
	ld a,[$A845]
	ld e,$45
	ld [de],a
	cpl
	jr Unknown_0x68EC0
	ld a,[$A045]
	ld e,$39
	ld [de],a

Unknown_0x68EC0:
	ld e,$04
	ld hl,$DB51
	rla
	jr nc,Unknown_0x68EE3
	push bc
	ld a,[hli]
	add a,$A0
	ld c,a
	ld a,[hl]
	adc a,$00
	ld b,a
	pop hl
	ld a,c
	sub [hl]
	inc hl
	ld [de],a
	inc e
	ld a,b
	sbc a,[hl]
	inc hl
	ld [de],a
	ld b,h
	ld c,l
	ret
	ld e,$07
	ld hl,$DB53

Unknown_0x68EE3:
	ld a,[bc]
	inc bc
	add a,[hl]
	inc hl
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	adc a,[hl]
	ld [de],a
	ret

UnknownData_0x68EEE:
INCBIN "baserom.gb", $68EEE, $68FAD - $68EEE
	ld a,[$A045]
	ld e,$45
	ld [de],a
	ret

UnknownData_0x68FB4:
INCBIN "baserom.gb", $68FB4, $692CE - $68FB4

Unknown_0x692CE:
INCBIN "baserom.gb", $692CE, $69434 - $692CE
	call Unknown_0x0C80
	call Unknown_0x0C91
	jp Unknown_0x0DA4

UnknownData_0x6943D:
INCBIN "baserom.gb", $6943D, $697BC - $6943D

Unknown_0x697BC:
INCBIN "baserom.gb", $697BC, $6A0A5 - $697BC
	xor a
	ld hl,$A077
	ld [hli],a
	ld [hl],a
	ret
	ld e,$11
	ld a,[de]
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld hl,$A077
	ld a,[hl]
	add a,c
	ld [hli],a
	ld a,[hl]
	adc a,b
	ld [hl],a
	ld a,[$DB3D]
	dec a
	ld hl,$DB52
	cp [hl]
	jr nz,Unknown_0x6A0CB
	ld a,$01
	ld [$DF24],a

Unknown_0x6A0CB:
	ret

UnknownData_0x6A0CC:
INCBIN "baserom.gb", $6A0CC, $6A128 - $6A0CC
	ld hl,$7C7C
	ld a,$03
	call CallForeignBankNoInturrupts
	ret
	ld a,[$DB60]
	call Unknown_0x0663
	ld hl,$DB6C
	or [hl]
	ld [hl],a
	ret
	ld hl,$A019
	set 5,[hl]
	ld l,$1C
	set 5,[hl]
	ld l,$1F
	set 5,[hl]
	ret
	ld a,$01
	ld [$DF24],a
	ret
	ld a,[$DF22]
	jr Unknown_0x6A163
	ld a,[$DF24]
	jr Unknown_0x6A163
	ld a,[$DF23]
	jr Unknown_0x6A163
	ld a,[$DB60]

Unknown_0x6A163:
	ld e,$27
	ld [de],a
	ret
	ld a,$05
	ld [$A082],a
	ret
	ld a,[$DB60]
	or a
	ld e,$0A
	jr nz,Unknown_0x6A177
	ld e,$10

Unknown_0x6A177:
	xor a
	ld hl,$DF22

Unknown_0x6A17B:
	ld [hli],a
	dec e
	jr nz,Unknown_0x6A17B
	ret
	push bc
	ld e,$1A
	ld bc,$618B
	call Unknown_0x0C3A
	pop bc
	ret

UnknownData_0x6A18B:
INCBIN "baserom.gb", $6A18B, $6A204 - $6A18B
	ld a,$01
	ld [$DF22],a
	ret
	push bc
	ld a,[$DB60]
	ld hl,$6221
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x6A217
	inc h

Unknown_0x6A217:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld b,h
	ld c,l
	call Unknown_0x35BB
	pop bc
	ret

UnknownData_0x6A221:
INCBIN "baserom.gb", $6A221, $6A260 - $6A221
	ld e,$46
	ld a,[de]
	ld [$DF21],a
	ret

UnknownData_0x6A267:
INCBIN "baserom.gb", $6A267, $6A2D8 - $6A267
	ld a,[$DF27]
	ld h,$14
	cp $08
	jr c,Unknown_0x6A2EF
	ld h,$10
	cp $0F
	jr c,Unknown_0x6A2EF
	ld h,$0C
	cp $15
	jr c,Unknown_0x6A2EF
	ld h,$08

Unknown_0x6A2EF:
	ld a,h
	ld e,$24
	ld [de],a
	ret
	ld a,[$DF27]
	sub $1C
	ld e,$27
	ld [de],a
	ret
	ld e,$3C
	ld a,[de]
	ld h,a
	dec a
	ld [de],a
	ld a,h
	ld e,$27
	ld [de],a
	ret
	ld e,$3D
	ld a,[de]
	inc a
	cp $10
	jr c,Unknown_0x6A311
	xor a

Unknown_0x6A311:
	ld [de],a
	add a,a
	add a,a
	ld h,a
	call Unknown_0x0647
	and $03
	add a,h
	ld hl,$6331
	add a,l
	ld l,a
	jr nc,Unknown_0x6A323
	inc h

Unknown_0x6A323:
	ld a,[hl]
	ld e,$27
	ld [de],a
	cp $04
	jr c,Unknown_0x6A32D
	sub $04

Unknown_0x6A32D:
	ld e,$3C
	ld [de],a
	ret

UnknownData_0x6A331:
INCBIN "baserom.gb", $6A331, $6A37A - $6A331
	ld e,$03
	call Unknown_0x063B
	or a
	jr z,Unknown_0x6A384
	ld a,$01

Unknown_0x6A384:
	ld [$DF2A],a
	cp $01
	jr nz,Unknown_0x6A39C
	ld hl,$DF29
	ld a,[hl]
	cp $0E
	jr nc,Unknown_0x6A396

Unknown_0x6A393:
	inc [hl]
	jr Unknown_0x6A3A8

Unknown_0x6A396:
	xor a

Unknown_0x6A397:
	ld [$DF2A],a
	jr Unknown_0x6A3A8

Unknown_0x6A39C:
	ld hl,$DF28
	ld a,[hl]
	cp $07
	jr c,Unknown_0x6A393
	ld a,$01
	jr Unknown_0x6A397

Unknown_0x6A3A8:
	ld e,$27
	ld a,[$DF2A]
	ld [de],a
	ret

UnknownData_0x6A3AF:
INCBIN "baserom.gb", $6A3AF, $6A4BF - $6A3AF
	ld e,$39
	ld a,[de]
	inc a
	ld [de],a
	ld hl,$64D1
	add a,l
	ld l,a
	jr nc,Unknown_0x6A4CC
	inc h

Unknown_0x6A4CC:
	ld a,[hl]
	ld e,$25
	ld [de],a
	ret

UnknownData_0x6A4D1:
INCBIN "baserom.gb", $6A4D1, $6A8AE - $6A4D1
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x6A8BE
	xor a
	ld [de],a
	ld a,$E9
	ld [$DB78],a
	ld [$CD00],a

Unknown_0x6A8BE:
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$68DA
	call Unknown_0x255B
	ld a,[$DF24]
	or a
	ret z
	ld e,$03
	ld bc,Unknown_0x68E33
	jp Unknown_0x0846

UnknownData_0x6A8DA:
INCBIN "baserom.gb", $6A8DA, $6A921 - $6A8DA
	ld e,$03
	call Unknown_0x6ACFB
	ld hl,$692C
	jp Unknown_0x6AD77

UnknownData_0x6A92C:
INCBIN "baserom.gb", $6A92C, $6A97A - $6A92C
	ld e,$04
	ld hl,$DB51
	jr Unknown_0x6A986
	ld e,$07
	ld hl,$DB53

Unknown_0x6A986:
	ld a,[bc]
	inc bc
	add a,[hl]
	inc hl
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	adc a,[hl]
	ld [de],a
	ret

UnknownData_0x6A991:
INCBIN "baserom.gb", $6A991, $6A9A5 - $6A991
	ld hl,$DF27
	inc [hl]
	ld hl,$DF2B
	ld a,[hl]
	or a
	jr z,Unknown_0x6A9BB
	ld [hl],$00
	ld hl,$DF2A
	ld a,[hl]
	xor $01
	ld [hl],a
	jr Unknown_0x6A9CE

Unknown_0x6A9BB:
	call Unknown_0x0647
	and $01
	ld hl,$DF2A
	ld e,[hl]
	ld [hl],a
	cp e
	jr nz,Unknown_0x6A9CE
	ld a,$01
	ld [$DF2B],a
	ld a,e

Unknown_0x6A9CE:
	cp $01
	jr nz,Unknown_0x6A9E3
	ld hl,$DF29
	ld a,[hl]
	cp $0E
	jr nc,Unknown_0x6A9DD

Unknown_0x6A9DA:
	inc [hl]
	jr Unknown_0x6A9EF

Unknown_0x6A9DD:
	xor a

Unknown_0x6A9DE:
	ld [$DF2A],a
	jr Unknown_0x6A9EF

Unknown_0x6A9E3:
	ld hl,$DF28
	ld a,[hl]
	cp $0E
	jr c,Unknown_0x6A9DA
	ld a,$01
	jr Unknown_0x6A9DE

Unknown_0x6A9EF:
	ld e,$27
	ld a,[$DF2A]
	ld [de],a
	ret

UnknownData_0x6A9F6:
INCBIN "baserom.gb", $6A9F6, $6ACE3 - $6A9F6
	ld e,$03
	call Unknown_0x6ACEC
	ld e,$27
	ld [de],a
	ret

Unknown_0x6ACEC:
	ld hl,$DF26
	call Unknown_0x063B
	inc a
	add a,[hl]
	inc e
	cp e
	jr c,Unknown_0x6ACF9
	sub e

Unknown_0x6ACF9:
	ld [hl],a
	ret

Unknown_0x6ACFB:
	ld hl,$DF26
	call Unknown_0x063B
	inc a
	add a,[hl]
	inc e
	inc e

Unknown_0x6AD05:
	cp e
	jr c,Unknown_0x6AD09
	sub e

Unknown_0x6AD09:
	ld hl,$DF25
	cp [hl]
	jr nz,Unknown_0x6AD16
	ld a,[$DF26]
	add a,e
	dec a
	jr Unknown_0x6AD05

Unknown_0x6AD16:
	push af
	ld a,[$DF26]
	ld [hl],a
	pop af
	ld [$DF26],a
	ret
	ld e,$39
	ld a,[de]
	ld e,a
	push bc
	call Unknown_0x10AA
	pop bc
	ret

UnknownData_0x6AD2A:
INCBIN "baserom.gb", $6AD2A, $6AD44 - $6AD2A
	ld e,$05
	call Unknown_0x6ACEC
	ld [$FF00+$84],a
	ld hl,$6D5F
	call Unknown_0x6AD77
	ld a,[$FF00+$84]
	cp $03
	ld a,$40
	jr c,Unknown_0x6AD5B
	ld a,$C0

Unknown_0x6AD5B:
	ld e,$45
	ld [de],a
	ret

UnknownData_0x6AD5F:
INCBIN "baserom.gb", $6AD5F, $6AD77 - $6AD5F

Unknown_0x6AD77:
	push bc
	add a,a
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x6AD7F
	inc h

Unknown_0x6AD7F:
	ld e,$04
	ld bc,$DB51
	ld a,[bc]
	inc bc
	add a,[hl]
	inc hl
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	adc a,[hl]
	inc hl
	ld [de],a
	inc e
	inc e
	ld a,[bc]
	inc bc
	add a,[hl]
	inc hl
	ld [de],a
	inc e
	ld a,[bc]
	adc a,[hl]
	ld [de],a
	pop bc
	ret

UnknownData_0x6AD9C:
INCBIN "baserom.gb", $6AD9C, $6AE2F - $6AD9C
	ld e,$03
	call Unknown_0x6ACFB
	ld hl,$6E3A
	jp Unknown_0x6AD77

UnknownData_0x6AE3A:
INCBIN "baserom.gb", $6AE3A, $6AE4E - $6AE3A
	ld e,$03
	call Unknown_0x063B
	ld e,$27
	ld [de],a
	ret

UnknownData_0x6AE57:
INCBIN "baserom.gb", $6AE57, $6AEAB - $6AE57
	ld a,[$DF21]
	ld e,$46
	ld [de],a
	ret
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld a,[$DB60]
	cp $02
	ld bc,$6EDD
	jr z,Unknown_0x6AECC
	cp $04
	jr z,Unknown_0x6AECC
	ld bc,$6ECF

Unknown_0x6AECC:
	jp Unknown_0x255B

UnknownData_0x6AECF:
INCBIN "baserom.gb", $6AECF, $6AFCA - $6AECF
	ld a,[$DB51]
	add a,$50
	ld h,a
	ld e,$04
	ld a,[de]
	sub h
	ld a,$40
	jr c,Unknown_0x6AFDA
	ld a,$C0

Unknown_0x6AFDA:
	ld e,$45
	ld [de],a
	ret

UnknownData_0x6AFDE:
INCBIN "baserom.gb", $6AFDE, $6AFE1 - $6AFDE
	xor a
	ld e,$15
	ld [de],a
	call Unknown_0x0C80
	call Unknown_0x0C91
	call Unknown_0x0DA4
	ld bc,$701A
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 3,a
	ret z
	ld e,$10
	call Unknown_0x10AA
	ld hl,$7CD8
	ld a,$03
	call CallForeignBankNoInturrupts
	ld hl,$DF23
	inc [hl]
	ld a,[$DB60]
	ld c,a
	ld b,$00
	ld hl,$DF2C
	add hl,bc
	inc [hl]
	ld h,d
	jp Unknown_0x0BBA

UnknownData_0x6B01A:
INCBIN "baserom.gb", $6B01A, $6B340 - $6B01A

Unknown_0x6B340:
INCBIN "baserom.gb", $6B340, $6B48B - $6B340

Unknown_0x6B48B:
INCBIN "baserom.gb", $6B48B, $6C000 - $6B48B