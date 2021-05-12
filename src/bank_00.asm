SECTION "bank00", ROM0

SECTION "rst00", ROM0[$00]

Unknown_0x0000:
INCBIN "baserom.gb", $0000, $0008 - $0000

SECTION "rst08", ROM0[$08]

UnknownData_0x0008:
INCBIN "baserom.gb", $0008, $0010 - $0008

SECTION "rst10", ROM0[$10]

UnknownData_0x0010:
INCBIN "baserom.gb", $0010, $0018 - $0010

SECTION "rst18", ROM0[$18]

UnknownData_0x0018:
INCBIN "baserom.gb", $0018, $0020 - $0018

SECTION "rst20", ROM0[$20]

UnknownData_0x0020:
INCBIN "baserom.gb", $0020, $0028 - $0020

SECTION "rst28", ROM0[$28]

UnknownData_0x0028:
INCBIN "baserom.gb", $0028, $0030 - $0028

SECTION "rst30", ROM0[$30]

UnknownData_0x0030:
INCBIN "baserom.gb", $0030, $0038 - $0030

SECTION "rst38", ROM0[$38]

UnknownData_0x0038:
INCBIN "baserom.gb", $0038, $0040 - $0038

SECTION "vblankInt", ROM0[$40]
	push af
	push hl
	push bc
	push de
	jp VBlank

UnknownData_0x0047:
INCBIN "baserom.gb", $0047, $0048 - $0047

SECTION "lcdstatInt", ROM0[$48]
	jp $DA13

UnknownData_0x004B:
INCBIN "baserom.gb", $004B, $0050 - $004B

SECTION "timerInt", ROM0[$50]
	push af
	push hl
	push bc
	push de
	jp Unknown_0x0333

UnknownData_0x0057:
INCBIN "baserom.gb", $0057, $0058 - $0057

SECTION "serialInt", ROM0[$58]

UnknownData_0x0058:
INCBIN "baserom.gb", $0058, $0060 - $0058

SECTION "joypadInt", ROM0[$60]

UnknownData_0x0060:
INCBIN "baserom.gb", $0060, $0100 - $0060

SECTION "start", ROM0[$100]
	nop
	jp Start

SECTION "Header", ROM0[$134]
	db "KIRBY2";Title
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $30,$31;0x144 New Licensee Code
	db $03;SGB Flag
	db $03;Cart Type
	db $04;ROM Size
	db $02;RAM Size
	db $01;Destination Code
	db $33;Old Licensee Code
	db $00;Version

SECTION "Home", ROM0[$150]

Start:
	di
	ld a, bank(ResetStackPointer) ;Bank 1A
	ld [MBC1RomBank],a
	jp ResetStackPointer

VBlank:
	ld a,[$FF00+$B5]
	or a
	jr z,Unknown_0x016F

Unknown_0x015E:
	ld a,[$FF00+$44]
	cp $91
	jr nz,Unknown_0x015E
	ld hl,$FF40
	res 7,[hl]
	xor a
	ld [$FF00+$B5],a
	jp Unknown_0x029F

Unknown_0x016F:
	ld a,[$DA0F]
	cp $01
	jp c,Unknown_0x0193
	ld a,$C0
	jr z,Unknown_0x017C
	inc a

Unknown_0x017C:
	ld [$FF00+$89],a
	call $FF88
	ld a,[$DA0F]
	dec a
	ld hl,$DA02
	jr z,Unknown_0x018D
	ld hl,$DA04

Unknown_0x018D:
	ld a,[hli]
	ld [$FF00+$42],a
	ld a,[hl]
	ld [$FF00+$43],a

Unknown_0x0193:
	ld hl,$CD00
	ld c,$47
	ld a,[hli]
	ld [$FF00+c],a
	inc c
	ld a,[hli]
	ld [$FF00+c],a
	inc c
	ld a,[hl]
	ld [$FF00+c],a
	ld a,[$DA27]
	or a
	jp z,Unknown_0x0210
	ld [$DA25],sp
	ld de,$001F
	bit 2,a
	jr z,Unknown_0x01DD
	bit 0,a
	jr z,Unknown_0x01C8
	ld a,[$DA23]
	ld sp,$C200

Unknown_0x01BB:
	pop hl
	pop bc
	ld [hl],c
	inc l
	ld [hl],b
	add hl,de
	pop bc
	ld [hl],c
	inc l
	ld [hl],b
	dec a
	jr nz,Unknown_0x01BB

Unknown_0x01C8:
	ld a,[$DA24]
	ld sp,$C300

Unknown_0x01CE:
	pop hl
	pop bc
	ld [hl],c
	inc l
	ld [hl],b
	add hl,de
	pop bc
	ld [hl],c
	inc l
	ld [hl],b
	dec a
	jr nz,Unknown_0x01CE
	jr Unknown_0x0207

Unknown_0x01DD:
	bit 1,a
	jr z,Unknown_0x01F4
	ld a,[$DA24]
	ld sp,$C300

Unknown_0x01E7:
	pop hl
	pop bc
	ld [hl],c
	inc l
	ld [hl],b
	add hl,de
	pop bc
	ld [hl],c
	inc l
	ld [hl],b
	dec a
	jr nz,Unknown_0x01E7

Unknown_0x01F4:
	ld a,[$DA23]
	ld sp,$C200

Unknown_0x01FA:
	pop hl
	pop bc
	ld [hl],c
	inc l
	ld [hl],b
	add hl,de
	pop bc
	ld [hl],c
	inc l
	ld [hl],b
	dec a
	jr nz,Unknown_0x01FA

Unknown_0x0207:
	ld sp,$DA25
	pop hl
	ld sp,hl
	xor a
	ld [$DA27],a

Unknown_0x0210:
	xor a
	ld [$FF00+$45],a
	ld hl,$DA14
	ld a,$A4
	ld [hli],a
	ld [hl],$02
	ld [$DA18],sp
	ld sp,$DA1A
	pop de
	pop hl
	ld c,h
	ld h,$C4
	ld a,[$FF00+$92]
	ld b,a
	pop af
	reti

Unknown_0x022B:
	ld a,l
	cp b
	jr z,Unknown_0x023E

Unknown_0x022F:
	ld e,[hl]
	inc l
	ld d,[hl]
	inc l
	ld c,[hl]
	inc l

Unknown_0x0235:
	ld a,[hl]
	ld [de],a
	inc l
	inc de
	dec c
	jr nz,Unknown_0x0235
	jr Unknown_0x022B

Unknown_0x023E:
	di
	cp b
	jr z,Unknown_0x0245
	ei
	jr Unknown_0x022F

Unknown_0x0245:
	ld h,c
	ld bc,$022B
	push bc
	push af
	push hl
	push de

Unknown_0x024D:
	ld sp,$DA18
	pop hl
	ld sp,hl
	ld a,[$DA29]
	ld [$FF00+$45],a
	ld hl,$DA14
	ld a,[$DA16]
	ld [hli],a
	ld a,[$DA17]
	ld [hl],a
	ld hl,$FF40
	ld a,[$DA2B]
	or a
	jr z,Unknown_0x026F
	res 1,[hl]
	jr Unknown_0x0271

Unknown_0x026F:
	set 1,[hl]

Unknown_0x0271:
	ld a,[$FF00+$0F]
	and $FD
	ld [$FF00+$0F],a
	ld a,[$FF00+$FF]
	and $FE
	ld [$FF00+$FF],a
	ei
	call $DA10
	xor a
	ld [$DA0F],a
	ld a,$01
	ld [$DA0C],a

Unknown_0x028A:
	ld a,[$FF00+$A4]
	push af
	ld a,$00
	call ChangeBankAndHRAM
	call Unknown_0x2BFD
	pop af
	call ChangeBankAndHRAM
	ld a,[$FF00+$FF]
	or $01
	ld [$FF00+$FF],a

Unknown_0x029F:
	pop de
	pop bc
	pop hl
	pop af
	reti
	ld h,c
	push af
	push hl
	push de
	jr Unknown_0x024D
	push af
	push hl
	push bc
	push de
	ld hl,$FF40
	bit 5,[hl]
	jr z,Unknown_0x029F
	ld b,$0F

Unknown_0x02B7:
	nop
	dec b
	jr nz,Unknown_0x02B7
	res 1,[hl]
	ld a,$E4
	ld [$FF00+$47],a
	jp Unknown_0x029F
	push af
	push hl
	push bc
	push de
	ld hl,$FF40
	ld a,[hl]
	set 3,a
	res 1,a
	ld b,$0C

Unknown_0x02D2:
	nop
	dec b
	jr nz,Unknown_0x02D2
	ld [hl],a
	xor a
	ld hl,$FF42
	ld [hli],a
	ld [hl],a
	jp Unknown_0x029F
	push af
	push hl
	push bc
	push de
	ld hl,$FF40
	ld a,[hl]
	res 3,a
	set 1,a
	ld b,$0C

Unknown_0x02EE:
	nop
	dec b
	jr nz,Unknown_0x02EE
	ld [hl],a
	ld hl,$DA2E
	ld a,[hli]
	ld [$FF00+$42],a
	ld a,[hl]
	ld [$FF00+$43],a
	ld hl,$DA14
	ld a,$C4
	ld [hli],a
	ld [hl],$02
	ld a,[$DA2A]
	ld [$FF00+$45],a
	jp Unknown_0x029F
	push af
	push hl
	push bc
	push de
	ld a,[$DA2D]
	ld hl,$FF43
	ld b,$0F

Unknown_0x0318:
	nop
	dec b
	jr nz,Unknown_0x0318
	ld [hl],a
	jp Unknown_0x029F

UnknownData_0x0320:
INCBIN "baserom.gb", $0320, $0333 - $0320

Unknown_0x0333:
	ld a,$01
	ld [$DA0D],a
	ld a,[$FF00+$40]
	bit 7,a
	jp z,Unknown_0x028A
	jp Unknown_0x029F
	ret

Unknown_0x0343:
	ld hl,$DA0C

Unknown_0x0346:
	di
	bit 0,[hl]
	jr nz,Unknown_0x034F
	db $76;halt
	ei
	jr Unknown_0x0346

Unknown_0x034F:
	ei
	ld [hl],$00
	ld hl,$DA0E
	inc [hl]
	ret

Unknown_0x0357:
	ld a,[$DA3E]
	ld [$FF00+$84],a
	ld a,[$DEED]
	or a
	jr nz,Unknown_0x0369
	ld b,$01
	ld hl,$DA3E
	jr Unknown_0x0386

Unknown_0x0369:
	ld a,[$DA38]
	or a
	ret nz
	ld b,$02
	ld a,[$FF00+$00]
	ld c,a
	jr Unknown_0x037A

Unknown_0x0375:
	ld a,[$FF00+$00]
	cp c
	jr z,Unknown_0x03B2

Unknown_0x037A:
	cpl
	and $03
	add a,a
	add a,a
	ld e,a
	ld d,$00
	ld hl,$DA3E
	add hl,de

Unknown_0x0386:
	ld e,[hl]
	ld a,$20
	ld [$FF00+$00],a
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	swap a
	and $F0
	ld d,a
	ld a,$10
	ld [$FF00+$00],a
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	and $0F
	or d
	cpl
	call Unknown_0x041E
	ld a,$30
	ld [$FF00+$00],a
	dec b
	jr nz,Unknown_0x0375

Unknown_0x03B2:
	ld a,[$DA3A]
	or a
	jp z,Unknown_0x03F8
	ld hl,$DA3C
	ld a,[hli]
	ld b,[hl]
	ld c,a
	cp $FE
	jr nz,Unknown_0x03CA
	ld a,b
	cp $BE
	jr nz,Unknown_0x03CA
	dec bc
	dec bc

Unknown_0x03CA:
	ld a,[$DA3A]
	cp $02
	jr z,Unknown_0x03D1

Unknown_0x03D1:
	ld a,[$DA3B]
	dec a
	jr nz,Unknown_0x03E2
	inc bc
	inc bc
	inc bc
	ld a,[bc]
	dec bc
	ld hl,$DA3C
	ld [hl],c
	inc hl
	ld [hl],b

Unknown_0x03E2:
	ld [$DA3B],a
	ld a,[$FF00+$A5]
	ld e,a
	ld a,[bc]
	ld hl,$FFA5
	call Unknown_0x041E
	ld b,$04
	ld hl,$DA42
	ld c,$A9
	jr Unknown_0x03FF

Unknown_0x03F8:
	ld b,$08
	ld hl,$DA3E
	ld c,$A5

Unknown_0x03FF:
	ld a,[hli]
	ld [$FF00+c],a
	inc c
	dec b
	jr nz,Unknown_0x03FF
	ld a,[$FF00+$A5]
	cp $0F
	ret nz
	ld a,[$FF00+$A6]
	cp $0F
	ret z
	or a
	ret z
	ld e,$34
	ld hl,$6002
	ld a,$1E
	call CallForeignBankNoInturrupts
	jp Start

Unknown_0x041E:
	ld d,a
	ld [hli],a
	xor e
	and d
	ld [hli],a
	jr z,Unknown_0x0429
	ld [hli],a
	ld [hl],$14
	ret

Unknown_0x0429:
	inc hl
	or [hl]
	jr z,Unknown_0x0432
	dec [hl]
	dec hl
	ld [hl],$00
	ret

Unknown_0x0432:
	ld [hl],$03
	dec hl
	ld [hl],d
	ret

Unknown_0x0437:
	call Unknown_0x0496
	call Unknown_0x04AE
	call Unknown_0x0343
	ld d,$01
	ld hl,$5FEB
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld hl,$5DFF
	ld a,$1E
	call CallForeignBankNoInturrupts

Unknown_0x0452:
	ld a,$01
	ld [$FF00+$B5],a

Unknown_0x0456:
	ld a,[$FF00+$B5]
	or a
	jr nz,Unknown_0x0456
	di
	ld hl,$FF0F
	res 0,[hl]
	res 1,[hl]
	ld a,$FF
	ld [$FF00+$05],a
	ld a,$04
	ld [$FF00+$07],a
	ei
	ret

Unknown_0x046D:
	call Unknown_0x0483
	ld hl,$5DFF
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld d,$00
	ld hl,$5FEB
	ld a,$1E
	call CallForeignBankNoInturrupts
	ret

Unknown_0x0483:
	ld hl,$DA0D
	ld [hl],$00

Unknown_0x0488:
	db $76;halt
	bit 0,[hl]
	jr z,Unknown_0x0488
	xor a
	ld [$FF00+$07],a
	ld hl,$FF40
	set 7,[hl]
	ret

Unknown_0x0496:
	ld a,[$DA28]
	ld de,$DA23
	rra
	jr nc,Unknown_0x04A0
	inc de

Unknown_0x04A0:
	xor a
	ld [$DA09],a
	ld [$DA22],a
	ld [de],a
	ld hl,$DA06
	ld [hli],a
	ld [hl],a
	ret

Unknown_0x04AE:
	ld a,[$DA08]
	ld c,a
	ld h,a
	ld de,$DA0A
	rra
	jr nc,Unknown_0x04BA
	inc de

Unknown_0x04BA:
	ld a,[de]
	ld b,a
	ld a,[$DA09]
	ld l,a
	ld [de],a
	sub b
	jr nc,Unknown_0x04CA
	ld b,a
	xor a

Unknown_0x04C6:
	ld [hli],a
	inc b
	jr nz,Unknown_0x04C6

Unknown_0x04CA:
	srl h
	ld hl,$DA02
	jr nc,Unknown_0x04D4
	ld hl,$DA04

Unknown_0x04D4:
	ld a,[$DA00]
	ld b,a
	ld a,[$DA06]
	add a,b
	ld [hli],a
	ld a,[$DA01]
	ld b,a
	ld a,[$DA07]
	add a,b
	ld [hli],a
	ld a,[$DA28]
	ld b,a
	ld de,$DA23
	rra
	jr nc,Unknown_0x04F1
	inc de

Unknown_0x04F1:
	ld a,[de]
	or a
	jr z,Unknown_0x050E
	bit 0,b
	ld hl,$DA27
	di
	jr nz,Unknown_0x0503
	set 0,[hl]
	res 2,[hl]
	jr Unknown_0x0507

Unknown_0x0503:
	set 1,[hl]
	set 2,[hl]

Unknown_0x0507:
	ei
	ld a,b
	xor $01
	ld [$DA28],a

Unknown_0x050E:
	ld a,c
	and $01
	inc a
	ld [$DA0F],a
	ld a,c
	xor $01
	ld [$DA08],a
	ret

Unknown_0x051C:
	ld a,[$DA09]
	rrca
	rrca
	add a,[hl]
	cp $29
	ret nc
	ld a,[de]
	dec e
	or a
	jr z,Unknown_0x0532
	inc a
	ret nz
	ld a,[de]
	cp $C0
	ret c
	jr Unknown_0x0536

Unknown_0x0532:
	ld a,[de]
	cp $C0
	ret nc

Unknown_0x0536:
	add a,$10
	ld c,a
	dec e
	ld a,[de]
	dec e
	or a
	jr z,Unknown_0x0547
	inc a
	ret nz
	ld a,[de]
	cp $CC
	ret c
	jr Unknown_0x054B

Unknown_0x0547:
	ld a,[de]
	cp $CC
	ret nc

Unknown_0x054B:
	add a,$08
	ld b,a
	inc hl
	ld a,[$DA08]
	ld d,a
	ld a,[$DA09]
	ld e,a
	ld a,[$FF00+$93]
	rla
	jr c,Unknown_0x058B

Unknown_0x055C:
	ld a,[hli]
	add a,c
	cp $A0
	jr nc,Unknown_0x0581
	ld [de],a
	inc e
	ld a,[hli]
	add a,b
	cp $A8
	jr nc,Unknown_0x0586
	ld [de],a
	inc e
	ld a,[$FF00+$94]
	add a,[hl]
	inc hl
	ld [de],a
	inc e
	ld a,[$FF00+$95]
	xor [hl]
	inc hl
	ld [de],a
	inc e

Unknown_0x0578:
	bit 0,a
	jr z,Unknown_0x055C
	ld a,e
	ld [$DA09],a
	ret

Unknown_0x0581:
	inc hl
	inc hl
	ld a,[hli]
	jr Unknown_0x0578

Unknown_0x0586:
	dec e
	inc hl
	ld a,[hli]
	jr Unknown_0x0578

Unknown_0x058B:
	ld a,[hli]
	add a,c
	cp $A0
	jr nc,Unknown_0x05B5
	ld [de],a
	inc e
	ld a,[hli]
	cpl
	sub $07
	add a,b
	cp $A8
	jr nc,Unknown_0x05BA
	ld [de],a
	inc e
	ld a,[$FF00+$94]
	add a,[hl]
	inc hl
	ld [de],a
	inc e
	ld a,[$FF00+$95]
	xor [hl]
	xor $20
	inc hl
	ld [de],a
	inc e

Unknown_0x05AC:
	bit 0,a
	jr z,Unknown_0x058B
	ld a,e
	ld [$DA09],a
	ret

Unknown_0x05B5:
	inc hl
	inc hl
	ld a,[hli]
	jr Unknown_0x05AC

Unknown_0x05BA:
	dec e
	inc hl
	ld a,[hli]
	jr Unknown_0x05AC

Unknown_0x05BF:
	ld [$FF00+$96],a
	ld a,[$FF00+$A4]
	push af
	ld a,[$FF00+$96]
	call ChangeBankNoInturrupts
	call LoadDataToRamInit
	pop af
	jr ChangeBankNoInturrupts

CallForeignBankNoInturrupts:
	ld [$FF00+$96],a
	ld a,[$FF00+$A4]
	push af
	ld a,[$FF00+$96]
	call ChangeBankNoInturrupts
	call Unknown_0x0620
	pop af

ChangeBankNoInturrupts:
	di
	ld [MBC1RomBank],a
	ld [$FF00+$A4],a
	ei
	ret

CallForeignBank:
	;A is the bank being switched to
	ld [$FF00+$96],a
	ld a,[$FF00+$A4] ;The previous bank is stored
	push af
	ld a,[$FF00+$96]
	call ChangeBankAndHRAM
	call Unknown_0x0620
	pop af 

ChangeBankAndHRAM:
	;Changes the bank and saves the new bank to HRAM
	ld [MBC1RomBank],a
	ld [$FF00+$A4],a
	ret

Unknown_0x05F9:
	di
	ld a,l
	ld [$DA11],a
	ld a,h
	ld [$DA12],a
	ei
	ret

StoreHLToRam:
	ld a,l
	ld [$DA11],a
	ld a,h
	ld [$DA12],a
	ret

Unknown_0x060D:
	ld [$FF00+$96],a
	ld a,[$FF00+$A4]
	push af
	ld a,[$FF00+$96]
	call ChangeBankNoInturrupts
	call StoreDEToRAM
	pop af
	jr ChangeBankNoInturrupts

UnknownData_0x061D:
INCBIN "baserom.gb", $061D, $0620 - $061D

Unknown_0x0620:
	jp hl

LoadDataToRamInit:
	;HL is the location of the Data being loaded
	;DE is the destination for the data
	;BC is the length of the data in bytes
	inc b
	inc c
	jr LoadDataToRamDec

LoadDataToRam:
	ld a,[hli]
	ld [de],a
	inc de

LoadDataToRamDec:
	dec c
	jr nz,LoadDataToRam
	dec b
	jr nz,LoadDataToRam
	ret

LoadByteToRamInit:
	;HL is the location data is being loaded to
	;BC is the number of bytes to write to HL
	;A is the byte being loaded.
	inc b
	inc c
	jr LoadByteToRamDec

LoadByteToRam:
	ld [hli],a

LoadByteToRamDec:
	dec c
	jr nz,LoadByteToRam
	dec b
	jr nz,LoadByteToRam
	ret

Unknown_0x063B:
	call Unknown_0x0647
	push bc
	ld b,a
	ld c,e
	call Unknown_0x2885
	ld a,b
	pop bc
	ret

Unknown_0x0647:
	push de
	push hl
	ld hl,$DA30
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld d,h
	ld e,l
	add hl,hl
	add hl,hl
	add hl,de
	ld de,$3711
	add hl,de
	ld a,l
	ld [$DA30],a
	ld a,h
	ld [$DA31],a
	pop hl
	pop de
	ret

Unknown_0x0663:
	ld hl,$066D
	add a,l
	ld l,a
	jr nc,Unknown_0x066B
	inc h

Unknown_0x066B:
	ld a,[hl]
	ret

UnknownData_0x066D:
INCBIN "baserom.gb", $066D, $0675 - $066D

Unknown_0x0675:
	push de
	add a,$03
	ld e,a
	ld a,[$FF00+$92]
	ld d,a
	ld a,[$DA1C]
	sub d
	dec a
	cp e
	pop de
	ret
	ld a,[$DA0F]
	or a
	jr nz,Unknown_0x0693
	ld a,[$DA39]
	or a
	ret z
	xor a
	ld [$DA39],a

Unknown_0x0693:
	ld hl,$DA33
	dec [hl]
	ret nz
	ld a,[$DA34]
	cp $0C
	jr z,Unknown_0x06BF
	ld e,a
	ld d,$CD
	ld a,[$DA38]
	or a
	jr nz,Unknown_0x06C9
	ld hl,$CD00
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	inc e
	ld [hli],a
	ld a,[de]
	inc e
	ld [hl],a
	ld a,e
	ld [$DA34],a

Unknown_0x06B8:
	ld a,[$DA32]
	ld [$DA33],a
	ret

Unknown_0x06BF:
	xor a

Unknown_0x06C0:
	ld [$DA36],a
	ld hl,$0342
	jp StoreHLToRam

Unknown_0x06C9:
	ld a,[$CD0C]
	or a
	jr nz,Unknown_0x06D5
	xor a
	ld [$DA38],a
	jr Unknown_0x06C0

Unknown_0x06D5:
	dec a
	ld [$CD0C],a
	jr nz,Unknown_0x06EF
	ld a,[$DA37]
	cp $FF
	jr z,Unknown_0x06EF
	cp $01
	ld a,$FF
	jr z,Unknown_0x06E9
	xor a

Unknown_0x06E9:
	ld hl,$CD00
	ld [hli],a
	ld [hli],a
	ld [hl],a

Unknown_0x06EF:
	ld a,[de]
	ld h,a
	inc e
	ld a,e
	ld [$DA34],a
	ld a,[$FF00+$A4]
	push af
	ld a,$1E
	call ChangeBankAndHRAM
	ld e,h
	call Unknown_0x7A00C
	pop af
	call ChangeBankAndHRAM
	jr Unknown_0x06B8

StoreDEToRAM:
	ld a,e
	ld [$FF00+$97],a
	ld a,d
	ld [$FF00+$98],a

Unknown_0x070E:
	ld a,[hl]
	cp $FF
	ret z
	and $E0
	cp $E0
	jr nz,Unknown_0x0728
	ld a,[hl]
	add a,a
	add a,a
	add a,a
	and $E0
	push af
	ld a,[hli]
	and $03
	ld b,a
	ld a,[hli]
	ld c,a
	inc bc
	jr Unknown_0x0730

Unknown_0x0728:
	push af
	ld a,[hli]
	and $1F
	ld c,a
	ld b,$00
	inc c

Unknown_0x0730:
	inc b
	inc c
	pop af
	bit 7,a
	jr nz,Unknown_0x077B
	cp $20
	jr z,Unknown_0x074F
	cp $40
	jr z,Unknown_0x075B
	cp $60
	jr z,Unknown_0x076E

Unknown_0x0743:
	dec c
	jr nz,Unknown_0x074A
	dec b
	jp z,Unknown_0x070E

Unknown_0x074A:
	ld a,[hli]
	ld [de],a
	inc de
	jr Unknown_0x0743

Unknown_0x074F:
	ld a,[hli]

Unknown_0x0750:
	dec c
	jr nz,Unknown_0x0757
	dec b
	jp z,Unknown_0x070E

Unknown_0x0757:
	ld [de],a
	inc de
	jr Unknown_0x0750

Unknown_0x075B:
	dec c
	jr nz,Unknown_0x0762
	dec b
	jp z,Unknown_0x076A

Unknown_0x0762:
	ld a,[hli]
	ld [de],a
	inc de
	ld a,[hld]
	ld [de],a
	inc de
	jr Unknown_0x075B

