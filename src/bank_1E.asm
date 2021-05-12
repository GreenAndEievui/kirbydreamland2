SECTION "Bank1E", ROMX, BANK[$1E]

UnknownData_0x78000:
INCBIN "baserom.gb", $78000, $78232 - $78000
UnknownForeignCall_0x78232:
	ld hl,Unknown_0x7846E
	ld de,$DDE5
	ld bc,$0030
	call LoadDataToRamInit
	ld hl,Unknown_0x79B6F
	ld de,$DE15
	ld bc,$00C6
	call LoadDataToRamInit
	ld a,$80
	ld [$FF00+$26],a
	ld a,$77
	ld [$FF00+$24],a
	ld a,$FF
	ld [$FF00+$25],a
	ld a,$FF
	ld [$CE01],a
	ld [$CE02],a
	ld [$CED2],a
	ld hl,$CE06
	ld b,$14
	ld a,$AA

Unknown_0x78268:
	ld [hli],a
	dec b
	jr nz,Unknown_0x78268
	ld hl,Unknown_0x30E0
	call Unknown_0x3001
	ld e,$FF
	ld a,$1F
	ld hl,$4232
	call CallForeignBank
	ld e,$FF
	call Unknown_0x78299
	call Unknown_0x78387
	ld hl,$FF14
	set 7,[hl]
	ld hl,$FF19
	set 7,[hl]
	ld hl,$FF1E
	set 7,[hl]
	ld hl,$FF23
	set 7,[hl]
	ret

Unknown_0x78299:
	ld a,e
	cp $FF
	jp z,Unknown_0x7831C
	ld d,$00
	ld a,[$CE03]
	and a
	jr z,Unknown_0x782D5
	ld hl,$5CF9
	add hl,de
	and [hl]
	jr z,Unknown_0x782D5
	ld bc,$0003

Unknown_0x782B1:
	ld hl,$5CF9
	add hl,de
	ld a,[hl]
	ld hl,$CECA
	add hl,bc
	and [hl]
	jr z,Unknown_0x782D0
	ld hl,$CECE
	add hl,bc
	ld a,[hl]
	ld hl,$5D5B
	add hl,de
	cp [hl]
	jp c,Unknown_0x7831B
	ld hl,$CE52
	add hl,bc
	ld [hl],$00

Unknown_0x782D0:
	dec c
	bit 7,c
	jr z,Unknown_0x782B1

Unknown_0x782D5:
	ld hl,$5CF9
	add hl,de
	ld a,[hl]
	ld [$CE04],a
	ld hl,$5D5B
	add hl,de
	ld a,[hl]
	ld c,a
	ld hl,$5C35
	add hl,de
	add hl,de
	ld a,[hli]
	ld e,a
	ld d,[hl]
	ld a,[de]
	ld h,a
	ld l,c
	push hl
	ld bc,$0003

Unknown_0x782F2:
	ld hl,$CE52
	add hl,bc
	ld a,[hl]
	and a
	jr nz,Unknown_0x78312
	call Unknown_0x2B97
	ld hl,sp+$00
	ld a,[hl]
	ld hl,$CECE
	add hl,bc
	ld [hl],a
	ld a,[$CE04]
	ld hl,$CECA
	add hl,bc
	ld [hl],a
	pop hl
	dec h
	push hl
	jr z,Unknown_0x78317

Unknown_0x78312:
	dec c
	bit 7,c
	jr z,Unknown_0x782F2

Unknown_0x78317:
	pop hl
	jp Unknown_0x78357

Unknown_0x7831B:
	ret

Unknown_0x7831C:
	ld bc,$0003

Unknown_0x7831F:
	ld hl,$CE52
	add hl,bc
	ld [hl],b
	ld hl,$CECA
	add hl,bc
	ld [hl],b
	ld hl,$CECE
	add hl,bc
	ld [hl],$FF
	dec c
	bit 7,c
	jr z,Unknown_0x7831F
	ld hl,Unknown_0x78343
	ld de,$CE1A
	ld c,$14

Unknown_0x7833C:
	ld a,[hli]
	ld [de],a
	inc de
	dec c
	jr nz,Unknown_0x7833C
	ret

Unknown_0x78343:
INCBIN "baserom.gb", $78343, $78357 - $78343

Unknown_0x78357:
	ld a,[$CECA]
	ld hl,$CECB
	ld c,$03

Unknown_0x7835F:
	or [hl]
	inc hl
	dec c
	jr nz,Unknown_0x7835F
	ld [$CE03],a
	ret