Unknown_0x076A:
	inc hl
	inc hl
	jr Unknown_0x070E

Unknown_0x076E:
	ld a,[hli]

Unknown_0x076F:
	dec c
	jr nz,Unknown_0x0776
	dec b
	jp z,Unknown_0x070E

Unknown_0x0776:
	ld [de],a
	inc de
	inc a
	jr Unknown_0x076F

Unknown_0x077B:
	push hl
	push af
	ld a,[hli]
	ld l,[hl]
	ld h,a
	ld a,[$FF00+$97]
	add a,l
	ld l,a
	ld a,[$FF00+$98]
	adc a,h
	ld h,a
	pop af
	cp $80
	jr z,Unknown_0x0795
	cp $A0
	jr z,Unknown_0x07A0
	cp $C0
	jr z,Unknown_0x07B2

Unknown_0x0795:
	dec c
	jr nz,Unknown_0x079B
	dec b
	jr z,Unknown_0x07BE

Unknown_0x079B:
	ld a,[hli]
	ld [de],a
	inc de
	jr Unknown_0x0795

Unknown_0x07A0:
	dec c
	jr nz,Unknown_0x07A7
	dec b
	jp z,Unknown_0x07BE

Unknown_0x07A7:
	ld a,[hli]
	push hl
	ld h,$D9
	ld l,a
	ld a,[hl]
	pop hl
	ld [de],a
	inc de
	jr Unknown_0x07A0

Unknown_0x07B2:
	dec c
	jr nz,Unknown_0x07B9
	dec b
	jp z,Unknown_0x07BE

Unknown_0x07B9:
	ld a,[hld]
	ld [de],a
	inc de
	jr Unknown_0x07B2

Unknown_0x07BE:
	pop hl
	inc hl
	inc hl
	jp Unknown_0x070E

Unknown_0x07C4:
	ld [$FF00+$84],a

Unknown_0x07C6:
	push de
	push bc
	ld b,h
	ld c,l

Unknown_0x07CA:
	call Unknown_0x0B94
	jr nc,Unknown_0x07D8
	pop hl
	pop de
	ld h,$00
	ld a,h
	ld [$DA4A],a
	ret

Unknown_0x07D8:
	ld a,h
	ld [$DA4A],a
	ld l,$22
	ld [hl],$42
	inc l
	ld [hl],$03
	ld a,$80
	ld l,$03
	ld [hl],a
	ld l,$06
	ld [hl],a
	pop bc
	ld l,$04
	ld [hl],c
	inc l
	ld [hl],b
	pop bc
	ld l,$07
	ld [hl],c
	inc l
	ld [hl],b
	call Unknown_0x0C06
	ld a,[$FF00+$84]

Unknown_0x07FC:
	ld l,$00
	ld [hl],a
	ld e,a
	ld d,$00
	sla a
	rl d
	add a,e
	ld e,a
	ld a,$77
	adc a,d
	ld d,a
	xor a
	ld l,$0D
	ld [hli],a
	ld [hl],a
	ld l,$0F
	ld [hli],a
	ld [hl],a
	ld l,$11
	ld [hli],a
	ld [hl],a
	ld l,$45
	ld [hli],a
	ld [hl],a
	ld l,$4A
	ld [hli],a
	ld [hl],a
	ld a,$FF
	ld l,$15
	ld [hl],a
	ld l,$49
	ld [hl],a
	ld l,$48
	ld [hl],a
	ld a,[$FF00+$A4]
	ld [$FF00+$84],a
	ld a,$07
	call ChangeBankNoInturrupts
	ld a,[de]
	ld c,a
	inc de
	ld a,[de]
	ld b,a
	inc de
	ld a,[de]
	ld e,a
	ld a,[$FF00+$84]
	call ChangeBankNoInturrupts
	call Unknown_0x0855
	ret

Unknown_0x0846:
	ld a,[$FF00+$9A]
	ld h,a

Unknown_0x0849:
	ld a,h
	cp $A0
	ret c
	cp $B3
	ret nc
	ld l,$00
	ld a,[hl]
	inc a
	ret z

Unknown_0x0855:
	call Unknown_0x0C2A
	ld l,$19
	ld [hl],e
	inc l
	ld [hl],b
	inc l
	ld [hl],c
	xor a
	ld l,$24
	ld [hl],a
	ld l,$47
	ld [hl],a
	ld l,$28
	ld [hl],$39
	ret

Unknown_0x086B:
	ld a,[$DA46]
	jr Unknown_0x087F

Unknown_0x0870:
	ld [$FF00+$9A],a
	ld h,a
	ld l,$01
	ld a,[hl]
	ld [$DA49],a
	call Unknown_0x08A1
	ld a,[$DA49]

Unknown_0x087F:
	or a
	jr nz,Unknown_0x0870
	ld a,[$DA46]
	jr Unknown_0x089D

Unknown_0x0887:
	ld [$FF00+$9A],a
	ld d,a
	ld e,$01
	ld a,[de]
	ld [$DA49],a
	ld e,$22
	ld a,[de]
	ld l,a
	inc e
	ld a,[de]
	ld h,a
	call Unknown_0x0620
	ld a,[$DA49]

Unknown_0x089D:
	or a
	jr nz,Unknown_0x0887
	ret

Unknown_0x08A1:
	ld l,$19
	ld a,$24
	ld [$FF00+$9B],a
	ld e,a

Unknown_0x08A8:
	ld a,[hli]
	ld b,a
	and $A0
	jr nz,Unknown_0x08B9
	bit 6,b
	jr nz,Unknown_0x08DE
	ld d,h
	ld a,[de]
	or a
	jr z,Unknown_0x08C6
	dec a
	ld [de],a

Unknown_0x08B9:
	inc l
	inc l

Unknown_0x08BB:
	ld a,[$FF00+$9B]
	cp $26
	ret nc
	inc a
	ld [$FF00+$9B],a
	ld e,a
	jr Unknown_0x08A8

Unknown_0x08C6:
	ld a,b
	call ChangeBankNoInturrupts
	ld a,[hli]
	ld b,a
	ld c,[hl]
	push hl

Unknown_0x08CE:
	ld a,[bc]
	inc bc
	add a,a
	ld h,$3F
	ld l,a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

Unknown_0x08D8:
	pop hl
	ld [hl],c
	dec l
	ld [hl],b
	jr Unknown_0x08B9

Unknown_0x08DE:
	ld a,b
	and $1F
	call ChangeBankNoInturrupts
	ld a,[hli]
	ld b,a
	ld a,[hli]
	push hl
	ld d,h
	ld l,a
	ld h,b
	call Unknown_0x0620
	pop hl
	jr Unknown_0x08BB
	ld h,d
	push de
	call Unknown_0x0BBA
	pop de
	jp Unknown_0x08D8
	ld a,[$FF00+$9B]
	sub $24
	ld l,a
	add a,a
	add a,l
	add a,$19
	ld l,a
	ld h,d
	set 7,[hl]
	jp Unknown_0x08D8
	ld a,[$FF00+$9B]
	ld e,a
	ld a,[bc]
	inc bc
	dec a
	ld [de],a
	jp Unknown_0x08D8
	ld h,d
	ld a,[$FF00+$9B]
	ld l,a
	ld e,$27
	ld a,[de]
	dec a
	ld [hl],a
	jp Unknown_0x08D8
	ld a,[bc]
	inc bc
	ld e,$15
	ld [de],a
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld e,$15
	ld [de],a
	ld a,[$FF00+$9B]
	ld e,a
	ld a,[bc]
	inc bc
	dec a
	ld [de],a
	jp Unknown_0x08D8
	ld a,[bc]
	inc bc
	ld e,a
	ld a,[bc]
	inc bc
	ld [de],a
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld e,a
	ld a,[de]
	ld e,$27
	ld [de],a
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld e,a
	ld h,d
	ld l,$27
	ld a,[hl]
	ld [de],a
	jp Unknown_0x08CE
	ld e,$25
	xor a
	ld [de],a
	ld h,d
	ld l,$1E
	ld a,[bc]
	inc bc
	ld [hld],a
	ld a,[bc]
	inc bc
	ld [hld],a
	ld a,[bc]
	inc bc
	ld [hl],a
	jp Unknown_0x08CE

UnknownData_0x0968:
INCBIN "baserom.gb", $0968, $096C - $0968
	ld h,d
	ld h,d
	ld l,$21
	ld a,[bc]
	inc bc
	ld [hld],a
	ld a,[bc]
	inc bc
	ld [hld],a
	ld a,[bc]
	inc bc
	ld [hl],a
	jp Unknown_0x08CE
	ld e,$22
	ld a,[bc]
	inc bc
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	ld [de],a
	jp Unknown_0x08CE
	ld h,d
	ld l,$18
	ld a,[bc]
	inc bc
	ld [hld],a
	ld a,[bc]
	inc bc
	ld [hld],a
	ld a,[bc]
	inc bc
	ld [hl],a
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld e,a
	ld a,[bc]
	ld b,a
	ld c,e
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld l,a
	ld a,[bc]
	inc bc
	ld h,a
	ld a,[$FF00+$9B]
	sub $24
	ld e,a
	add a,a
	add a,e
	add a,$19
	ld e,a
	ld a,[bc]
	ld [de],a
	call ChangeBankNoInturrupts
	ld b,h
	ld c,l
	jp Unknown_0x08CE
	ld e,$27
	ld a,[de]
	or a
	jr nz,Unknown_0x09C9
	ld a,[bc]
	inc bc
	ld e,a
	ld a,[bc]
	ld b,a
	ld c,e
	jp Unknown_0x08CE

Unknown_0x09C9:
	inc bc
	inc bc
	jp Unknown_0x08CE
	ld e,$27
	ld a,[de]
	or a
	jr z,Unknown_0x09DD
	ld a,[bc]
	inc bc
	ld e,a
	ld a,[bc]
	ld b,a
	ld c,e
	jp Unknown_0x08CE

Unknown_0x09DD:
	inc bc
	inc bc
	jp Unknown_0x08CE
	ld h,b
	ld l,c
	ld e,$27
	ld a,[de]
	cp [hl]
	jr nc,Unknown_0x09F1
	inc hl
	ld a,[hli]
	ld c,a
	ld b,[hl]
	jp Unknown_0x08CE

Unknown_0x09F1:
	inc bc
	inc bc
	inc bc
	jp Unknown_0x08CE
	ld h,b
	ld l,c
	ld e,$27
	ld a,[de]
	cp [hl]
	jr c,Unknown_0x0A06
	inc hl
	ld a,[hli]
	ld c,a
	ld b,[hl]
	jp Unknown_0x08CE

Unknown_0x0A06:
	inc bc
	inc bc
	inc bc
	jp Unknown_0x08CE
	ld e,$0D
	ld a,[bc]
	inc bc
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	ld [de],a
	jp Unknown_0x08CE
	ld e,$0F
	ld a,[bc]
	inc bc
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	ld [de],a
	jp Unknown_0x08CE
	xor a
	ld h,d
	ld l,$0D
	ld [hli],a
	ld [hl],a
	ld l,$0F
	ld [hli],a
	ld [hl],a
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld e,$11
	ld [de],a
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld e,$12
	ld [de],a
	jp Unknown_0x08CE
	ld a,[bc]
	ld e,a
	inc bc
	ld h,d
	ld l,$28
	ld a,[hl]
	dec a
	ld l,a
	ld [hl],b
	dec l
	ld [hl],c
	dec l
	ld [hl],e
	ld e,$28
	ld a,l
	ld [de],a
	jp Unknown_0x08CE
	ld h,d
	ld l,$28
	ld a,[hl]
	ld l,a
	dec [hl]
	jr z,Unknown_0x0A65
	inc l
	ld c,[hl]
	inc l
	ld b,[hl]
	jp Unknown_0x08CE

Unknown_0x0A65:
	inc l
	inc l
	inc l
	ld e,$28
	ld a,l
	ld [de],a
	jp Unknown_0x08CE
	ld h,d
	ld l,$28
	ld a,[hl]
	dec a
	ld l,a
	ld a,[bc]
	inc bc
	ld e,a
	ld a,[bc]
	inc bc
	ld [hl],b
	dec l
	ld [hl],c
	ld b,a
	ld c,e
	ld e,$28
	ld a,l
	ld [de],a
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld l,a
	ld a,[bc]
	inc bc
	ld h,a
	push hl
	ld a,[$FF00+$9B]
	sub $24
	ld e,a
	add a,a
	add a,e
	add a,$19
	ld e,a
	ld a,[de]
	ld [$FF00+$84],a
	ld a,[bc]
	inc bc
	ld [de],a
	call ChangeBankNoInturrupts
	ld h,d
	ld l,$28
	ld a,[hl]
	dec a
	ld l,a
	ld a,[$FF00+$84]
	ld [hld],a
	ld [hl],b
	dec l
	ld [hl],c
	pop bc
	ld e,$28
	ld a,l
	ld [de],a
	jp Unknown_0x08CE
	ld h,d
	ld l,$28
	ld a,[hl]
	ld l,a
	ld c,[hl]
	inc l
	ld b,[hl]
	inc l
	ld e,$28
	ld a,l
	ld [de],a
	jp Unknown_0x08CE
	ld h,d
	ld l,$28
	ld a,[hl]
	ld l,a
	ld c,[hl]
	inc l
	ld b,[hl]
	inc l
	ld a,[$FF00+$9B]
	sub $24
	ld e,a
	add a,a
	add a,e
	add a,$19
	ld e,a
	ld a,[hli]
	ld [de],a
	call ChangeBankNoInturrupts
	ld e,$28
	ld a,l
	ld [de],a
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld l,a
	ld a,[bc]
	inc bc
	ld h,a
	call Unknown_0x0620
	jp Unknown_0x08CE
	ld a,[bc]
	inc bc
	ld l,a
	ld a,[bc]
	inc bc
	ld h,a
	call Unknown_0x0620
	ld a,[$FF00+$9B]
	ld e,a
	ld a,[de]
	dec a
	ld [de],a
	jp Unknown_0x08D8
	call Unknown_0x1099
	jp Unknown_0x08CE
	call Unknown_0x10B6
	jp Unknown_0x08CE
	call Unknown_0x1018
	jp Unknown_0x08CE
	call Unknown_0x1EC0
	jp Unknown_0x08CE
	call Unknown_0x1011
	jp Unknown_0x08CE
	ld h,b
	ld l,c
	ld e,$27
	ld a,[de]
	cp [hl]
	jr nc,Unknown_0x0B33
	inc hl
	rlca
	ld c,a
	ld b,$00
	add hl,bc
	ld a,[hli]
	ld c,a
	ld b,[hl]
	jp Unknown_0x08CE

Unknown_0x0B33:
	ld a,[hli]
	rlca
	ld c,a
	ld b,$00
	add hl,bc
	ld b,h
	ld c,l
	jp Unknown_0x08CE
	push bc
	ld a,[bc]
	inc bc
	rlca
	add a,c
	ld c,a
	jr nc,Unknown_0x0B47
	inc b

Unknown_0x0B47:
	ld h,d
	ld l,$28
	ld a,[hl]
	dec a
	ld l,a
	ld [hl],b
	dec l
	ld [hl],c
	ld e,$28
	ld a,l
	ld [de],a
	pop bc
	ld h,b
	ld l,c
	ld e,$27
	ld a,[de]
	cp [hl]
	jr nc,Unknown_0x0B69
	inc hl
	rlca
	ld c,a
	ld b,$00
	add hl,bc
	ld a,[hli]
	ld c,a
	ld b,[hl]
	jp Unknown_0x08CE

Unknown_0x0B69:
	ld a,[hli]
	rlca
	ld c,a
	ld b,$00
	add hl,bc
	ld b,h
	ld c,l
	jp Unknown_0x08CE
	ld e,$03
	ld a,$80
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	ld [de],a
	jp Unknown_0x08CE
	ld e,$06
	ld a,$80
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	ld [de],a
	inc e
	ld a,[bc]
	inc bc
	ld [de],a
	jp Unknown_0x08CE

Unknown_0x0B94:
	ld a,[$DA48]
	or a
	jr z,Unknown_0x0BA8
	ld h,a
	ld l,$01

Unknown_0x0B9D:
	cp b
	jr c,Unknown_0x0BA3
	cp c
	jr c,Unknown_0x0BAA

Unknown_0x0BA3:
	ld h,a
	ld a,[hl]
	or a
	jr nz,Unknown_0x0B9D

Unknown_0x0BA8:
	scf
	ret

Unknown_0x0BAA:
	cp h
	jr nz,Unknown_0x0BB3
	ld a,[hl]
	ld [$DA48],a
	and a
	ret

Unknown_0x0BB3:
	ld d,h
	ld e,l
	ld h,a
	ld a,[hl]
	ld [de],a
	and a
	ret

Unknown_0x0BBA:
	ld a,h
	cp $A0
	ret c
	cp $B3
	ret nc
	ld l,$00
	ld a,[hl]
	inc a
	ret z
	ld [hl],$FF
	call Unknown_0x0C2A
	ld l,$01
	ld a,[hl]
	or a
	ld l,$02
	jr nz,Unknown_0x0BD8
	ld de,$DA47
	jr Unknown_0x0BDA

Unknown_0x0BD8:
	ld d,a
	ld e,l

Unknown_0x0BDA:
	ld a,[hl]
	ld [de],a
	or a
	ld l,$01
	jr nz,Unknown_0x0BE6
	ld de,$DA46
	jr Unknown_0x0BE8

Unknown_0x0BE6:
	ld d,a
	ld e,l

Unknown_0x0BE8:
	ld a,[hl]
	ld [de],a
	ld a,[$DA49]
	cp h
	jr nz,Unknown_0x0BF4
	ld a,[hl]
	ld [$DA49],a

Unknown_0x0BF4:
	ld de,$DA48
	ld a,[de]
	ld l,$01
	ld [hl],a
	ld a,h
	ld [de],a
	ld l,$49
	ld e,[hl]
	ld d,$BB
	xor a
	ld [de],a
	ld d,h
	ret

Unknown_0x0C06:
	ld de,$DA47
	ld a,[de]
	ld l,$02
	ld [hl],a
	ld l,$01
	ld [hl],$00
	or a
	jr nz,Unknown_0x0C1A
	ld a,h
	ld [de],a
	ld [$DA46],a
	ret

Unknown_0x0C1A:
	ld b,h
	ld h,a
	ld [hl],b
	ld a,b
	ld [de],a
	ld h,a
	ld a,[$DA49]
	or a
	ret nz
	ld a,h
	ld [$DA49],a
	ret

Unknown_0x0C2A:
	ld l,$1C
	ld [hl],$80
	ld l,$1F
	ld [hl],$80
	ld l,$25
	ld [hl],$00
	inc l
	ld [hl],$00
	ret

Unknown_0x0C3A:
	call Unknown_0x0C48
	push hl
	ld hl,$747D
	ld a,$02
	call CallForeignBankNoInturrupts
	pop hl
	ret

Unknown_0x0C48:
	xor a
	ld [$FF00+$B4],a
	ld hl,$A06C
	res 0,[hl]
	ld a,[$A054]
	cp $80
	jr c,Unknown_0x0C5C
	ld a,$60
	ld [$A054],a

Unknown_0x0C5C:
	ld h,$A0
	jp Unknown_0x0849

Unknown_0x0C61:
	ld h,d
	ld l,$03
	ld de,$DA4B
	ld bc,$009B
	call LoadDataToRamInit
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x0C71:
	ld e,$03
	ld hl,$DA4B
	ld bc,$009B
	call LoadDataToRamInit
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x0C80:
	ld e,$11
	ld a,[de]

Unknown_0x0C83:
	ld e,$0D
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld a,[de]
	add a,c
	ld [de],a
	inc e
	ld a,[de]
	adc a,b
	ld [de],a
	ret

Unknown_0x0C91:
	ld e,$12
	ld a,[de]

Unknown_0x0C94:
	ld e,$0F
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld a,[de]
	add a,c
	ld [de],a
	inc e
	ld a,[de]
	adc a,b
	ld [de],a
	ret

Unknown_0x0CA2:
	ld h,d
	ld l,$0E
	ld a,[hld]
	rla
	jr c,Unknown_0x0CB7
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	jr c,Unknown_0x0CB7
	ld e,$0C
	jp Unknown_0x0D04

Unknown_0x0CB4:
	ld h,d
	ld l,$0D

Unknown_0x0CB7:
	ld a,[hl]
	add a,e
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hld],a
	rla
	ret c
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	ret c
	ld a,b
	ld [hld],a
	ld [hl],c
	ret

Unknown_0x0CC9:
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x0CD3:
	ld h,d
	ld l,$0E
	ld a,[hld]
	rla
	jr nc,Unknown_0x0CF2
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	jr nc,Unknown_0x0CF2
	ld e,$0C
	jp Unknown_0x0D04

Unknown_0x0CE5:
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x0CEF:
	ld h,d
	ld l,$0D

Unknown_0x0CF2:
	ld a,[hl]
	sub e
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hld],a
	rla
	ret nc
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	ret nc
	ld a,b
	ld [hld],a
	ld [hl],c
	ret

Unknown_0x0D04:
	ld h,d
	ld l,$0E
	ld a,[hld]
	rla
	jr c,Unknown_0x0D17
	ld a,[hl]
	sub e
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hl],a
	ret nc
	xor a
	ld [hld],a
	ld [hl],a
	ret

Unknown_0x0D17:
	ld a,[hl]
	add a,e
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hl],a
	ret nc
	xor a
	ld [hld],a
	ld [hl],a
	ret

Unknown_0x0D23:
	ld h,d
	ld l,$10
	ld a,[hld]
	rla
	jr c,Unknown_0x0D38
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	jr c,Unknown_0x0D38
	ld e,$0C
	jp Unknown_0x0D85

Unknown_0x0D35:
	ld h,d
	ld l,$0F

Unknown_0x0D38:
	ld a,[hl]
	add a,e
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hld],a
	rla
	ret c
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	ret c
	ld a,b
	ld [hld],a
	ld [hl],c
	ret

UnknownData_0x0D4A:
INCBIN "baserom.gb", $0D4A, $0D54 - $0D4A

Unknown_0x0D54:
	ld h,d
	ld l,$10
	ld a,[hld]
	rla
	jr nc,Unknown_0x0D73
	ld a,[hli]
	sub c
	ld a,[hld]
	sbc a,b
	jr nc,Unknown_0x0D73
	ld e,$0C
	jp Unknown_0x0D85

Unknown_0x0D66:
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x0D70:
	ld h,d
	ld l,$0F

Unknown_0x0D73:
	ld a,[hl]
	sub e
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hld],a
	rla
	ret nc
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	ret nc
	ld a,b
	ld [hld],a
	ld [hl],c
	ret

Unknown_0x0D85:
	ld h,d
	ld l,$10
	ld a,[hld]
	rla
	jr c,Unknown_0x0D98
	ld a,[hl]
	sub e
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hl],a
	ret nc
	xor a
	ld [hld],a
	ld [hl],a
	ret

Unknown_0x0D98:
	ld a,[hl]
	add a,e
	ld [hli],a
	ld a,[hl]
	adc a,$00
	ld [hl],a
	ret nc
	xor a
	ld [hld],a
	ld [hl],a
	ret

Unknown_0x0DA4:
	ld e,$0D
	ld h,d
	ld l,$03

Unknown_0x0DA9:
	ld a,[de]
	add a,[hl]
	ld [hli],a
	inc e
	ld a,[de]
	ld b,$00
	bit 7,a
	jr z,Unknown_0x0DB5
	dec b

Unknown_0x0DB5:
	adc a,[hl]
	ld [hli],a
	inc e
	ld a,b
	adc a,[hl]
	ld [hli],a
	ld a,[de]
	add a,[hl]
	ld [hli],a
	inc e
	ld a,[de]
	ld b,$00
	bit 7,a
	jr z,Unknown_0x0DC7
	dec b

Unknown_0x0DC7:
	adc a,[hl]
	ld [hli],a
	inc e
	ld a,b
	adc a,[hl]
	ld [hl],a
	ret
	ld a,[$A06C]
	rra
	jr nc,Unknown_0x0DDE
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1F40A
	jr Unknown_0x0DF0

Unknown_0x0DDE:
	call Unknown_0x0E2C
	ld a,[$A05D]
	cp $00
	jr nz,Unknown_0x0DF0
	ld a,$0B
	call ChangeBankNoInturrupts
	call Unknown_0x2F85B

Unknown_0x0DF0:
	jp Unknown_0x0F22
	call Unknown_0x3467

Unknown_0x0DF6:
	call Unknown_0x0E2C
	jp Unknown_0x0F22
	call Unknown_0x347D
	call Unknown_0x0E4B
	jp Unknown_0x0F22
	call Unknown_0x0F01
	jp Unknown_0x0F22
	call Unknown_0x0E9D
	jp Unknown_0x0F22
	ld a,$08
	call ChangeBankNoInturrupts
	call Unknown_0x217AC
	ret
	ld a,$08
	call ChangeBankNoInturrupts
	call Unknown_0x213CB
	ret
	ld a,$08
	call ChangeBankNoInturrupts
	call Unknown_0x216A6
	ret

Unknown_0x0E2C:
	ld e,$04
	ld hl,$DB51
	ld b,d
	ld c,$09

Unknown_0x0E34:
	ld a,[de]
	sub [hl]
	ld [bc],a
	inc e
	inc hl
	inc c
	ld a,[de]
	sbc a,[hl]
	ld [bc],a
	inc e
	inc e
	inc hl
	inc c
	ld a,[de]
	sub [hl]
	ld [bc],a
	inc e
	inc hl
	inc c
	ld a,[de]
	sbc a,[hl]
	ld [bc],a
	ret

Unknown_0x0E4B:
	ld e,$04
	ld hl,$DB51
	ld b,d
	ld c,$09
	ld a,[de]
	sub [hl]
	ld [bc],a
	ld [$FF00+$84],a
	inc e
	inc hl
	inc c
	ld a,[de]
	sbc a,[hl]
	ld [bc],a
	inc a
	cp $01
	ld a,[$FF00+$84]
	jr z,Unknown_0x0E6D
	jr nc,Unknown_0x0E94
	cp $E0
	jr nc,Unknown_0x0E71
	jr Unknown_0x0E94

Unknown_0x0E6D:
	cp $C0
	jr nc,Unknown_0x0E94

Unknown_0x0E71:
	inc e
	inc e
	inc hl
	inc c
	ld a,[de]
	sub [hl]
	ld [bc],a
	ld [$FF00+$84],a
	inc e
	inc hl
	inc c
	ld a,[de]
	sbc a,[hl]
	ld [bc],a
	inc a
	cp $01
	ld a,[$FF00+$84]
	jr z,Unknown_0x0E8F
	jr nc,Unknown_0x0E94
	cp $E0
	jr nc,Unknown_0x0E93
	jr Unknown_0x0E94

Unknown_0x0E8F:
	cp $A0
	jr nc,Unknown_0x0E94

Unknown_0x0E93:
	ret

Unknown_0x0E94:
	ld e,$15
	ld a,$FF
	ld [de],a
	ld h,d
	jp Unknown_0x0BBA

Unknown_0x0E9D:
	ld e,$04
	ld hl,$DB51
	ld b,d
	ld c,$09
	ld a,[de]
	sub [hl]
	ld [bc],a
	ld [$FF00+$84],a
	inc e
	inc hl
	inc c
	ld a,[de]
	sbc a,[hl]
	ld [bc],a
	inc a
	cp $01
	ld a,[$FF00+$84]
	jr z,Unknown_0x0EBF
	jr nc,Unknown_0x0EE6
	cp $E0
	jr nc,Unknown_0x0EC3
	jr Unknown_0x0EE6

Unknown_0x0EBF:
	cp $C0
	jr nc,Unknown_0x0EE6

Unknown_0x0EC3:
	inc e
	inc e
	inc hl
	inc c
	ld a,[de]
	sub [hl]
	ld [bc],a
	ld [$FF00+$84],a
	inc e
	inc hl
	inc c
	ld a,[de]
	sbc a,[hl]
	ld [bc],a
	inc a
	cp $01
	ld a,[$FF00+$84]
	jr z,Unknown_0x0EE1
	jr nc,Unknown_0x0EE6
	cp $E0
	jr nc,Unknown_0x0EE5
	jr Unknown_0x0EE6

Unknown_0x0EE1:
	cp $A0
	jr nc,Unknown_0x0EE6

Unknown_0x0EE5:
	ret

Unknown_0x0EE6:
	ld e,$15
	ld a,$FF
	ld [de],a
	ld h,d
	push de
	call Unknown_0x0BBA
	pop de
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$15
	ld a,$FF
	ld [hl],a
	call Unknown_0x0BBA
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x0F01:
	ld e,$48
	ld a,[de]
	ld h,a
	ld e,$04
	ld l,$09
	ld b,d
	ld c,l
	ld a,[de]
	add a,[hl]
	ld [bc],a
	inc e
	inc l
	inc c
	ld a,[de]
	adc a,[hl]
	ld [bc],a
	inc e
	inc e
	inc l
	inc c
	ld a,[de]
	add a,[hl]
	ld [bc],a
	inc e
	inc l
	inc c
	ld a,[de]
	adc a,[hl]
	ld [bc],a
	ret

Unknown_0x0F22:
	ld e,$15
	ld a,[de]
	cp $FF
	ret z
	add a,a
	ld c,a
	ld h,d
	ld l,$16
	ld a,[hli]
	call ChangeBankNoInturrupts
	ld a,[hli]
	ld l,[hl]
	ld h,a
	ld b,$00
	add hl,bc
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld c,$93
	ld e,$45
	ld a,[de]
	ld [$FF00+c],a
	inc e
	inc c
	ld a,[de]
	ld [$FF00+c],a
	inc e
	inc c
	ld a,[de]
	ld [$FF00+c],a
	ld e,$0C
	push de
	call Unknown_0x051C
	pop de
	ret

Unknown_0x0F50:
	push de
	ld h,b
	ld l,c
	ld a,[hli]
	ld [$FF00+$84],a
	ld a,[hli]
	ld b,a
	ld a,[hli]
	ld c,a
	push hl
	call Unknown_0x0F67
	pop bc
	pop de
	ld a,h
	or a
	ret z
	ld l,$48
	ld [hl],d
	ret

Unknown_0x0F67:
	ld h,d
	ld l,$07
	ld a,[hli]
	ld e,a
	ld d,[hl]
	push de
	ld l,$04
	ld a,[hli]
	ld e,a
	ld d,[hl]
	push de
	jp Unknown_0x07CA

Unknown_0x0F77:
	ld a,[bc]
	inc bc
	ld e,a

Unknown_0x0F7A:
	push de
	push bc
	ld a,$01
	ld [$FF00+$84],a
	ld bc,$A2A5
	call Unknown_0x0F67
	pop bc
	pop de
	ld a,h
	or a
	ret z
	ld l,$48
	ld [hl],d
	ld l,$51
	ld [hl],e
	ret

Unknown_0x0F92:
	ld a,$01
	ld [$FF00+$84],a
	ld hl,$DB34
	ld a,$A5
	ld [hli],a
	ld [hl],$A2
	ld h,b
	ld l,c
	call Unknown_0x0FD0
	ret z
	ld l,$51
	ld a,[$FF00+$80]
	ld [hl],a
	ld e,$45
	ld l,e
	ld a,[de]
	ld [hl],a
	ret

Unknown_0x0FAF:
	ld a,$02
	ld [$FF00+$84],a
	ld hl,$DB34
	ld a,$A8
	ld [hli],a
	ld [hl],$A5
	ld h,b
	ld l,c
	call Unknown_0x0FD0
	ret z
	ld l,$5A
	ld a,[$FF00+$80]
	ld [hl],a
	ld e,$45
	ld l,e
	ld a,[de]
	ld [hl],a
	ld l,$4C
	ld [hl],$00
	ret

Unknown_0x0FD0:
	ld a,[hli]
	ld [$FF00+$80],a
	ld a,[hli]
	ld [$FF00+$85],a
	ld a,[hli]
	ld [$FF00+$86],a
	push de
	push hl
	ld h,d
	ld l,$45
	ld a,[hl]
	rla
	ld a,[$FF00+$85]
	jr nc,Unknown_0x0FE6
	cpl
	inc a

Unknown_0x0FE6:
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld l,$04
	ld a,[hli]
	add a,c
	ld c,a
	ld a,[hli]
	adc a,b
	ld b,a
	inc l
	ld a,[$FF00+$86]
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld a,[hli]
	add a,e
	ld e,a
	ld a,[hl]
	adc a,d
	ld d,a
	ld hl,$DB34
	ld a,[hli]
	ld h,[hl]
	ld l,a
	call Unknown_0x07C6
	pop bc
	pop de
	ld a,h
	or a
	ret z
	ld l,$48
	ld [hl],d
	ret

Unknown_0x1011:
	call Unknown_0x0647
	ld e,$27
	ld [de],a
	ret

Unknown_0x1018:
	ld e,$45

Unknown_0x101A:
	ld a,[de]
	rla
	ld e,$0D
	ld a,[bc]
	inc bc
	jr c,Unknown_0x1026
	ld [de],a
	ld a,[bc]
	jr Unknown_0x102E

Unknown_0x1026:
	cpl
	add a,$01
	ld [de],a
	ld a,[bc]
	cpl
	adc a,$00

Unknown_0x102E:
	inc e
	inc bc
	ld [de],a
	ret
	ld e,$45
	ld a,[de]
	rla
	ld e,$11
	ld a,[bc]
	inc bc
	jr nc,Unknown_0x103E
	cpl
	inc a

Unknown_0x103E:
	ld [de],a
	ret
	ld e,$07
	jr Unknown_0x1046
	ld e,$04

Unknown_0x1046:
	ld h,b
	ld l,c
	ld a,[de]
	add a,[hl]
	ld [de],a
	inc e
	inc hl
	ld a,[de]
	adc a,[hl]
	ld [de],a
	inc hl
	ld b,h
	ld c,l
	ret
	ld h,$A0
	ld a,h

Unknown_0x1057:
	cp d
	jr z,Unknown_0x1060
	call Unknown_0x0BBA
	ld a,[$FF00+$9A]
	ld d,a

Unknown_0x1060:
	inc h
	ld a,h
	cp $B3
	jr nz,Unknown_0x1057
	ret

Unknown_0x1067:
	ld h,$A0
	ld a,h

Unknown_0x106A:
	cp d
	jr z,Unknown_0x1079
	ld l,$19
	set 5,[hl]
	ld l,$1C
	set 5,[hl]
	ld l,$1F
	set 5,[hl]

Unknown_0x1079:
	inc h
	ld a,h
	cp $B3
	jr nz,Unknown_0x106A
	ret
	ld h,$A0
	ld a,h

Unknown_0x1083:
	cp d
	jr z,Unknown_0x1092
	ld l,$19
	res 5,[hl]
	ld l,$1C
	res 5,[hl]
	ld l,$1F
	res 5,[hl]

Unknown_0x1092:
	inc h
	ld a,h
	cp $B3
	jr nz,Unknown_0x1083
	ret

Unknown_0x1099:
	ld a,[bc]
	ld e,a
	inc bc
	push bc
	ld hl,Unknown_0x4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x10AA:
	ld hl,Unknown_0x3C299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x10B6:
	ld a,[bc]

Unknown_0x10B7:
	ld e,a
	inc bc
	push bc
	ld hl,$4232
	ld a,$1F
	call CallForeignBankNoInturrupts
	pop bc
	ld a,[$FF00+$9A]
	ld d,a
	ret
	ld a,[bc]
	ld [$DB6F],a
	jr Unknown_0x10B7

UnknownData_0x10CD:
INCBIN "baserom.gb", $10CD, $10DE - $10CD

Unknown_0x10DE:
	ld a, bank(Unknown_0x20062)
	call ChangeBankNoInturrupts
	jp Unknown_0x20062
	ld e,$09
	ld hl,Unknown_0x602E
	ld a,$1E
	call CallForeignBankNoInturrupts
	call Unknown_0x1126
	call Unknown_0x1134
	ld hl,$5B28
	ld a,$07
	call CallForeignBankNoInturrupts
	ld hl,$DEDE
	set 2,[hl]
	set 1,[hl]
	set 3,[hl]
	set 5,[hl]
	set 6,[hl]
	ld a,[$A05B]
	inc a
	ld [$DEE0],a
	ld a,[$A071]
	or a
	jr z,Unknown_0x111D
	ld hl,$DEDF
	set 1,[hl]

Unknown_0x111D:
	ld a,$07
	ld [$FF00+$4B],a
	ld a,$80
	ld [$FF00+$4A],a
	ret

Unknown_0x1126:
	ld a,$0B
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x2E8A0
	ld de,$8000
	jp StoreDEToRAM

Unknown_0x1134:
	ld a,$0B
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x2F122
	ld de,$9630
	call StoreDEToRAM
	ld a,$0B
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x2F20F
	ld de,$8800
	call StoreDEToRAM
	ld a,$0B
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x2ED87
	ld de,$8600
	call StoreDEToRAM
	ret
	ld a,$07
	call ChangeBankNoInturrupts
	jr Unknown_0x1196
	ld hl,$747D
	ld a,$02
	call CallForeignBankNoInturrupts
	ld a,[$A051]
	cp $0D
	jr nz,Unknown_0x1183
	ld a,$0B
	call ChangeBankNoInturrupts
	ld hl,$6980
	ld de,$8000
	jp StoreDEToRAM

Unknown_0x1183:
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1F458
	call Unknown_0x1196
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1F472

Unknown_0x1196:
	ld a,[$DF11]
	ld h,$00
	ld l,a
	ld b,h
	ld c,l
	add hl,hl
	add hl,bc
	add hl,hl
	add hl,bc
	ld bc,$74BB
	add hl,bc
	ld a,[hli]
	ld e,a
	ld a,[hli]
	ld d,a
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld a,[hli]
	ld [$FF00+$84],a
	push bc
	ld a,[hli]
	ld c,a
	ld b,[hl]
	pop hl
	ld a,[$FF00+$84]
	call ChangeBankNoInturrupts
	jp LoadDataToRamInit
	xor a
	ld [$A082],a
	ld [$FF00+$A5],a
	ld [$FF00+$A6],a

Unknown_0x11C6:
	call Unknown_0x0496
	ld a,[$A06C]
	rra
	jr c,Unknown_0x11D4
	ld a,$FF
	ld [$A05D],a

Unknown_0x11D4:
	call Unknown_0x086B
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1C259
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1C3CB
	call Unknown_0x04AE
	ld hl,Unknown_0x1DB85
	ld a,$07
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x1DBD2
	ld a,$07
	call CallForeignBankNoInturrupts
	call Unknown_0x0343
	call Unknown_0x0357
	ld a,[$A082]
	or a
	jr nz,Unknown_0x1219
	ld a,[$DA3A]
	cp $02
	jr nz,Unknown_0x1219
	ld a,[$DA3F]
	and $0B
	jr z,Unknown_0x1219
	ld a,$09
	ld [$A082],a

Unknown_0x1219:
	ld a,[$A082]
	or a
	jr z,Unknown_0x11C6
	ret
	call Unknown_0x1564
	ld bc,$000E
	add hl,bc
	ld a,[hld]
	ld b,a
	ld a,[hld]
	ld l,[hl]
	ld h,a
	ld a,b
	call ChangeBankNoInturrupts
	ld de,$A004
	ld a,[de]
	and $F0
	swap a
	ld b,a
	inc e
	ld a,[de]
	swap a
	or b
	ld b,a
	ld e,$07
	ld a,[de]
	and $F0
	swap a
	ld c,a
	inc e
	ld a,[de]
	swap a
	or c
	ld c,a
	ld de,$0003

Unknown_0x1250:
	ld a,[hli]
	cp b
	jr nz,Unknown_0x125A
	ld a,[hli]
	cp c
	jr nz,Unknown_0x125B
	jr Unknown_0x1267

Unknown_0x125A:
	inc hl

Unknown_0x125B:
	ld a,[hli]
	cp $20
	jr nc,Unknown_0x125B
	cp $01
	jr z,Unknown_0x1250
	add hl,de
	jr Unknown_0x1250

Unknown_0x1267:
	push hl
	ld a,[hli]
	cp $60
	ld e,$04
	jr nz,Unknown_0x1279
	ld hl,$4276
	ld a,$1A
	call CallForeignBankNoInturrupts
	jr Unknown_0x1281

Unknown_0x1279:
	ld hl,Unknown_0x20280
	ld a,$1A
	call CallForeignBankNoInturrupts

Unknown_0x1281:
	call Unknown_0x0437
	pop hl
	ret
	call Unknown_0x1564

Unknown_0x1289:
	ld a,[hli]
	ld [$DB3D],a
	ld c,a
	ld a,[hli]
	ld [$DB3E],a
	push hl
	ld b,a
	ld hl,$CD2D
	ld a,$B3
	jr Unknown_0x129C

Unknown_0x129B:
	add a,c

Unknown_0x129C:
	ld [hli],a
	dec b
	jr nz,Unknown_0x129B
	sla c
	ld a,[$DB3E]
	ld b,a
	ld hl,$CD35
	ld a,$3D
	jr Unknown_0x12AE

Unknown_0x12AD:
	add a,c

Unknown_0x12AE:
	ld [hli],a
	dec b
	jr nz,Unknown_0x12AD
	pop hl
	ld c,$04
	ld de,$DB45

Unknown_0x12B8:
	ld a,[hli]
	swap a
	ld b,a
	and $F0
	ld [de],a
	inc de
	ld a,b
	and $0F
	ld [de],a
	inc de
	dec c
	jr nz,Unknown_0x12B8
	push hl
	ld hl,$DB45
	ld de,$DB3F
	ld a,[hli]
	add a,$08
	ld [de],a
	inc de
	ld a,[hli]
	adc a,$00
	ld [de],a
	inc de
	ld a,[hli]
	add a,$08
	ld [de],a
	inc de
	ld a,[hli]
	adc a,$00
	ld [de],a
	inc de
	ld a,[hli]
	add a,$98
	ld [de],a
	inc de
	ld a,[hl]
	adc a,$00
	ld [de],a
	pop hl
	push hl
	ld bc,$000A
	add hl,bc
	ld de,$B300
	call StoreDEToRAM
	pop hl
	inc hl
	inc hl
	push hl
	ld a,[hld]
	ld b,a
	ld a,[hld]
	ld l,[hl]
	ld h,a
	ld a,b
	call ChangeBankNoInturrupts
	ld bc,$0003
	add hl,bc
	push hl
	ld a,[hli]
	ld [$DB5C],a
	ld de,$CF00
	call StoreDEToRAM
	ld c,$05
	ld hl,$CF00
	ld de,$C500

Unknown_0x131C:
	ld a,[$DB5C]
	ld b,a

Unknown_0x1320:
	ld a,[hli]
	ld [de],a
	inc e
	dec b
	jr nz,Unknown_0x1320
	ld e,$00
	inc d
	dec c
	jr nz,Unknown_0x131C
	pop hl
	dec hl
	ld a,[hld]
	ld b,a
	ld a,[hld]
	ld l,[hl]
	ld h,a
	ld a,b
	ld [$DB5A],a
	call ChangeBankNoInturrupts
	ld a,[hli]
	cpl
	inc a
	swap a
	ld d,a
	and $F0
	ld e,a
	ld a,d
	or $F0
	ld d,a
	ld a,e
	add a,$30
	ld e,a
	ld a,d
	adc a,$96
	ld d,a
	and $0F
	or e
	swap a
	ld [$DB59],a
	ld a,l
	ld [$DB5B],a
	ld a,h
	ld [$DB5C],a
	call StoreDEToRAM
	ld a,[$DB58]
	call ChangeBankNoInturrupts
	pop hl
	push hl
	ld bc,$0007
	add hl,bc
	bit 0,[hl]
	ld a,$86
	jr z,Unknown_0x1388
	ld a,$0C
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x307D1
	ld de,$8860
	call StoreDEToRAM
	ld a,d
	and $0F
	or e
	swap a

Unknown_0x1388:
	ld [$DB5E],a
	ld a,[$DB73]
	or a
	jr z,Unknown_0x13A3
	pop hl
	ld a,[$DB60]
	ld hl,$14D0
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x139E
	inc h

Unknown_0x139E:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jr Unknown_0x13AE

Unknown_0x13A3:
	ld a,[$DB58]
	call ChangeBankNoInturrupts
	pop hl
	ld bc,$0003
	add hl,bc

Unknown_0x13AE:
	ld a,[hld]
	ld b,a
	ld [$DB5D],a
	ld a,[hld]
	ld l,[hl]
	ld h,a
	ld a,b
	call ChangeBankNoInturrupts
	ld de,$DB7F

Unknown_0x13BD:
	ld a,[hli]
	cp $FF
	jp z,Unknown_0x1445
	ld [$FF00+$84],a
	push hl
	ld l,a
	ld h,$00
	ld [de],a
	inc de
	ld a,[$DB5E]
	ld [de],a
	inc de
	add hl,hl
	ld b,h
	ld c,l
	add hl,hl
	add hl,bc
	ld bc,$5629
	add hl,bc
	ld a,$07
	call ChangeBankNoInturrupts
	ld a,[hli]
	ld [de],a
	inc de
	ld a,[hli]
	ld [de],a
	inc de
	ld a,[hli]
	ld [de],a
	inc de
	ld a,[$FF00+$84]
	cp $13
	jr z,Unknown_0x143B
	cp $14
	jr z,Unknown_0x143B
	cp $15
	jr z,Unknown_0x143B
	cp $16
	jr z,Unknown_0x143B
	cp $1C
	jr z,Unknown_0x143B
	cp $1F
	jr z,Unknown_0x143B
	cp $3E
	jr z,Unknown_0x143B
	push de
	inc hl
	inc hl
	ld a,[hld]
	ld b,a
	ld a,[hld]
	ld l,[hl]
	ld h,a
	ld a,b
	call ChangeBankNoInturrupts
	ld a,[$FF00+$84]
	cp $11
	jr nz,Unknown_0x141F
	ld de,$8D80
	call StoreDEToRAM
	jr Unknown_0x143A

Unknown_0x141F:
	ld a,[$DB5E]
	swap a
	ld d,a
	and $F0
	ld e,a
	ld a,d
	and $0F
	add a,$80
	ld d,a
	call StoreDEToRAM
	ld a,d
	and $0F
	or e
	swap a
	ld [$DB5E],a

Unknown_0x143A:
	pop de

Unknown_0x143B:
	pop hl
	ld a,[$DB5D]
	call ChangeBankNoInturrupts
	jp Unknown_0x13BD

Unknown_0x1445:
	ld a,$FF
	ld [de],a
	ld b,$00
	ld de,$CD3D

Unknown_0x144D:
	ld a,[hli]
	cp $FF
	jr z,Unknown_0x145C
	ld [de],a
	ld c,a
	inc e
	ld a,b
	ld [de],a
	inc e
	add a,c
	ld b,a
	jr Unknown_0x144D

Unknown_0x145C:
	ld a,b
	ld [$DB5F],a
	ld c,$03
	ld de,$CA00

Unknown_0x1465:
	ld a,[$DB5F]
	ld b,a

Unknown_0x1469:
	ld a,[hli]
	ld [de],a
	inc e
	dec b
	jr nz,Unknown_0x1469
	ld e,$00
	inc d
	dec c
	jr nz,Unknown_0x1465
	ld hl,$BB00
	ld bc,$0100
	ld a,$00
	call LoadByteToRamInit
	xor a
	ld hl,$DB4F
	ld [hli],a
	ld [hli],a
	ld de,$A004
	ld a,[de]
	inc e
	sub $50
	ld [hli],a
	ld a,[de]
	inc e
	sbc a,$00
	ld [hli],a
	inc e
	ld a,[de]
	inc e
	sub $40
	ld [hli],a
	ld a,[de]
	sbc a,$00
	ld [hl],a
	call Unknown_0x1513
	ld hl,$DB51
	ld a,[hli]
	and $F0
	sub $10
	ld [$DB55],a
	ld [$DB7D],a
	inc hl
	ld a,[hl]
	and $F0
	sub $10
	ld [$DB56],a
	ld [$DB7E],a
	ld hl,$CD56
	ld bc,$0018
	ld a,$00
	call LoadByteToRamInit
	xor a
	ld [$DB72],a
	ld [$DB70],a
	ld [$DB71],a
	ret

UnknownData_0x14D0:
INCBIN "baserom.gb", $14D0, $14EE - $14D0
	ld a,[$DB5A]
	call ChangeBankNoInturrupts
	ld a,[$DB59]
	bit 7,a
	ld b,$90
	jr z,Unknown_0x14FF
	ld b,$80

Unknown_0x14FF:
	swap a
	ld d,a
	and $F0
	ld e,a
	ld a,d
	and $0F
	add a,b
	ld d,a
	ld hl,$DB5B
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp StoreDEToRAM

Unknown_0x1513:
	ld hl,$DB45
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB51
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x1526
	bit 7,[hl]
	jr z,Unknown_0x1529

Unknown_0x1526:
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x1529:
	ld hl,$DB49
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB51
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x153B
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x153B:
	ld hl,$DB47
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB53
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x154E
	bit 7,[hl]
	jr z,Unknown_0x1551

Unknown_0x154E:
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x1551:
	ld hl,$DB4B
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld hl,$DB53
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0x1563
	ld a,b
	ld [hld],a
	ld [hl],c

Unknown_0x1563:
	ret

Unknown_0x1564:
	ld a,$08
	call ChangeBankNoInturrupts
	ld a,[$DB57]
	ld l,a
	ld h,$00
	ld b,h
	ld c,l
	add hl,hl
	add hl,bc
	ld bc,$511F
	add hl,bc
	ld a,[hld]
	ld b,a
	ld [$DB58],a
	ld a,[hld]
	ld l,[hl]
	ld h,a
	ld a,b
	call ChangeBankNoInturrupts
	ret

Unknown_0x1584:
	xor a
	ld hl,$FF42
	ld [hli],a
	ld [hl],a
	ld hl,$DA00
	ld [hli],a
	ld [hl],a
	ld hl,$DB51
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ret

Unknown_0x1597:
	ld [$FF00+$80],a
	ld a,[$FF00+$A4]
	push af
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1C37B
	pop af
	jp ChangeBankNoInturrupts

Unknown_0x15A8:
	ld [$FF00+$84],a
	call Unknown_0x15E3
	ld a,[$FF00+$84]
	ld [hl],a

Unknown_0x15B0:
	call Unknown_0x15FC
	ld d,h
	ld e,l
	ld a,[$DA22]
	ld l,a
	ld a,[$DA28]
	ld h,a
	ld [hl],e
	inc l
	ld [hl],d
	inc l
	ld a,[$FF00+$84]
	ld c,a
	ld b,$C5
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	inc b
	ld a,[bc]
	ld [hli],a
	ld a,l
	ld [$DA22],a
	ld a,[$DA28]
	ld hl,$DA23
	rra
	jr nc,Unknown_0x15E1
	ld hl,$DA24

Unknown_0x15E1:
	inc [hl]
	ret

Unknown_0x15E3:
	ld hl,$CD2D
	ld a,d
	add a,l
	ld l,a
	ld a,[hl]
	add a,b
	ld h,a
	ld [$FF00+$9D],a
	ld a,e
	and $F0
	ld l,a
	ld a,c
	swap a
	and $0F
	add a,l
	ld l,a
	ld [$FF00+$9C],a
	ret

Unknown_0x15FC:
	ld a,e
	ld h,$26
	rla
	rl h
	rla
	rl h
	and $C0
	ld l,a
	ld a,c
	rra
	rra
	rra
	and $1E
	add a,l
	ld l,a
	ret

Unknown_0x1611:
	ld [$FF00+$84],a
	ld hl,$DB62
	add a,l
	ld l,a
	jr nc,Unknown_0x161B
	inc h

Unknown_0x161B:
	ld e,[hl]
	ld a,[$FF00+$84]
	ld hl,$163E
	add a,l
	ld l,a
	jr nc,Unknown_0x1626
	inc h

Unknown_0x1626:
	ld a,[hl]
	or e
	inc a
	ret

Unknown_0x162A:
	ld [$FF00+$84],a
	ld a,e
	call Unknown_0x0663
	ld e,a
	ld a,[$FF00+$84]
	ld hl,$DB62
	add a,l
	ld l,a
	jr nc,Unknown_0x163B
	inc h