Unknown_0x78368:
	ld b,$03

Unknown_0x7836A:
	ld h,$CE
	ld a,$52
	add a,b
	ld l,a
	ld a,[hl]
	and a
	jr nz,Unknown_0x7837F
	ld a,$CE
	add a,b
	ld l,a
	ld [hl],$FF
	add a,$FC
	ld l,a
	ld [hl],$00

Unknown_0x7837F:
	dec b
	bit 7,b
	jr z,Unknown_0x7836A
	call Unknown_0x78357

Unknown_0x78387:
	ld de,$CE2E
	ld a,[$CE03]
	bit 0,a
	jr z,Unknown_0x78393
	ld e,$1A

Unknown_0x78393:
	ld b,$00
	ld hl,$CE06
	ld c,$10

Unknown_0x7839A:
	ld a,[de]
	cp [hl]
	jr z,Unknown_0x783A6
	ld [hl],a
	ld [$FF00+c],a
	ld a,c
	cp $12
	jr nz,Unknown_0x783A6
	inc b

Unknown_0x783A6:
	inc l
	inc e
	inc c
	ld a,c
	cp $15
	jr nz,Unknown_0x7839A
	dec b
	jr nz,Unknown_0x783B8
	ld a,[$CE0A]
	set 7,a
	ld [$FF00+$14],a

Unknown_0x783B8:
	ld de,$CE34
	ld a,[$CE03]
	bit 1,a
	jr z,Unknown_0x783C4
	ld e,$20

Unknown_0x783C4:
	ld b,$00
	ld hl,$CE0C
	ld c,$16

Unknown_0x783CB:
	ld a,[de]
	cp [hl]
	jr z,Unknown_0x783D7
	ld [hl],a
	ld [$FF00+c],a
	ld a,c
	cp $17
	jr nz,Unknown_0x783D7
	inc b

Unknown_0x783D7:
	inc l
	inc e
	inc c
	ld a,c
	cp $1A
	jr nz,Unknown_0x783CB
	dec b
	jr nz,Unknown_0x783E9
	ld a,[$CE0F]
	set 7,a
	ld [$FF00+$19],a

Unknown_0x783E9:
	ld de,$CE38
	ld a,[$CE03]
	bit 4,a
	jr z,Unknown_0x783F5
	ld e,$24

Unknown_0x783F5:
	ld hl,$CE10
	ld c,$1A

Unknown_0x783FA:
	ld a,[de]
	cp [hl]
	jr z,Unknown_0x78400
	ld [hl],a
	ld [$FF00+c],a

Unknown_0x78400:
	inc l
	inc e
	inc c
	ld a,c
	cp $1F
	jr nz,Unknown_0x783FA
	ld de,$CE3E
	ld a,[$CE03]
	bit 3,a
	jr z,Unknown_0x78414
	ld e,$2A

Unknown_0x78414:
	ld b,$00
	ld hl,$CE16
	ld c,$20

Unknown_0x7841B:
	ld a,[de]
	cp [hl]
	jr z,Unknown_0x78427
	ld [hl],a
	ld [$FF00+c],a
	ld a,c
	cp $21
	jr nz,Unknown_0x78427
	inc b

Unknown_0x78427:
	inc l
	inc e
	inc c
	ld a,c
	cp $24
	jr nz,Unknown_0x7841B
	dec b
	jr nz,Unknown_0x78439
	ld a,[$CE19]
	set 7,a
	ld [$FF00+$23],a

Unknown_0x78439:
	ld a,[$CE03]
	ld c,a
	ld a,[$CE46]
	bit 0,c
	jr z,Unknown_0x78447
	ld a,[$CE42]

Unknown_0x78447:
	ld b,a
	ld a,[$CE47]
	bit 1,c
	jr z,Unknown_0x78452
	ld a,[$CE43]

Unknown_0x78452:
	or b
	ld b,a
	ld a,[$CE48]
	bit 4,c
	jr z,Unknown_0x7845E
	ld a,[$CE44]

Unknown_0x7845E:
	or b
	ld b,a
	ld a,[$CE49]
	bit 3,c
	jr z,Unknown_0x7846A
	ld a,[$CE45]

Unknown_0x7846A:
	or b
	ld [$FF00+$25],a
	ret

Unknown_0x7846E:
INCBIN "baserom.gb", $7846E, $79B6F - $7846E

Unknown_0x79B6F:
INCBIN "baserom.gb", $79B6F, $79DBD - $79B6F

Unknown_0x79DBD:
	ld a,[hl]
	and $07
	ret z
	ld b,a
	ld c,$00

Unknown_0x79DC4:
	push bc
	ld a,$00
	ld [$FF00+c],a
	ld a,$30
	ld [$FF00+c],a
	ld b,$10

Unknown_0x79DCD:
	ld e,$08
	ld a,[hli]
	ld d,a

Unknown_0x79DD1:
	bit 0,d
	ld a,$10
	jr nz,Unknown_0x79DD9
	ld a,$20

Unknown_0x79DD9:
	ld [$FF00+c],a
	ld a,$30
	ld [$FF00+c],a
	rr d
	dec e
	jr nz,Unknown_0x79DD1
	dec b
	jr nz,Unknown_0x79DCD
	ld a,$20
	ld [$FF00+c],a
	ld a,$30
	ld [$FF00+c],a
	pop bc
	dec b
	ret z
	call Unknown_0x79DF3
	jr Unknown_0x79DC4

Unknown_0x79DF3:
	ld de,$1B58

Unknown_0x79DF6:
	nop
	nop
	nop
	dec de
	ld a,d
	or e
	jr nz,Unknown_0x79DF6
	ret
	ld de,$06D6

Unknown_0x79E02:
	nop
	nop
	nop
	dec de
	ld a,d
	or e
	jr nz,Unknown_0x79E02
	ret

Unknown_0x79E0B:
	ld hl,Unknown_0x79E7C
	call Unknown_0x79DBD
	call Unknown_0x79DF3
	ld a,[$FF00+$00]
	and $03
	cp $03
	jr nz,Unknown_0x79E61
	ld a,$20
	ld [$FF00+$00],a
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	call Unknown_0x79DF3
	ld a,$30
	ld [$FF00+$00],a
	call Unknown_0x79DF3
	ld a,$10
	ld [$FF00+$00],a
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	call Unknown_0x79DF3
	ld a,$30
	ld [$FF00+$00],a
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	ld a,[$FF00+$00]
	call Unknown_0x79DF3
	ld a,[$FF00+$00]
	and $03
	cp $03
	jr nz,Unknown_0x79E61
	ld hl,Unknown_0x79E6C
	call Unknown_0x79DBD
	call Unknown_0x79DF3
	sub a
	ret

Unknown_0x79E61:
	ld hl,Unknown_0x79E6C
	call Unknown_0x79DBD
	call Unknown_0x79DF3
	scf
	ret

Unknown_0x79E6C:
INCBIN "baserom.gb", $79E6C, $79E7C - $79E6C

Unknown_0x79E7C:
INCBIN "baserom.gb", $79E7C, $79E8C - $79E7C

Unknown_0x79E8C:
	ld a,[$CD00]
	push af
	ld a,$E4
	ld [$CD00],a
	ld [$FF00+$47],a
	push de
	ld de,$8800
	call StoreDEToRAM
	ld hl,$9800
	ld de,$000C
	ld a,$80
	ld c,$0D

Unknown_0x79EA8:
	ld b,$14

Unknown_0x79EAA:
	ld [hli],a
	inc a
	dec b
	jr nz,Unknown_0x79EAA
	add hl,de
	dec c
	jr nz,Unknown_0x79EA8
	ld a,$01
	ld [$FF00+$40],a
	call Unknown_0x0483
	call Unknown_0x79DF3
	pop hl
	call Unknown_0x79DBD
	call Unknown_0x79DF3
	call Unknown_0x0452
	pop af
	ld [$CD00],a
	ld [$FF00+$47],a
	ret

Unknown_0x79ECE:
	ld hl,Unknown_0x79EE8
	ld bc,$0010
	ld e,$08

Unknown_0x79ED6:
	push hl
	push bc
	push de
	call Unknown_0x79DBD
	call Unknown_0x79DF3
	pop de
	pop bc
	pop hl
	add hl,bc
	dec e
	jr nz,Unknown_0x79ED6
	ret

UnknownData_0x79EE7:
INCBIN "baserom.gb", $79EE7, $79EE8 - $79EE7