Unknown_0x163B:
	ld a,[hl]
	and e
	ret

UnknownData_0x163E:
INCBIN "baserom.gb", $163E, $1646 - $163E

Unknown_0x1646:
	ld a,[$DB3D]
	dec a
	cp b
	jr c,Unknown_0x165C
	ld a,[$DB3E]
	dec a
	cp d
	jr c,Unknown_0x165C
	call Unknown_0x15E3
	ld l,[hl]
	ld h,$C9
	ld a,[hl]
	ret

Unknown_0x165C:
	xor a
	ld hl,$FF9C
	ld [hli],a
	ld [hl],a
	ld a,$00
	ret

Unknown_0x1665:
	ld hl,$FF9C
	ld a,[hli]
	ld h,[hl]
	ld l,a
	or h
	jr z,Unknown_0x1684
	ld a,l
	sub $10
	ld l,a
	jr nc,Unknown_0x167F
	ld a,d
	or a
	jr z,Unknown_0x1684
	ld a,[$DB3D]
	cpl
	inc a
	add a,h
	ld h,a

Unknown_0x167F:
	ld l,[hl]
	ld h,$C9
	ld a,[hl]
	ret

Unknown_0x1684:
	ld a,$00
	ret

Unknown_0x1687:
	ld hl,$FF9C
	ld a,[hli]
	ld h,[hl]
	ld l,a
	or h
	jr z,Unknown_0x16A7
	ld a,l
	add a,$10
	ld l,a
	jr nc,Unknown_0x16A2
	ld a,[$DB3E]
	dec a
	cp d
	jr z,Unknown_0x16A7
	ld a,[$DB3D]
	add a,h
	ld h,a

Unknown_0x16A2:
	ld l,[hl]
	ld h,$C9
	ld a,[hl]
	ret

Unknown_0x16A7:
	ld a,$00
	ret

Unknown_0x16AA:
	ld hl,$FF9C
	ld a,[hli]
	ld h,[hl]
	ld l,a
	or h
	jr z,Unknown_0x16CA
	inc l
	ld a,l
	and $0F
	jr nz,Unknown_0x16C5
	ld a,[$DB3D]
	dec a
	cp b
	jr z,Unknown_0x16CA
	ld a,l
	sub $10
	ld l,a
	inc h

Unknown_0x16C5:
	ld l,[hl]
	ld h,$C9
	ld a,[hl]
	ret

Unknown_0x16CA:
	ld a,$00
	ret

Unknown_0x16CD:
	ld hl,$FF9C
	ld a,[hli]
	ld h,[hl]
	ld l,a
	or h
	jr z,Unknown_0x16EC
	dec l
	ld a,l
	and $0F
	cp $0F
	jr nz,Unknown_0x16E7
	ld a,b
	or a
	jr z,Unknown_0x16EC
	ld a,l
	add a,$10
	ld l,a
	dec h

Unknown_0x16E7:
	ld l,[hl]
	ld h,$C9
	ld a,[hl]
	ret

Unknown_0x16EC:
	ld a,$00
	ret

Unknown_0x16EF:
	call Unknown_0x1646
	and $07
	ld [$FF00+$9E],a
	cp $01
	jr z,Unknown_0x16FC
	and a
	ret

Unknown_0x16FC:
	call Unknown_0x16AA
	and $07
	cp $01
	jr c,Unknown_0x170B
	jr z,Unknown_0x1714
	cp $04
	jr nc,Unknown_0x1714

Unknown_0x170B:
	ld a,c
	and $0F
	ld l,a
	ld a,$10
	sub l
	scf
	ret

Unknown_0x1714:
	and a
	ret

Unknown_0x1716:
	call Unknown_0x1646
	and $07
	ld [$FF00+$9E],a
	ld hl,$172A
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1726
	inc h

Unknown_0x1726:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x172A:
INCBIN "baserom.gb", $172A, $173A - $172A
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	sub l
	scf
	ret
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	ld h,a
	ld a,$0F
	sub h
	sub l
	scf
	ret
	and a
	ret
	call Unknown_0x16AA
	and $07
	ld hl,$1766
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1762
	inc h

Unknown_0x1762:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x1766:
INCBIN "baserom.gb", $1766, $1798 - $1766
	ld a,c
	and $0F
	ld l,a
	ld a,$10
	sub l
	scf
	ret
	and a
	ret

Unknown_0x17A3:
	call Unknown_0x1646
	and $07
	ld [$FF00+$9E],a
	cp $01
	jr z,Unknown_0x17B0
	and a
	ret

Unknown_0x17B0:
	call Unknown_0x16CD
	and $07
	cp $01
	jr c,Unknown_0x17BF
	jr z,Unknown_0x17C5
	cp $04
	jr nc,Unknown_0x17C5

Unknown_0x17BF:
	ld a,c
	and $0F
	cpl
	scf
	ret

Unknown_0x17C5:
	and a
	ret

Unknown_0x17C7:
	call Unknown_0x1646
	and $07
	ld [$FF00+$9E],a
	ld hl,$17DB
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x17D7
	inc h

Unknown_0x17D7:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x17DB:
INCBIN "baserom.gb", $17DB, $17EB - $17DB
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	ld h,a
	ld a,$0F
	sub h
	sub l
	scf
	ret
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	sub l
	scf
	ret
	and a
	ret
	call Unknown_0x16CD
	and $07
	ld hl,$1817
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1813
	inc h

Unknown_0x1813:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x1817:
INCBIN "baserom.gb", $1817, $1827 - $1817
	ld a,$05
	ld [$FF00+$9E],a
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	cpl
	sub l
	scf
	ret
	ld a,$07
	ld [$FF00+$9E],a
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	sub $10
	sub l
	scf
	ret
	ld a,c
	and $0F
	cpl
	scf
	ret
	and a
	ret

Unknown_0x184E:
	call Unknown_0x1646
	ld [$FF00+$9F],a
	and $07
	ld [$FF00+$9E],a
	ld hl,$1864
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1860
	inc h

Unknown_0x1860:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x1864:
INCBIN "baserom.gb", $1864, $1874 - $1864
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	ld h,a
	ld a,$0F
	sub l
	sub h
	scf
	ret
	ld a,e
	and $0F
	ld h,a
	ld a,c
	and $0F
	sub h
	scf
	ret
	and a
	ret
	call Unknown_0x1665
	and $07
	ld hl,$18A0
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x189C
	inc h

Unknown_0x189C:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x18A0:
INCBIN "baserom.gb", $18A0, $18B0 - $18A0
	ld a,e
	and $0F
	cpl
	scf
	ret
	and a
	ret
	ld a,$04
	ld [$FF00+$9E],a
	ld a,e
	and $0F
	ld h,a
	ld a,c
	and $0F
	cpl
	sub h
	scf
	ret
	ld a,$05
	ld [$FF00+$9E],a
	ld a,e
	and $0F
	ld h,a
	ld a,c
	and $0F
	sub $10
	sub h
	scf
	ret

Unknown_0x18D7:
	call Unknown_0x1646
	and $07
	ld [$FF00+$9E],a
	ld hl,$18EB
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x18E7
	inc h

Unknown_0x18E7:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x18EB:
INCBIN "baserom.gb", $18EB, $18FB - $18EB
	ld a,e
	and $0F
	ld h,a
	ld a,c
	and $0F
	sub h
	scf
	ret
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	ld h,a
	ld a,$0F
	sub l
	sub h
	scf
	ret
	and a
	ret
	call Unknown_0x1687
	and $07
	ld hl,$1927
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x1923
	inc h

Unknown_0x1923:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x1927:
INCBIN "baserom.gb", $1927, $1937 - $1927
	ld a,e
	and $0F
	ld h,a
	ld a,$10
	sub h
	scf
	ret
	and a
	ret
	ld a,$06
	ld [$FF00+$9E],a
	ld a,e
	and $0F
	ld h,a
	ld a,c
	and $0F
	add a,$10
	sub h
	scf
	ret
	ld a,$07
	ld [$FF00+$9E],a
	ld a,c
	and $0F
	ld l,a
	ld a,e
	and $0F
	ld h,a
	ld a,$1F
	sub l
	sub h
	scf
	ret

Unknown_0x1964:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAF
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a

Unknown_0x1973:
	call Unknown_0x1AF6
	ld hl,$FFAD
	jr c,Unknown_0x197D
	set 7,[hl]

Unknown_0x197D:
	ld a,[hl]
	ret

Unknown_0x197F:
	call Unknown_0x1AEA
	ld l,$0F
	ld a,[hli]
	or [hl]
	jr z,Unknown_0x19A5
	bit 7,[hl]
	jr nz,Unknown_0x1996
	call Unknown_0x184E
	jr nc,Unknown_0x199F
	rlca
	jr c,Unknown_0x19C6
	jr Unknown_0x199F

Unknown_0x1996:
	call Unknown_0x18D7
	jr nc,Unknown_0x199F
	dec a
	rlca
	jr nc,Unknown_0x19C6

Unknown_0x199F:
	ld a,[$FF00+$9E]
	cp $01
	jr z,Unknown_0x19C6

Unknown_0x19A5:
	ld a,[$FF00+$9A]
	ld h,a
	ld l,$0E
	bit 7,[hl]
	jr nz,Unknown_0x19B8
	call Unknown_0x17C7
	jr nc,Unknown_0x19C1
	rlca
	jr c,Unknown_0x19C6
	jr Unknown_0x19C1

Unknown_0x19B8:
	call Unknown_0x1716
	jr nc,Unknown_0x19C1
	dec a
	rlca
	jr nc,Unknown_0x19C6

Unknown_0x19C1:
	ld a,[$FF00+$9A]
	ld d,a
	and a
	ret

Unknown_0x19C6:
	ld a,[$FF00+$9A]
	ld d,a
	scf
	ret

Unknown_0x19CB:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a

Unknown_0x19DD:
	call Unknown_0x1D8B
	jr nc,Unknown_0x19E7
	ld hl,$FFAD
	set 5,[hl]

Unknown_0x19E7:
	call Unknown_0x1B61
	ld hl,$FFAD
	jr c,Unknown_0x19F1
	set 7,[hl]

Unknown_0x19F1:
	ld a,[hl]
	ret

Unknown_0x19F3:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a

Unknown_0x1A05:
	call Unknown_0x1D8B
	jr nc,Unknown_0x1A0F
	ld hl,$FFAD
	set 5,[hl]

Unknown_0x1A0F:
	call Unknown_0x1B61
	ld hl,$FFAD
	jr c,Unknown_0x1A23
	set 7,[hl]
	call Unknown_0x1BDA
	ld hl,$FFAD
	jr c,Unknown_0x1A23
	set 4,[hl]

Unknown_0x1A23:
	ld a,[hl]
	ret

Unknown_0x1A25:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$0D
	ld [hli],a

Unknown_0x1A3A:
	call Unknown_0x1DC7
	jr nc,Unknown_0x1A44
	ld hl,$FFAD
	set 5,[hl]

Unknown_0x1A44:
	ld e,$10
	ld a,[de]
	rla
	jr nc,Unknown_0x1A56
	call Unknown_0x1C0A
	ld hl,$FFAD
	jr nc,Unknown_0x1A60
	set 6,[hl]
	jr Unknown_0x1A60

Unknown_0x1A56:
	call Unknown_0x1C88
	ld hl,$FFAD
	jr nc,Unknown_0x1A60
	set 7,[hl]

Unknown_0x1A60:
	ld a,[hl]
	ret

Unknown_0x1A62:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$F9
	ld [hli],a
	ld a,$06
	ld [hli],a
	ld a,$0D
	ld [hli],a
	call Unknown_0x1DC7
	jr nc,Unknown_0x1A81
	ld hl,$FFAD
	set 5,[hl]

Unknown_0x1A81:
	call Unknown_0x1C0A
	jr nc,Unknown_0x1A8B
	ld hl,$FFAD
	set 6,[hl]

Unknown_0x1A8B:
	call Unknown_0x1C88
	ld hl,$FFAD
	jr nc,Unknown_0x1A95
	set 7,[hl]

Unknown_0x1A95:
	ld a,[hl]
	ret

Unknown_0x1A97:
	call Unknown_0x1AEA
	call Unknown_0x1646
	and $7F
	cp $08
	ld a,[$FF00+$9A]
	ld d,a
	ret
	push bc
	call Unknown_0x1AB3
	ld e,$27
	ld a,$00
	jr nz,Unknown_0x1AB0
	inc a

Unknown_0x1AB0:
	ld [de],a
	pop bc
	ret

Unknown_0x1AB3:
	call Unknown_0x1AEA
	call Unknown_0x1646
	and $C0
	cp $80
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x1AC1:
	ld h,d
	xor a
	ld b,a
	ld c,a
	bit 7,e
	jr z,Unknown_0x1ACA
	cpl

Unknown_0x1ACA:
	ld d,a
	call Unknown_0x1AD9
	call Unknown_0x1646
	and $C0
	cp $80
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x1AD9:
	ld l,$04
	ld a,[hli]
	add a,c
	ld c,a
	ld a,[hl]
	adc a,b
	ld b,a
	ld l,$07
	ld a,[hli]
	add a,e
	ld e,a
	ld a,[hl]
	adc a,d
	ld d,a
	ret

Unknown_0x1AEA:
	ld h,d
	ld l,$04
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld l,$07
	ld a,[hli]
	ld e,a
	ld d,[hl]
	ret

Unknown_0x1AF6:
	ld h,d
	ld a,[$FF00+$AF]
	inc a
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld b,$00
	ld c,b
	call Unknown_0x1AD9
	call Unknown_0x184E
	jr c,Unknown_0x1B4F
	bit 3,c
	jr z,Unknown_0x1B28
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0x1B45
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0x1B4F
	ld a,[$FF00+$B1]
	add a,l
	jr Unknown_0x1B4F

Unknown_0x1B28:
	ld a,[$FF00+$B0]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0x1B45
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0x1B4F
	ld a,[$FF00+$B0]
	cpl
	scf
	adc a,l
	jr Unknown_0x1B4F

Unknown_0x1B45:
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,$00
	ld [de],a
	scf
	ret

Unknown_0x1B4F:
	inc a
	jr nz,Unknown_0x1B45
	ld a,[$FF00+$9A]
	ld d,a
	ld a,[$FF00+$9E]
	ld e,$4D
	ld [de],a
	ld a,[$FF00+$9F]
	ld e,$4E
	ld [de],a
	and a
	ret

Unknown_0x1B61:
	ld h,d
	ld a,[$FF00+$AF]
	inc a
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld b,$00
	ld c,b
	call Unknown_0x1AD9
	call Unknown_0x184E
	jr c,Unknown_0x1BBA
	bit 3,c
	jr z,Unknown_0x1B93
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0x1BB0
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0x1BBA
	ld a,[$FF00+$B1]
	add a,l
	jr Unknown_0x1BBA

Unknown_0x1B93:
	ld a,[$FF00+$B0]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0x1BB0
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0x1BBA
	ld a,[$FF00+$B0]
	cpl
	scf
	adc a,l
	jr Unknown_0x1BBA

Unknown_0x1BB0:
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,$00
	ld [de],a
	scf
	ret

Unknown_0x1BBA:
	inc a
	ld l,a
	rlca
	sbc a,a
	ld b,a
	ld a,[$FF00+$9A]
	ld h,a
	ld a,l
	ld l,$06
	ld [hl],$80
	inc l
	add a,[hl]
	ld [hli],a
	ld a,b
	adc a,[hl]
	ld [hl],a
	ld a,[$FF00+$9E]
	ld l,$4D
	ld [hl],a
	ld a,[$FF00+$9F]
	ld l,$4E
	ld [hl],a
	ld d,h
	and a
	ret

Unknown_0x1BDA:
	ld h,d
	ld a,[$FF00+$AF]
	inc a
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld l,$4D
	ld a,[hl]
	cp $04
	jr nc,Unknown_0x1BF1
	ld l,$0E
	bit 7,[hl]
	jr z,Unknown_0x1BF6
	jr Unknown_0x1BFA

Unknown_0x1BF1:
	ld b,$00
	ld c,b
	jr Unknown_0x1C00

Unknown_0x1BF6:
	ld a,[$FF00+$B1]
	jr Unknown_0x1BFC

Unknown_0x1BFA:
	ld a,[$FF00+$B0]

Unknown_0x1BFC:
	ld c,a
	rla
	sbc a,a
	ld b,a

Unknown_0x1C00:
	call Unknown_0x1AD9
	call Unknown_0x184E
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x1C0A:
	ld h,d
	ld a,[$FF00+$AE]
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld b,$00
	ld c,b
	call Unknown_0x1AD9
	call Unknown_0x18D7
	jr nc,Unknown_0x1C24
	ld l,a
	dec a
	rlca
	jr nc,Unknown_0x1C76
	jp Unknown_0x1E6D

Unknown_0x1C24:
	bit 3,c
	jr z,Unknown_0x1C51
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x18D7
	jp nc,Unknown_0x1E6D
	ld l,a
	ld a,[$FF00+$9E]
	cp $07
	jp z,Unknown_0x1E6D
	cp $06
	ld a,l
	jr nz,Unknown_0x1C4A
	ld a,[$FF00+$B1]
	cpl
	scf
	adc a,l
	ld l,a

Unknown_0x1C4A:
	dec a
	rlca
	jr nc,Unknown_0x1C76
	jp Unknown_0x1E6D

Unknown_0x1C51:
	ld a,[$FF00+$B0]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x18D7
	jp nc,Unknown_0x1E6D
	ld l,a
	ld a,[$FF00+$9E]
	cp $06
	jp z,Unknown_0x1E6D
	cp $07
	ld a,l
	jr nz,Unknown_0x1C71
	ld a,[$FF00+$B0]
	add a,l
	ld l,a

Unknown_0x1C71:
	dec a
	rlca
	jp c,Unknown_0x1E6D

Unknown_0x1C76:
	ld a,[$FF00+$9A]
	ld h,a
	ld a,l
	ld l,$06
	ld [hl],$80
	inc l
	add a,[hl]
	ld [hli],a
	ld a,$00
	adc a,[hl]
	ld [hl],a
	ld d,h
	scf
	ret

Unknown_0x1C88:
	xor a
	ld [$DB7C],a
	ld h,d
	ld a,[$FF00+$AF]
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld b,$00
	ld c,b
	call Unknown_0x1AD9
	call Unknown_0x184E
	jr nc,Unknown_0x1CAC
	ld l,a
	rlca
	jr c,Unknown_0x1D06
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,[$FF00+$9E]
	ld [de],a
	jr Unknown_0x1CFE

Unknown_0x1CAC:
	bit 3,c
	jr z,Unknown_0x1CD3
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0x1CF6
	ld l,a
	ld a,[$FF00+$9E]
	cp $05
	jr z,Unknown_0x1CF6
	cp $04
	ld a,l
	jr nz,Unknown_0x1CCE
	ld a,[$FF00+$B1]
	add a,l
	ld l,a

Unknown_0x1CCE:
	rlca
	jr c,Unknown_0x1D38
	jr Unknown_0x1CF6

Unknown_0x1CD3:
	ld a,[$FF00+$B0]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0x1CF6
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	jr z,Unknown_0x1CF6
	cp $05
	ld a,l
	jr nz,Unknown_0x1CF3
	ld a,[$FF00+$B0]
	cpl
	scf
	adc a,l
	ld l,a

Unknown_0x1CF3:
	rlca
	jr c,Unknown_0x1D38

Unknown_0x1CF6:
	ld a,[$FF00+$9A]
	ld h,a
	ld d,a
	ld l,$4D
	ld [hl],$00

Unknown_0x1CFE:
	ld e,$4F
	ld a,[$DB7C]
	ld [de],a
	and a
	ret

Unknown_0x1D06:
	ld a,$01
	ld [$DB7C],a
	ld a,[$FF00+$9A]
	ld h,a
	ld c,l
	ld l,$4D
	ld a,[hl]
	cp $04
	jr nc,Unknown_0x1D6E
	ld a,[$FF00+$9E]
	ld e,$00
	cp $04
	jr c,Unknown_0x1D5A
	ld l,$4F
	bit 0,[hl]
	jr nz,Unknown_0x1D3C
	ld l,$06
	ld b,[hl]
	ld l,$0F
	ld a,[hli]
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$FF
	bit 7,a
	jr nz,Unknown_0x1D3C
	add a,c
	jr nc,Unknown_0x1D3C
	jr Unknown_0x1D6E

Unknown_0x1D38:
	ld a,[$FF00+$9A]
	ld h,a
	ld c,l

Unknown_0x1D3C:
	ld a,[$FF00+$9E]
	cp $04
	ld e,$00
	jr c,Unknown_0x1D5A
	ld l,$03
	ld b,[hl]
	ld l,$0D
	ld a,[hli]
	jr z,Unknown_0x1D54
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$00
	cpl
	jr Unknown_0x1D59

Unknown_0x1D54:
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$FF

Unknown_0x1D59:
	ld e,a

Unknown_0x1D5A:
	ld l,$06
	ld b,[hl]
	ld l,$0F
	ld a,[hli]
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$FF
	add a,e
	bit 7,a
	jr nz,Unknown_0x1CF6
	add a,c
	jp nc,Unknown_0x1CF6

Unknown_0x1D6E:
	ld l,$06
	ld [hl],$80
	inc l
	ld a,c
	add a,[hl]
	ld [hli],a
	ld a,$FF
	adc a,[hl]
	ld [hl],a
	ld a,[$FF00+$9E]
	ld l,$4D
	ld [hl],a
	ld a,[$FF00+$9F]
	ld l,$4E
	ld [hl],a
	ld l,$4F
	ld [hl],$00
	ld d,h
	scf
	ret

Unknown_0x1D8B:
	ld h,d
	ld l,$0E
	ld a,[$FF00+$AE]
	ld e,a
	rla
	sbc a,a
	ld d,a
	bit 7,[hl]

Unknown_0x1D96:
	jr nz,Unknown_0x1DAF
	ld a,[$FF00+$B1]
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x17A3
	jp nc,Unknown_0x1E6D
	ld l,a
	rlca
	jp c,Unknown_0x1E2A
	jp Unknown_0x1E6D

Unknown_0x1DAF:
	ld a,[$FF00+$B0]
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x16EF
	jp nc,Unknown_0x1E6D
	ld l,a
	dec a
	rlca
	jp nc,Unknown_0x1E4C
	jp Unknown_0x1E6D

Unknown_0x1DC7:
	ld h,d
	ld l,$0E
	ld a,[$FF00+$AE]
	ld e,a
	rla
	sbc a,a
	ld d,a
	bit 7,[hl]
	jr nz,Unknown_0x1DFE
	ld a,[$FF00+$B1]
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x17A3
	jr nc,Unknown_0x1DE7
	ld l,a
	rlca
	jp c,Unknown_0x1E2A

Unknown_0x1DE7:
	ld a,[$FF00+$B2]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x17A3
	jp nc,Unknown_0x1E6D
	ld l,a
	rlca
	jp c,Unknown_0x1E2A
	jp Unknown_0x1E6D

Unknown_0x1DFE:
	ld a,[$FF00+$B0]
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x16EF
	jr nc,Unknown_0x1E12
	ld l,a
	dec a
	rlca
	jp nc,Unknown_0x1E4C

Unknown_0x1E12:
	ld a,[$FF00+$B2]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x16EF
	jp nc,Unknown_0x1E6D
	ld l,a
	dec a
	rlca
	jp nc,Unknown_0x1E4C
	jp Unknown_0x1E6D

Unknown_0x1E2A:
	ld c,l
	ld a,[$FF00+$9A]
	ld h,a
	ld l,$03
	ld b,[hl]
	ld l,$0D
	ld a,[hli]
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$FF
	add a,c
	jp nc,Unknown_0x1E6D
	ld l,$03
	ld [hl],$80
	inc l
	ld a,c
	add a,[hl]
	ld [hli],a
	ld a,$FF
	adc a,[hl]
	ld [hl],a
	ld d,h
	scf
	ret

Unknown_0x1E4C:
	ld c,l
	ld a,[$FF00+$9A]
	ld h,a
	ld l,$03
	ld b,[hl]
	ld l,$0D
	ld a,[hli]
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$00
	add a,c
	jr c,Unknown_0x1E6D
	ld l,$03
	ld [hl],$80
	inc l
	ld a,c
	add a,[hl]
	ld [hli],a
	ld a,$00
	adc a,[hl]
	ld [hl],a
	ld d,h
	scf
	ret

Unknown_0x1E6D:
	ld a,[$FF00+$9A]
	ld d,a
	and a
	ret
	ld e,$04
	ld hl,$DB51
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc hl
	ld a,[de]
	sbc a,[hl]
	ld e,$0A
	ld [de],a
	dec e
	ld a,c
	ld [de],a
	ld e,$45
	ld a,[de]
	rlca
	ld e,$0A
	ld a,[de]
	jr c,Unknown_0x1EA5
	rlca
	jp c,Unknown_0x0DF6
	rrca
	ld b,a
	dec e
	ld a,[de]
	sub $AC
	ld a,b
	sbc a,$00
	jp c,Unknown_0x0DF6

Unknown_0x1E9D:
	ld e,$05
	ld bc,$40EB
	jp Unknown_0x0846

Unknown_0x1EA5:
	rlca
	jp nc,Unknown_0x0DF6
	dec e
	ld a,[de]
	cp $F4
	jr c,Unknown_0x1E9D
	jp Unknown_0x0DF6

UnknownData_0x1EB2:
INCBIN "baserom.gb", $1EB2, $1EC0 - $1EB2

Unknown_0x1EC0:
	ld e,$04
	ld l,e
	ld h,$A0
	ld a,[de]
	sub [hl]
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	ld e,$45
	and $80
	xor $C0
	ld [de],a
	ret

Unknown_0x1ED3:
	ld h,d
	ld l,$12
	ld a,[hl]
	or a
	ret z
	ld l,$0F
	ld c,a
	rlca
	sbc a,a
	ld b,a
	ld a,[hl]
	add a,c
	ld [hli],a
	ld a,[hl]
	adc a,b
	ld [hl],a
	ret

Unknown_0x1EE6:
	ld h,d
	ld l,$11
	ld a,[hl]
	or a
	ret z
	ld l,$0D
	ld c,a
	rlca
	sbc a,a
	ld b,a
	ld a,[hl]
	add a,c
	ld [hli],a
	ld a,[hl]
	adc a,b
	ld [hl],a
	ret

Unknown_0x1EF9:
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
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
	ret

Unknown_0x1F0D:
	ld hl,$DD2C
	ld a,[hl]
	bit 2,a
	ret

Unknown_0x1F14:
	push de
	push bc
	ld e,$04
	ld l,e
	ld h,$A0
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld e,[hl]
	inc l
	ld d,[hl]
	ld a,c
	sub e
	ld a,b
	sbc a,d
	jr c,Unknown_0x1F3B
	ld a,c
	sub e
	ld e,a
	ld a,b
	cp d
	jr z,Unknown_0x1F34
	ld a,$FF
	add a,e
	ld e,a

Unknown_0x1F34:
	ld a,e
	pop bc
	pop de
	cp b
	ret nc
	jr Unknown_0x1F4B

Unknown_0x1F3B:
	ld a,e
	sub c
	ld c,a
	ld a,d
	cp b
	jr z,Unknown_0x1F46
	ld a,$FF
	add a,c
	ld c,a

Unknown_0x1F46:
	ld a,c
	pop bc
	pop de
	cp b
	ret nc

Unknown_0x1F4B:
	push de
	push bc
	ld e,$07
	ld l,e
	ld h,$A0
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld e,[hl]
	inc l
	ld d,[hl]
	ld a,c
	sub e
	ld a,b
	sbc a,d
	jr c,Unknown_0x1F70
	ld a,c
	sub e
	ld c,a
	ld a,b
	cp d
	jr z,Unknown_0x1F6B
	ld a,$FF
	add a,c
	ld c,a

Unknown_0x1F6B:
	ld a,c
	pop bc
	pop de
	cp c
	ret

Unknown_0x1F70:
	ld a,e
	sub c
	ld e,a
	ld a,b
	cp d
	jr z,Unknown_0x1F7B
	ld a,$FF
	add a,e
	ld e,a

Unknown_0x1F7B:
	ld a,e
	pop bc
	pop de
	cp c
	ret
	push bc
	call Unknown_0x1964
	and $80
	ld e,$27
	ld [de],a
	call Unknown_0x2235
	ld e,$40
	ld [de],a
	pop bc
	ret

UnknownData_0x1F91:
INCBIN "baserom.gb", $1F91, $1F9C - $1F91

Unknown_0x1F9C:
	ld h,$A0

Unknown_0x1F9E:
	ld l,e
	ld a,[de]
	sub [hl]
	ld c,a
	inc l
	inc e
	ld a,[de]
	sbc a,[hl]
	jr nc,Unknown_0x1FAC
	ld a,c
	cpl
	inc a
	ld c,a

Unknown_0x1FAC:
	ld a,c
	cp b
	ret

Unknown_0x1FAF:
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

Unknown_0x1FBD:
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
	ld e,$45
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret

Unknown_0x1FD1:
	ld a,[bc]
	inc bc
	ld h,d
	ld l,$45
	bit 7,[hl]
	jr z,Unknown_0x1FDC
	cpl
	inc a

Unknown_0x1FDC:
	ld l,a
	rla
	sbc a,a
	ld h,a
	ld e,$04
	ld a,[de]
	add a,l
	ld [de],a
	inc e
	ld a,[de]
	adc a,h
	ld [de],a
	ld a,[bc]
	inc bc
	ld l,a
	rla
	sbc a,a
	ld h,a
	ld e,$07
	ld a,[de]
	add a,l
	ld [de],a
	inc e
	ld a,[de]
	adc a,h
	ld [de],a
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld e,$46
	ld l,e
	ld a,[hl]
	ld [de],a
	ret
	ld a,[$DA4A]
	and a
	ret z
	ld h,a
	ld e,$46
	ld l,e
	ld a,[de]
	ld [hl],a
	ret
	ld e,$5E
	ld a,[bc]
	ld [de],a
	inc bc
	inc e
	ld a,[bc]
	ld [de],a
	inc bc
	inc e
	ld a,[bc]
	ld [de],a
	inc bc
	ret

Unknown_0x201D:
	call Unknown_0x202B

Unknown_0x2020:
	ld e,$27
	jr nc,Unknown_0x2028
	ld a,$01
	ld [de],a
	ret

Unknown_0x2028:
	xor a
	ld [de],a
	ret

Unknown_0x202B:
	ld e,$07

Unknown_0x202D:
	ld l,e
	ld h,$A0
	ld a,[de]
	sub [hl]
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	ret
	call Unknown_0x203D
	jp Unknown_0x2020

Unknown_0x203D:
	ld e,$04
	jp Unknown_0x202D
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc

Unknown_0x2048:
	ld e,$5C
	ld a,[de]
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x2053
	inc h

Unknown_0x2053:
	ld e,$12
	ld a,[hli]
	ld [de],a
	ld e,$39
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	jp Unknown_0x2053
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	ld e,a
	add a,a
	add a,e
	add a,l
	jr nc,Unknown_0x2078
	inc h

Unknown_0x2078:
	ld l,a
	jp Unknown_0x2053
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$0F
	ld a,[hli]
	ld [de],a
	ld e,$3D
	ld [de],a
	ld a,[hl]
	inc e
	ld [de],a
	ld e,$10
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc

Unknown_0x2096:
	ld e,$5C
	ld a,[de]
	add a,a
	add a,l
	jr nc,Unknown_0x209E
	inc h

Unknown_0x209E:
	ld l,a
	ld e,$0F
	ld a,[hli]
	ld [de],a
	ld e,$3D
	ld [de],a
	ld a,[hl]
	inc e
	ld [de],a
	ld e,$10
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jr nc,Unknown_0x20BE
	inc h

Unknown_0x20BE:
	ld e,$0F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ld e,$12
	ld a,[hli]
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	jp Unknown_0x20BE
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	jp Unknown_0x20F0
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	jp Unknown_0x20E5

Unknown_0x20E5:
	ld e,$27
	ld a,[de]
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x20F9
	inc h
	jr Unknown_0x20F9

Unknown_0x20F0:
	ld e,$5C
	ld a,[de]
	rlca
	add a,l
	ld l,a
	jr nc,Unknown_0x20F9
	inc h

Unknown_0x20F9:
	ld e,$45
	ld a,[de]
	rlca
	jr c,Unknown_0x2107
	ld e,$0D
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

Unknown_0x2107:
	ld e,$0D
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
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0x2123
	inc h

Unknown_0x2123:
	ld e,$45
	ld a,[de]
	rlca
	ld e,$11
	ld a,[hli]
	jr c,Unknown_0x212E
	ld [de],a
	ret

Unknown_0x212E:
	cpl
	inc a
	ld [de],a
	ret

UnknownData_0x2132:
INCBIN "baserom.gb", $2132, $213A - $2132
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jp nc,Unknown_0x2164
	inc h
	jp Unknown_0x2164

UnknownData_0x214F:
INCBIN "baserom.gb", $214F, $215E - $214F
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc

Unknown_0x2164:
	ld e,$45
	ld a,[de]
	rlca
	jr nc,Unknown_0x217E
	ld e,$11
	ld a,[hli]
	cpl
	inc a
	ld [de],a
	ld e,$3B
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

Unknown_0x217E:
	ld a,[hli]
	ld e,$11
	ld [de],a
	ld e,$3B
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	ld e,a
	rlca
	add a,e
	add a,l
	ld l,a
	jp nc,Unknown_0x21A5
	inc h
	jp Unknown_0x21A5
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc

Unknown_0x21A5:
	ld e,$11
	ld a,[hli]
	ld [de],a
	ld e,$45
	ld a,[de]
	rlca
	jr nc,Unknown_0x21BD
	ld e,$3B
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

Unknown_0x21BD:
	ld e,$3B
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hli]
	ld [de],a
	ret

Unknown_0x21C5:
	ld h,d
	ld l,$11
	ld e,[hl]
	ld l,$3B
	ld c,[hl]
	inc l
	ld b,[hl]
	bit 7,b
	jr nz,Unknown_0x21D5
	jp Unknown_0x0CB4

Unknown_0x21D5:
	jp Unknown_0x0CEF

Unknown_0x21D8:
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	bit 7,b
	jr nz,Unknown_0x21E8
	jp Unknown_0x0D35

Unknown_0x21E8:
	jp Unknown_0x0D70

Unknown_0x21EB:
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	jp Unknown_0x0D35

Unknown_0x21F7:
	ld h,d
	ld l,$12
	ld e,[hl]
	ld l,$39
	ld c,[hl]
	inc l
	ld b,[hl]
	jp Unknown_0x0D70
	ld a,[bc]
	inc bc
	push bc
	ld e,$07
	ld h,$A0
	ld l,e
	ld c,a
	rlca
	jr c,Unknown_0x2220
	ld a,[de]
	add a,c
	ld c,a
	inc e
	ld a,[de]
	adc a,$00
	ld b,a
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x222E

Unknown_0x221D:
	xor a
	jr Unknown_0x2230

Unknown_0x2220:
	ld a,[de]
	add a,c
	ld c,a
	inc e
	ld a,[de]
	adc a,$FF
	ld b,a
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr nc,Unknown_0x221D

Unknown_0x222E:
	ld a,$01

Unknown_0x2230:
	ld e,$27
	ld [de],a
	pop bc
	ret

Unknown_0x2235:
	ld e,$4D
	ld a,[de]
	cp $04
	jr z,Unknown_0x2242
	cp $05
	jr z,Unknown_0x2242
	xor a
	ret

Unknown_0x2242:
	ld a,$01
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0x2253
	inc h

Unknown_0x2253:
	ld e,$24
	ld a,[hl]
	ld [de],a
	ret
	ld e,$12
	ld a,[de]
	cpl
	inc a
	ld [de],a
	ret
	ld h,$A0
	ld l,$86
	ld e,$4C
	ld a,[de]
	ld [hl],a
	ld hl,$DEDF
	set 0,[hl]
	ld hl,$DEE4
	ld [hl],$00
	ret
	ld h,$A0
	ld e,$4C
	ld l,$85
	ld a,[de]
	ld [hl],a
	ret
	ld h,$A0
	xor a
	ld l,$85
	ld [hl],a
	ret
	ld hl,$DEDF
	res 0,[hl]
	ld hl,$DEDE
	set 0,[hl]
	ret

Unknown_0x228D:
	ld h,$A5
	ld c,$03

Unknown_0x2291:
	push bc
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x22B4
	ld l,$4C
	ld a,[hl]
	or a
	jr z,Unknown_0x22B4
	ld e,$04
	ld b,$28
	call Unknown_0x1F9E
	jr nc,Unknown_0x22B4
	ld e,$07
	ld b,$20
	call Unknown_0x1F9E
	jr nc,Unknown_0x22B4
	pop bc
	scf
	ret

Unknown_0x22B4:
	pop bc
	dec c
	ret z
	inc h
	jr Unknown_0x2291
	ld h,b
	ld l,c
	ld a,[hli]
	ld [$FF00+$84],a
	ld bc,$A8B2
	ld a,[hli]

Unknown_0x22C3:
	push af
	push de
	push hl
	call Unknown_0x0F67
	pop bc
	pop de
	ld a,h
	or a
	jr z,Unknown_0x22E4
	ld l,$48
	ld [hl],d
	ld e,l
	ld a,h
	ld [de],a
	ld e,$45
	ld l,e
	ld a,[de]
	ld [hl],a
	ld e,$5C
	ld l,e
	ld a,[de]
	ld [hl],a
	pop af
	ld l,$5B
	ld [hl],a
	ret

Unknown_0x22E4:
	pop af
	ret
	ld h,b
	ld l,c
	ld a,[hli]
	ld [$FF00+$84],a
	ld bc,$A8B2
	ld a,[hli]

Unknown_0x22EF:
	push af
	push de
	push hl
	call Unknown_0x0F67
	pop bc
	pop de
	ld a,h
	or a
	jr z,Unknown_0x230D
	ld l,$48
	ld [hl],d
	ld e,$45
	ld l,e
	ld a,[de]
	ld [hl],a
	ld e,$5C
	ld l,e
	ld a,[de]
	ld [hl],a
	pop af
	ld l,$5B
	ld [hl],a
	ret

Unknown_0x230D:
	pop af
	ret

Unknown_0x230F:
	ld hl,$FF84
	ld [hl],e
	ld bc,$A8B2
	jp Unknown_0x22C3

Unknown_0x2319:
	ld hl,$FF84
	ld [hl],e
	ld bc,$A8B2
	jp Unknown_0x22EF

Unknown_0x2323:
	ld bc,$1EB2
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
	ld [hl],$18
	xor a
	ret

Unknown_0x233C:
	ld e,$44
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x2348
	sub $01
	ld [de],a
	jr c,Unknown_0x2360

Unknown_0x2348:
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 1,a
	jr nz,Unknown_0x235D
	bit 0,a
	jr nz,Unknown_0x2358
	xor a
	ret

Unknown_0x2358:
	call Unknown_0x0C61
	scf
	ret

Unknown_0x235D:
	pop hl
	scf
	ret

Unknown_0x2360:
	ld l,$60
	ld h,d
	ld [hl],$2D
	jr Unknown_0x2348
	push bc
	ld e,$08
	ld bc,$6410
	call Unknown_0x0C3A
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret

Unknown_0x2375:
	ld e,$F8
	call Unknown_0x1AC1
	ret nz
	ld e,$03
	ld bc,$4D53
	call Unknown_0x0846
	pop hl
	ret

Unknown_0x2385:
	call Unknown_0x1A97
	ret nz
	ld e,$03
	ld bc,$4E33
	call Unknown_0x0846
	pop hl
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld a,[bc]
	ld e,a
	inc bc
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	inc bc
	push bc
	ld b,a
	ld c,l
	ld l,$00
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x23AC
	call Unknown_0x0849

Unknown_0x23AC:
	pop bc
	ret
	ld e,$48
	ld a,[de]
	ld h,a
	ld l,$21
	ld a,[bc]
	ld [hld],a
	inc bc
	ld a,[bc]
	ld [hld],a
	inc bc
	ld a,[bc]
	ld [hl],a
	inc bc
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	push bc
	call Unknown_0x23CA
	pop bc
	ret

Unknown_0x23CA:
	ld e,$40
	ld a,[de]
	rlca
	rlca
	ld c,a
	ld e,$5C
	ld a,[de]
	rlca
	add a,c
	add a,l
	ld l,a
	jr nc,Unknown_0x23DA
	inc h

Unknown_0x23DA:
	ld c,[hl]
	inc hl
	ld b,[hl]
	ld e,$45
	ld a,[de]
	rlca
	jr nc,Unknown_0x23ED
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x23ED:
	ld h,d
	ld l,$0D
	ld [hl],c
	inc l
	ld [hl],b
	ret
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld e,$5C
	ld a,[de]
	add a,l
	ld l,a
	jr nc,Unknown_0x2402
	inc h

Unknown_0x2402:
	ld a,[hl]
	or a
	jr z,Unknown_0x2414
	cp $FF
	jr z,Unknown_0x2411
	ld l,a
	ld e,$3F
	ld a,[de]
	cp l
	jr c,Unknown_0x2414

Unknown_0x2411:
	xor a
	jr Unknown_0x2416

Unknown_0x2414:
	ld a,$01

Unknown_0x2416:
	ld e,$27
	ld [de],a
	ret
	call Unknown_0x0F50
	ld a,h
	ld e,$27
	ld [de],a
	ret

Unknown_0x2422:
	ld a,[$FF00+$A4]
	push af
	ld a,$10
	call ChangeBankNoInturrupts
	call Unknown_0x2435
	pop af
	call ChangeBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x2435:
	ld hl,$CD52
	ld a,[hli]
	or [hl]
	ld a,[$FF00+$92]
	ld c,a
	ld a,[$DA1C]
	jr nz,Unknown_0x2449
	cp c
	ret nz
	ld l,$4D
	ld [hl],$00
	ret

Unknown_0x2449:
	sub c
	dec a
	cp $04
	ret c
	sub $03
	ld e,a
	ld a,[hld]
	or a
	jr nz,Unknown_0x245A
	ld a,[hl]
	cp e
	jr nc,Unknown_0x245A
	ld e,a

Unknown_0x245A:
	ld a,[hl]
	sub e
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hl],a
	ld b,$C4
	ld l,$4E
	ld a,[hli]
	ld [bc],a
	inc c
	ld a,[hli]
	ld [bc],a
	inc c
	ld a,e
	ld [bc],a
	ld [$FF00+$84],a
	inc c
	ld a,[hli]
	ld h,[hl]
	ld l,a

Unknown_0x2473:
	ld a,[hli]
	ld [bc],a
	inc c
	dec e
	jr nz,Unknown_0x2473
	ld a,c
	ld [$FF00+$92],a
	ld de,$CD4E
	ld a,[$FF00+$84]
	ld c,a
	ld a,[de]
	add a,c
	ld [de],a
	inc e
	ld a,[de]
	adc a,$00
	ld [de],a
	inc e
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a
	ret

Unknown_0x2491:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	ld [hli],a
	jp Unknown_0x1973

Unknown_0x24A5:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	ld [hli],a
	jp Unknown_0x19DD

Unknown_0x24B9:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	ld [hli],a
	jp Unknown_0x1A05

Unknown_0x24CD:
	xor a
	ld [$FF00+$AD],a
	ld hl,$FFAE
	ld a,[bc]
	ld e,a
	inc bc
	ld [hli],a
	ld a,[bc]
	ld [$FF00+$80],a
	inc bc
	ld [hli],a
	ld a,[bc]
	inc bc
	ld [hli],a
	ld a,[bc]
	ld [hli],a
	ld a,[$FF00+$80]
	sub e
	ld [hli],a
	jp Unknown_0x1A3A

Unknown_0x24E8:
	ld e,$48
	ld a,[de]
	ld h,a

Unknown_0x24EC:
	ld a,[bc]
	inc bc
	ld [$FF00+$80],a
	ld a,[bc]
	inc bc
	push bc
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$07
	ld l,e
	ld a,[hli]
	add a,c
	ld [de],a
	inc e
	ld a,[hl]
	adc a,b
	ld [de],a
	ld a,[$FF00+$80]
	ld l,$45
	bit 7,[hl]
	jr z,Unknown_0x250B
	cpl
	inc a

Unknown_0x250B:
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$04
	ld l,e
	ld a,[hli]
	add a,c
	ld [de],a
	inc e
	ld a,[hl]
	adc a,b
	ld [de],a
	pop bc
	ret

Unknown_0x251B:
	ld e,$44
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x252C
	sub $01
	ld [de],a
	jr c,Unknown_0x254D
	ld l,$60
	ld h,d
	ld [hl],$3F

Unknown_0x252C:
	call Unknown_0x255B
	ld a,[$DD2C]
	bit 1,a
	jr nz,Unknown_0x2546
	bit 0,a
	jr nz,Unknown_0x253C
	xor a
	ret

Unknown_0x253C:
	call Unknown_0x0C61
	ld hl,$DD12
	set 3,[hl]
	scf
	ret

Unknown_0x2546:
	ld e,$4C
	xor a
	ld [de],a
	pop hl
	scf
	ret

Unknown_0x254D:
	ld hl,$DD12
	bit 2,[hl]
	jr nz,Unknown_0x252C
	ld l,$60
	ld h,d
	ld [hl],$2D
	jr Unknown_0x252C

Unknown_0x255B:
	xor a
	ld [$DD2C],a
	ld a,c
	ld [$DD29],a
	ld a,b
	ld [$DD2A],a
	call Unknown_0x2588
	jr c,Unknown_0x2584
	ld h,$A5
	ld l,$00

Unknown_0x2570:
	ld a,[hl]
	inc a
	jr z,Unknown_0x257B
	push hl
	call Unknown_0x26B6
	pop hl
	jr c,Unknown_0x2584

Unknown_0x257B:
	inc h
	ld a,h
	cp $A8
	jr nz,Unknown_0x2570
	call Unknown_0x2753

Unknown_0x2584:
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x2588:
	ld a,[$A05D]
	inc a
	jr z,Unknown_0x25FC
	cp $05
	jr z,Unknown_0x25FC
	cp $01
	jr z,Unknown_0x259D
	ld e,$61
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x25FC

Unknown_0x259D:
	ld e,$04
	ld hl,$A05E
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	jr z,Unknown_0x25B4
	inc a
	jr nz,Unknown_0x25FC
	ld a,c
	cpl
	inc a
	jr z,Unknown_0x25FC
	ld c,a

Unknown_0x25B4:
	ld a,[$FF00+$A2]
	ld b,a
	ld e,$5E
	ld a,[de]
	add a,b
	scf
	sbc a,c
	jr c,Unknown_0x25FC
	ld e,$07
	ld l,$60
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	jr z,Unknown_0x25D5
	inc a
	jr nz,Unknown_0x25FC
	ld a,c
	cpl
	inc a
	jr z,Unknown_0x25FC
	ld c,a

Unknown_0x25D5:
	ld a,[$FF00+$A3]
	ld b,a
	ld e,$5F
	ld a,[de]
	add a,b
	scf
	sbc a,c
	jr c,Unknown_0x25FC
	ld a,[$A05D]
	ld hl,$25F0
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x25EC
	inc h

Unknown_0x25EC:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

UnknownData_0x25F0:
INCBIN "baserom.gb", $25F0, $25FC - $25F0

Unknown_0x25FC:
	and a
	ret
	ld a,[$A057]
	bit 6,a
	jr nz,Unknown_0x2665
	ld hl,$DD2C
	set 2,[hl]
	ld e,$60
	ld a,[de]
	bit 3,a
	jr nz,Unknown_0x2665
	ld hl,$A055
	inc [hl]
	ld h,d
	ld l,$0D
	xor a
	ld [hli],a
	ld [hl],a
	ld l,$0F
	ld [hli],a
	ld [hl],a
	ld l,$22
	ld [hl],$F6
	inc l
	ld [hl],$0D
	ld hl,$A057
	set 7,[hl]
	ld e,$00
	ld a,[de]
	cp $2F
	jr nz,Unknown_0x2641
	ld hl,$A057
	set 0,[hl]
	ld a,$01
	ld [$A059],a
	ld e,$3C
	ld a,[de]
	jr Unknown_0x265B

Unknown_0x2641:
	ld a,[$A057]
	rra
	jr c,Unknown_0x2662
	ld hl,$DD29
	ld a,[hli]
	add a,$00
	ld h,[hl]
	jr nc,Unknown_0x2651
	inc h

Unknown_0x2651:
	ld l,a
	ld a,[hl]
	bit 7,a
	jr nz,Unknown_0x2662
	ld hl,$A059
	inc [hl]

Unknown_0x265B:
	ld [$A058],a
	xor a
	ld [$A05A],a

Unknown_0x2662:
	jp Unknown_0x284F

Unknown_0x2665:
	and a
	ret
	ld e,$60
	ld a,[de]
	bit 1,a
	jr nz,Unknown_0x2680
	ld a,[$A062]
	ld b,a
	ld e,$4C
	ld a,[de]
	sub b
	jp c,Unknown_0x2829
	jp z,Unknown_0x2829
	ld [de],a
	jp Unknown_0x2820

Unknown_0x2680:
	and a
	ret

Unknown_0x2682:
	ld e,$60
	ld a,[de]
	bit 1,a
	jr nz,Unknown_0x26A4
	call Unknown_0x2871
	ld a,[$A045]
	ld [$DD2B],a
	ld a,[$A062]
	ld b,a
	ld e,$4C
	ld a,[de]
	sub b
	jp c,Unknown_0x2836
	jp z,Unknown_0x2836
	ld [de],a
	jp Unknown_0x2820

Unknown_0x26A4:
	and a
	ret
	ld e,$60
	ld a,[de]
	bit 2,a
	jr nz,Unknown_0x26B4
	ld hl,$A06C
	set 3,[hl]
	jr Unknown_0x2682

Unknown_0x26B4:
	and a
	ret

Unknown_0x26B6:
	ld l,$4C
	ld a,[hl]
	or a
	jr z,Unknown_0x2706
	ld e,$60
	ld a,[de]
	bit 7,a
	jr nz,Unknown_0x2706
	ld e,$04
	ld l,e
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	ld [$DD2B],a
	jr z,Unknown_0x26DB
	inc a
	jr nz,Unknown_0x2706
	ld a,c
	cpl
	inc a
	jr z,Unknown_0x2706
	ld c,a

Unknown_0x26DB:
	ld l,$39
	ld b,[hl]
	ld e,$5E
	ld a,[de]
	add a,b
	scf
	sbc a,c
	jr c,Unknown_0x2706
	ld e,$07
	ld l,e
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	jr z,Unknown_0x26FB
	inc a
	jr nz,Unknown_0x2706
	ld a,c
	cpl
	inc a
	jr z,Unknown_0x2706
	ld c,a

Unknown_0x26FB:
	ld l,$3A
	ld b,[hl]
	ld e,$5F
	ld a,[de]
	add a,b
	scf
	sbc a,c
	jr nc,Unknown_0x2708

Unknown_0x2706:
	and a
	ret

Unknown_0x2708:
	ld e,$60
	ld a,[de]
	bit 6,a
	jr nz,Unknown_0x2726
	ld l,$5A
	ld a,[hl]
	cp $06
	jr z,Unknown_0x2726
	cp $0A
	jr z,Unknown_0x2726
	cp $16
	jr z,Unknown_0x2726
	ld e,$07
	ld bc,$4C83
	call Unknown_0x0849

Unknown_0x2726:
	ld e,$60
	ld a,[de]
	bit 4,a
	jr nz,Unknown_0x2706
	ld l,$5A
	ld a,[hl]
	cp $00
	jr nz,Unknown_0x2739
	ld a,[de]
	bit 5,a
	jr nz,Unknown_0x2706

Unknown_0x2739:
	ld e,$4C
	ld l,e
	ld a,[de]
	sub [hl]
	jp c,Unknown_0x2748
	jp z,Unknown_0x2748
	ld [de],a
	jp Unknown_0x2820

Unknown_0x2748:
	ld l,$5A
	ld a,[hl]
	cp $12
	jp nz,Unknown_0x2836
	jp Unknown_0x2829