Unknown_0x79EE8:
INCBIN "baserom.gb", $79EE8, $79F68 - $79EE8
	ld a,[$DEED]
	or a
	ret z
	xor a
	ld hl,$DEEE
	ld bc,$0010
	call LoadByteToRamInit
	call Unknown_0x79DF3
	ld d,$03
	call Unknown_0x79FEB
	call Unknown_0x79ECE
	ld hl,Unknown_0x7A087
	call Unknown_0x79DBD
	call Unknown_0x79DF3
	ld hl,Unknown_0x7B274
	ld de,$60A7
	call Unknown_0x79E8C
	ld hl,Unknown_0x7AF8A
	ld de,$60C7
	call Unknown_0x79E8C
	ld hl,$DEEE
	ld a,$98
	inc a
	ld [hli],a
	ld [hl],$00
	inc hl
	xor a
	ld bc,$000E
	call LoadByteToRamInit
	ld hl,Unknown_0x7A0D7
	ld de,$DEEE
	call Unknown_0x79E8C
	ld hl,$DEEE
	ld a,$98
	inc a
	ld [hli],a
	ld [hl],$01
	inc hl
	xor a
	ld bc,$000E
	call LoadByteToRamInit
	ld hl,Unknown_0x7AB24
	ld de,$DEEE
	call Unknown_0x79E8C
	ld hl,Unknown_0x7ACC1
	ld de,$60B7
	call Unknown_0x79E8C
	ld hl,Unknown_0x7A097
	call Unknown_0x79DBD
	ret
	call Unknown_0x79E0B
	ld a,$00
	rla
	ld [$DEED],a
	ret

Unknown_0x79FEB:
	ld a,[$DEED]
	or a
	ret z
	ld hl,$DEEE
	ld a,$B8
	inc a
	ld [hli],a
	ld [hl],d
	ld hl,$DEEE
	call Unknown_0x79DBD
	call Unknown_0x79DF3
	ret
	xor a
	ld [$FF00+$84],a
	call Unknown_0x7A039
	ret z
	jp Unknown_0x79DF3

Unknown_0x7A00C:
	xor a
	ld [$FF00+$84],a
	jr Unknown_0x7A039
	ld a,[$DEED]
	or a
	ret z
	ld a,$80
	ld [$FF00+$84],a
	ld a,e
	ld [$DEFE],a
	ld a,[$CD00]
	or a
	ld a,$34
	jr z,Unknown_0x7A028
	ld a,$35

Unknown_0x7A028:
	call Unknown_0x7A042
	jp Unknown_0x79DF3
	call Unknown_0x7A035
	ret z
	jp Unknown_0x79DF3

Unknown_0x7A035:
	ld a,$80
	ld [$FF00+$84],a

Unknown_0x7A039:
	ld a,[$DEED]
	or a
	ret z
	ld a,e
	ld [$DEFE],a

Unknown_0x7A042:
	ld l,a
	ld h,$00
	add hl,hl
	add hl,hl
	ld c,l
	ld b,h
	ld hl,$DEEE
	ld [hl],$51
	inc hl
	ld a,$04

Unknown_0x7A051:
	ld [hl],c
	inc hl
	ld [hl],b
	inc hl
	inc bc
	dec a
	jr nz,Unknown_0x7A051
	ld a,[$FF00+$84]
	or e
	ld [hli],a
	xor a
	ld bc,$0006
	call LoadByteToRamInit
	ld hl,$DEEE
	call Unknown_0x79DBD
	xor a
	inc a
	ret
	ld a,[$DEED]
	or a
	ret z
	ld hl,Unknown_0x7BADF
	swap e
	ld a,e
	and $F0
	ld c,a
	ld a,e
	and $0F
	ld b,a
	add hl,bc
	call Unknown_0x79DBD
	call Unknown_0x79DF3
	ret

Unknown_0x7A087:
INCBIN "baserom.gb", $7A087, $7A097 - $7A087

Unknown_0x7A097:
INCBIN "baserom.gb", $7A097, $7A0D7 - $7A097

Unknown_0x7A0D7:
INCBIN "baserom.gb", $7A0D7, $7AB24 - $7A0D7

Unknown_0x7AB24:
INCBIN "baserom.gb", $7AB24, $7ACC1 - $7AB24

Unknown_0x7ACC1:
INCBIN "baserom.gb", $7ACC1, $7AF8A - $7ACC1

Unknown_0x7AF8A:
INCBIN "baserom.gb", $7AF8A, $7B274 - $7AF8A

Unknown_0x7B274:
INCBIN "baserom.gb", $7B274, $7BADF - $7B274

Unknown_0x7BADF:
INCBIN "baserom.gb", $7BADF, $7C000 - $7BADF