Unknown_0x2753:
	ld e,$04
	ld l,e
	ld h,$A0
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	ld [$DD2B],a
	jr z,Unknown_0x276D
	inc a
	jr nz,Unknown_0x279A
	ld a,c
	cpl
	inc a
	jr z,Unknown_0x279A
	ld c,a

Unknown_0x276D:
	ld a,[$FF00+$A0]
	ld b,a
	ld e,$5E
	ld a,[de]
	add a,b
	scf
	sbc a,c
	jr c,Unknown_0x279A
	ld e,$07
	ld hl,$CD54
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	inc l
	ld a,[de]
	sbc a,[hl]
	jr z,Unknown_0x278F
	inc a
	jr nz,Unknown_0x279A
	ld a,c
	cpl
	inc a
	jr z,Unknown_0x279A
	ld c,a

Unknown_0x278F:
	ld a,[$FF00+$A1]
	ld b,a
	ld e,$5F
	ld a,[de]
	add a,b
	scf
	sbc a,c
	jr nc,Unknown_0x279C

Unknown_0x279A:
	and a
	ret

Unknown_0x279C:
	ld hl,$DD2C
	set 3,[hl]
	ld e,$61
	ld a,[de]
	bit 6,a
	jr nz,Unknown_0x279A
	call Unknown_0x2809
	jr c,Unknown_0x279A
	ld a,[$A05D]
	cp $01
	jr z,Unknown_0x279A
	cp $04
	jr z,Unknown_0x279A
	ld a,[$A054]
	or a
	jp nz,Unknown_0x27F3
	ld hl,$DD29
	ld a,[hli]
	add a,$01
	ld h,[hl]
	jr nc,Unknown_0x27C9
	inc h

Unknown_0x27C9:
	ld l,a
	ld a,[hl]
	ld [$A044],a
	or a
	jr z,Unknown_0x27D7
	and $0F
	ld b,a
	call Unknown_0x3A8B

Unknown_0x27D7:
	ld a,$FF
	ld [$A05D],a
	ld e,$01
	ld bc,Unknown_0x4EC9
	call Unknown_0x0C48
	ld a,[$DD2B]
	and $80
	or $40
	ld [$A053],a
	ld a,$01
	ld [$A054],a

Unknown_0x27F3:
	ld e,$60
	ld a,[de]
	bit 0,a
	jr nz,Unknown_0x279A
	ld e,$4C
	ld a,[de]
	sub $02
	jp c,Unknown_0x2836
	jp z,Unknown_0x2836
	ld [de],a
	jp Unknown_0x2820

Unknown_0x2809:
	ld a,[$A050]
	cp $09
	jr nz,Unknown_0x281E
	ld a,[$A056]
	or a
	jr nz,Unknown_0x281C
	ld a,[$A055]
	or a
	jr z,Unknown_0x281E

Unknown_0x281C:
	scf
	ret

Unknown_0x281E:
	and a
	ret

Unknown_0x2820:
	ld hl,$DD2C
	set 0,[hl]
	ld b,$08
	jr Unknown_0x2851

Unknown_0x2829:
	ld hl,$DD2C
	set 1,[hl]
	ld b,$0B
	call Unknown_0x2851
	ret nc
	jr Unknown_0x2841

Unknown_0x2836:
	ld hl,$DD2C
	set 1,[hl]
	ld b,$05
	call Unknown_0x2851
	ret nc

Unknown_0x2841:
	ld e,$4A
	ld a,[de]
	ld c,a
	inc e
	ld a,[de]
	ld b,a
	ld h,$02
	call Unknown_0x30E0
	scf
	ret

Unknown_0x284F:
	ld b,$02

Unknown_0x2851:
	ld hl,$DD29
	ld a,[hli]
	add a,b
	ld h,[hl]
	jr nc,Unknown_0x285A
	inc h

Unknown_0x285A:
	ld l,a
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	or c
	jr z,Unknown_0x286F
	ld e,[hl]
	call Unknown_0x0846
	ld a,[$DD2B]
	cpl
	ld l,$5D
	ld [hl],a
	scf
	ret

Unknown_0x286F:
	and a
	ret

Unknown_0x2871:
	ld hl,$A06C
	bit 0,[hl]
	ret nz
	set 0,[hl]
	ld hl,$A076
	ld [hl],$00
	ret

UnknownData_0x287F:
INCBIN "baserom.gb", $287F, $2885 - $287F

Unknown_0x2885:
	push af
	xor a
	ld [$FF00+$80],a
	jr Unknown_0x289A

UnknownData_0x288B:
INCBIN "baserom.gb", $288B, $289A - $288B

Unknown_0x289A:
	push de
	push hl
	ld a,b
	cp c
	jr nc,Unknown_0x28A2
	ld b,c
	ld c,a

Unknown_0x28A2:
	ld h,$D7
	ld l,c
	ld d,[hl]
	inc h
	ld e,[hl]
	dec h
	ld l,b
	ld a,[hl]
	inc h
	ld l,[hl]
	ld h,a
	add hl,de
	push af
	ld d,$D8
	ld a,b
	sub c
	ld e,a
	ld a,[de]
	ld c,a
	dec d
	ld a,[de]
	ld b,a
	ld a,l
	sub c
	ld l,a
	ld a,h
	sbc a,b
	ld h,a
	jr nc,Unknown_0x28C6
	pop af
	ccf
	jr Unknown_0x28C7

Unknown_0x28C6:
	pop af

Unknown_0x28C7:
	rr h
	rr l
	ld b,h
	ld c,l
	ld a,[$FF00+$80]
	rlca
	jr nc,Unknown_0x28DC
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x28DC:
	pop hl
	pop de
	pop af
	ret

Unknown_0x28E0:
	push af
	push hl
	ld a,b
	xor d
	ld [$FF00+$81],a
	bit 7,b
	jr z,Unknown_0x28F4
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x28F4:
	push bc
	ld b,e
	call Unknown_0x2885
	ld l,c
	ld h,b
	ld bc,$0080
	add hl,bc
	ld l,h
	ld h,$00
	pop bc
	ld c,e
	call Unknown_0x2885
	add hl,bc
	ld a,[$FF00+$81]
	rlca
	jr nc,Unknown_0x2917
	ld a,l
	cpl
	add a,$01
	ld l,a
	ld a,h
	cpl
	adc a,$00
	ld h,a

Unknown_0x2917:
	ld c,l
	ld b,h
	pop hl
	pop af
	ret

Unknown_0x291C:
	add a,$40

Unknown_0x291E:
	push hl
	ld [$FF00+$80],a
	and $7F
	cp $40
	jr c,Unknown_0x292A
	cpl
	add a,$81

Unknown_0x292A:
	ld hl,Unknown_0x2988
	ld d,$00
	ld e,a
	add hl,de
	ld e,[hl]
	ld d,$00
	ld a,[$FF00+$80]
	sla a
	jr nc,Unknown_0x293C
	ld d,$FF

Unknown_0x293C:
	pop hl
	ret

Unknown_0x293E:
	push af
	xor a
	ld [$FF00+$87],a
	push de
	push hl
	ld a,b
	cp c
	jr nc,Unknown_0x294A
	ld b,c
	ld c,a

Unknown_0x294A:
	ld h,$D7
	ld l,c
	ld d,[hl]
	inc h
	ld e,[hl]
	dec h
	ld l,b
	ld a,[hl]
	inc h
	ld l,[hl]
	ld h,a
	add hl,de
	push af
	ld d,$D8
	ld a,b
	sub c
	ld e,a
	ld a,[de]
	ld c,a
	dec d
	ld a,[de]
	ld b,a
	ld a,l
	sub c
	ld l,a
	ld a,h
	sbc a,b
	ld h,a
	jr nc,Unknown_0x296E
	pop af
	ccf
	jr Unknown_0x296F

Unknown_0x296E:
	pop af

Unknown_0x296F:
	rr h
	rr l
	ld b,h
	ld c,l
	ld a,[$FF00+$87]
	rlca
	jr nc,Unknown_0x2984
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x2984:
	pop hl
	pop de
	pop af
	ret

Unknown_0x2988:
INCBIN "baserom.gb", $2988, $2A2B - $2988
	ld a,e
	ld [$DD2E],a
	add a,a
	add a,a
	ld b,a
	add a,a
	add a,b
	ld bc,$29C9
	add a,c
	jr nc,Unknown_0x2A3B
	inc b

Unknown_0x2A3B:
	ld c,a
	call Unknown_0x2AF8
	ld a,[bc]
	inc bc
	ld e,a
	push bc
	ld hl,$4232
	ld a,$1F
	call CallForeignBankNoInturrupts
	pop bc
	ld a,[bc]
	inc bc
	ld e,a
	push de
	ld a,[bc]
	inc bc
	push bc
	call ChangeBankNoInturrupts
	pop bc
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld de,$8000
	push bc
	call StoreDEToRAM
	pop bc
	ld a,[bc]
	inc bc
	push bc
	call ChangeBankNoInturrupts
	pop bc
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld de,$9000
	push bc
	call StoreDEToRAM
	pop bc
	ld a,[bc]
	inc bc
	push bc
	call ChangeBankNoInturrupts
	pop bc
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	ld de,$9800
	push bc
	call StoreDEToRAM
	ld a,$47
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld a,$08
	call ChangeBankNoInturrupts
	call Unknown_0x20000
	pop bc
	ld a,[bc]
	ld h,$A0
	ld l,$B3
	ld b,$00
	ld c,b
	ld d,c
	ld e,d
	call Unknown_0x07C4
	pop de
	ld hl,$6011
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$DD2E]
	add a,$03
	ld d,a
	ld e,$04
	ld hl,$4246
	ld a,$1A
	call CallForeignBankNoInturrupts

Unknown_0x2AC4:
	call Unknown_0x0496
	call Unknown_0x086B
	call Unknown_0x04AE
	call Unknown_0x0343
	ld a,[$DD2D]
	and a
	jr nz,Unknown_0x2ADC
	ld a,[$DA46]
	and a
	jr nz,Unknown_0x2AC4

Unknown_0x2ADC:
	ld a,[$DD2E]
	add a,$03
	ld d,a
	ld e,$04
	ld hl,Unknown_0x6C27B
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ld hl,Unknown_0x6DADA
	ld a,$07
	call CallForeignBankNoInturrupts
	ret

Unknown_0x2AF8:
	call Unknown_0x1584
	ld hl,$DD2D
	ld [hl],a
	ld hl,$FFA5
	ld [hl],a
	ld a,$E4
	ld [$CD09],a
	ld a,$D0
	ld [$CD0A],a
	ld a,$E4
	ld [$CD0B],a
	ret

Unknown_0x2B13:
	ld a,[$DD2F]
	inc a
	ret z
	ld a,[$CD4D]
	or a
	ret z
	push de
	call Unknown_0x2435
	pop de
	ld a,[$CD4D]
	or a
	ret nz
	dec a
	ld [$DD2F],a
	ret
	ld de,$CF00
	call StoreDEToRAM
	di
	ld a,e
	sub $00
	ld e,a
	ld a,d
	sbc a,$CF
	ld hl,$CD53
	ld [hld],a
	ld [hl],e
	ld a,$01
	ld [$CD4D],a
	xor a
	ld [$DD58],a
	ld a,$FF
	ld [$FF00+$45],a
	ld [$DA29],a
	jr Unknown_0x2B83
	push af
	push hl
	push bc
	push de
	ld a,[$FF00+$A4]
	ld [$DD34],a
	ld [$DD32],sp
	ld hl,$DA14
	ld a,$77
	ld [hli],a
	ld [hl],$2B
	ld a,$80
	ld [$FF00+$45],a
	ld a,[$DD37]
	call ChangeBankAndHRAM
	ld sp,$DD35
	pop hl
	ld sp,hl
	jp Unknown_0x029F
	push af
	push hl
	push bc
	push de
	ld a,[$FF00+$A4]
	ld [$DD37],a
	ld [$DD35],sp

Unknown_0x2B83:
	ld a,[$DD34]
	call ChangeBankAndHRAM
	ld sp,$DD32
	pop hl
	ld sp,hl
	jp Unknown_0x029F
	ld hl,$DD2D
	ld [hl],$01
	ret

Unknown_0x2B97:
	ld hl,$CE8A
	add hl,bc
	ld [hl],$24
	xor a
	ld hl,$CE92
	add hl,bc
	ld [hl],a
	ld hl,$CE9A
	add hl,bc
	ld [hl],a
	ld hl,$CEA2
	add hl,bc
	ld [hl],a
	ld hl,$CEAA
	add hl,bc
	ld [hl],a
	ld hl,$CEB2
	add hl,bc
	ld [hl],a
	ld hl,Unknown_0x2BF5
	add hl,bc
	ld a,[hl]
	ld hl,$CEBA
	add hl,bc
	ld [hl],a
	inc de
	ld a,[de]
	ld hl,$CE5A
	add hl,bc
	ld [hl],a
	inc de
	ld a,[de]
	ld hl,$CE62
	add hl,bc
	ld [hl],a
	inc de
	ld a,[de]
	sra a
	sra a
	add a,$F0
	ld l,a
	ld h,$2B
	jr nc,Unknown_0x2BDD
	inc h

Unknown_0x2BDD:
	ld a,[hl]
	ld hl,$CE4A
	add hl,bc
	ld [hl],a
	ld hl,$CE52
	add hl,bc
	ld [hl],$01
	ld hl,$CE82
	add hl,bc
	ld [hl],$01
	ret

UnknownData_0x2BF0:
INCBIN "baserom.gb", $2BF0, $2BF5 - $2BF0

Unknown_0x2BF5:
INCBIN "baserom.gb", $2BF5, $2BFD - $2BF5

Unknown_0x2BFD:
	ld a,$1F
	call ChangeBankAndHRAM
	ld b,$07

Unknown_0x2C04:
	ld h,$CE
	ld a,$52
	add a,b
	ld l,a
	ld a,[hl]
	and a
	jr z,Unknown_0x2C48
	ld a,b
	cp $04
	ld a,$1A
	jr c,Unknown_0x2C17
	ld a,$2E

Unknown_0x2C17:
	ld [$FF00+$99],a
	ld h,$CE
	ld a,$5A
	add a,b
	ld l,a
	push hl
	ld e,[hl]
	add a,$08
	ld l,a
	push hl
	ld d,[hl]
	push bc
	call Unknown_0x2C5A
	pop bc
	pop hl
	ld [hl],d
	pop hl
	ld [hl],e
	call Unknown_0x2F31
	ld h,$CE
	ld a,$72
	add a,b
	ld l,a
	push hl
	ld e,[hl]
	add a,$08
	ld l,a
	push hl
	ld d,[hl]
	push bc
	call Unknown_0x2F4B
	pop bc
	pop hl
	ld [hl],d
	pop hl
	ld [hl],e

Unknown_0x2C48:
	ld a,$04
	cp b
	jr nz,Unknown_0x2C52
	ld a,$1E
	call ChangeBankAndHRAM

Unknown_0x2C52:
	dec b
	bit 7,b
	jr z,Unknown_0x2C04
	jp Unknown_0x78368

Unknown_0x2C5A:
	ld h,$CE
	ld a,$52
	add a,b
	ld l,a
	dec [hl]
	jr z,Unknown_0x2C65
	ret

Unknown_0x2C64:
	inc de

Unknown_0x2C65:
	ld h,$CE
	ld a,[de]
	ld c,a
	and $E0
	cp $E0
	jp z,Unknown_0x2D60
	ld a,$4A
	add a,b
	ld l,a
	ld a,[hl]
	cp $0F
	jr nz,Unknown_0x2C97
	bit 4,c
	jp nz,Unknown_0x2CCA
	ld a,c
	and $0F
	cp $0F
	jr z,Unknown_0x2CB3
	add a,$D1
	ld l,a
	ld h,$30
	jr nc,Unknown_0x2C8D
	inc h

Unknown_0x2C8D:
	ld c,[hl]
	ld a,$12
	call Unknown_0x30BF
	ld [hl],c
	jp Unknown_0x2CCA

Unknown_0x2C97:
	ld a,c
	and $1F
	cp $10
	jr z,Unknown_0x2CB3
	bit 4,a
	jr z,Unknown_0x2CA4
	or $E0

Unknown_0x2CA4:
	ld c,a
	ld a,$8A
	add a,b
	ld l,a
	ld a,[hl]
	add a,c
	push de
	call Unknown_0x2EF5
	pop de
	jp Unknown_0x2CCA

Unknown_0x2CB3:
	call Unknown_0x2D34
	ld c,a
	ld h,$CE
	ld a,$82
	add a,b
	ld l,a
	ld a,[hl]
	and a
	jr z,Unknown_0x2CC3
	ld [hl],$01

Unknown_0x2CC3:
	ld a,c
	and a
	jp z,Unknown_0x2C64
	inc de
	ret

Unknown_0x2CCA:
	call Unknown_0x2D34
	ld c,a
	ld h,$CE
	ld a,$82
	add a,b
	ld l,a
	ld [hl],$FF
	add a,$10
	ld l,a
	ld a,[hl]
	and a
	jr z,Unknown_0x2CEF
	push bc
	push de
	ld e,a
	ld h,$CE
	ld a,$82
	add a,b
	ld l,a
	push hl
	ld b,e
	call Unknown_0x293E
	pop hl
	ld [hl],b
	pop de
	pop bc

Unknown_0x2CEF:
	push bc
	call Unknown_0x2CF7
	pop bc
	jp Unknown_0x2CC3

Unknown_0x2CF7:
	ld h,$CE
	ld a,$A2
	add a,b
	ld l,a
	ld a,[hl]
	bit 7,a
	jr nz,Unknown_0x2D33

Unknown_0x2D02:
	add a,a
	add a,a

Unknown_0x2D04:
	push de
	add a,$00
	ld e,a
	ld d,$40
	jr nc,Unknown_0x2D0D
	inc d

Unknown_0x2D0D:
	ld h,$CE
	ld a,$72
	add a,b
	ld l,a
	ld a,[de]
	ld [hl],a
	ld a,$7A
	add a,b
	ld l,a
	inc de
	ld a,[de]
	ld [hl],a
	ld h,$30
	ld a,$C7
	add a,b
	ld l,a
	jr nc,Unknown_0x2D25
	inc h

Unknown_0x2D25:
	ld c,[hl]
	ld h,$CE
	ld a,$C2
	add a,b
	ld l,a
	ld [hl],c
	add a,$A8
	ld l,a
	ld [hl],$01
	pop de

Unknown_0x2D33:
	ret

Unknown_0x2D34:
	ld a,[de]
	and $E0
	cp $C0
	jr nz,Unknown_0x2D3F
	inc de
	ld a,[de]
	jr Unknown_0x2D56

Unknown_0x2D3F:
	ld h,$CE
	ld a,$AA
	add a,b
	ld l,a
	ld a,[de]
	and $E0
	swap a
	srl a
	add a,[hl]
	add a,$15
	ld l,a
	ld a,$00
	adc a,$DE
	ld h,a
	ld a,[hl]

Unknown_0x2D56:
	ld c,a
	ld h,$CE
	ld a,$52
	add a,b
	ld l,a
	ld a,c
	ld [hl],a
	ret

Unknown_0x2D60:
	ld a,c
	cp $F0
	jr nz,Unknown_0x2D7D
	inc de
	ld h,$CE
	ld a,$9A
	add a,b
	ld l,a
	ld a,[de]

Unknown_0x2D6D:
	swap a
	and $F0
	ld c,a
	ld a,[hl]
	and $0F
	or c
	ld [hl],a
	call Unknown_0x3043
	jp Unknown_0x2C64

Unknown_0x2D7D:
	cp $F1
	jr nz,Unknown_0x2DA1
	inc de
	ld a,[de]
	ld c,a
	ld h,$CE
	ld a,$9A
	add a,b
	ld l,a
	ld a,[hl]
	swap a
	and $0F
	add a,c
	bit 7,c
	jr nz,Unknown_0x2D9C
	cp $10
	jr c,Unknown_0x2D9F
	ld a,$0F
	jr Unknown_0x2D9F

Unknown_0x2D9C:
	jr c,Unknown_0x2D9F
	xor a

Unknown_0x2D9F:
	jr Unknown_0x2D6D

Unknown_0x2DA1:
	cp $F2
	jr nz,Unknown_0x2DB6
	inc de
	ld a,[de]
	add a,a
	ld c,a
	add a,a
	add a,c
	ld hl,$CEAA

Unknown_0x2DAE:
	ld c,a
	ld a,l
	add a,b
	ld l,a
	ld [hl],c
	jp Unknown_0x2C64

Unknown_0x2DB6:
	cp $F3
	jr nz,Unknown_0x2DCB
	inc de
	ld h,$CE
	ld a,$52
	add a,b
	ld l,a
	ld a,[de]
	ld [hl],a
	ld a,$82
	add a,b
	ld l,a
	ld [hl],$FF
	inc de
	ret

Unknown_0x2DCB:
	cp $F4
	jr nz,Unknown_0x2DD7
	inc de
	ld a,[de]
	ld hl,$CE92
	jp Unknown_0x2DAE

Unknown_0x2DD7:
	cp $F5
	jr nz,Unknown_0x2DE3
	inc de
	ld a,[de]
	ld hl,$CE8A
	jp Unknown_0x2DAE

Unknown_0x2DE3:
	cp $F6
	jr nz,Unknown_0x2DF8
	inc de
	ld h,$CE
	ld a,$A2
	add a,b
	ld l,a
	ld a,[de]
	ld [hl],a
	bit 7,a
	call nz,Unknown_0x2D02
	jp Unknown_0x2C64

Unknown_0x2DF8:
	cp $F7
	jr nz,Unknown_0x2E04
	inc de
	ld a,[de]
	ld hl,$CEB2
	jp Unknown_0x2DAE

Unknown_0x2E04:
	cp $E2
	jr nz,Unknown_0x2E1A
	inc de
	ld a,[de]
	ld c,a
	inc de
	ld a,[de]
	push de
	ld d,a
	ld e,c
	call Unknown_0x2F11
	call Unknown_0x2CF7
	pop de
	jp Unknown_0x2C64

Unknown_0x2E1A:
	cp $E3
	jr nz,Unknown_0x2E31
	inc de
	ld a,[de]
	push de
	cpl
	inc a
	ld e,a
	ld d,$00
	rla
	jr nc,Unknown_0x2E2A
	dec d

Unknown_0x2E2A:
	call Unknown_0x30AA
	pop de
	jp Unknown_0x2C64

Unknown_0x2E31:
	cp $FE
	jr nz,Unknown_0x2E6B
	inc de
	ld a,[de]
	ld c,a
	push de
	ld h,$CE
	ld a,$4A
	add a,b
	ld l,a
	ld e,[hl]
	srl e
	srl e
	ld d,$00
	ld hl,$CE42
	add hl,de
	ld a,c
	rra
	jr nc,Unknown_0x2E50
	set 4,d

Unknown_0x2E50:
	rra
	jr nc,Unknown_0x2E54
	inc d

Unknown_0x2E54:
	inc e
	dec e
	jr z,Unknown_0x2E5D

Unknown_0x2E58:
	rlc d
	dec e
	jr nz,Unknown_0x2E58

Unknown_0x2E5D:
	ld a,b
	cp $04
	jr c,Unknown_0x2E66
	inc l
	inc l
	inc l
	inc l

Unknown_0x2E66:
	ld [hl],d
	pop de
	jp Unknown_0x2C64

Unknown_0x2E6B:
	cp $E1
	jr nz,Unknown_0x2E77
	inc de
	ld a,[de]
	ld [$CE00],a
	jp Unknown_0x2C64

Unknown_0x2E77:
	cp $FF
	jr nz,Unknown_0x2E8B
	ld h,$CE
	ld a,$52
	add a,b
	ld l,a
	ld [hl],$00
	add a,$18
	ld l,a
	xor a
	ld [hl],a
	jp Unknown_0x3037

Unknown_0x2E8B:
	ld hl,$CEBA
	call Unknown_0x2E94
	jp Unknown_0x2C65

Unknown_0x2E94:
	ld a,l
	add a,b
	ld l,a
	push hl
	ld a,$64
	add a,[hl]
	ld l,a
	ld a,$DD
	adc a,$00
	ld h,a
	call Unknown_0x2EAA
	ld a,l
	sub $64
	pop hl
	ld [hl],a
	ret

Unknown_0x2EAA:
	ld a,[de]
	cp $F8
	jr nz,Unknown_0x2EB7
	inc de
	ld a,[de]
	ld c,a
	inc de
	ld a,[de]
	ld d,a
	ld e,c
	ret

Unknown_0x2EB7:
	cp $FA
	jr nz,Unknown_0x2ECA
	inc de
	inc de
	inc de
	dec hl
	ld [hl],d
	dec hl
	ld [hl],e
	dec de
	ld a,[de]
	ld c,a
	dec de
	ld a,[de]
	ld e,a
	ld d,c
	ret

Unknown_0x2ECA:
	cp $FB
	jr nz,Unknown_0x2ED3
	ld e,[hl]
	inc hl
	ld d,[hl]
	inc hl
	ret

Unknown_0x2ED3:
	cp $FC
	jr nz,Unknown_0x2EE2
	inc de
	ld a,[de]
	ld c,a
	inc de
	dec hl
	ld [hl],d
	dec hl
	ld [hl],e
	dec hl
	ld [hl],c
	ret

Unknown_0x2EE2:
	cp $FD
	jr nz,Unknown_0x2EF4
	dec [hl]
	jr z,Unknown_0x2EF0
	inc hl
	ld e,[hl]
	inc hl
	ld d,[hl]
	dec hl
	dec hl
	ret

Unknown_0x2EF0:
	inc hl
	inc hl
	inc hl
	inc de

Unknown_0x2EF4:
	ret

Unknown_0x2EF5:
	ld e,a
	ld a,$B2
	add a,b
	ld l,a
	ld a,[hl]
	add a,a
	add a,$CF
	ld l,a
	ld a,$00
	adc a,$30
	ld h,a
	ld a,[hli]
	rlc e
	add a,e
	ld e,a
	ld a,[hl]
	adc a,$00
	ld h,a
	ld l,e
	ld a,[hli]
	ld d,a
	ld e,[hl]

Unknown_0x2F11:
	ld h,$CE
	ld a,$4A
	add a,b
	ld l,a
	ld a,[hl]
	cp $0A
	jr z,Unknown_0x2F23
	ld a,$03
	call Unknown_0x30BE
	jr Unknown_0x2F2D

Unknown_0x2F23:
	ld a,$00
	call Unknown_0x30BE
	ld [hl],$80
	inc l
	inc l
	inc l

Unknown_0x2F2D:
	ld a,e
	ld [hli],a
	ld [hl],d
	ret

Unknown_0x2F31:
	ld h,$CE
	ld a,$82
	add a,b
	ld l,a
	ld a,[hl]
	and a
	ret z
	cp $FF
	ret z
	dec [hl]
	ret nz
	ld a,$A2
	add a,b
	ld l,a
	ld a,[hl]
	add a,a
	add a,a
	add a,$02
	jp Unknown_0x2D04

Unknown_0x2F4B:
	ld h,$CE
	ld a,$6A
	add a,b
	ld l,a
	dec [hl]
	jr z,Unknown_0x2F56
	ret

Unknown_0x2F55:
	inc de

Unknown_0x2F56:
	ld h,$CE
	ld a,[de]
	ld c,a
	and $E0
	jr nz,Unknown_0x2F69
	ld a,c
	and $1F
	ld c,a
	ld a,$6A
	add a,b
	ld l,a
	ld [hl],c
	inc de
	ret

Unknown_0x2F69:
	cp $20
	jr nz,Unknown_0x2F86
	push bc
	push de
	call Unknown_0x309C
	call Unknown_0x30AA
	pop de
	pop bc

Unknown_0x2F77:
	ld a,[de]
	and $10
	jr z,Unknown_0x2F55
	ld h,$CE
	ld a,$6A
	add a,b
	ld l,a
	ld [hl],$01
	inc de
	ret

Unknown_0x2F86:
	cp $40
	jr nz,Unknown_0x2F90
	ld a,c
	and $0F
	jp Unknown_0x2FAE

Unknown_0x2F90:
	cp $60
	jr nz,Unknown_0x2FB6
	push de
	call Unknown_0x309C
	ld h,$CE
	ld a,$9A
	add a,b
	ld l,a
	ld a,[hl]
	and $0F
	add a,e
	bit 7,a
	jr z,Unknown_0x2FA7
	xor a

Unknown_0x2FA7:
	cp $10
	jr c,Unknown_0x2FAD
	ld a,$0F

Unknown_0x2FAD:
	pop de

Unknown_0x2FAE:
	push de
	call Unknown_0x3037
	pop de
	jp Unknown_0x2F77

Unknown_0x2FB6:
	cp $80
	jr nz,Unknown_0x300D
	ld h,$CE
	ld a,$4A
	add a,b
	ld l,a
	ld a,[hl]
	cp $0A
	jr z,Unknown_0x2FD8
	ld a,$01
	call Unknown_0x30BE
	ld a,c
	rrca
	rrca
	and $C0
	ld c,a
	ld a,[hl]
	and $3F
	or c
	ld [hl],a
	jp Unknown_0x2F77

Unknown_0x2FD8:
	ld a,c
	and $0F
	ld hl,$CED2
	cp [hl]
	jr z,Unknown_0x2FFE
	push de
	ld [hl],a
	swap a
	ld e,a
	ld d,$00
	ld hl,$DDE5
	add hl,de
	xor a
	ld [$FF00+$1A],a
	call Unknown_0x3001
	ld a,$80
	ld [$FF00+$1A],a
	ld a,[$CE14]
	set 7,a
	ld [$FF00+$1E],a
	pop de

Unknown_0x2FFE:
	jp Unknown_0x2F77

Unknown_0x3001:
	ld de,$FF30
	ld c,$10

Unknown_0x3006:
	ld a,[hli]
	ld [de],a
	inc de
	dec c
	jr nz,Unknown_0x3006
	ret

Unknown_0x300D:
	cp $E0
	jr nz,Unknown_0x3036
	ld a,c
	cp $F0
	jr nz,Unknown_0x3022
	inc de
	ld a,[de]
	ld c,a
	ld a,$00
	call Unknown_0x30B6
	ld [hl],c
	jp Unknown_0x2F55

Unknown_0x3022:
	cp $FF
	jr nz,Unknown_0x302D
	ld a,$6A
	add a,b
	ld l,a
	ld [hl],$00
	ret

Unknown_0x302D:
	ld hl,$CEC2
	call Unknown_0x2E94
	jp Unknown_0x2F56

Unknown_0x3036:
	ret

Unknown_0x3037:
	ld c,a
	ld h,$CE
	ld a,$9A
	add a,b
	ld l,a
	ld a,[hl]
	and $F0
	or c
	ld [hl],a

Unknown_0x3043:
	push de
	ld a,$FF
	sub [hl]
	swap a
	and $0F
	ld e,a
	ld a,[hl]
	and $0F
	sub e
	ld e,a
	jr nc,Unknown_0x3055
	ld e,$00

Unknown_0x3055:
	push hl
	ld hl,$CE01
	ld a,b
	cp $04
	jr c,Unknown_0x305F
	inc l

Unknown_0x305F:
	ld a,$FF
	sub [hl]
	swap a
	and $0F
	ld d,a
	pop hl
	ld a,e
	sub d
	jr nc,Unknown_0x306D
	xor a

Unknown_0x306D:
	ld e,a
	ld a,$4A
	add a,b
	ld l,a
	ld a,[hl]
	cp $0A
	jr z,Unknown_0x3085
	ld a,$02
	call Unknown_0x30BE
	swap e
	ld a,[hl]
	and $0F
	or e
	ld [hl],a
	pop de
	ret

Unknown_0x3085:
	srl e
	srl e
	ld d,$00
	ld hl,Unknown_0x3098
	add hl,de
	ld e,[hl]
	ld a,$02
	call Unknown_0x30B6
	ld [hl],e
	pop de
	ret

Unknown_0x3098:
INCBIN "baserom.gb", $3098, $309C - $3098

Unknown_0x309C:
	ld a,c
	and $0F
	ld d,$00
	bit 3,a
	jr z,Unknown_0x30A8
	or $F0
	dec d

Unknown_0x30A8:
	ld e,a
	ret

Unknown_0x30AA:
	ld a,$03
	call Unknown_0x30B6
	ld a,e
	add a,[hl]
	ld [hli],a
	ld a,d
	adc a,[hl]
	ld [hl],a
	ret

Unknown_0x30B6:
	push af
	ld h,$CE
	ld a,$4A
	add a,b
	ld l,a
	pop af

Unknown_0x30BE:
	add a,[hl]

Unknown_0x30BF:
	ld hl,$FF99
	add a,[hl]
	ld l,a
	ld h,$CE
	ret

UnknownData_0x30C7:
INCBIN "baserom.gb", $30C7, $30E0 - $30C7

Unknown_0x30E0:
	push de
	ld l,c
	ld d,b
	ld e,$00
	jr Unknown_0x30F4

Unknown_0x30E7:
	ld a,c
	add a,l
	daa
	ld c,a
	ld a,b
	adc a,d
	daa
	ld b,a
	ld a,e
	adc a,$00
	daa
	ld e,a

Unknown_0x30F4:
	dec h
	jr nz,Unknown_0x30E7
	ld hl,$DEDD
	ld a,[hl]
	add a,c
	daa
	ld [hld],a
	ld a,[hl]
	adc a,b
	daa
	ld [hld],a
	ld a,[hl]
	adc a,e
	daa
	ld [hl],a
	jr c,Unknown_0x310F
	ld hl,$DEDE

Unknown_0x310B:
	set 0,[hl]
	pop de
	ret

Unknown_0x310F:
	ld a,$99
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld e,$21
	ld hl,$4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld hl,$A084
	ld a,[hl]
	cp $99
	jr nc,Unknown_0x3129
	and a
	inc a
	daa

Unknown_0x3129:
	ld [hl],a
	ld hl,$DEDE
	set 2,[hl]
	jr Unknown_0x310B

Unknown_0x3131:
	xor a
	ld [$DEDE],a
	ld hl,$9C21
	ld c,$70
	ld de,$DEDB
	ld a,[de]
	ld b,a
	inc de
	ld b,a
	swap a
	and $0F
	add a,c
	ld [hli],a
	ld a,b
	and $0F
	add a,c
	ld [hli],a
	ld a,[de]
	inc de
	ld b,a
	swap a
	and $0F
	add a,c
	ld [hli],a
	ld a,b
	and $0F
	add a,c
	ld [hli],a
	ld a,[de]
	ld b,a
	swap a
	and $0F
	add a,c
	ld [hli],a
	ld a,b
	and $0F
	add a,c
	ld [hli],a
	ld a,c
	ld [hl],a
	ld hl,$9C02
	ld a,[$A071]
	and a
	jr nz,Unknown_0x3178
	ld a,[$DEE3]
	rra
	jr Unknown_0x317B

Unknown_0x3178:
	ld a,[$DEE5]

Unknown_0x317B:
	ld d,$06
	and a
	jr z,Unknown_0x3187

Unknown_0x3180:
	ld [hl],$64
	inc hl
	dec d
	dec a
	jr nz,Unknown_0x3180

Unknown_0x3187:
	ld a,d
	and a
	jr z,Unknown_0x3191

Unknown_0x318B:
	ld [hl],$63
	inc hl
	dec d
	jr nz,Unknown_0x318B

Unknown_0x3191:
	ld hl,$9C09
	ld de,$DEE1
	ld a,[de]
	and a
	ld b,a
	ld c,$07
	ld a,$68

Unknown_0x319E:
	jr z,Unknown_0x31A7
	ld [hli],a
	dec c
	dec b
	jr nz,Unknown_0x319E
	jr Unknown_0x31AD

Unknown_0x31A7:
	ld a,$67

Unknown_0x31A9:
	ld [hli],a
	dec c
	jr nz,Unknown_0x31A9

Unknown_0x31AD:
	ld hl,$9C2A
	ld de,$A084
	ld a,[de]
	ld d,$70
	ld e,a
	swap a
	and $0F
	add a,d
	ld [hli],a
	ld a,e
	and $0F
	add a,d
	ld [hl],a
	ld hl,$9C2F
	ld a,[$DB60]
	inc a
	ld e,$70
	add a,e
	ld [hl],a

Unknown_0x31CD:
	ld bc,$9690
	ld de,$DEE0
	ld a,[de]
	swap a
	ld l,a
	and $0F
	ld h,a
	ld a,l
	and $F0
	ld l,a
	sla l
	rl h
	sla l
	rl h
	ld a,[$FF00+$A4]
	push af
	ld a,$07
	call ChangeBankNoInturrupts
	ld de,Unknown_0x1D7DC
	add hl,de
	ld d,$40

Unknown_0x31F4:
	ld a,[hli]
	ld [bc],a
	inc c
	dec d
	jr nz,Unknown_0x31F4
	pop af
	jp ChangeBankNoInturrupts

UnknownData_0x31FE:
INCBIN "baserom.gb", $31FE, $3212 - $31FE
	ld a,$01
	ld [$DF03],a
	ld a,$E4
	ld [$CD09],a
	ld a,$D0
	ld [$CD0A],a
	ld a,$90
	ld [$CD0B],a
	call Unknown_0x33CB
	ld e,$15
	ld hl,$4232
	ld a,$1F
	call CallForeignBankNoInturrupts
	ld a,$0F
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x3C983
	ld de,$8000
	call StoreDEToRAM
	ld bc,$31FE
	ld a,[$A071]
	ld d,a
	add a,a
	add a,a
	add a,d
	add a,c
	ld c,a
	jr nc,Unknown_0x3250
	inc b

Unknown_0x3250:
	ld a,[bc]
	inc bc
	push bc
	call ChangeBankNoInturrupts
	pop bc
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	inc bc
	push bc
	ld de,$8200
	call StoreDEToRAM
	ld a,[$A071]
	and a
	pop bc
	jr z,Unknown_0x3276
	ld a,[bc]
	ld l,a
	inc bc
	ld a,[bc]
	ld h,a
	ld de,$8E00
	call StoreDEToRAM

Unknown_0x3276:
	ld a,$08
	call ChangeBankNoInturrupts
	call Unknown_0x20000
	ld a,$92
	ld [$DB5E],a
	ld bc,$0060
	ld de,$0240
	ld a,$CE
	ld hl,$A0A1
	call Unknown_0x07C4
	ld a,$0A
	ld [$DB58],a
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x2B81C
	call Unknown_0x1289
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1C1DC
	ld a,$67
	ld [$FF00+$40],a
	call Unknown_0x046D
	ld e,$04
	ld hl,$424E
	ld a,$1A
	call CallForeignBankNoInturrupts

Unknown_0x32B8:
	call Unknown_0x0496
	call Unknown_0x086B
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1C259
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1C3CB
	call Unknown_0x04AE
	ld hl,Unknown_0x1DB85
	ld a,$07
	call CallForeignBankNoInturrupts
	ld hl,Unknown_0x1DBD2
	ld a,$07
	call CallForeignBankNoInturrupts
	call Unknown_0x0343
	ld hl,$DD2D
	ld a,[hl]
	and a
	jr nz,Unknown_0x32F1
	ld a,[$DA46]
	and a
	jr nz,Unknown_0x32B8

Unknown_0x32F1:
	ld e,$04
	ld hl,$4280
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ret
	ld a,$FF
	ld [$FF00+$45],a
	ld [$DA29],a
	ld a,$00
	ld [$DF03],a
	ld a,$E4
	ld [$CD09],a
	ld a,$E0
	ld [$CD0A],a
	ld a,$E4
	ld [$CD0B],a
	call Unknown_0x33CB
	ld e,$1C
	ld hl,$4232
	ld a,$1F
	call CallForeignBankNoInturrupts
	ld a,$47
	ld [$FF00+$40],a
	ld a,$0F
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x3C000
	ld de,$8000
	call StoreDEToRAM
	ld a,$08
	call ChangeBankNoInturrupts
	call Unknown_0x20000
	ld a,$0F
	call ChangeBankNoInturrupts
	ld hl,$6111
	ld a,[$DB60]
	add a,a
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x3353
	inc h

Unknown_0x3353:
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld a,[hli]
	ld e,a
	ld a,[hl]
	ld d,a
	ld a,$9A
	ld hl,$A0A1
	call Unknown_0x07C4
	call Unknown_0x34CC
	call Unknown_0x33D5
	call Unknown_0x3467
	call Unknown_0x3492
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1C1DC
	call Unknown_0x046D
	ld a,[$DB60]
	ld e,a
	ld hl,$6011
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$DB60]
	add a,$1B
	ld d,a
	ld e,$04
	ld hl,$4246
	ld a,$1A
	call CallForeignBankNoInturrupts

Unknown_0x3396:
	call Unknown_0x0496
	call Unknown_0x086B
	ld a,$07
	call ChangeBankNoInturrupts
	call Unknown_0x1C259
	call Unknown_0x04AE
	call Unknown_0x0343
	ld hl,$DD2D
	ld a,[hl]
	and a
	jr nz,Unknown_0x33B7
	ld a,[$DA46]
	and a
	jr nz,Unknown_0x3396

Unknown_0x33B7:
	ld a,[$DB60]
	add a,$1B
	ld d,a
	ld e,$04
	ld hl,$427B
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ret

Unknown_0x33CB:
	ld hl,$DD2D
	xor a
	ld [hl],a
	ld hl,$FFA5
	ld [hl],a
	ret

Unknown_0x33D5:
	call Unknown_0x34A3
	ld a,[hli]
	ld [$DB3D],a
	ld c,a
	ld a,[hli]
	ld [$DB3E],a
	push hl
	ld b,a
	ld hl,$CD2D
	ld a,$B3
	jr Unknown_0x33EB

Unknown_0x33EA:
	add a,c

Unknown_0x33EB:
	ld [hli],a
	dec b
	jr nz,Unknown_0x33EA
	pop hl
	ld c,$04
	ld de,$DB45

Unknown_0x33F5:
	ld a,[hli]
	swap a
	ld b,a
	and $F0
	ld [de],a
	inc de
	ld a,b
	and $0F
	ld [de],a
	inc de
	dec c
	jr nz,Unknown_0x33F5
	push hl
	ld bc,$000A
	add hl,bc
	ld de,$B300
	call StoreDEToRAM
	pop hl
	inc hl
	inc hl
	ld a,[hld]
	ld b,a
	ld a,[hld]
	ld l,[hl]
	ld h,a
	ld a,b
	call ChangeBankNoInturrupts
	ld bc,$0003
	add hl,bc
	push hl
	ld a,[hli]
	ld [$DB5C],a
	ld de,$CF00
	call StoreDEToRAM
	ld c,$05
	ld hl,$CF00
	ld de,$C500

Unknown_0x3433:
	ld a,[$DB5C]
	ld b,a

Unknown_0x3437:
	ld a,[hli]
	ld [de],a
	inc e
	dec b
	jr nz,Unknown_0x3437
	ld e,$00
	inc d
	dec c
	jr nz,Unknown_0x3433
	pop hl
	dec hl
	ld a,[hld]
	ld b,a
	ld a,[hld]
	ld l,[hl]
	ld h,a
	ld a,b
	call ChangeBankNoInturrupts
	inc hl
	xor a
	ld [$DB59],a
	ld a,[$DF03]
	and a
	jr nz,Unknown_0x3460
	ld de,$8800
	call StoreDEToRAM
	ret

Unknown_0x3460:
	ld de,$9000
	call StoreDEToRAM
	ret

Unknown_0x3467:
	ld de,$A004
	ld hl,$DB51
	ld a,[de]
	inc e
	sub $50
	ld [hli],a
	ld a,[de]
	inc e
	sbc a,$00
	ld [hli],a
	xor a
	ld [hli],a
	ld [hl],a
	jp Unknown_0x1513

Unknown_0x347D:
	ld hl,$DB51
	xor a
	ld [hli],a
	ld [hli],a
	ld de,$A007
	ld a,[de]
	inc e
	sub $40
	ld [hli],a
	ld a,[de]
	sbc a,$00
	ld [hl],a
	jp Unknown_0x1513

Unknown_0x3492:
	ld hl,$DB51
	ld a,[hli]
	and $F0
	ld [$DB55],a
	inc hl
	ld a,[hl]
	and $F0
	ld [$DB56],a
	ret

Unknown_0x34A3:
	ld a,$0F
	call ChangeBankNoInturrupts
	ld a,[$DB6A]
	and $7F
	ld b,$00

Unknown_0x34AF:
	srl a
	jr nc,Unknown_0x34B6
	inc b
	jr Unknown_0x34AF

Unknown_0x34B6:
	ld a,b
	add a,a
	add a,b
	ld hl,$612D
	add a,l
	ld l,a
	jr nc,Unknown_0x34C1
	inc h

Unknown_0x34C1:
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld a,[hl]
	ld h,b
	ld l,c
	call ChangeBankNoInturrupts
	ret

Unknown_0x34CC:
	ld a,[$DD63]
	ld b,a
	ld a,$00

Unknown_0x34D2:
	ld hl,$6111
	rr b
	call c,Unknown_0x34E0
	inc a
	cp $07
	ret z
	jr Unknown_0x34D2

Unknown_0x34E0:
	push bc
	push af
	add a,a
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x34E9
	inc h

Unknown_0x34E9:
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld a,[hli]
	ld e,a
	ld a,[hl]
	ld d,a
	ld a,$9D
	ld h,$A8
	ld l,$B2
	call Unknown_0x07C4
	pop af
	pop bc
	ret

Unknown_0x34FD:
	ld a,[$FF00+$A4]
	push af
	ld a,[$A069]
	call ChangeBankNoInturrupts
	ld h,d
	ld l,$6A
	ld a,[hli]
	or [hl]
	ld a,[$FF00+$92]
	ld c,a
	ld a,[$DA1C]
	jr nz,Unknown_0x351C
	cp c
	jr nz,Unknown_0x3563
	ld l,$64
	ld [hl],$00
	jr Unknown_0x3563

Unknown_0x351C:
	sub c
	dec a
	cp $04
	jr c,Unknown_0x3563
	sub $03
	ld e,a
	ld a,[hld]
	or a
	jr nz,Unknown_0x352E
	ld a,[hl]
	cp e
	jr nc,Unknown_0x352E
	ld e,a

Unknown_0x352E:
	ld a,[hl]
	sub e
	ld [hli],a
	ld a,[hl]
	sbc a,$00
	ld [hl],a
	ld b,$C4
	ld l,$65
	ld a,[hli]
	ld [bc],a
	inc c
	ld a,[hli]
	ld [bc],a
	inc c
	ld a,e
	ld [bc],a
	ld [$FF00+$84],a
	inc c
	ld a,[hli]
	ld h,[hl]
	ld l,a

Unknown_0x3547:
	ld a,[hli]
	ld [bc],a
	inc c
	dec e
	jr nz,Unknown_0x3547
	ld a,c
	ld [$FF00+$92],a
	ld e,$65
	ld a,[$FF00+$84]
	ld c,a
	ld a,[de]
	add a,c
	ld [de],a
	inc e
	ld a,[de]
	adc a,$00
	ld [de],a
	inc e
	ld a,l
	ld [de],a
	inc e
	ld a,h
	ld [de],a

Unknown_0x3563:
	pop af
	call ChangeBankNoInturrupts
	ret
	ld a,[bc]
	ld [$DF11],a
	inc bc
	ld hl,Unknown_0x6B48B
	ld a,$07
	call CallForeignBankNoInturrupts
	ret
	ld hl,$7452
	ld a,$07
	call CallForeignBankNoInturrupts
	ret
	ld hl,Unknown_0x746C
	ld a,$07
	call CallForeignBankNoInturrupts
	ret
	ld a,[$A071]
	or a
	jr nz,Unknown_0x3594
	ld hl,$A04C
	ld [hl],$0C
	ret

Unknown_0x3594:
	ld hl,$A072
	ld [hl],$06
	ret

Unknown_0x359A:
	ld hl,$FFB4
	ld a,[$FF00+$A6]
	or [hl]
	ld [hl],a
	ret

Unknown_0x35A2:
	xor a
	ld [$FF00+$B4],a
	ret
	ld a,[$DB60]
	sub $02
	ld e,$27
	ld [de],a
	ret

Unknown_0x35AF:
	ld e,$07
	ld a,[de]
	add a,$01
	ld [de],a
	inc e
	ld a,[de]
	adc a,$00
	ld [de],a
	ret

Unknown_0x35BB:
	ld e,$87
	call Unknown_0x35E2
	ld a,[$A071]
	push bc
	ld hl,$35DC
	add a,l
	ld l,a
	jr nc,Unknown_0x35CC
	inc h

Unknown_0x35CC:
	ld a,[hl]
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld h,d
	ld l,$8B
	ld a,[hl]
	add a,c
	ld [hli],a
	ld a,[hl]
	adc a,b
	ld [hl],a
	pop bc
	ret

UnknownData_0x35DC:
INCBIN "baserom.gb", $35DC, $35E0 - $35DC
	ld e,$03

Unknown_0x35E2:
	xor a
	ld [de],a
	inc e
	ld hl,$DB51
	ld a,[bc]
	add a,[hl]
	ld [de],a
	inc hl
	inc e
	inc bc
	ld a,[bc]
	adc a,[hl]
	ld [de],a
	inc hl
	inc e
	xor a
	ld [de],a
	inc e
	inc bc
	ld a,[bc]
	add a,[hl]
	ld [de],a
	inc hl
	inc e
	inc bc
	ld a,[bc]
	adc a,[hl]
	ld [de],a
	inc bc
	ret

Unknown_0x3602:
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0x3613
	bit 4,a
	ld a,$40
	jr nz,Unknown_0x3610
	ld a,$C0

Unknown_0x3610:
	ld e,$45
	ld [de],a

Unknown_0x3613:
	ret

Unknown_0x3614:
	ld e,$7D
	ld a,[de]
	rra
	ret

Unknown_0x3619:
	ld a,[$DA36]
	or a
	jr nz,Unknown_0x3627
	ld a,[$FF00+$A5]
	and $40
	jr z,Unknown_0x3627
	scf
	ret

Unknown_0x3627:
	and a
	ret

Unknown_0x3629:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x3646
	ld a,[$A071]
	ld hl,$3648
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0x363B
	inc h

Unknown_0x363B:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	call Unknown_0x0620
	call Unknown_0xB53A
	jr nc,Unknown_0x3648

Unknown_0x3646:
	and a
	ret

Unknown_0x3648:
	scf
	ret

UnknownData_0x364A:
INCBIN "baserom.gb", $364A, $3650 - $364A

Unknown_0x3650:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x3664
	ld hl,$A500

Unknown_0x3659:
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x3669
	inc h
	ld a,h
	cp $A8
	jr nz,Unknown_0x3659

Unknown_0x3664:
	call Unknown_0x35A2
	and a
	ret

Unknown_0x3669:
	scf
	ret

Unknown_0x366B:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x3686
	ld a,[$A05B]
	cp $03
	jr z,Unknown_0x368D
	ld hl,$A500

Unknown_0x367B:
	ld a,[hl]
	cp $FF
	jr z,Unknown_0x368B
	inc h
	ld a,h
	cp $A8
	jr nz,Unknown_0x367B

Unknown_0x3686:
	call Unknown_0x35A2
	and a
	ret

Unknown_0x368B:
	scf
	ret

Unknown_0x368D:
	ld hl,$A500

Unknown_0x3690:
	ld a,[hl]
	cp $FF
	jr nz,Unknown_0x3686
	inc h
	ld a,h
	cp $A8
	jr nz,Unknown_0x3690
	jr Unknown_0x368B

Unknown_0x369D:
	ld a,[$FF00+$A5]
	and $80
	jr nz,Unknown_0x36A5
	and a
	ret

Unknown_0x36A5:
	ld h,d
	ld e,$4D
	ld a,[de]
	cp $02
	jr nz,Unknown_0x36E4
	ld a,[$FF00+$AF]
	inc a
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld a,[$FF00+$B1]
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x184E
	jr nc,Unknown_0x36C8
	ld a,[$FF00+$9E]
	cp $02
	jr nz,Unknown_0x36E1

Unknown_0x36C8:
	ld a,[$FF00+$B3]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0x36DC
	ld a,[$FF00+$9E]
	cp $02
	jr nz,Unknown_0x36E1

Unknown_0x36DC:
	ld a,[$FF00+$9A]
	ld d,a
	scf
	ret

Unknown_0x36E1:
	ld a,[$FF00+$9A]
	ld d,a

Unknown_0x36E4:
	and a
	ret

Unknown_0x36E6:
	ld a,[$FF00+$A5]
	and $40
	jr nz,Unknown_0x36EE
	and a
	ret

Unknown_0x36EE:
	ld h,d
	ld l,$04
	ld c,[hl]
	inc l
	ld b,[hl]
	ld l,$07
	ld e,[hl]
	inc l
	ld d,[hl]
	call Unknown_0x1646
	cp $10
	jr z,Unknown_0x3716
	cp $90
	jr z,Unknown_0x3716
	cp $18
	jr z,Unknown_0x370D

Unknown_0x3708:
	and a
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x370D:
	ld a,[$DB60]
	call Unknown_0x1611
	or a
	jr nz,Unknown_0x3708

Unknown_0x3716:
	ld a,[$CD4D]
	or a
	jr nz,Unknown_0x3708
	call Unknown_0x1067
	scf
	ld a,[$FF00+$9A]
	ld d,a
	ret

Unknown_0x3724:
	ld a,[$FF00+$A6]
	and $04
	jr nz,Unknown_0x372C
	and a
	ret

Unknown_0x372C:
	ld e,$28
	ld hl,Unknown_0x4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,[$FF00+$9A]
	ld d,a
	scf
	ret

Unknown_0x373B:
	ld e,$45
	ld a,[de]
	rla
	ld a,[$FF00+$A5]
	ld b,$10
	jr c,Unknown_0x3747
	ld b,$20

Unknown_0x3747:
	and b
	jr nz,Unknown_0x374C
	and a
	ret

Unknown_0x374C:
	scf
	ret

Unknown_0x374E:
	call Unknown_0x3847
	ld e,$6D
	ld a,[de]
	cp h
	jr nz,Unknown_0x3759
	and a
	ret

Unknown_0x3759:
	scf
	ret

Unknown_0x375B:
	ld a,[$FF00+$A5]
	and $02
	jr z,Unknown_0x3763
	and a
	ret

Unknown_0x3763:
	scf
	ret

Unknown_0x3765:
	ld a,[$A070]
	or a
	jr nz,Unknown_0x377A
	call Unknown_0x1AB3
	jr nz,Unknown_0x377A
	ld e,$00
	ld bc,$0140
	call Unknown_0x0D35
	scf
	ret

Unknown_0x377A:
	and a
	ret

Unknown_0x377C:
	ld a,[$A070]
	or a
	jr nz,Unknown_0x3784

Unknown_0x3782:
	and a
	ret

Unknown_0x3784:
	call Unknown_0x1AB3
	jr z,Unknown_0x3782
	scf
	ret

Unknown_0x378B:
	ld a,[$A070]
	or a
	jr nz,Unknown_0x37A6
	call Unknown_0x1AB3
	jr nz,Unknown_0x37A6
	call Unknown_0x3A48
	call Unknown_0x3C5A
	ld e,$00
	ld bc,$0140
	call Unknown_0x0D35
	scf
	ret

Unknown_0x37A6:
	and a
	ret

Unknown_0x37A8:
	ld a,[$A070]
	or a
	jr nz,Unknown_0x37B0

Unknown_0x37AE:
	and a
	ret

Unknown_0x37B0:
	call Unknown_0x1AB3
	jr z,Unknown_0x37AE
	call Unknown_0x3A57
	call Unknown_0x3C5A
	scf
	ret

Unknown_0x37BD:
	ld a,[$FF00+$A5]
	and $41
	jr nz,Unknown_0x37C5
	and a
	ret

Unknown_0x37C5:
	xor a
	ld [$A06E],a
	scf
	ret

Unknown_0x37CB:
	ld a,[$FF00+$A5]
	ld b,$00
	and $F1
	jr z,Unknown_0x37DF
	ld b,$02
	bit 0,a
	jr nz,Unknown_0x37DF
	dec b
	bit 7,a
	jr nz,Unknown_0x37DF
	inc b

Unknown_0x37DF:
	ld e,$6F
	ld a,[de]
	cp b
	jr nz,Unknown_0x37E7
	and a
	ret

Unknown_0x37E7:
	ld a,b
	ld [de],a
	scf
	ret

Unknown_0x37EB:
	ld e,$0F
	ld a,[de]
	sub c
	inc e
	ld a,[de]
	sbc a,b
	ccf
	ret

Unknown_0x37F4:
	call Unknown_0x0846

Unknown_0x37F7:
	ld a,$08
	call ChangeBankNoInturrupts
	jp Unknown_0x23358
	ld e,$45
	ld a,[de]
	xor $80
	ld [de],a
	ret
	ld a,[$A05B]
	ld e,$27
	inc a
	ld [de],a
	ret
	ld a,[$FF00+$A5]
	and $40
	jr z,Unknown_0x3818
	ld a,[$A070]
	dec a

Unknown_0x3818:
	ld e,$27
	ld [de],a
	ret
	call Unknown_0x3826
	ld a,$00
	rla
	ld e,$27
	ld [de],a
	ret

Unknown_0x3826:
	ld e,$45
	ld a,[de]
	rla
	ld a,[$FF00+$A5]
	jr c,Unknown_0x3834
	bit 4,a
	jr nz,Unknown_0x383A
	jr Unknown_0x3838

Unknown_0x3834:
	bit 5,a
	jr nz,Unknown_0x383A

Unknown_0x3838:
	and a
	ret

Unknown_0x383A:
	scf
	ret
	call Unknown_0x3847
	ld e,$27
	ld a,h
	ld [de],a
	ld e,$6D
	ld [de],a
	ret

Unknown_0x3847:
	ld e,$4D
	ld a,[de]
	cp $04
	ld h,$00
	jr c,Unknown_0x3861
	ld e,$45
	ld a,[de]
	jr nz,Unknown_0x385C
	inc h
	rla
	jr nc,Unknown_0x3861
	inc h
	jr Unknown_0x3861

Unknown_0x385C:
	inc h
	rla
	jr c,Unknown_0x3861
	inc h

Unknown_0x3861:
	ld e,$4E
	ld a,[de]
	and $F0
	cp $70
	ret nz
	ld a,h
	add a,$03
	ld h,a
	ret

Unknown_0x386E:
	ld e,$45
	ld a,[de]
	rla
	ld a,[$FF00+$A5]
	jr c,Unknown_0x387E
	bit 4,a
	jr z,Unknown_0x3890
	ld e,h
	jp Unknown_0x0CA2

Unknown_0x387E:
	bit 5,a
	jr z,Unknown_0x3890
	ld e,h
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a
	jp Unknown_0x0CD3

Unknown_0x3890:
	ld e,l
	jp Unknown_0x0D04

Unknown_0x3894:
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0x38B8
	bit 4,a
	ld e,$45
	jr z,Unknown_0x38A7
	ld a,$40
	ld [de],a
	ld e,h
	jp Unknown_0x0CA2

Unknown_0x38A7:
	ld a,$C0
	ld [de],a
	ld e,h
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a
	jp Unknown_0x0CD3

Unknown_0x38B8:
	ld e,l
	jp Unknown_0x0D04

Unknown_0x38BC:
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0x38FD
	bit 4,a
	ld e,$45
	ld a,[de]
	jr z,Unknown_0x38DA
	rla
	jr c,Unknown_0x38D2
	ld a,[$FF00+$85]
	ld e,a
	jp Unknown_0x0CA2

Unknown_0x38D2:
	ld a,[$FF00+$86]
	ld e,a
	ld b,h
	ld c,l
	jp Unknown_0x0CA2

Unknown_0x38DA:
	rla
	jr nc,Unknown_0x38ED
	ld a,[$FF00+$85]
	ld e,a
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a
	jp Unknown_0x0CD3

Unknown_0x38ED:
	ld a,[$FF00+$86]
	ld e,a
	ld a,l
	cpl
	add a,$01
	ld c,a
	ld a,h
	cpl
	adc a,$00
	ld b,a
	jp Unknown_0x0CD3

Unknown_0x38FD:
	ld e,$45
	ld a,[de]
	rla
	ld e,$0D
	ld a,[de]
	jr c,Unknown_0x390B
	rla
	jr nc,Unknown_0x390E
	jr Unknown_0x3914

Unknown_0x390B:
	rla
	jr nc,Unknown_0x3914

Unknown_0x390E:
	ld a,[$FF00+$80]
	ld e,a
	jp Unknown_0x0D04

Unknown_0x3914:
	ld a,[$FF00+$81]
	ld e,a
	jp Unknown_0x0D04

Unknown_0x391A:
	call Unknown_0xB6DF
	jr Unknown_0x3927

Unknown_0x391F:
	call Unknown_0x1DC7
	jr Unknown_0x3927

Unknown_0x3924:
	call Unknown_0x1D8B

Unknown_0x3927:
	jr nc,Unknown_0x393C
	ld e,$45
	ld a,[de]
	ld b,a
	ld e,$0E
	ld a,[de]
	xor b
	rla
	jr c,Unknown_0x393A
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a

Unknown_0x393A:
	scf
	ret

Unknown_0x393C:
	and a
	ret

Unknown_0x393E:
	call Unknown_0xB766
	jr Unknown_0x3946

Unknown_0x3943:
	call Unknown_0x1C0A

Unknown_0x3946:
	jr nc,Unknown_0x3950
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	scf
	ret

Unknown_0x3950:
	and a
	ret

Unknown_0x3952:
	call Unknown_0xB766
	jr Unknown_0x395A

Unknown_0x3957:
	call Unknown_0x1C0A

Unknown_0x395A:
	jr nc,Unknown_0x3970
	ld a,[$FF00+$9E]
	cp $01
	jr z,Unknown_0x3968
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a

Unknown_0x3968:
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	scf
	ret

Unknown_0x3970:
	and a
	ret

Unknown_0x3972:
	call Unknown_0xB7DD
	jr Unknown_0x397A

Unknown_0x3977:
	call Unknown_0x1C88

Unknown_0x397A:
	jr nc,Unknown_0x398B
	ld a,[$FF00+$9F]
	cp $31
	call z,Unknown_0x3C63
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	scf
	ret

Unknown_0x398B:
	and a
	ret

Unknown_0x398D:
	call Unknown_0xB7DD
	jr Unknown_0x3995

Unknown_0x3992:
	call Unknown_0x1C88

Unknown_0x3995:
	jr nc,Unknown_0x39BA
	ld a,[$FF00+$9F]
	cp $31
	call z,Unknown_0x3C63
	ld h,d
	ld l,$10
	ld a,[hld]
	rla
	jr c,Unknown_0x39B2
	ld a,[hli]
	sub $B3
	ld a,[hl]
	sbc a,$00
	jr c,Unknown_0x39B2
	ld e,$52
	ld a,$02
	ld [de],a

Unknown_0x39B2:
	ld e,$0F
	xor a
	ld [de],a
	inc e
	ld [de],a
	scf
	ret

Unknown_0x39BA:
	and a
	ret

Unknown_0x39BC:
	call Unknown_0xB766
	jr Unknown_0x39C4

Unknown_0x39C1:
	call Unknown_0x1C0A

Unknown_0x39C4:
	jr nc,Unknown_0x39EE
	ld h,d
	ld l,$10
	ld a,[hld]
	rla
	jr nc,Unknown_0x39DA
	ld a,[hli]
	sub $40
	ld a,[hl]
	sbc a,$FF
	jr nc,Unknown_0x39DA
	ld a,$01
	ld e,$52
	ld [de],a

Unknown_0x39DA:
	ld a,[$FF00+$9E]
	cp $01
	jr z,Unknown_0x39E6
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a

Unknown_0x39E6:
	xor a
	ld e,$0F
	ld [de],a
	inc e
	ld [de],a
	scf
	ret

Unknown_0x39EE:
	and a
	ret
	ld a,[$A058]
	bit 7,a
	ld h,$00
	jr nz,Unknown_0x3A02
	inc h
	ld a,[$A059]
	cp $02
	jr c,Unknown_0x3A02
	inc h

Unknown_0x3A02:
	ld e,$27
	ld a,h
	ld [de],a
	ret
	ld a,[$A058]
	ld [$A05B],a
	ld a,[$A05A]
	ld [$A05C],a
	xor a
	ld [$A074],a
	ret
	ld e,$56
	ld a,[de]
	cp $02
	jr nc,Unknown_0x3A20
	xor a

Unknown_0x3A20:
	ld e,$27
	ld [de],a
	ret

Unknown_0x3A24:
	ld a,[$A070]
	or a
	jr nz,Unknown_0x3A46
	call Unknown_0x1AB3
	jr nz,Unknown_0x3A46
	ld e,$00
	ld bc,$0140
	call Unknown_0x0D35
	call Unknown_0x2809
	jr c,Unknown_0x3A3E
	scf
	ret

Unknown_0x3A3E:
	ld a,$01
	ld [$A070],a
	call Unknown_0x3C5A

Unknown_0x3A46:
	and a
	ret

Unknown_0x3A48:
	ld a,$0C
	ld [$A06E],a
	xor a
	ld [$A06F],a
	ld a,$01
	ld [$A070],a
	ret

Unknown_0x3A57:
	xor a
	ld [$A070],a
	ret

UnknownData_0x3A5C:
INCBIN "baserom.gb", $3A5C, $3A6B - $3A5C
	push bc
	ld a,[$A071]
	ld hl,$3A87
	add a,l
	ld l,a
	jr nc,Unknown_0x3A77
	inc h

Unknown_0x3A77:
	ld a,[hl]
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld h,d
	ld l,$07
	ld a,[hl]
	add a,c
	ld [hli],a
	ld a,[hl]
	adc a,b
	ld [hl],a
	pop bc
	ret

UnknownData_0x3A87:
INCBIN "baserom.gb", $3A87, $3A8B - $3A87

Unknown_0x3A8B:
	ld a,[$A071]
	or a
	ld hl,$A04C
	jr z,Unknown_0x3A9D
	ld a,b
	srl a
	adc a,$00
	ld b,a
	ld hl,$A072

Unknown_0x3A9D:
	ld a,[hl]
	sub b
	ld [hl],a
	jr nc,Unknown_0x3AA4
	xor a
	ld [hl],a

Unknown_0x3AA4:
	ld a,$01
	ld [$A054],a
	ret

Unknown_0x3AAA:
	ld [$A062],a
	ld a,[hli]
	ld [$A05D],a
	ld e,$45
	ld a,[de]
	rla
	ld a,[hli]
	jr nc,Unknown_0x3ABA
	cpl
	inc a

Unknown_0x3ABA:
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$04
	ld a,[de]
	inc e
	add a,c
	ld [$A05E],a
	ld a,[de]
	adc a,b
	ld [$A05F],a
	ld a,[hli]
	ld c,a
	rla
	sbc a,a
	ld b,a
	ld e,$07
	ld a,[de]
	inc e
	add a,c
	ld [$A060],a
	ld a,[de]
	adc a,b
	ld [$A061],a
	ld a,[hli]
	ld [$FF00+$A2],a
	ld a,[hl]
	ld [$FF00+$A3],a
	ret

Unknown_0x3AE4:
	ld a,[$A05B]
	jr Unknown_0x3AEB

Unknown_0x3AE9:
	ld a,$FF

Unknown_0x3AEB:
	ld [$DF15],a
	ld a,[$A05D]
	inc a
	jr nz,Unknown_0x3AF6
	and a
	ret

Unknown_0x3AF6:
	xor a
	ld [$DF0B],a
	ld hl,$FFA3
	ld e,$60
	ld a,[de]
	sub [hl]
	ld c,a
	inc e
	ld a,[de]
	sbc a,$00
	ld b,a
	ld a,c
	and $F0
	ld c,a
	push bc
	dec e
	ld a,[de]
	add a,[hl]
	sub c
	swap a
	and $0F
	inc a
	ld [$DF0E],a
	dec l
	ld e,$5E
	ld a,[de]
	sub [hl]
	ld [$DF0F],a
	ld c,a
	inc e
	ld a,[de]
	sbc a,$00
	ld [$DF10],a
	ld b,a
	ld a,c
	and $F0
	ld c,a
	dec e
	ld a,[de]
	add a,[hl]
	sub c
	swap a
	and $0F
	inc a
	ld [$DF0C],a
	ld [$DF0D],a
	pop de
	jr Unknown_0x3B5B

Unknown_0x3B3F:
	ld hl,$DF0F
	ld a,[hli]
	ld c,a
	ld b,[hl]
	ld a,[$DF0C]
	ld [$DF0D],a
	ld a,e
	add a,$10
	ld e,a
	jr nc,Unknown_0x3B52
	inc d

Unknown_0x3B52:
	jr Unknown_0x3B5B

Unknown_0x3B54:
	ld a,c
	add a,$10
	ld c,a
	jr nc,Unknown_0x3B5B
	inc b

Unknown_0x3B5B:
	call Unknown_0x3B8F
	jr nc,Unknown_0x3B65
	ld a,$01
	ld [$DF0B],a

Unknown_0x3B65:
	ld a,[$DF0D]
	dec a
	ld [$DF0D],a
	jr nz,Unknown_0x3B54
	ld a,[$DF0E]
	dec a
	ld [$DF0E],a
	jr nz,Unknown_0x3B3F
	ld a,[$DF0B]
	or a
	jr nz,Unknown_0x3B82
	ld a,[$FF00+$9A]
	ld d,a
	and a
	ret

Unknown_0x3B82:
	ld a,[$FF00+$9A]
	ld d,a
	call Unknown_0x2871
	ld e,$0F
	call Unknown_0x0F7A
	scf
	ret

Unknown_0x3B8F:
	call Unknown_0x1646
	ld [$DF13],a
	ld h,a
	and $07
	cp $01
	jr nz,Unknown_0x3BF2
	ld a,h
	cp $21
	jr z,Unknown_0x3BCD
	cp $29
	jr nz,Unknown_0x3BAD
	ld a,[$DF15]
	inc a
	jr z,Unknown_0x3BF2
	jr Unknown_0x3BCD

Unknown_0x3BAD:
	cp $41
	jr c,Unknown_0x3BF2
	cp $79
	jr nc,Unknown_0x3BF2
	rra
	rra
	rra
	and $1F
	sub $08
	push hl
	ld hl,$3BF4
	add a,l
	ld l,a
	jr nc,Unknown_0x3BC5
	inc h

Unknown_0x3BC5:
	ld h,[hl]
	ld a,[$DF15]
	cp h
	pop hl
	jr nz,Unknown_0x3BF2

Unknown_0x3BCD:
	push bc
	push de
	ld a,l
	ld [$FF00+$80],a
	call Unknown_0x3C02
	ld a,[$FF00+$80]
	inc a
	call Unknown_0x15A8
	ld a,[$DF13]
	cp $71
	ld e,$19
	jr nz,Unknown_0x3BE6
	ld e,$53

Unknown_0x3BE6:
	ld hl,Unknown_0x4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	pop de
	pop bc
	scf
	ret

Unknown_0x3BF2:
	and a
	ret

UnknownData_0x3BF4:
INCBIN "baserom.gb", $3BF4, $3BFB - $3BF4

Unknown_0x3BFB:
	call Unknown_0x3C09
	ret z
	ld [hl],$10
	ret

Unknown_0x3C02:
	call Unknown_0x3C0E
	ret z
	ld [hl],$05
	ret

Unknown_0x3C09:
	ld hl,$A8B2
	jr Unknown_0x3C11

Unknown_0x3C0E:
	ld hl,$A2A5

Unknown_0x3C11:
	push bc
	push de
	ld a,e
	and $F0
	or $08
	ld e,a
	ld a,c
	and $F0
	or $08
	ld c,a
	ld a,$01
	call Unknown_0x07C4
	ld a,h
	or a
	ld l,$51
	pop de
	pop bc
	ret

Unknown_0x3C2B:
	ld h,d
	ld l,$45
	ld a,[hl]
	rla
	jr nc,Unknown_0x3C3C
	ld a,c
	cpl
	add a,$01
	ld c,a
	ld a,b
	cpl
	adc a,$00
	ld b,a

Unknown_0x3C3C:
	ld l,$0D
	ld [hl],c
	inc l
	ld [hl],b
	ret
	ld a,[$A05B]
	inc a
	ld [$DEE0],a
	ld hl,$DEDE
	set 3,[hl]
	ret
	ld a,[bc]
	inc bc
	ld [$DEE0],a
	ld hl,$DEDE
	set 3,[hl]
	ret

Unknown_0x3C5A:
	ld bc,Unknown_0x3C60
	jp Unknown_0x0F92

Unknown_0x3C60:
INCBIN "baserom.gb", $3C60, $3C63 - $3C60

Unknown_0x3C63:
	ld b,$08
	ld hl,$CD56

Unknown_0x3C68:
	ld a,[hli]
	or a
	jr z,Unknown_0x3C72
	inc l
	inc l
	dec b
	jr nz,Unknown_0x3C68
	ret

Unknown_0x3C72:
	dec l
	ld [hl],$20
	inc l
	ld a,[$FF00+$9C]
	ld c,a
	ld [hli],a
	ld a,[$FF00+$9D]
	ld b,a
	ld [hl],a
	ld a,[bc]
	inc a
	ld [bc],a
	ld [$FF00+$84],a
	ld e,c
	swap c
	call Unknown_0x15B0
	ld hl,$DF12
	inc [hl]
	ld a,[$FF00+$9A]
	ld d,a
	and a
	ret
	call Unknown_0x2AF8
	xor a
	ld hl,$DF37
	ld [hli],a
	ld [hl],a
	ld e,$61
	ld hl,Unknown_0x4299
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,$18
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x62B11
	ld de,$9000
	call StoreDEToRAM
	ld a,$18
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x6249F
	ld de,$8000
	call StoreDEToRAM
	ld hl,$DD30
	ld a,e
	ld [hli],a
	ld [hl],d
	ld a,e
	sub $00
	ld e,a
	ld a,d
	sbc a,$80
	ld d,a
	ld a,e
	ld b,$04

Unknown_0x3CD2:
	srl d
	rra
	dec b
	jr nz,Unknown_0x3CD2
	ld [$DF34],a
	ld a,$18
	call ChangeBankNoInturrupts
	ld hl,Unknown_0x62D6B
	ld de,$9800
	call StoreDEToRAM
	ld hl,$9960
	ld de,$9C00
	ld bc,$00E0
	call LoadDataToRamInit
	ld hl,$DF35
	ld a,$32
	ld [hli],a
	ld a,$62
	ld [hli],a
	xor a
	ld [hl],a
	ld hl,Unknown_0x61B1B
	ld a,$07
	call CallForeignBankNoInturrupts
	call Unknown_0x046D
	ld e,$1D
	ld hl,Unknown_0x62011
	ld a,$1E
	call CallForeignBankNoInturrupts
	ld a,$08
	call ChangeBankNoInturrupts
	call Unknown_0x20000
	ld a,$8B
	ld h,$A0
	ld l,$B3
	ld b,$00
	ld c,b
	ld d,c
	ld e,d
	call Unknown_0x07C4
	ld de,$0C04
	ld hl,$4246
	ld a,$1A
	call CallForeignBankNoInturrupts

Unknown_0x3D36:
	call Unknown_0x0496
	call Unknown_0x086B
	call Unknown_0x04AE
	call Unknown_0x0343
	ld a,[$DD2D]
	and a
	jr nz,Unknown_0x3D4E
	ld a,[$DA46]
	and a
	jr nz,Unknown_0x3D36

Unknown_0x3D4E:
	ld de,$0C04
	ld hl,Unknown_0x6027B
	ld a,$1A
	call CallForeignBankNoInturrupts
	call Unknown_0x0437
	ld hl,Unknown_0x61ADA
	ld a,$07
	call CallForeignBankNoInturrupts
	ret

Unknown_0x3D65:
	ld hl,$DF35
	ld a,[hli]
	ld c,a
	ld a,[hl]
	ld h,a
	ld l,c
	ld e,$43
	ld a,[hli]
	ld [de],a
	ld a,[hli]
	ld [$DD2F],a
	ld [$DF39],a
	ld a,[$FF00+$A4]
	push hl
	push af
	push de
	ld a,$07
	call ChangeBankNoInturrupts
	ld a,[$DF39]
	ld l,a
	ld h,$00
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	add hl,hl
	ld de,$5629
	add hl,de
	pop de
	ld e,$18
	ld a,[hli]
	ld [de],a
	dec e
	ld a,[hli]
	ld [de],a
	dec e
	ld a,[hl]
	ld [de],a
	ld e,$46
	ld a,[$DF34]
	ld [de],a
	pop af
	call ChangeBankNoInturrupts
	pop hl
	ld bc,$DF35
	ld a,l
	ld [bc],a
	inc bc
	ld a,h
	ld [bc],a
	ld hl,Unknown_0x61A1C
	ld a,$07
	call CallForeignBankNoInturrupts
	ret

Unknown_0x3DB8:
	ld hl,$DF35
	ld a,[hli]
	ld c,a
	ld a,[hl]
	ld h,a
	ld l,c
	ld a,[hli]
	and $07
	swap a
	rla
	ld bc,$9C00
	add a,c
	ld c,a
	jr nc,Unknown_0x3DCE
	inc b

Unknown_0x3DCE:
	ld a,[hli]
	add a,c
	ld c,a
	jr nc,Unknown_0x3DD4
	inc b

Unknown_0x3DD4:
	ld a,[$FF00+$92]
	ld e,a
	ld d,$C4
	ld a,[hli]
	push af
	bit 0,a
	jr nz,Unknown_0x3DE3
	ld a,$07
	jr Unknown_0x3DE6

Unknown_0x3DE3:
	ld a,$0B
	dec c

Unknown_0x3DE6:
	ld [$FF00+$4B],a
	ld a,c
	ld [de],a
	inc e
	ld a,b
	ld [de],a
	inc e
	pop af
	ld [de],a
	inc e
	ld b,a

Unknown_0x3DF2:
	ld a,[hli]
	ld [de],a
	inc e
	dec b
	jr nz,Unknown_0x3DF2
	ld a,e
	ld [$FF00+$92],a
	ld bc,$DF35
	ld a,l
	ld [bc],a
	inc bc
	ld a,h
	ld [bc],a
	ret

UnknownData_0x3E04:
INCBIN "baserom.gb", $3E04, $4000 - $3E04