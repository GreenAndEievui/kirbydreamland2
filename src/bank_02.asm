SECTION "Bank02", ROMX, BANK[$02]

UnknownData_0x8000:
INCBIN "baserom.gb", $8000, $8040 - $8000
	call Unknown_0x359A
	call Unknown_0x3602
	call Unknown_0x80C0
	jr nc,Unknown_0x8053
	ld e,$02
	ld bc,$4025
	call Unknown_0x0846

Unknown_0x8053:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x806E
	ld e,$02
	ld bc,$42BD
	jp Unknown_0x37F4

Unknown_0x806E:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x807C
	ld e,$02
	ld bc,$41ED
	jp Unknown_0x37F4

Unknown_0x807C:
	call Unknown_0x3650
	jr nc,Unknown_0x8089
	ld e,$02
	ld bc,$4393
	jp Unknown_0x37F4

Unknown_0x8089:
	call Unknown_0xB663
	jr nc,Unknown_0x8096
	ld e,$02
	ld bc,$40F5
	jp Unknown_0x37F4

Unknown_0x8096:
	call Unknown_0x369D
	jr nc,Unknown_0x80A3
	ld e,$02
	ld bc,$4352
	jp Unknown_0x37F4

Unknown_0x80A3:
	call Unknown_0x36E6
	jr nc,Unknown_0x80B0
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x80B0:
	call Unknown_0x3724
	jr nc,Unknown_0x80BD
	ld e,$01
	ld bc,$40F9
	jp Unknown_0x37F4

Unknown_0x80BD:
	jp Unknown_0x37F7

Unknown_0x80C0:
	ld e,$45
	ld a,[de]
	ld b,a
	ld e,$3B
	ld a,[de]
	xor b
	rla
	ret nc
	ld a,b
	ld [de],a
	ld a,$07
	ld e,$3C
	ld [de],a
	ld a,$04
	ld e,$15
	ld [de],a
	ret

UnknownData_0x80D7:
INCBIN "baserom.gb", $80D7, $80DA - $80D7

Unknown_0x80DA:
INCBIN "baserom.gb", $80DA, $80E2 - $80DA
	ld e,$3C
	ld a,[de]
	cp $04
	ld a,$04
	jr nc,Unknown_0x80EC
	dec a

Unknown_0x80EC:
	ld e,$15
	ld [de],a
	ld e,$3C
	ld a,[de]
	dec a
	ld [de],a
	ret

UnknownData_0x80F5:
INCBIN "baserom.gb", $80F5, $8133 - $80F5
	call Unknown_0x359A
	call Unknown_0xB96D

Unknown_0x8139:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0xB6C5
	jr nc,Unknown_0x8151
	ld e,$02
	ld bc,$4025
	jp Unknown_0x37F4

Unknown_0x8151:
	call Unknown_0xB5A1
	jr nc,Unknown_0x815E
	ld e,$02
	ld bc,$42BD
	jp Unknown_0x37F4

Unknown_0x815E:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x816C
	ld e,$02
	ld bc,$41ED
	jp Unknown_0x37F4

Unknown_0x816C:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x817B
	ld e,$02
	ld bc,$4025
	jp Unknown_0x37F4

Unknown_0x817B:
	call Unknown_0x3650
	jr nc,Unknown_0x8188
	ld e,$02
	ld bc,$4393
	jp Unknown_0x37F4

Unknown_0x8188:
	call Unknown_0x369D
	jr nc,Unknown_0x8195
	ld e,$02
	ld bc,$4352
	jp Unknown_0x37F4

Unknown_0x8195:
	call Unknown_0x373B
	jr nc,Unknown_0x81A2
	ld e,$02
	ld bc,$41CC
	jp Unknown_0x37F4

Unknown_0x81A2:
	call Unknown_0x36E6
	jr nc,Unknown_0x81AF
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x81AF:
	call Unknown_0x374E
	jr nc,Unknown_0x81BC
	ld e,$02
	ld bc,$40F5
	jp Unknown_0x37F4

Unknown_0x81BC:
	call Unknown_0x3724
	jr nc,Unknown_0x81C9
	ld e,$01
	ld bc,$40F9
	jp Unknown_0x37F4

Unknown_0x81C9:
	jp Unknown_0x37F7

UnknownData_0x81CC:
INCBIN "baserom.gb", $81CC, $81E4 - $81CC
	call Unknown_0x359A
	call Unknown_0xB968
	jp Unknown_0x8139

UnknownData_0x81ED:
INCBIN "baserom.gb", $81ED, $822F - $81ED
	call Unknown_0x359A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x8240
	ld e,$02
	ld bc,$4203
	jp Unknown_0x37F4

Unknown_0x8240:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x8253
	ld h,d
	ld l,$1F
	ld [hl],$42
	inc l
	ld [hl],$42
	inc l
	ld [hl],$D8

Unknown_0x8253:
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBAB3
	call Unknown_0x80C0
	jr nc,Unknown_0x826B
	ld e,$02
	ld bc,$41FC
	call Unknown_0x0846

Unknown_0x826B:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x8286
	ld e,$02
	ld bc,$400A
	jp Unknown_0x37F4

Unknown_0x8286:
	call Unknown_0x39BC
	jr nc,Unknown_0x8293
	ld e,$02
	ld bc,$42BD
	jp Unknown_0x37F4

Unknown_0x8293:
	call Unknown_0x3650
	jr nc,Unknown_0x82A0
	ld e,$02
	ld bc,$4393
	jp Unknown_0x37F4

Unknown_0x82A0:
	call Unknown_0x3765
	jr nc,Unknown_0x82AD
	ld e,$02
	ld bc,$4A41
	jp Unknown_0x37F4

Unknown_0x82AD:
	call Unknown_0x36E6
	jr nc,Unknown_0x82BA
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x82BA:
	jp Unknown_0x37F7

UnknownData_0x82BD:
INCBIN "baserom.gb", $82BD, $82D8 - $82BD
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBAB3
	call Unknown_0x80C0
	jr nc,Unknown_0x82F3
	ld e,$02
	ld bc,$42BD
	call Unknown_0x0846

Unknown_0x82F3:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x830E
	ld e,$02
	ld bc,$400A
	jp Unknown_0x37F4

Unknown_0x830E:
	call Unknown_0x39BC
	jr nc,Unknown_0x831B
	ld e,$02
	ld bc,$42BD
	jp Unknown_0x37F4

Unknown_0x831B:
	call Unknown_0x3650
	jr nc,Unknown_0x8328
	ld e,$02
	ld bc,$4393
	jp Unknown_0x37F4

Unknown_0x8328:
	call Unknown_0x3765
	jr nc,Unknown_0x8335
	ld e,$02
	ld bc,$4A41
	jp Unknown_0x37F4

Unknown_0x8335:
	call Unknown_0x36E6
	jr nc,Unknown_0x8342
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x8342:
	call Unknown_0x3724
	jr nc,Unknown_0x834F
	ld e,$01
	ld bc,$40F9
	jp Unknown_0x37F4

Unknown_0x834F:
	jp Unknown_0x37F7

UnknownData_0x8352:
INCBIN "baserom.gb", $8352, $836D - $8352
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D35
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x8390
	ld e,$02
	ld bc,$400A
	jp Unknown_0x37F4

Unknown_0x8390:
	jp Unknown_0x37F7

UnknownData_0x8393:
INCBIN "baserom.gb", $8393, $8413 - $8393
	ld e,$45
	ld a,[de]
	cpl
	ld [de],a
	ld e,$3B
	ld [de],a
	ret
	ld a,[$FF00+$A5]
	and $02
	ld e,$27
	ld [de],a
	ret

UnknownData_0x8424:
INCBIN "baserom.gb", $8424, $8435 - $8424
	ld hl,$7EA8
	ld a,$02
	call FarCall
	call Unknown_0x378B
	call Unknown_0x37A8
	ld e,$3F
	ld a,[de]
	or a
	jr z,Unknown_0x8461
	ld e,$15
	ld a,[de]
	cp $01
	jr c,Unknown_0x8461
	ld hl,Unknown_0x8491
	jr z,Unknown_0x8458
	ld hl,Unknown_0x8496

Unknown_0x8458:
	ld e,$3E
	ld a,[de]
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0x8461:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x848E
	ld a,[$FF00+$A5]
	bit 1,a
	jr nz,Unknown_0x8475
	ld e,$02
	ld bc,$4424
	jp Unknown_0x37F4

Unknown_0x8475:
	and $30
	jr z,Unknown_0x848E
	bit 5,a
	ld e,$45
	ld a,[de]
	jr nz,Unknown_0x848B
	rla
	jr nc,Unknown_0x848E

Unknown_0x8483:
	ld e,$02
	ld bc,$43EC
	jp Unknown_0x37F4

Unknown_0x848B:
	rla
	jr nc,Unknown_0x8483

Unknown_0x848E:
	jp Unknown_0x37F7

Unknown_0x8491:
INCBIN "baserom.gb", $8491, $8496 - $8491

Unknown_0x8496:
INCBIN "baserom.gb", $8496, $84CA - $8496
	ld a,$04
	ld [$A05D],a
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x3952
	jp Unknown_0x37F7

UnknownData_0x84E6:
INCBIN "baserom.gb", $84E6, $84EB - $84E6
	ld a,[$A070]
	or a
	ld e,$60
	ld bc,$0400
	jr z,Unknown_0x84FB
	ld e,$40
	ld bc,$0200

Unknown_0x84FB:
	call Unknown_0x0D23
	ld a,[$A070]
	or a
	ld e,$0E
	jr z,Unknown_0x8508
	ld e,$09

Unknown_0x8508:
	call Unknown_0x0D04
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0x8557
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x8529
	ld e,$02
	ld bc,$457F
	jp Unknown_0x37F4

Unknown_0x8529:
	call Unknown_0x3952
	ld a,[$FF00+$A6]
	and $02
	jr z,Unknown_0x853A
	ld e,$02
	ld bc,$461F
	jp Unknown_0x37F4

Unknown_0x853A:
	call Unknown_0x3765
	jr nc,Unknown_0x8547
	ld e,$02
	ld bc,$4567
	jp Unknown_0x37F4

Unknown_0x8547:
	call Unknown_0x377C
	jr nc,Unknown_0x8554
	ld e,$02
	ld bc,$4573
	jp Unknown_0x37F4

Unknown_0x8554:
	jp Unknown_0x37F7

Unknown_0x8557:
	ld a,$02
	ld hl,Unknown_0x8562
	call Unknown_0x3AAA
	jp Unknown_0x3AE4

Unknown_0x8562:
INCBIN "baserom.gb", $8562, $859A - $8562
	ld e,$4D
	ld a,[de]
	cp $04
	ld a,$08
	jr c,Unknown_0x85A5
	ld a,$04

Unknown_0x85A5:
	ld e,$24
	ld [de],a
	ld e,$0E
	ld a,[de]
	ld h,a
	dec e
	ld a,[de]
	or h
	ret z
	ld e,$45
	ld a,[de]
	xor h
	rla
	ld e,$15
	ld a,[de]
	jr c,Unknown_0x85C2
	inc a
	cp $08
	jr c,Unknown_0x85C9
	xor a
	jr Unknown_0x85C9

Unknown_0x85C2:
	dec a
	cp $08
	jr c,Unknown_0x85C9
	ld a,$07

Unknown_0x85C9:
	ld [de],a
	ret
	call Unknown_0xB9FB
	ld hl,$6E10
	ld a,$08
	call FarCall
	ld e,$0D
	ld a,[de]
	ld b,a
	inc e
	ld a,[de]
	or b
	call nz,Unknown_0x8557
	call Unknown_0xB926
	call Unknown_0xB6DF
	call Unknown_0xB5A1
	jr nc,Unknown_0x85F3
	ld e,$02
	ld bc,$44E6
	jp Unknown_0x37F4

Unknown_0x85F3:
	ld a,[$FF00+$A6]
	and $02
	jr z,Unknown_0x8601
	ld e,$02
	ld bc,$461F
	jp Unknown_0x37F4

Unknown_0x8601:
	ld e,$0D
	ld a,[de]
	ld b,a
	inc e
	ld a,[de]
	or b
	ld e,$3A
	jr z,Unknown_0x860F
	ld a,$78
	ld [de],a

Unknown_0x860F:
	ld a,[de]
	dec a
	ld [de],a
	jr nz,Unknown_0x861C
	ld e,$02
	ld bc,$461F
	jp Unknown_0x37F4

Unknown_0x861C:
	jp Unknown_0x37F7

UnknownData_0x861F:
INCBIN "baserom.gb", $861F, $867D - $861F
	call Unknown_0xBEA8
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

Unknown_0x8689:
	ld e,$7C
	ld a,[de]
	rra
	ret

UnknownData_0x868E:
INCBIN "baserom.gb", $868E, $869B - $868E
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x86B6
	ld e,$02
	ld bc,$481C
	jp Unknown_0x37F4

Unknown_0x86B6:
	call Unknown_0x8689
	jr nc,Unknown_0x86C3
	ld e,$02
	ld bc,$4660
	jp Unknown_0x37F4

Unknown_0x86C3:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x86D1
	ld e,$02
	ld bc,$478A
	jp Unknown_0x37F4

Unknown_0x86D1:
	call Unknown_0xB663
	jr nc,Unknown_0x86DE
	ld e,$02
	ld bc,$46EE
	jp Unknown_0x37F4

Unknown_0x86DE:
	call Unknown_0x369D
	jr nc,Unknown_0x86EB
	ld e,$02
	ld bc,$487F
	jp Unknown_0x37F4

Unknown_0x86EB:
	jp Unknown_0x37F7

UnknownData_0x86EE:
INCBIN "baserom.gb", $86EE, $871B - $86EE
	call Unknown_0xB99D
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0xB6C5
	jr nc,Unknown_0x8736
	ld e,$02
	ld bc,$468E
	jp Unknown_0x37F4

Unknown_0x8736:
	call Unknown_0xB5A1
	jr nc,Unknown_0x8743
	ld e,$02
	ld bc,$481C
	jp Unknown_0x37F4

Unknown_0x8743:
	call Unknown_0x8689
	jr nc,Unknown_0x8750
	ld e,$02
	ld bc,$4660
	jp Unknown_0x37F4

Unknown_0x8750:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x875E
	ld e,$02
	ld bc,$478A
	jp Unknown_0x37F4

Unknown_0x875E:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x876D
	ld e,$02
	ld bc,$468E
	jp Unknown_0x37F4

Unknown_0x876D:
	call Unknown_0x369D
	jr nc,Unknown_0x877A
	ld e,$02
	ld bc,$487F
	jp Unknown_0x37F4

Unknown_0x877A:
	call Unknown_0x374E
	jr nc,Unknown_0x8787
	ld e,$02
	ld bc,$46EE
	jp Unknown_0x37F4

Unknown_0x8787:
	jp Unknown_0x37F7

UnknownData_0x878A:
INCBIN "baserom.gb", $878A, $87AB - $878A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x87B9
	ld e,$02
	ld bc,$4797
	jp Unknown_0x37F4

Unknown_0x87B9:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x87CC
	ld h,d
	ld l,$1F
	ld [hl],$42
	inc l
	ld [hl],$48
	inc l
	ld [hl],$2F

Unknown_0x87CC:
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBABC
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x87F2
	ld e,$02
	ld bc,$4649
	jp Unknown_0x37F4

Unknown_0x87F2:
	call Unknown_0x39BC
	jr nc,Unknown_0x87FF
	ld e,$02
	ld bc,$481C
	jp Unknown_0x37F4

Unknown_0x87FF:
	call Unknown_0x8689
	jr nc,Unknown_0x880C
	ld e,$02
	ld bc,$4660
	jp Unknown_0x37F4

Unknown_0x880C:
	call Unknown_0x3765
	jr nc,Unknown_0x8819
	ld e,$02
	ld bc,$48C2
	jp Unknown_0x37F4

Unknown_0x8819:
	jp Unknown_0x37F7

UnknownData_0x881C:
INCBIN "baserom.gb", $881C, $882F - $881C
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBABC
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x8855
	ld e,$02
	ld bc,$4649
	jp Unknown_0x37F4

Unknown_0x8855:
	call Unknown_0x39BC
	jr nc,Unknown_0x8862
	ld e,$02
	ld bc,$481C
	jp Unknown_0x37F4

Unknown_0x8862:
	call Unknown_0x8689
	jr nc,Unknown_0x886F
	ld e,$02
	ld bc,$4660
	jp Unknown_0x37F4

Unknown_0x886F:
	call Unknown_0x3765
	jr nc,Unknown_0x887C
	ld e,$02
	ld bc,$48C2
	jp Unknown_0x37F4

Unknown_0x887C:
	jp Unknown_0x37F7

UnknownData_0x887F:
INCBIN "baserom.gb", $887F, $88DB - $887F
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x88F6
	ld e,$02
	ld bc,$49B2
	jp Unknown_0x37F4

Unknown_0x88F6:
	call Unknown_0x8689
	jr nc,Unknown_0x8903
	ld e,$02
	ld bc,$4660
	jp Unknown_0x37F4

Unknown_0x8903:
	call Unknown_0x37BD
	jr nc,Unknown_0x8910
	ld e,$02
	ld bc,$49B2
	jp Unknown_0x37F4

Unknown_0x8910:
	call Unknown_0xB663
	jr nc,Unknown_0x891D
	ld e,$02
	ld bc,$4920
	jp Unknown_0x37F4

Unknown_0x891D:
	jp Unknown_0x37F7

UnknownData_0x8920:
INCBIN "baserom.gb", $8920, $8944 - $8920
	call Unknown_0xBAFD
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0xB6C5
	jr nc,Unknown_0x895F
	ld e,$02
	ld bc,$48CE
	jp Unknown_0x37F4

Unknown_0x895F:
	call Unknown_0xB5A1
	jr nc,Unknown_0x896C
	ld e,$02
	ld bc,$49B2
	jp Unknown_0x37F4

Unknown_0x896C:
	call Unknown_0x8689
	jr nc,Unknown_0x8979
	ld e,$02
	ld bc,$4660
	jp Unknown_0x37F4

Unknown_0x8979:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x8988
	ld e,$02
	ld bc,$48CE
	jp Unknown_0x37F4

Unknown_0x8988:
	call Unknown_0x37BD
	jr nc,Unknown_0x8995
	ld e,$02
	ld bc,$49B2
	jp Unknown_0x37F4

Unknown_0x8995:
	call Unknown_0x374E
	jr nc,Unknown_0x89A2
	ld e,$02
	ld bc,$4920
	jp Unknown_0x37F4

Unknown_0x89A2:
	call Unknown_0x377C
	jr nc,Unknown_0x89AF
	ld e,$02
	ld bc,$4A29
	jp Unknown_0x37F4

Unknown_0x89AF:
	jp Unknown_0x37F7

UnknownData_0x89B2:
INCBIN "baserom.gb", $89B2, $89DB - $89B2
	call Unknown_0xBB81
	call Unknown_0xBBB6
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x89FC
	ld e,$02
	ld bc,$4649
	jp Unknown_0x37F4

Unknown_0x89FC:
	call Unknown_0x393E
	call Unknown_0x8689
	jr nc,Unknown_0x8A0C
	ld e,$02
	ld bc,$4660
	jp Unknown_0x37F4

Unknown_0x8A0C:
	call Unknown_0x37CB
	jr nc,Unknown_0x8A19
	ld e,$02
	ld bc,$49B2
	jp Unknown_0x37F4

Unknown_0x8A19:
	call Unknown_0x377C
	jr nc,Unknown_0x8A26
	ld e,$02
	ld bc,$4A29
	jp Unknown_0x37F4

Unknown_0x8A26:
	jp Unknown_0x37F7

UnknownData_0x8A29:
INCBIN "baserom.gb", $8A29, $8A6B - $8A29
	call Unknown_0x359A
	call Unknown_0x3602
	call Unknown_0x80C0
	jr nc,Unknown_0x8A7E
	ld e,$02
	ld bc,$4A50
	call Unknown_0x0846

Unknown_0x8A7E:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x8A99
	ld e,$02
	ld bc,$4BB6
	jp Unknown_0x37F4

Unknown_0x8A99:
	call Unknown_0x37BD
	jr nc,Unknown_0x8AA6
	ld e,$02
	ld bc,$4BB6
	jp Unknown_0x37F4

Unknown_0x8AA6:
	call Unknown_0x3650
	jr nc,Unknown_0x8AB3
	ld e,$02
	ld bc,$4393
	jp Unknown_0x37F4

Unknown_0x8AB3:
	call Unknown_0xB663
	jr nc,Unknown_0x8AC0
	ld e,$02
	ld bc,$4ADD
	jp Unknown_0x37F4

Unknown_0x8AC0:
	call Unknown_0x36E6
	jr nc,Unknown_0x8ACD
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x8ACD:
	call Unknown_0x3724
	jr nc,Unknown_0x8ADA
	ld e,$01
	ld bc,$40F9
	jp Unknown_0x37F4

Unknown_0x8ADA:
	jp Unknown_0x37F7

UnknownData_0x8ADD:
INCBIN "baserom.gb", $8ADD, $8B1B - $8ADD
	call Unknown_0x359A
	call Unknown_0x3602
	call Unknown_0x80C0
	jr nc,Unknown_0x8B2E
	ld e,$02
	ld bc,$4ADD
	call Unknown_0x0846

Unknown_0x8B2E:
	call Unknown_0xBAD3
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0xB6C5
	jr nc,Unknown_0x8B49
	ld e,$02
	ld bc,$4A50
	jp Unknown_0x37F4

Unknown_0x8B49:
	call Unknown_0xB5A1
	jr nc,Unknown_0x8B56
	ld e,$02
	ld bc,$4BB6
	jp Unknown_0x37F4

Unknown_0x8B56:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x8B65
	ld e,$02
	ld bc,$4A50
	jp Unknown_0x37F4

Unknown_0x8B65:
	call Unknown_0x37BD
	jr nc,Unknown_0x8B72
	ld e,$02
	ld bc,$4BB6
	jp Unknown_0x37F4

Unknown_0x8B72:
	call Unknown_0x3650
	jr nc,Unknown_0x8B7F
	ld e,$02
	ld bc,$4393
	jp Unknown_0x37F4

Unknown_0x8B7F:
	call Unknown_0x36E6
	jr nc,Unknown_0x8B8C
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x8B8C:
	call Unknown_0x374E
	jr nc,Unknown_0x8B99
	ld e,$02
	ld bc,$4ADD
	jp Unknown_0x37F4

Unknown_0x8B99:
	call Unknown_0x3724
	jr nc,Unknown_0x8BA6
	ld e,$01
	ld bc,$40F9
	jp Unknown_0x37F4

Unknown_0x8BA6:
	call Unknown_0x377C
	jr nc,Unknown_0x8BB3
	ld e,$02
	ld bc,$4C62
	jp Unknown_0x37F4

Unknown_0x8BB3:
	jp Unknown_0x37F7

UnknownData_0x8BB6:
INCBIN "baserom.gb", $8BB6, $8BEA - $8BB6
	call Unknown_0x359A
	call Unknown_0xBB55
	call Unknown_0xBBAD
	call Unknown_0x80C0
	jr nc,Unknown_0x8C00
	ld e,$02
	ld bc,$4BB6
	call Unknown_0x0846

Unknown_0x8C00:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x8C1B
	ld e,$02
	ld bc,$400A
	jp Unknown_0x37F4

Unknown_0x8C1B:
	call Unknown_0x393E
	call Unknown_0x3650
	jr nc,Unknown_0x8C2B
	ld e,$02
	ld bc,$4393
	jp Unknown_0x37F4

Unknown_0x8C2B:
	call Unknown_0x37CB
	jr nc,Unknown_0x8C38
	ld e,$02
	ld bc,$4BB6
	jp Unknown_0x37F4

Unknown_0x8C38:
	call Unknown_0x377C
	jr nc,Unknown_0x8C45
	ld e,$02
	ld bc,$4C62
	jp Unknown_0x37F4

Unknown_0x8C45:
	call Unknown_0x36E6
	jr nc,Unknown_0x8C52
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x8C52:
	call Unknown_0x3724
	jr nc,Unknown_0x8C5F
	ld e,$01
	ld bc,$40F9
	jp Unknown_0x37F4

Unknown_0x8C5F:
	jp Unknown_0x37F7

UnknownData_0x8C62:
INCBIN "baserom.gb", $8C62, $8C9C - $8C62
	ld hl,Unknown_0xB2BE
	ld a,$01
	call FarCall
	ret
	call Unknown_0xBEA8
	ld a,[$A056]
	or a
	jr z,Unknown_0x8CBC
	ld a,[$A055]
	or a
	jr nz,Unknown_0x8CBC
	ld e,$02
	ld bc,$4D2C
	jp Unknown_0x37F4

Unknown_0x8CBC:
	ld h,d
	ld l,$39
	ld a,[hl]
	or a
	jr z,Unknown_0x8CC6
	dec [hl]
	jr Unknown_0x8CE0

Unknown_0x8CC6:
	ld a,[$FF00+$A5]
	bit 1,a
	jr nz,Unknown_0x8CE0
	ld a,[$A056]
	or a
	jr nz,Unknown_0x8CE0
	ld a,[$A055]
	or a
	jr nz,Unknown_0x8CE0
	ld e,$02
	ld bc,$4D0D
	jp Unknown_0x37F4

Unknown_0x8CE0:
	call Unknown_0x3A24
	jr nc,Unknown_0x8CED
	ld e,$02
	ld bc,$4A41
	jp Unknown_0x37F4

Unknown_0x8CED:
	ld e,$3D
	ld a,[de]
	or a
	jr z,Unknown_0x8CF7
	dec a
	ld [de],a
	jr Unknown_0x8CFF

Unknown_0x8CF7:
	ld hl,Unknown_0xB348
	ld a,$01
	call FarCall

Unknown_0x8CFF:
	ld hl,Unknown_0x8D08
	call Unknown_0x3AAA
	jp Unknown_0x37F7

Unknown_0x8D08:
INCBIN "baserom.gb", $8D08, $8D44 - $8D08
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xB96D
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x3952
	call Unknown_0x3765
	jr nc,Unknown_0x8D70
	ld e,$02
	ld bc,$51C0
	jp Unknown_0x37F4

Unknown_0x8D70:
	jp Unknown_0x37F7

UnknownData_0x8D73:
INCBIN "baserom.gb", $8D73, $8DA4 - $8D73
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x8DC5
	ld e,$02
	ld bc,$4F8A
	jp Unknown_0x37F4

Unknown_0x8DC5:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x8DD3
	ld e,$02
	ld bc,$4EE2
	jp Unknown_0x37F4

Unknown_0x8DD3:
	call Unknown_0xB663
	jr nc,Unknown_0x8DE0
	ld e,$02
	ld bc,$4E0C
	jp Unknown_0x37F4

Unknown_0x8DE0:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x8DEE
	ld e,$02
	ld bc,$51DB
	jp Unknown_0x37F4

Unknown_0x8DEE:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x8DFC
	ld e,$02
	ld bc,$5220
	jp Unknown_0x37F4

Unknown_0x8DFC:
	call Unknown_0x36E6
	jr nc,Unknown_0x8E09
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x8E09:
	jp Unknown_0x37F7

UnknownData_0x8E0C:
INCBIN "baserom.gb", $8E0C, $8E3C - $8E0C
	call Unknown_0x359A
	call Unknown_0xB96D

Unknown_0x8E42:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0xB6C5
	jr nc,Unknown_0x8E5A
	ld e,$02
	ld bc,$4D91
	jp Unknown_0x37F4

Unknown_0x8E5A:
	call Unknown_0xB5A1
	jr nc,Unknown_0x8E67
	ld e,$02
	ld bc,$4F8A
	jp Unknown_0x37F4

Unknown_0x8E67:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x8E75
	ld e,$02
	ld bc,$4EE2
	jp Unknown_0x37F4

Unknown_0x8E75:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x8E84
	ld e,$02
	ld bc,$4D91
	jp Unknown_0x37F4

Unknown_0x8E84:
	call Unknown_0x373B
	jr nc,Unknown_0x8E91
	ld e,$02
	ld bc,$4ECA
	jp Unknown_0x37F4

Unknown_0x8E91:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x8E9F
	ld e,$02
	ld bc,$51DB
	jp Unknown_0x37F4

Unknown_0x8E9F:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x8EAD
	ld e,$02
	ld bc,$5220
	jp Unknown_0x37F4

Unknown_0x8EAD:
	call Unknown_0x36E6
	jr nc,Unknown_0x8EBA
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x8EBA:
	call Unknown_0x374E
	jr nc,Unknown_0x8EC7
	ld e,$02
	ld bc,$4E0C
	jp Unknown_0x37F4

Unknown_0x8EC7:
	jp Unknown_0x37F7

UnknownData_0x8ECA:
INCBIN "baserom.gb", $8ECA, $8ED9 - $8ECA
	call Unknown_0x359A
	call Unknown_0xB968
	jp Unknown_0x8E42

UnknownData_0x8EE2:
INCBIN "baserom.gb", $8EE2, $8F05 - $8EE2
	call Unknown_0x359A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x8F16
	ld e,$02
	ld bc,$4EF1
	jp Unknown_0x37F4

Unknown_0x8F16:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x8F29
	ld h,d
	ld l,$1F
	ld [hl],$42
	inc l
	ld [hl],$4F
	inc l
	ld [hl],$9C

Unknown_0x8F29:
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBAB3
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x8F52
	ld e,$02
	ld bc,$4D76
	jp Unknown_0x37F4

Unknown_0x8F52:
	call Unknown_0x39BC
	jr nc,Unknown_0x8F5F
	ld e,$02
	ld bc,$4F8A
	jp Unknown_0x37F4

Unknown_0x8F5F:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x8F6D
	ld e,$02
	ld bc,$51DB
	jp Unknown_0x37F4

Unknown_0x8F6D:
	call Unknown_0x3765
	jr nc,Unknown_0x8F7A
	ld e,$02
	ld bc,$51C0
	jp Unknown_0x37F4

Unknown_0x8F7A:
	call Unknown_0x36E6
	jr nc,Unknown_0x8F87
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x8F87:
	jp Unknown_0x37F7

UnknownData_0x8F8A:
INCBIN "baserom.gb", $8F8A, $8F9C - $8F8A
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBAB3
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x8FC5
	ld e,$02
	ld bc,$4D76
	jp Unknown_0x37F4

Unknown_0x8FC5:
	call Unknown_0x39BC
	jr nc,Unknown_0x8FD2
	ld e,$02
	ld bc,$4F8A
	jp Unknown_0x37F4

Unknown_0x8FD2:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x8FE0
	ld e,$02
	ld bc,$51DB
	jp Unknown_0x37F4

Unknown_0x8FE0:
	call Unknown_0x3765
	jr nc,Unknown_0x8FED
	ld e,$02
	ld bc,$51C0
	jp Unknown_0x37F4

Unknown_0x8FED:
	call Unknown_0x36E6
	jr nc,Unknown_0x8FFA
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x8FFA:
	jp Unknown_0x37F7

UnknownData_0x8FFD:
INCBIN "baserom.gb", $8FFD, $9011 - $8FFD
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x9032
	ld e,$02
	ld bc,$5138
	jp Unknown_0x37F4

Unknown_0x9032:
	call Unknown_0x37BD
	jr nc,Unknown_0x903F
	ld e,$02
	ld bc,$5138
	jp Unknown_0x37F4

Unknown_0x903F:
	call Unknown_0xB663
	jr nc,Unknown_0x904C
	ld e,$02
	ld bc,$5078
	jp Unknown_0x37F4

Unknown_0x904C:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x905A
	ld e,$02
	ld bc,$51DB
	jp Unknown_0x37F4

Unknown_0x905A:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0x9068
	ld e,$02
	ld bc,$5220
	jp Unknown_0x37F4

Unknown_0x9068:
	call Unknown_0x36E6
	jr nc,Unknown_0x9075
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x9075:
	jp Unknown_0x37F7

UnknownData_0x9078:
INCBIN "baserom.gb", $9078, $9161 - $9078
	call Unknown_0x359A
	call Unknown_0xBB55
	call Unknown_0xBBAD
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x9185
	ld e,$02
	ld bc,$4D76
	jp Unknown_0x37F4

Unknown_0x9185:
	call Unknown_0x393E
	call Unknown_0x37CB
	jr nc,Unknown_0x9195
	ld e,$02
	ld bc,$5138
	jp Unknown_0x37F4

Unknown_0x9195:
	call Unknown_0x377C
	jr nc,Unknown_0x91A2
	ld e,$02
	ld bc,$51CF
	jp Unknown_0x37F4

Unknown_0x91A2:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0x91B0
	ld e,$02
	ld bc,$51DB
	jp Unknown_0x37F4

Unknown_0x91B0:
	call Unknown_0x36E6
	jr nc,Unknown_0x91BD
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x91BD:
	jp Unknown_0x37F7

UnknownData_0x91C0:
INCBIN "baserom.gb", $91C0, $920D - $91C0
	call Unknown_0xBEA8
	call Unknown_0x3765
	jr nc,Unknown_0x921D
	ld e,$02
	ld bc,$4A41
	jp Unknown_0x37F4

Unknown_0x921D:
	jp Unknown_0x37F7

UnknownData_0x9220:
INCBIN "baserom.gb", $9220, $9289 - $9220
	call Unknown_0xBEA8
	jp Unknown_0x37F7
	call Unknown_0x34FD
	ret

UnknownData_0x9293:
INCBIN "baserom.gb", $9293, $92C0 - $9293
	call Unknown_0xBEA8
	ld a,$02
	ld hl,Unknown_0x92EB
	call Unknown_0x3AAA
	call Unknown_0x3AE9
	call Unknown_0x375B
	jr nc,Unknown_0x92DB
	ld e,$02
	ld bc,$52B6
	jp Unknown_0x37F4

Unknown_0x92DB:
	call Unknown_0x377C
	jr nc,Unknown_0x92E8
	ld e,$02
	ld bc,$4C62
	jp Unknown_0x37F4

Unknown_0x92E8:
	jp Unknown_0x37F7

Unknown_0x92EB:
INCBIN "baserom.gb", $92EB, $92F0 - $92EB
	call Unknown_0xBEA8
	call Unknown_0x377C
	jr nc,Unknown_0x9300
	ld e,$02
	ld bc,$4C62
	jp Unknown_0x37F4

Unknown_0x9300:
	jp Unknown_0x37F7

UnknownData_0x9303:
INCBIN "baserom.gb", $9303, $9346 - $9303
	call Unknown_0x359A
	call Unknown_0x3602
	ld c,$00
	call Unknown_0x93D3
	jr nc,Unknown_0x935B
	ld e,$02
	ld bc,$532B
	call Unknown_0x0846

Unknown_0x935B:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x9376
	ld e,$02
	ld bc,$56B7
	jp Unknown_0x37F4

Unknown_0x9376:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x9384
	ld e,$02
	ld bc,$55DA
	jp Unknown_0x37F4

Unknown_0x9384:
	call Unknown_0xB663
	jr nc,Unknown_0x9391
	ld e,$02
	ld bc,$542F
	jp Unknown_0x37F4

Unknown_0x9391:
	call Unknown_0x369D
	jr nc,Unknown_0x939E
	ld e,$02
	ld bc,$5759
	jp Unknown_0x37F4

Unknown_0x939E:
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0x93A9
	call Unknown_0xA02D
	jr Unknown_0x93D0

Unknown_0x93A9:
	call Unknown_0x3650
	jr nc,Unknown_0x93B6
	ld e,$02
	ld bc,$57A3
	jp Unknown_0x37F4

Unknown_0x93B6:
	call Unknown_0x36E6
	jr nc,Unknown_0x93C3
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x93C3:
	call Unknown_0x3724
	jr nc,Unknown_0x93D0
	ld e,$01
	ld bc,$410C
	jp Unknown_0x37F4

Unknown_0x93D0:
	jp Unknown_0x37F7

Unknown_0x93D3:
	ld e,$45
	ld a,[de]
	ld b,a
	ld e,$3B
	ld a,[de]
	xor b
	rla
	ret nc
	ld a,b
	ld [de],a
	bit 0,c
	ld a,$0F
	jr z,Unknown_0x93E7
	ld a,$07

Unknown_0x93E7:
	ld e,$3C
	ld [de],a
	ld a,$04
	ld e,$15
	ld [de],a
	ret

UnknownData_0x93F0:
INCBIN "baserom.gb", $93F0, $9406 - $93F0
	ld e,$3C
	ld a,[de]
	cp $08
	jr Unknown_0x9412
	ld e,$3C
	ld a,[de]
	cp $04

Unknown_0x9412:
	ld a,$04
	jr nc,Unknown_0x9417
	dec a

Unknown_0x9417:
	ld e,$15
	ld [de],a
	ld e,$3C
	ld a,[de]
	dec a
	ld [de],a
	ret

UnknownData_0x9420:
INCBIN "baserom.gb", $9420, $951E - $9420
	call Unknown_0x9528
	ld a,$00
	rla
	ld e,$27
	ld [de],a
	ret

Unknown_0x9528:
	ld e,$45
	ld a,[de]
	rla
	ld a,[$FF00+$A5]
	jr nc,Unknown_0x9536
	bit 4,a
	jr nz,Unknown_0x953C
	jr Unknown_0x953A

Unknown_0x9536:
	bit 5,a
	jr nz,Unknown_0x953C

Unknown_0x953A:
	and a
	ret

Unknown_0x953C:
	scf
	ret
	call Unknown_0x359A
	call Unknown_0xBBCD
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0xB6C5
	jr nc,Unknown_0x955C
	ld e,$02
	ld bc,$532B
	jp Unknown_0x37F4

Unknown_0x955C:
	call Unknown_0xB5A1
	jr nc,Unknown_0x9569
	ld e,$02
	ld bc,$56B7
	jp Unknown_0x37F4

Unknown_0x9569:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x9577
	ld e,$02
	ld bc,$55DA
	jp Unknown_0x37F4

Unknown_0x9577:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0x958B
	call Unknown_0x3826
	jr c,Unknown_0x958B
	ld e,$02
	ld bc,$532B
	jp Unknown_0x37F4

Unknown_0x958B:
	call Unknown_0x369D
	jr nc,Unknown_0x9598
	ld e,$02
	ld bc,$5759
	jp Unknown_0x37F4

Unknown_0x9598:
	call Unknown_0x374E
	jr nc,Unknown_0x95A5
	ld e,$02
	ld bc,$542F
	jp Unknown_0x37F4

Unknown_0x95A5:
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0x95B0
	call Unknown_0xA02D
	jr Unknown_0x95D7

Unknown_0x95B0:
	call Unknown_0x3650
	jr nc,Unknown_0x95BD
	ld e,$02
	ld bc,$57A3
	jp Unknown_0x37F4

Unknown_0x95BD:
	call Unknown_0x36E6
	jr nc,Unknown_0x95CA
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x95CA:
	call Unknown_0x3724
	jr nc,Unknown_0x95D7
	ld e,$01
	ld bc,$410C
	jp Unknown_0x37F4

Unknown_0x95D7:
	jp Unknown_0x37F7

UnknownData_0x95DA:
INCBIN "baserom.gb", $95DA, $961C - $95DA
	call Unknown_0x359A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x962D
	ld e,$02
	ld bc,$55F0
	jp Unknown_0x37F4

Unknown_0x962D:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x9640
	ld h,d
	ld l,$1F
	ld [hl],$42
	inc l
	ld [hl],$56
	inc l
	ld [hl],$D2

Unknown_0x9640:
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBC3C
	ld c,$00
	call Unknown_0x93D3
	jr nc,Unknown_0x965A
	ld e,$02
	ld bc,$55E9
	call Unknown_0x0846

Unknown_0x965A:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x9675
	ld e,$02
	ld bc,$5310
	jp Unknown_0x37F4

Unknown_0x9675:
	call Unknown_0x39BC
	jr nc,Unknown_0x9682
	ld e,$02
	ld bc,$56B7
	jp Unknown_0x37F4

Unknown_0x9682:
	call Unknown_0x3765
	jr nc,Unknown_0x968F
	ld e,$02
	ld bc,$60A3
	jp Unknown_0x37F4

Unknown_0x968F:
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0x969A
	call Unknown_0xA02D
	jr Unknown_0x96B4

Unknown_0x969A:
	call Unknown_0x3650
	jr nc,Unknown_0x96A7
	ld e,$02
	ld bc,$57A3
	jp Unknown_0x37F4

Unknown_0x96A7:
	call Unknown_0x36E6
	jr nc,Unknown_0x96B4
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x96B4:
	jp Unknown_0x37F7

UnknownData_0x96B7:
INCBIN "baserom.gb", $96B7, $96D2 - $96B7
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBC3C
	ld c,$00
	call Unknown_0x93D3
	jr nc,Unknown_0x96EF
	ld e,$02
	ld bc,$56B7
	call Unknown_0x0846

Unknown_0x96EF:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x970A
	ld e,$02
	ld bc,$5310
	jp Unknown_0x37F4

Unknown_0x970A:
	call Unknown_0x39BC
	jr nc,Unknown_0x9717
	ld e,$02
	ld bc,$56B7
	jp Unknown_0x37F4

Unknown_0x9717:
	call Unknown_0x3765
	jr nc,Unknown_0x9724
	ld e,$02
	ld bc,$60A3
	jp Unknown_0x37F4

Unknown_0x9724:
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0x972F
	call Unknown_0xA02D
	jr Unknown_0x9756

Unknown_0x972F:
	call Unknown_0x3650
	jr nc,Unknown_0x973C
	ld e,$02
	ld bc,$57A3
	jp Unknown_0x37F4

Unknown_0x973C:
	call Unknown_0x36E6
	jr nc,Unknown_0x9749
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0x9749:
	call Unknown_0x3724
	jr nc,Unknown_0x9756
	ld e,$01
	ld bc,$410C
	jp Unknown_0x37F4

Unknown_0x9756:
	jp Unknown_0x37F7

UnknownData_0x9759:
INCBIN "baserom.gb", $9759, $9774 - $9759
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D35
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x9797
	ld e,$02
	ld bc,$5310
	jp Unknown_0x37F4

Unknown_0x9797:
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0x97A0
	call Unknown_0xA02D

Unknown_0x97A0:
	jp Unknown_0x37F7

UnknownData_0x97A3:
INCBIN "baserom.gb", $97A3, $97FB - $97A3
	call Unknown_0xBEE2
	call Unknown_0x981E
	call Unknown_0x3765
	jr nc,Unknown_0x980E
	ld e,$02
	ld bc,$5B12
	jp Unknown_0x37F4

Unknown_0x980E:
	call Unknown_0x377C
	jr nc,Unknown_0x981B
	ld e,$02
	ld bc,$58A4
	jp Unknown_0x37F4

Unknown_0x981B:
	jp Unknown_0x37F7

Unknown_0x981E:
	ld e,$15
	ld a,[de]
	or a
	jr z,Unknown_0x983B
	cp $02
	ld hl,Unknown_0x983C
	jr c,Unknown_0x9833
	ld hl,Unknown_0x9841
	jr z,Unknown_0x9833
	ld hl,Unknown_0x9846

Unknown_0x9833:
	ld a,$04
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0x983B:
	ret

Unknown_0x983C:
INCBIN "baserom.gb", $983C, $9841 - $983C

Unknown_0x9841:
INCBIN "baserom.gb", $9841, $9846 - $9841

Unknown_0x9846:
INCBIN "baserom.gb", $9846, $9892 - $9846

Unknown_0x9892:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x98A2
	dec a
	ld [de],a
	ld a,[$FF00+$A5]
	and $02
	jr z,Unknown_0x98A2
	and a
	ret

Unknown_0x98A2:
	scf
	ret

UnknownData_0x98A4:
INCBIN "baserom.gb", $98A4, $9983 - $98A4
	call Unknown_0xBBCD
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0x981E
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x99A4
	ld e,$02
	ld bc,$5A70
	jp Unknown_0x37F4

Unknown_0x99A4:
	call Unknown_0x369D
	jr nc,Unknown_0x99B1
	ld e,$02
	ld bc,$5ACC
	jp Unknown_0x37F4

Unknown_0x99B1:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x99BF
	ld e,$02
	ld bc,$59DC
	jp Unknown_0x37F4

Unknown_0x99BF:
	call Unknown_0x374E
	jr nc,Unknown_0x99CC
	ld e,$02
	ld bc,$58B0
	jp Unknown_0x37F4

Unknown_0x99CC:
	call Unknown_0x9892
	jr nc,Unknown_0x99D9
	ld e,$07
	ld bc,$6C92
	jp Unknown_0x37F4

Unknown_0x99D9:
	jp Unknown_0x37F7

UnknownData_0x99DC:
INCBIN "baserom.gb", $99DC, $9A79 - $99DC
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBC45
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0x981E
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x9AA2
	ld e,$02
	ld bc,$57E1
	jp Unknown_0x37F4

Unknown_0x9AA2:
	call Unknown_0x39BC
	jr nc,Unknown_0x9AAF
	ld e,$02
	ld bc,$5A70
	jp Unknown_0x37F4

Unknown_0x9AAF:
	call Unknown_0x3765
	jr nc,Unknown_0x9ABC
	ld e,$02
	ld bc,$5B12
	jp Unknown_0x37F4

Unknown_0x9ABC:
	call Unknown_0x9892
	jr nc,Unknown_0x9AC9
	ld e,$07
	ld bc,$6C92
	jp Unknown_0x37F4

Unknown_0x9AC9:
	jp Unknown_0x37F7

UnknownData_0x9ACC:
INCBIN "baserom.gb", $9ACC, $9B4F - $9ACC
	ld a,$04
	ld [$A05D],a
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x3952
	jp Unknown_0x37F7

UnknownData_0x9B6B:
INCBIN "baserom.gb", $9B6B, $9B78 - $9B6B
	ld a,[$A070]
	or a
	ld e,$60
	ld bc,$0400
	jr z,Unknown_0x9B88
	ld e,$40
	ld bc,$0200

Unknown_0x9B88:
	call Unknown_0x0D23
	ld a,[$A070]
	or a
	ld e,$0E
	jr z,Unknown_0x9B95
	ld e,$08

Unknown_0x9B95:
	call Unknown_0x0D04
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0x9BE4
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x9BB6
	ld e,$02
	ld bc,$5C0C
	jp Unknown_0x37F4

Unknown_0x9BB6:
	call Unknown_0x3952
	ld a,[$FF00+$A6]
	and $02
	jr z,Unknown_0x9BC7
	ld e,$02
	ld bc,$5C8A
	jp Unknown_0x37F4

Unknown_0x9BC7:
	call Unknown_0x3765
	jr nc,Unknown_0x9BD4
	ld e,$02
	ld bc,$5BF4
	jp Unknown_0x37F4

Unknown_0x9BD4:
	call Unknown_0x377C
	jr nc,Unknown_0x9BE1
	ld e,$02
	ld bc,$5C00
	jp Unknown_0x37F4

Unknown_0x9BE1:
	jp Unknown_0x37F7

Unknown_0x9BE4:
	ld hl,Unknown_0x9BEF
	ld a,$08
	call Unknown_0x3AAA
	jp Unknown_0x3AE4

Unknown_0x9BEF:
INCBIN "baserom.gb", $9BEF, $9C31 - $9BEF
	call Unknown_0xBBE3
	ld hl,$6E10
	ld a,$08
	call FarCall
	ld a,$04
	ld [$A05D],a
	ld e,$0D
	ld a,[de]
	ld b,a
	inc e
	ld a,[de]
	or b
	call nz,Unknown_0x9BE4
	call Unknown_0xB93C
	call Unknown_0xB6DF
	call Unknown_0xB5A1
	jr nc,Unknown_0x9C5E
	ld e,$02
	ld bc,$5B6B
	jp Unknown_0x37F4

Unknown_0x9C5E:
	ld a,[$FF00+$A6]
	and $02
	jr z,Unknown_0x9C6C
	ld e,$02
	ld bc,$5C8A
	jp Unknown_0x37F4

Unknown_0x9C6C:
	ld e,$0D
	ld a,[de]
	ld b,a
	inc e
	ld a,[de]
	or b
	ld e,$3A
	jr z,Unknown_0x9C7A
	ld a,$78
	ld [de],a

Unknown_0x9C7A:
	ld a,[de]
	dec a
	ld [de],a
	jr nz,Unknown_0x9C87
	ld e,$02
	ld bc,$5C8A
	jp Unknown_0x37F4

Unknown_0x9C87:
	jp Unknown_0x37F7

UnknownData_0x9C8A:
INCBIN "baserom.gb", $9C8A, $9CCF - $9C8A

Unknown_0x9CCF:
	ld a,[$DB76]
	or a
	ret z
	ld a,[$DA36]
	or a
	ret nz
	ld hl,$CD00
	ld a,$E4
	ld [hli],a
	ld a,$D0
	ld [hli],a
	ld a,$E4
	ld [hli],a
	ret
	call Unknown_0xBEE2
	call Unknown_0x3765
	jr nc,Unknown_0x9CF6
	ld e,$02
	ld bc,$6013
	jp Unknown_0x37F4

Unknown_0x9CF6:
	call Unknown_0x377C
	jr nc,Unknown_0x9D03
	ld e,$02
	ld bc,$5D84
	jp Unknown_0x37F4

Unknown_0x9D03:
	jp Unknown_0x37F7

Unknown_0x9D06:
	ld e,$15
	ld a,[de]
	cp $02
	ret c
	ld a,$02
	ld hl,Unknown_0x9D17
	call Unknown_0x3AAA
	jp Unknown_0x3AE4

Unknown_0x9D17:
INCBIN "baserom.gb", $9D17, $9D32 - $9D17
	call Unknown_0x9CCF
	call Unknown_0xBC5C
	call Unknown_0xBD3F
	ld hl,$6E08
	ld a,$08
	call FarCall
	call Unknown_0x9D06
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x393E
	call Unknown_0xA193
	call Unknown_0x377C
	jr nc,Unknown_0x9D62
	ld e,$02
	ld bc,$5D84
	jp Unknown_0x37F4

Unknown_0x9D62:
	call Unknown_0x9D72
	jr nc,Unknown_0x9D6F
	ld e,$07
	ld bc,$6D5C
	jp Unknown_0x37F4

Unknown_0x9D6F:
	jp Unknown_0x37F7

Unknown_0x9D72:
	ld e,$3A
	ld a,[de]
	or a
	jr z,Unknown_0x9D7C
	dec a
	ld [de],a

Unknown_0x9D7A:
	and a
	ret

Unknown_0x9D7C:
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0x9D7A
	scf
	ret

UnknownData_0x9D84:
INCBIN "baserom.gb", $9D84, $9E63 - $9D84
	ld a,[$FF00+$A5]
	and $30
	ld h,$00
	jr z,Unknown_0x9E7D
	bit 4,a
	ld e,$45
	ld a,[de]
	jr z,Unknown_0x9E78
	inc h
	rla
	jr c,Unknown_0x9E7D
	jr Unknown_0x9E7C

Unknown_0x9E78:
	inc h
	rla
	jr nc,Unknown_0x9E7D

Unknown_0x9E7C:
	inc h

Unknown_0x9E7D:
	ld e,$27
	ld a,h
	ld [de],a
	ret
	call Unknown_0x9CCF
	call Unknown_0xBBCD
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0x9D06
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0x9EA6
	ld e,$02
	ld bc,$5F75
	jp Unknown_0x37F4

Unknown_0x9EA6:
	call Unknown_0x369D
	jr nc,Unknown_0x9EB3
	ld e,$02
	ld bc,$5FCA
	jp Unknown_0x37F4

Unknown_0x9EB3:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0x9EC1
	ld e,$02
	ld bc,$5EDE
	jp Unknown_0x37F4

Unknown_0x9EC1:
	call Unknown_0x374E
	jr nc,Unknown_0x9ECE
	ld e,$02
	ld bc,$5D90
	jp Unknown_0x37F4

Unknown_0x9ECE:
	call Unknown_0x9D72
	jr nc,Unknown_0x9EDB
	ld e,$07
	ld bc,$6D5C
	jp Unknown_0x37F4

Unknown_0x9EDB:
	jp Unknown_0x37F7

UnknownData_0x9EDE:
INCBIN "baserom.gb", $9EDE, $9EFE - $9EDE
	call Unknown_0x9CCF
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0x9F0F
	ld e,$02
	ld bc,$5EE8
	jp Unknown_0x37F4

Unknown_0x9F0F:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0x9F22
	ld h,d
	ld l,$1F
	ld [hl],$42
	inc l
	ld [hl],$5F
	inc l
	ld [hl],$7E

Unknown_0x9F22:
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBC45
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0x9D06
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x9F4B
	ld e,$02
	ld bc,$5CB5
	jp Unknown_0x37F4

Unknown_0x9F4B:
	call Unknown_0x39BC
	jr nc,Unknown_0x9F58
	ld e,$02
	ld bc,$5F75
	jp Unknown_0x37F4

Unknown_0x9F58:
	call Unknown_0x3765
	jr nc,Unknown_0x9F65
	ld e,$02
	ld bc,$6013
	jp Unknown_0x37F4

Unknown_0x9F65:
	call Unknown_0x9D72
	jr nc,Unknown_0x9F72
	ld e,$07
	ld bc,$6D5C
	jp Unknown_0x37F4

Unknown_0x9F72:
	jp Unknown_0x37F7

UnknownData_0x9F75:
INCBIN "baserom.gb", $9F75, $9F7E - $9F75
	call Unknown_0x9CCF
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBC45
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0x9D06
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0x9FAA
	ld e,$02
	ld bc,$5CB5
	jp Unknown_0x37F4

Unknown_0x9FAA:
	call Unknown_0x39BC
	call Unknown_0x3765
	jr nc,Unknown_0x9FBA
	ld e,$02
	ld bc,$6013
	jp Unknown_0x37F4

Unknown_0x9FBA:
	call Unknown_0x9D72
	jr nc,Unknown_0x9FC7
	ld e,$07
	ld bc,$6D5C
	jp Unknown_0x37F4

Unknown_0x9FC7:
	jp Unknown_0x37F7

UnknownData_0x9FCA:
INCBIN "baserom.gb", $9FCA, $A02D - $9FCA

Unknown_0xA02D:
	ld e,$40
	ld a,[de]
	or a
	ret z
	dec a
	ld [de],a
	jr z,Unknown_0xA06A
	and $01
	jr nz,Unknown_0xA05A
	ld a,[de]
	and $02
	ld e,$47
	ld a,[de]
	jr nz,Unknown_0xA046
	res 4,a
	jr Unknown_0xA048

Unknown_0xA046:
	set 4,a

Unknown_0xA048:
	ld [de],a
	ld bc,Unknown_0xA077
	call Unknown_0x0F77
	ld e,$3A
	ld a,[de]
	inc a
	cp $0B
	jr c,Unknown_0xA059
	ld a,$02

Unknown_0xA059:
	ld [de],a

Unknown_0xA05A:
	ld a,$02
	ld hl,Unknown_0xA072
	call Unknown_0x3AAA
	call Unknown_0x3AE4
	ld a,[$FF00+$A5]
	and $02
	ret nz

Unknown_0xA06A:
	ld e,$02
	ld bc,$6078
	jp Unknown_0x0846

Unknown_0xA072:
INCBIN "baserom.gb", $A072, $A077 - $A072

Unknown_0xA077:
INCBIN "baserom.gb", $A077, $A0B8 - $A077
	ld e,$15
	ld a,[de]
	cp $03
	ret nz
	ld e,$3C
	ld a,[de]
	cp $04
	ret c
	ld a,$03
	ld [de],a
	ret

UnknownData_0xA0C8:
INCBIN "baserom.gb", $A0C8, $A115 - $A0C8
	call Unknown_0x359A
	call Unknown_0xBC5C
	call Unknown_0xBCD9
	ld c,$01
	call Unknown_0x93D3
	jr nc,Unknown_0xA12D
	ld e,$02
	ld bc,$60CB
	call Unknown_0x0846

Unknown_0xA12D:
	ld hl,$6E08
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x393E
	call Unknown_0xA193
	call Unknown_0xB8DA
	jr nc,Unknown_0xA151
	ld e,$02
	ld bc,$60CB
	jp Unknown_0x37F4

Unknown_0xA151:
	call Unknown_0x377C
	jr nc,Unknown_0xA15E
	ld e,$02
	ld bc,$619E
	jp Unknown_0x37F4

Unknown_0xA15E:
	ld e,$40
	ld a,[de]
	or a
	jr z,Unknown_0xA169
	call Unknown_0xA02D
	jr Unknown_0xA190

Unknown_0xA169:
	call Unknown_0x3650
	jr nc,Unknown_0xA176
	ld e,$02
	ld bc,$57A3
	jp Unknown_0x37F4

Unknown_0xA176:
	call Unknown_0x36E6
	jr nc,Unknown_0xA183
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xA183:
	call Unknown_0x3724
	jr nc,Unknown_0xA190
	ld e,$01
	ld bc,$410C
	jp Unknown_0x37F4

Unknown_0xA190:
	jp Unknown_0x37F7

Unknown_0xA193:
	ld h,d
	ld e,$0F
	ld l,$8F
	ld a,[hli]
	ld [de],a
	inc e
	ld a,[hl]
	ld [de],a
	ret

UnknownData_0xA19E:
INCBIN "baserom.gb", $A19E, $A1D3 - $A19E
	ld hl,Unknown_0xB2BE
	ld a,$01
	call FarCall
	ret
	call Unknown_0xBEE2
	ld a,[$A056]
	or a
	jr z,Unknown_0xA1F3
	ld a,[$A055]
	or a
	jr nz,Unknown_0xA1F3
	ld e,$02
	ld bc,$6263
	jp Unknown_0x37F4

Unknown_0xA1F3:
	ld h,d
	ld l,$39
	ld a,[hl]
	or a
	jr z,Unknown_0xA1FD
	dec [hl]
	jr Unknown_0xA217

Unknown_0xA1FD:
	ld a,[$FF00+$A5]
	bit 1,a
	jr nz,Unknown_0xA217
	ld a,[$A056]
	or a
	jr nz,Unknown_0xA217
	ld a,[$A055]
	or a
	jr nz,Unknown_0xA217
	ld e,$02
	ld bc,$6244
	jp Unknown_0x37F4

Unknown_0xA217:
	call Unknown_0x3A24
	jr nc,Unknown_0xA224
	ld e,$02
	ld bc,$60A3
	jp Unknown_0x37F4

Unknown_0xA224:
	ld e,$3D
	ld a,[de]
	or a
	jr z,Unknown_0xA22E
	dec a
	ld [de],a
	jr Unknown_0xA236

Unknown_0xA22E:
	ld hl,Unknown_0xB348
	ld a,$01
	call FarCall

Unknown_0xA236:
	ld hl,Unknown_0xA23F
	call Unknown_0x3AAA
	jp Unknown_0x37F7

Unknown_0xA23F:
INCBIN "baserom.gb", $A23F, $A250 - $A23F
	call Unknown_0xBEE2
	call Unknown_0x3765
	jr nc,Unknown_0xA260
	ld e,$02
	ld bc,$60A3
	jp Unknown_0x37F4

Unknown_0xA260:
	jp Unknown_0x37F7

UnknownData_0xA263:
INCBIN "baserom.gb", $A263, $A27B - $A263
	call Unknown_0xBF09
	call Unknown_0xBBCD
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x3952
	call Unknown_0x3765
	jr nc,Unknown_0xA2A2
	ld e,$02
	ld bc,$665D
	jp Unknown_0x37F4

Unknown_0xA2A2:
	jp Unknown_0x37F7

UnknownData_0xA2A5:
INCBIN "baserom.gb", $A2A5, $A2D6 - $A2A5
	call Unknown_0x359A
	call Unknown_0x3602
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0xA2F7
	ld e,$02
	ld bc,$654B
	jp Unknown_0x37F4

Unknown_0xA2F7:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0xA305
	ld e,$02
	ld bc,$64A3
	jp Unknown_0x37F4

Unknown_0xA305:
	call Unknown_0xB663
	jr nc,Unknown_0xA312
	ld e,$02
	ld bc,$6348
	jp Unknown_0x37F4

Unknown_0xA312:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0xA320
	ld e,$02
	ld bc,$6678
	jp Unknown_0x37F4

Unknown_0xA320:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0xA32E
	ld e,$02
	ld bc,$66BD
	jp Unknown_0x37F4

Unknown_0xA32E:
	call Unknown_0x36E6
	jr nc,Unknown_0xA33B
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xA33B:
	jp Unknown_0x37F7

UnknownData_0xA33E:
INCBIN "baserom.gb", $A33E, $A41D - $A33E
	call Unknown_0x359A
	call Unknown_0xBBCD
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0xB6C5
	jr nc,Unknown_0xA43B
	ld e,$02
	ld bc,$62C3
	jp Unknown_0x37F4

Unknown_0xA43B:
	call Unknown_0xB5A1
	jr nc,Unknown_0xA448
	ld e,$02
	ld bc,$654B
	jp Unknown_0x37F4

Unknown_0xA448:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0xA456
	ld e,$02
	ld bc,$64A3
	jp Unknown_0x37F4

Unknown_0xA456:
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0xA46A
	call Unknown_0x3826
	jr c,Unknown_0xA46A
	ld e,$02
	ld bc,$62C3
	jp Unknown_0x37F4

Unknown_0xA46A:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0xA478
	ld e,$02
	ld bc,$6678
	jp Unknown_0x37F4

Unknown_0xA478:
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0xA486
	ld e,$02
	ld bc,$66BD
	jp Unknown_0x37F4

Unknown_0xA486:
	call Unknown_0x36E6
	jr nc,Unknown_0xA493
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xA493:
	call Unknown_0x374E
	jr nc,Unknown_0xA4A0
	ld e,$02
	ld bc,$6348
	jp Unknown_0x37F4

Unknown_0xA4A0:
	jp Unknown_0x37F7

UnknownData_0xA4A3:
INCBIN "baserom.gb", $A4A3, $A4C6 - $A4A3
	call Unknown_0x359A
	ld a,[$FF00+$A5]
	bit 0,a
	jr nz,Unknown_0xA4D7
	ld e,$02
	ld bc,$64B2
	jp Unknown_0x37F4

Unknown_0xA4D7:
	ld bc,$FF50
	call Unknown_0x37EB
	jr nc,Unknown_0xA4EA
	ld h,d
	ld l,$1F
	ld [hl],$42
	inc l
	ld [hl],$65
	inc l
	ld [hl],$5E

Unknown_0xA4EA:
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBC3C
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0xA513
	ld e,$02
	ld bc,$62A8
	jp Unknown_0x37F4

Unknown_0xA513:
	call Unknown_0x39BC
	jr nc,Unknown_0xA520
	ld e,$02
	ld bc,$654B
	jp Unknown_0x37F4

Unknown_0xA520:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0xA52E
	ld e,$02
	ld bc,$6678
	jp Unknown_0x37F4

Unknown_0xA52E:
	call Unknown_0x3765
	jr nc,Unknown_0xA53B
	ld e,$02
	ld bc,$665D
	jp Unknown_0x37F4

Unknown_0xA53B:
	call Unknown_0x36E6
	jr nc,Unknown_0xA548
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xA548:
	jp Unknown_0x37F7

UnknownData_0xA54B:
INCBIN "baserom.gb", $A54B, $A55E - $A54B
	call Unknown_0x359A
	ld e,$20
	ld bc,$0280
	call Unknown_0x0D23
	call Unknown_0xBC3C
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0xA587
	ld e,$02
	ld bc,$62A8
	jp Unknown_0x37F4

Unknown_0xA587:
	call Unknown_0x39BC
	jr nc,Unknown_0xA594
	ld e,$02
	ld bc,$654B
	jp Unknown_0x37F4

Unknown_0xA594:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0xA5A2
	ld e,$02
	ld bc,$6678
	jp Unknown_0x37F4

Unknown_0xA5A2:
	call Unknown_0x3765
	jr nc,Unknown_0xA5AF
	ld e,$02
	ld bc,$665D
	jp Unknown_0x37F4

Unknown_0xA5AF:
	call Unknown_0x36E6
	jr nc,Unknown_0xA5BC
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xA5BC:
	jp Unknown_0x37F7

UnknownData_0xA5BF:
INCBIN "baserom.gb", $A5BF, $A5F8 - $A5BF
	call Unknown_0x359A
	call Unknown_0xBC5C
	call Unknown_0xBCD9
	ld hl,$6E08
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x393E
	call Unknown_0xA193
	call Unknown_0xB8DA
	jr nc,Unknown_0xA625
	ld e,$02
	ld bc,$65C2
	jp Unknown_0x37F4

Unknown_0xA625:
	call Unknown_0x377C
	jr nc,Unknown_0xA632
	ld e,$02
	ld bc,$666C
	jp Unknown_0x37F4

Unknown_0xA632:
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0xA640
	ld e,$02
	ld bc,$6678
	jp Unknown_0x37F4

Unknown_0xA640:
	call Unknown_0x3629
	jr nc,Unknown_0xA64D
	ld e,$02
	ld bc,$66BD
	jp Unknown_0x37F4

Unknown_0xA64D:
	call Unknown_0x36E6
	jr nc,Unknown_0xA65A
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xA65A:
	jp Unknown_0x37F7

UnknownData_0xA65D:
INCBIN "baserom.gb", $A65D, $A6AA - $A65D
	call Unknown_0xBEE2
	call Unknown_0x3765
	jr nc,Unknown_0xA6BA
	ld e,$02
	ld bc,$60A3
	jp Unknown_0x37F4

Unknown_0xA6BA:
	jp Unknown_0x37F7

UnknownData_0xA6BD:
INCBIN "baserom.gb", $A6BD, $A726 - $A6BD
	call Unknown_0xBEE2
	jp Unknown_0x37F7
	call Unknown_0x34FD
	ret

UnknownData_0xA730:
INCBIN "baserom.gb", $A730, $A77C - $A730
	call Unknown_0x359A
	call Unknown_0x3602
	call Unknown_0xA822
	jr nc,Unknown_0xA78F
	ld e,$02
	ld bc,$6767
	call Unknown_0x0846

Unknown_0xA78F:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0xA7AA
	ld e,$02
	ld bc,$6860
	jp Unknown_0x37F4

Unknown_0xA7AA:
	call Unknown_0xB663
	jr nc,Unknown_0xA7B7
	ld e,$02
	ld bc,$6860
	jp Unknown_0x37F4

Unknown_0xA7B7:
	call Unknown_0x369D
	jr nc,Unknown_0xA7C4
	ld e,$02
	ld bc,$696B
	jp Unknown_0x37F4

Unknown_0xA7C4:
	ld a,[$FF00+$A5]
	and $40
	jr z,Unknown_0xA7D2
	ld e,$02
	ld bc,$6860
	jp Unknown_0x37F4

Unknown_0xA7D2:
	ld a,[$FF00+$A6]
	and $01
	jr z,Unknown_0xA7E0
	ld e,$02
	ld bc,$6857
	jp Unknown_0x37F4

Unknown_0xA7E0:
	ld e,$3E
	ld a,[de]
	or a
	jr z,Unknown_0xA7F8
	call Unknown_0xAD18
	call Unknown_0xAD3C
	jr nc,Unknown_0xA7F6
	ld e,$07
	ld bc,$6E2C
	jp Unknown_0x37F4

Unknown_0xA7F6:
	jr Unknown_0xA81F

Unknown_0xA7F8:
	call Unknown_0x366B
	jr nc,Unknown_0xA805
	ld e,$02
	ld bc,$69B8
	jp Unknown_0x37F4

Unknown_0xA805:
	call Unknown_0x36E6
	jr nc,Unknown_0xA812
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xA812:
	call Unknown_0x3724
	jr nc,Unknown_0xA81F
	ld e,$01
	ld bc,$411F
	jp Unknown_0x37F4

Unknown_0xA81F:
	jp Unknown_0x37F7

Unknown_0xA822:
	ld e,$45
	ld a,[de]
	ld b,a
	ld e,$3B
	ld a,[de]
	xor b
	rla
	ret nc
	ld a,b
	ld [de],a
	ld a,$07
	ld e,$3C
	ld [de],a
	ld a,$04
	ld e,$15
	ld [de],a
	ret

UnknownData_0xA839:
INCBIN "baserom.gb", $A839, $A844 - $A839
	ld e,$3C
	ld a,[de]
	cp $04
	ld a,$04
	jr nc,Unknown_0xA84E
	dec a

Unknown_0xA84E:
	ld e,$15
	ld [de],a
	ld e,$3C
	ld a,[de]
	dec a
	ld [de],a
	ret

UnknownData_0xA857:
INCBIN "baserom.gb", $A857, $A8C7 - $A857
	call Unknown_0x359A
	call Unknown_0xBD84
	call Unknown_0xBD56
	call Unknown_0xA822
	jr nc,Unknown_0xA8DD
	ld e,$02
	ld bc,$6860
	call Unknown_0x0846

Unknown_0xA8DD:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	jr nc,Unknown_0xA90C
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0xA8FF
	ld e,$02
	ld bc,$6767
	jp Unknown_0x37F4

Unknown_0xA8FF:
	call Unknown_0x369D
	jr nc,Unknown_0xA90C
	ld e,$02
	ld bc,$696B
	jp Unknown_0x37F4

Unknown_0xA90C:
	call Unknown_0x393E
	call Unknown_0x3765
	jr nc,Unknown_0xA91C
	ld e,$02
	ld bc,$6E1B
	jp Unknown_0x37F4

Unknown_0xA91C:
	call Unknown_0xB8FB
	jr nc,Unknown_0xA929
	ld e,$02
	ld bc,$6863
	jp Unknown_0x37F4

Unknown_0xA929:
	ld e,$3E
	ld a,[de]
	or a
	jr z,Unknown_0xA941
	call Unknown_0xAD18
	call Unknown_0xAD3C
	jr nc,Unknown_0xA93F
	ld e,$07
	ld bc,$6E2C
	jp Unknown_0x37F4

Unknown_0xA93F:
	jr Unknown_0xA968

Unknown_0xA941:
	call Unknown_0x366B
	jr nc,Unknown_0xA94E
	ld e,$02
	ld bc,$69B8
	jp Unknown_0x37F4

Unknown_0xA94E:
	call Unknown_0x36E6
	jr nc,Unknown_0xA95B
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xA95B:
	call Unknown_0x3724
	jr nc,Unknown_0xA968
	ld e,$01
	ld bc,$411F
	jp Unknown_0x37F4

Unknown_0xA968:
	jp Unknown_0x37F7

UnknownData_0xA96B:
INCBIN "baserom.gb", $A96B, $A986 - $A96B
	ld e,$0E
	ld bc,$0060
	call Unknown_0x0D35
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	ld e,$3E
	ld a,[de]
	or a
	jr z,Unknown_0xA9B5
	call Unknown_0xAD18
	call Unknown_0xAD3C
	jr nc,Unknown_0xA9B5
	ld e,$07
	ld bc,$6E2C
	jp Unknown_0x37F4

Unknown_0xA9B5:
	jp Unknown_0x37F7

UnknownData_0xA9B8:
INCBIN "baserom.gb", $A9B8, $AA08 - $A9B8
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x3972
	call Unknown_0x391A
	call c,Unknown_0x3972
	call Unknown_0x393E
	ld e,$39
	ld a,[de]
	or a
	jr z,Unknown_0xAA56
	ld a,[$A070]
	or a
	ld bc,$0160
	jr z,Unknown_0xAA31
	ld bc,$0042

Unknown_0xAA31:
	call Unknown_0x3C2B
	ld e,$0F
	ld a,[$A070]
	or a
	jr nz,Unknown_0xAA44
	ld a,$60
	ld [de],a
	inc e
	ld a,$01
	jr Unknown_0xAA4A

Unknown_0xAA44:
	ld a,$42
	ld [de],a
	inc e
	ld a,$00

Unknown_0xAA4A:
	ld [de],a
	ld hl,Unknown_0xAA5F
	ld a,$04
	call Unknown_0x3AAA
	call Unknown_0x3AE4

Unknown_0xAA56:
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

Unknown_0xAA5F:
INCBIN "baserom.gb", $AA5F, $AB01 - $AA5F
	ld a,[$A070]
	or a
	jr nz,Unknown_0xAB0C
	call Unknown_0xBD84
	jr Unknown_0xAB14

Unknown_0xAB0C:
	ld e,$08
	ld bc,$00E0
	call Unknown_0x0D23

Unknown_0xAB14:
	ld a,[$A070]
	or a
	jr nz,Unknown_0xAB1F
	call Unknown_0xBD56
	jr Unknown_0xAB24

Unknown_0xAB1F:
	ld e,$09
	call Unknown_0x0D04

Unknown_0xAB24:
	ld e,$39
	ld a,[de]
	ld e,$45
	ld [de],a
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	jr nc,Unknown_0xAB45
	call Unknown_0x369D
	jr nc,Unknown_0xAB45
	call Unknown_0x35AF

Unknown_0xAB45:
	call Unknown_0x393E
	ld e,$3A
	ld a,[de]
	or a
	ld hl,Unknown_0xAB6C
	ld a,$02
	jr z,Unknown_0xAB58
	ld hl,Unknown_0xAB67
	ld a,$02

Unknown_0xAB58:
	call Unknown_0x3AAA
	call Unknown_0x3AE4
	call Unknown_0x378B
	call Unknown_0x37A8
	jp Unknown_0x37F7

Unknown_0xAB67:
INCBIN "baserom.gb", $AB67, $AB6C - $AB67

Unknown_0xAB6C:
INCBIN "baserom.gb", $AB6C, $ABA2 - $AB6C
	ld a,$04
	ld [$A05D],a
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x3952
	jp Unknown_0x37F7

UnknownData_0xABBE:
INCBIN "baserom.gb", $ABBE, $ABC5 - $ABBE
	ld a,[$A070]
	or a
	ld e,$60
	ld bc,$0400
	jr z,Unknown_0xABD5
	ld e,$40
	ld bc,$0200

Unknown_0xABD5:
	call Unknown_0x0D23
	ld a,[$A070]
	or a
	ld e,$0E
	jr z,Unknown_0xABE2
	ld e,$09

Unknown_0xABE2:
	call Unknown_0x0D04
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xAC36
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x398D
	jr nc,Unknown_0xAC03
	ld e,$02
	ld bc,$6C63
	jp Unknown_0x37F4

Unknown_0xAC03:
	call Unknown_0x3952
	ld a,[$FF00+$A6]
	and $02
	jr z,Unknown_0xAC14
	ld e,$02
	ld bc,$6D02
	jp Unknown_0x37F4

Unknown_0xAC14:
	call Unknown_0x3765
	jr nc,Unknown_0xAC21
	ld e,$02
	ld bc,$6C4B
	jp Unknown_0x37F4

Unknown_0xAC21:
	call Unknown_0x377C
	jr nc,Unknown_0xAC2E
	ld e,$02
	ld bc,$6C57
	jp Unknown_0x37F4

Unknown_0xAC2E:
	jp Unknown_0x37F7

Unknown_0xAC31:
	ld hl,Unknown_0xAC46
	jr Unknown_0xAC39

Unknown_0xAC36:
	ld hl,Unknown_0xAC41

Unknown_0xAC39:
	ld a,$04
	call Unknown_0x3AAA
	jp Unknown_0x3AE4

Unknown_0xAC41:
INCBIN "baserom.gb", $AC41, $AC46 - $AC41

Unknown_0xAC46:
INCBIN "baserom.gb", $AC46, $AC99 - $AC46
	call Unknown_0xBE4F
	ld hl,$6E10
	ld a,$08
	call FarCall
	ld a,$04
	ld [$A05D],a
	ld e,$15
	ld a,[de]
	cp $01
	jr z,Unknown_0xACB4
	cp $02
	jr nz,Unknown_0xACB9

Unknown_0xACB4:
	call Unknown_0xAC31
	jr Unknown_0xACC3

Unknown_0xACB9:
	ld e,$0D
	ld a,[de]
	ld b,a
	inc e
	ld a,[de]
	or b
	call nz,Unknown_0xAC36

Unknown_0xACC3:
	call Unknown_0xB952
	call Unknown_0xB6DF
	call Unknown_0xB5A1
	jr nc,Unknown_0xACD6
	ld e,$02
	ld bc,$6BBE
	jp Unknown_0x37F4

Unknown_0xACD6:
	ld a,[$FF00+$A6]
	and $02
	jr z,Unknown_0xACE4
	ld e,$02
	ld bc,$6D02
	jp Unknown_0x37F4

Unknown_0xACE4:
	ld e,$0D
	ld a,[de]
	ld b,a
	inc e
	ld a,[de]
	or b
	ld e,$3A
	jr z,Unknown_0xACF2
	ld a,$78
	ld [de],a

Unknown_0xACF2:
	ld a,[de]
	dec a
	ld [de],a
	jr nz,Unknown_0xACFF
	ld e,$02
	ld bc,$6D02
	jp Unknown_0x37F4

Unknown_0xACFF:
	jp Unknown_0x37F7

UnknownData_0xAD02:
INCBIN "baserom.gb", $AD02, $AD18 - $AD02

Unknown_0xAD18:
	ld e,$3E
	ld a,[de]
	or a
	ret z
	ld e,$15
	ld a,[de]
	cp $07
	ld hl,Unknown_0xAD32
	jr nz,Unknown_0xAD2A
	ld hl,$6D37

Unknown_0xAD2A:
	ld a,$04
	call Unknown_0x3AAA
	jp Unknown_0x3AE4

Unknown_0xAD32:
INCBIN "baserom.gb", $AD32, $AD3C - $AD32

Unknown_0xAD3C:
	ld e,$3E
	ld a,[de]
	dec a
	jr z,Unknown_0xAD4B
	ld [de],a
	ld a,[$FF00+$A5]
	and $02
	jr z,Unknown_0xAD4B
	and a
	ret

Unknown_0xAD4B:
	scf
	ret

UnknownData_0xAD4D:
INCBIN "baserom.gb", $AD4D, $AD85 - $AD4D
	ld e,$15
	ld a,[de]
	cp $04
	ret c
	ld e,$45
	ld a,[de]
	xor $80
	ld [de],a
	ld e,$3B
	ld [de],a
	ret
	ld e,$3F
	ld a,[de]
	or a
	jr z,Unknown_0xAD9F
	dec a
	ld [de],a
	jr Unknown_0xADCD

Unknown_0xAD9F:
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0xADCD
	and $10
	ld e,$45
	ld a,[de]
	ld e,$15
	jr z,Unknown_0xADB8
	rla
	ld a,[de]
	jr nc,Unknown_0xADB5
	inc a
	jr Unknown_0xADC0

Unknown_0xADB5:
	dec a
	jr Unknown_0xADC0

Unknown_0xADB8:
	rla
	ld a,[de]
	jr nc,Unknown_0xADBF
	dec a
	jr Unknown_0xADC0

Unknown_0xADBF:
	inc a

Unknown_0xADC0:
	or a
	jr z,Unknown_0xADCD
	cp $07
	jr z,Unknown_0xADCD
	ld [de],a
	ld a,$08
	ld e,$3F
	ld [de],a

Unknown_0xADCD:
	call Unknown_0xBF36
	call Unknown_0xAE05
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x393E
	call Unknown_0x378B
	call Unknown_0x37A8
	ld e,$3A
	ld a,[de]
	dec a
	jr nz,Unknown_0xAE01
	ld a,[$FF00+$A5]
	and $02
	jr nz,Unknown_0xAE02
	ld e,$02
	ld bc,$6D75
	jp Unknown_0x37F4

Unknown_0xAE01:
	ld [de],a

Unknown_0xAE02:
	jp Unknown_0x37F7

Unknown_0xAE05:
	ld a,[$A070]
	or a
	jr nz,Unknown_0xAE13
	ld e,$0E
	ld bc,$0060
	jp Unknown_0x0D23

Unknown_0xAE13:
	ld e,$0E
	ld bc,$0060
	jp Unknown_0x0D23

UnknownData_0xAE1B:
INCBIN "baserom.gb", $AE1B, $AE3F - $AE1B
	call Unknown_0x359A
	call Unknown_0x3602
	call Unknown_0xA822
	jr nc,Unknown_0xAE52
	ld e,$02
	ld bc,$6E2A
	call Unknown_0x0846

Unknown_0xAE52:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0xB5A1
	jr nc,Unknown_0xAE6D
	ld e,$02
	ld bc,$6EC9
	jp Unknown_0x37F4

Unknown_0xAE6D:
	call Unknown_0x37BD
	jr nc,Unknown_0xAE7A
	ld e,$02
	ld bc,$6EC9
	jp Unknown_0x37F4

Unknown_0xAE7A:
	call Unknown_0xB663
	jr nc,Unknown_0xAE87
	ld e,$02
	ld bc,$6EC9
	jp Unknown_0x37F4

Unknown_0xAE87:
	ld e,$3E
	ld a,[de]
	or a
	jr z,Unknown_0xAE9F
	call Unknown_0xAD18
	call Unknown_0xAD3C
	jr nc,Unknown_0xAE9D
	ld e,$07
	ld bc,$6E2C
	jp Unknown_0x37F4

Unknown_0xAE9D:
	jr Unknown_0xAEC6

Unknown_0xAE9F:
	call Unknown_0x366B
	jr nc,Unknown_0xAEAC
	ld e,$02
	ld bc,$69B8
	jp Unknown_0x37F4

Unknown_0xAEAC:
	call Unknown_0x36E6
	jr nc,Unknown_0xAEB9
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xAEB9:
	call Unknown_0x3724
	jr nc,Unknown_0xAEC6
	ld e,$01
	ld bc,$411F
	jp Unknown_0x37F4

Unknown_0xAEC6:
	jp Unknown_0x37F7

UnknownData_0xAEC9:
INCBIN "baserom.gb", $AEC9, $AF00 - $AEC9
	call Unknown_0x359A
	call Unknown_0xBE1A
	call Unknown_0xBE46
	call Unknown_0xA822
	jr nc,Unknown_0xAF16
	ld e,$02
	ld bc,$6EC9
	call Unknown_0x0846

Unknown_0xAF16:
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	jr nc,Unknown_0xAF38
	ld h,d
	ld l,$0D
	ld a,[hli]
	or [hl]
	jr nz,Unknown_0xAF38
	ld e,$02
	ld bc,$6E2A
	jp Unknown_0x37F4

Unknown_0xAF38:
	call Unknown_0x393E
	call Unknown_0x37CB
	jr nc,Unknown_0xAF48
	ld e,$02
	ld bc,$6EC9
	jp Unknown_0x37F4

Unknown_0xAF48:
	call Unknown_0x377C
	jr nc,Unknown_0xAF55
	ld e,$02
	ld bc,$6F97
	jp Unknown_0x37F4

Unknown_0xAF55:
	ld e,$3E
	ld a,[de]
	or a
	jr z,Unknown_0xAF6D
	call Unknown_0xAD18
	call Unknown_0xAD3C
	jr nc,Unknown_0xAF6B
	ld e,$07
	ld bc,$6E2C
	jp Unknown_0x37F4

Unknown_0xAF6B:
	jr Unknown_0xAF94

Unknown_0xAF6D:
	call Unknown_0x366B
	jr nc,Unknown_0xAF7A
	ld e,$02
	ld bc,$69B8
	jp Unknown_0x37F4

Unknown_0xAF7A:
	call Unknown_0x36E6
	jr nc,Unknown_0xAF87
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xAF87:
	call Unknown_0x3724
	jr nc,Unknown_0xAF94
	ld e,$01
	ld bc,$411F
	jp Unknown_0x37F4

Unknown_0xAF94:
	jp Unknown_0x37F7

UnknownData_0xAF97:
INCBIN "baserom.gb", $AF97, $AFD7 - $AF97
	ld hl,Unknown_0xB2BE
	ld a,$01
	call FarCall
	ret
	call Unknown_0xBF1C
	ld a,[$A056]
	or a
	jr z,Unknown_0xAFF7
	ld a,[$A055]
	or a
	jr nz,Unknown_0xAFF7
	ld e,$02
	ld bc,$7067
	jp Unknown_0x37F4

Unknown_0xAFF7:
	ld h,d
	ld l,$39
	ld a,[hl]
	or a
	jr z,Unknown_0xB001
	dec [hl]
	jr Unknown_0xB01B

Unknown_0xB001:
	ld a,[$FF00+$A5]
	bit 1,a
	jr nz,Unknown_0xB01B
	ld a,[$A056]
	or a
	jr nz,Unknown_0xB01B
	ld a,[$A055]
	or a
	jr nz,Unknown_0xB01B
	ld e,$02
	ld bc,$7048
	jp Unknown_0x37F4

Unknown_0xB01B:
	call Unknown_0x3A24
	jr nc,Unknown_0xB028
	ld e,$02
	ld bc,$6E1B
	jp Unknown_0x37F4

Unknown_0xB028:
	ld e,$3D
	ld a,[de]
	or a
	jr z,Unknown_0xB032
	dec a
	ld [de],a
	jr Unknown_0xB03A

Unknown_0xB032:
	ld hl,Unknown_0xB348
	ld a,$01
	call FarCall

Unknown_0xB03A:
	ld hl,Unknown_0xB043
	call Unknown_0x3AAA
	jp Unknown_0x37F7

Unknown_0xB043:
INCBIN "baserom.gb", $B043, $B054 - $B043
	call Unknown_0xBF1C
	call Unknown_0x3765
	jr nc,Unknown_0xB064
	ld e,$02
	ld bc,$6E1B
	jp Unknown_0x37F4

Unknown_0xB064:
	jp Unknown_0x37F7

UnknownData_0xB067:
INCBIN "baserom.gb", $B067, $B07F - $B067
	ld e,$0E
	ld bc,$0060
	call Unknown_0x0D23
	call Unknown_0xBD7B
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x393E
	call Unknown_0x3765
	jr nc,Unknown_0xB0AB
	ld e,$02
	ld bc,$71FD
	jp Unknown_0x37F4

Unknown_0xB0AB:
	jp Unknown_0x37F7

UnknownData_0xB0AE:
INCBIN "baserom.gb", $B0AE, $B0BC - $B0AE

Unknown_0xB0BC:
INCBIN "baserom.gb", $B0BC, $B110 - $B0BC
	call Unknown_0x359A
	call Unknown_0xBD84
	call Unknown_0xBD56
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	call Unknown_0x393E
	ld a,[$FF00+$B4]
	and $02
	jr z,Unknown_0xB13B
	ld e,$02
	ld bc,$7218
	jp Unknown_0x37F4

Unknown_0xB13B:
	call Unknown_0x3629
	jr nc,Unknown_0xB148
	ld e,$02
	ld bc,$725D
	jp Unknown_0x37F4

Unknown_0xB148:
	call Unknown_0x3765
	jr nc,Unknown_0xB155
	ld e,$02
	ld bc,$71FD
	jp Unknown_0x37F4

Unknown_0xB155:
	call Unknown_0xB8FB
	jr nc,Unknown_0xB162
	ld e,$02
	ld bc,$70CF
	jp Unknown_0x37F4

Unknown_0xB162:
	call Unknown_0x36E6
	jr nc,Unknown_0xB16F
	ld e,$08
	ld bc,$6282
	jp Unknown_0x37F4

Unknown_0xB16F:
	jp Unknown_0x37F7

UnknownData_0xB172:
INCBIN "baserom.gb", $B172, $B24A - $B172
	call Unknown_0xBF1C
	call Unknown_0x3765
	jr nc,Unknown_0xB25A
	ld e,$02
	ld bc,$6E1B
	jp Unknown_0x37F4

Unknown_0xB25A:
	jp Unknown_0x37F7

UnknownData_0xB25D:
INCBIN "baserom.gb", $B25D, $B2BE - $B25D

Unknown_0xB2BE:
INCBIN "baserom.gb", $B2BE, $B2C6 - $B2BE
	call Unknown_0xBF1C
	jp Unknown_0x37F7
	call Unknown_0x34FD
	ret

UnknownData_0xB2D0:
INCBIN "baserom.gb", $B2D0, $B2FD - $B2D0
	call Unknown_0xBF1C
	ld a,$02
	ld hl,Unknown_0xB328
	call Unknown_0x3AAA
	call Unknown_0x3AE9
	call Unknown_0x375B
	jr nc,Unknown_0xB318
	ld e,$02
	ld bc,$72F3
	jp Unknown_0x37F4

Unknown_0xB318:
	call Unknown_0x377C
	jr nc,Unknown_0xB325
	ld e,$02
	ld bc,$6F97
	jp Unknown_0x37F4

Unknown_0xB325:
	jp Unknown_0x37F7

Unknown_0xB328:
INCBIN "baserom.gb", $B328, $B32D - $B328
	call Unknown_0xBF1C
	call Unknown_0x377C
	jr nc,Unknown_0xB33D
	ld e,$02
	ld bc,$6F97
	jp Unknown_0x37F4

Unknown_0xB33D:
	jp Unknown_0x37F7

UnknownData_0xB340:
INCBIN "baserom.gb", $B340, $B348 - $B340

Unknown_0xB348:
INCBIN "baserom.gb", $B348, $B417 - $B348
	ld hl,Unknown_0x80DA
	ld a,$01
	call FarCall
	ret
	ld a,$06
	ld [$A072],a
	xor a
	ld [$DEE5],a
	ld hl,$DEDF
	set 1,[hl]
	ret
	ld a,[$DEFF]
	or a
	ret nz
	ld a,[$A071]
	cp $02
	ld e,$09
	jr z,Unknown_0xB445
	cp $03
	ld e,$0B
	jr z,Unknown_0xB445
	ld e,$14

Unknown_0xB445:
	push bc
	ld hl,$4232
	ld a,$1F
	call FarCall
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret
	push bc
	ld a,[$A071]
	ld hl,$7467
	ld e,a
	ld hl,$606D
	ld a,$1E
	call FarCall
	ld a,[$FF00+$9A]
	ld d,a
	pop bc
	ret

UnknownData_0xB468:
INCBIN "baserom.gb", $B468, $B46B - $B468
	ld a,[$A064]
	or a
	jr z,Unknown_0xB474
	call Unknown_0x34FD

Unknown_0xB474:
	ld hl,Unknown_0xB0BC
	ld a,$08
	call FarCall
	ret
	ld a,[$A051]
	ld hl,$7499
	add a,l
	ld l,a
	jr nc,Unknown_0xB488
	inc h

Unknown_0xB488:
	ld a,[hl]
	or a
	jr z,Unknown_0xB498
	ld [$A05B],a
	inc a
	ld [$DEE0],a
	ld hl,$DEDE
	set 3,[hl]

Unknown_0xB498:
	ret

UnknownData_0xB499:
INCBIN "baserom.gb", $B499, $B4A7 - $B499
	push bc
	call Unknown_0x1AB3
	pop bc
	jr nz,Unknown_0xB4E8
	ld a,$01
	ld [$A070],a
	push bc
	ld a,[$A071]
	ld hl,$7532
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0xB4C0
	inc h

Unknown_0xB4C0:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	call Unknown_0x0620
	call Unknown_0xB53A
	pop bc
	jr nc,Unknown_0xB4D2
	ld e,$27
	ld a,$06
	ld [de],a
	ret

Unknown_0xB4D2:
	ld h,d
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a
	ld l,$0D
	ld a,[hli]
	or [hl]
	ld e,$27
	jr nz,Unknown_0xB4E4
	ld a,$04
	ld [de],a
	ret

Unknown_0xB4E4:
	ld a,$05
	ld [de],a
	ret

Unknown_0xB4E8:
	xor a
	ld [$A070],a
	ld a,[$A050]
	cp $0D
	jr nz,Unknown_0xB4F9
	ld e,$27
	ld a,$03
	ld [de],a
	ret

Unknown_0xB4F9:
	ld e,$10
	ld a,[de]
	rla
	jr c,Unknown_0xB518
	push bc
	ld a,[$A071]
	ld hl,$7532
	add a,a
	add a,l
	ld l,a
	jr nc,Unknown_0xB50C
	inc h

Unknown_0xB50C:
	ld a,[hli]
	ld h,[hl]
	ld l,a
	call Unknown_0x0620
	call Unknown_0xB53A
	pop bc
	jr nc,Unknown_0xB51E

Unknown_0xB518:
	ld e,$27
	ld a,$02
	ld [de],a
	ret

Unknown_0xB51E:
	ld h,d
	ld l,$0F
	xor a
	ld [hli],a
	ld [hl],a
	ld l,$0D
	ld a,[hli]
	or [hl]
	ld e,$27
	jr nz,Unknown_0xB530
	ld a,$00
	ld [de],a
	ret

Unknown_0xB530:
	ld a,$01
	ld [de],a
	ret

UnknownData_0xB534:
INCBIN "baserom.gb", $B534, $B53A - $B534

Unknown_0xB53A:
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
	jr c,Unknown_0xB58F
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0xB568
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xB58F
	ld a,[$FF00+$B1]
	add a,l
	jr Unknown_0xB58F

Unknown_0xB568:
	ld a,[$FF00+$B3]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0xB585
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xB58F
	ld a,[$FF00+$B0]
	cpl
	scf
	adc a,l
	jr Unknown_0xB58F

Unknown_0xB585:
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,$00
	ld [de],a
	scf
	ret

Unknown_0xB58F:
	inc a
	jr nz,Unknown_0xB585
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

Unknown_0xB5A1:
	ld h,d
	ld e,$4D
	ld a,[de]
	ld [$FF00+$84],a
	xor a
	ld [$FF00+$85],a
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
	jr c,Unknown_0xB61E
	ld a,[$FF00+$84]
	cp $05
	ld a,[$FF00+$B0]
	jr z,Unknown_0xB5E7
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0xB5DF
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xB610
	ld a,[$FF00+$B1]
	add a,l
	jr Unknown_0xB60C

Unknown_0xB5DF:
	ld a,[$FF00+$84]
	cp $04
	jr z,Unknown_0xB602
	ld a,[$FF00+$B3]

Unknown_0xB5E7:
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0xB602
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	ld a,l
	jr c,Unknown_0xB610
	ld a,[$FF00+$B0]
	cpl
	scf
	adc a,l
	jr Unknown_0xB60C

Unknown_0xB602:
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,$00
	ld [de],a
	scf
	ret

Unknown_0xB60C:
	ld hl,$FF85
	inc [hl]

Unknown_0xB610:
	ld b,a
	ld a,[$FF00+$84]
	cp $04
	jr nc,Unknown_0xB61D
	ld a,[$FF00+$9E]
	cp $04
	jr nc,Unknown_0xB602

Unknown_0xB61D:
	ld a,b

Unknown_0xB61E:
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
	ld a,[$FF00+$85]
	or a
	jr z,Unknown_0xB658
	xor a
	ld [$FF00+$85],a
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
	jr c,Unknown_0xB61E
	ld a,[$FF00+$9A]
	ld h,a

Unknown_0xB658:
	ld d,h
	ld e,$4E
	ld a,[de]
	cp $31
	call z,Unknown_0x3C63
	and a
	ret

Unknown_0xB663:
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0xB6C3
	ld h,d
	bit 4,a
	ld de,$0000
	jr z,Unknown_0xB696
	ld a,[$FF00+$B1]
	inc a
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x17A3
	jr nc,Unknown_0xB683
	rla
	jr c,Unknown_0xB6C0

Unknown_0xB683:
	ld a,[$FF00+$AE]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x17A3
	jr nc,Unknown_0xB6BB
	rla
	jr nc,Unknown_0xB6BB
	jr Unknown_0xB6C0

Unknown_0xB696:
	ld a,[$FF00+$B0]
	dec a
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x16EF
	jr nc,Unknown_0xB6A9
	dec a
	rla
	jr nc,Unknown_0xB6C0

Unknown_0xB6A9:
	ld a,[$FF00+$AE]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x16EF
	jr nc,Unknown_0xB6BB
	dec a
	rla
	jr nc,Unknown_0xB6C0

Unknown_0xB6BB:
	ld a,[$FF00+$9A]
	ld d,a
	scf
	ret

Unknown_0xB6C0:
	ld a,[$FF00+$9A]
	ld d,a

Unknown_0xB6C3:
	and a
	ret

Unknown_0xB6C5:
	call Unknown_0xB6DF
	jr nc,Unknown_0xB6DD
	ld e,$45
	ld a,[de]
	ld b,a
	ld e,$0E
	ld a,[de]
	xor b
	rla
	jr c,Unknown_0xB6DD
	ld e,$0D
	xor a
	ld [de],a
	inc e
	ld [de],a
	scf
	ret

Unknown_0xB6DD:
	and a
	ret

Unknown_0xB6DF:
	ld h,d
	ld l,$0E
	ld de,$0000
	bit 7,[hl]
	jr nz,Unknown_0xB726
	ld a,[$FF00+$B1]
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x17A3
	jr nc,Unknown_0xB6FC
	ld l,a
	rlca
	jp c,Unknown_0x1E2A

Unknown_0xB6FC:
	ld a,[$FF00+$AE]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x17A3
	jr nc,Unknown_0xB70F
	ld l,a
	rlca
	jp c,Unknown_0x1E2A

Unknown_0xB70F:
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

Unknown_0xB726:
	ld a,[$FF00+$B0]
	ld c,a
	rla
	sbc a,a
	ld b,a
	call Unknown_0x1AD9
	call Unknown_0x16EF
	jr nc,Unknown_0xB73A
	ld l,a
	dec a
	rlca
	jp nc,Unknown_0x1E4C

Unknown_0xB73A:
	ld a,[$FF00+$AE]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,de
	ld d,h
	ld e,l
	call Unknown_0x16EF
	jr nc,Unknown_0xB74E
	ld l,a
	dec a
	rlca
	jp nc,Unknown_0x1E4C

Unknown_0xB74E:
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

Unknown_0xB766:
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
	jr nc,Unknown_0xB780
	ld l,a
	dec a
	rlca
	jr nc,Unknown_0xB7CB
	jp Unknown_0x1E6D

Unknown_0xB780:
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x18D7
	jp nc,Unknown_0xB7A6
	ld l,a
	ld a,[$FF00+$9E]
	cp $07
	jp z,Unknown_0xB7A6
	cp $06
	ld a,l
	jr nz,Unknown_0xB7A2
	ld a,[$FF00+$B1]
	cpl
	scf
	adc a,l
	ld l,a

Unknown_0xB7A2:
	dec a
	rlca
	jr nc,Unknown_0xB7CB

Unknown_0xB7A6:
	ld a,[$FF00+$B3]
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
	jr nz,Unknown_0xB7C6
	ld a,[$FF00+$B0]
	add a,l
	ld l,a

Unknown_0xB7C6:
	dec a
	rlca
	jp c,Unknown_0x1E6D

Unknown_0xB7CB:
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

Unknown_0xB7DD:
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
	jr nc,Unknown_0xB801
	ld l,a
	rlca
	jr c,Unknown_0xB855
	ld a,[$FF00+$9A]
	ld d,a
	ld e,$4D
	ld a,[$FF00+$9E]
	ld [de],a
	jr Unknown_0xB84D

Unknown_0xB801:
	ld a,[$FF00+$B1]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0xB822
	ld l,a
	ld a,[$FF00+$9E]
	cp $05
	jr z,Unknown_0xB822
	cp $04
	ld a,l
	jr nz,Unknown_0xB81F
	ld a,[$FF00+$B1]
	add a,l
	ld l,a

Unknown_0xB81F:
	rlca
	jr c,Unknown_0xB887

Unknown_0xB822:
	ld a,[$FF00+$B3]
	ld l,a
	rla
	sbc a,a
	ld h,a
	add hl,bc
	ld b,h
	ld c,l
	call Unknown_0x184E
	jr nc,Unknown_0xB845
	ld l,a
	ld a,[$FF00+$9E]
	cp $04
	jr z,Unknown_0xB845
	cp $05
	ld a,l
	jr nz,Unknown_0xB842
	ld a,[$FF00+$B0]
	cpl
	scf
	adc a,l
	ld l,a

Unknown_0xB842:
	rlca
	jr c,Unknown_0xB887

Unknown_0xB845:
	ld a,[$FF00+$9A]
	ld h,a
	ld d,a
	ld l,$4D
	ld [hl],$00

Unknown_0xB84D:
	ld e,$4F
	ld a,[$DB7C]
	ld [de],a
	and a
	ret

Unknown_0xB855:
	ld a,$01
	ld [$DB7C],a
	ld a,[$FF00+$9A]
	ld h,a
	ld c,l
	ld l,$4D
	ld a,[hl]
	cp $04
	jr nc,Unknown_0xB8BD
	ld a,[$FF00+$9E]
	ld e,$00
	cp $04
	jr c,Unknown_0xB8A9
	ld l,$4F
	bit 0,[hl]
	jr nz,Unknown_0xB88B
	ld l,$06
	ld b,[hl]
	ld l,$0F
	ld a,[hli]
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$FF
	bit 7,a
	jr nz,Unknown_0xB88B
	add a,c
	jr nc,Unknown_0xB88B
	jr Unknown_0xB8BD

Unknown_0xB887:
	ld a,[$FF00+$9A]
	ld h,a
	ld c,l

Unknown_0xB88B:
	ld a,[$FF00+$9E]
	cp $04
	ld e,$00
	jr c,Unknown_0xB8A9
	ld l,$03
	ld b,[hl]
	ld l,$0D
	ld a,[hli]
	jr z,Unknown_0xB8A3
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$00
	cpl
	jr Unknown_0xB8A8

Unknown_0xB8A3:
	scf
	sbc a,b
	ld a,[hl]
	sbc a,$FF

Unknown_0xB8A8:
	ld e,a

Unknown_0xB8A9:
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
	jr nz,Unknown_0xB845
	add a,c
	jp nc,Unknown_0xB845

Unknown_0xB8BD:
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
	ld d,h
	ld a,[$FF00+$9F]
	ld l,$4E
	ld [hl],a
	ld l,$4F
	ld [hl],$00
	scf
	ret

Unknown_0xB8DA:
	ld e,$6F
	ld a,[$FF00+$A6]
	and $01
	ld b,$02
	jr nz,Unknown_0xB8F7
	ld a,[$FF00+$A5]
	and $F1
	ld b,$00
	jr z,Unknown_0xB8ED
	inc b

Unknown_0xB8ED:
	ld a,[de]
	cp $02
	jr z,Unknown_0xB8F5
	cp b
	jr nz,Unknown_0xB8F7

Unknown_0xB8F5:
	and a
	ret

Unknown_0xB8F7:
	ld a,b
	ld [de],a
	scf
	ret

Unknown_0xB8FB:
	ld e,$3D
	ld a,[$FF00+$A6]
	and $01
	ld b,$05
	jr nz,Unknown_0xB922
	ld a,[$FF00+$A5]
	ld b,$00
	and $F0
	jr z,Unknown_0xB918
	inc b
	bit 6,a
	jr nz,Unknown_0xB918
	inc b
	bit 7,a
	jr nz,Unknown_0xB918
	inc b

Unknown_0xB918:
	ld a,[de]
	cp $05
	jr z,Unknown_0xB920
	cp b
	jr nz,Unknown_0xB922

Unknown_0xB920:
	and a
	ret

Unknown_0xB922:
	ld a,b
	ld [de],a
	scf
	ret

Unknown_0xB926:
	ld hl,$FFAE
	ld a,$F3
	ld [hli],a
	ld a,$0A
	ld [hli],a
	ld a,$F7
	ld [hli],a
	ld a,$08
	ld [hli],a
	ld a,$17
	ld [hli],a
	ld a,$EF
	ld [hli],a
	ret

Unknown_0xB93C:
	ld hl,$FFAE
	ld a,$F5
	ld [hli],a
	ld a,$08
	ld [hli],a
	ld a,$F7
	ld [hli],a
	ld a,$08
	ld [hli],a
	ld a,$13
	ld [hli],a
	ld a,$EF
	ld [hli],a
	ret

Unknown_0xB952:
	ld hl,$FFAE
	ld a,$F4
	ld [hli],a
	ld a,$0C
	ld [hli],a
	ld a,$F7
	ld [hli],a
	ld a,$08
	ld [hli],a
	ld a,$18
	ld [hli],a
	ld a,$EF
	ld [hli],a
	ret

Unknown_0xB968:
	ld e,$28
	jp Unknown_0x0D04

Unknown_0xB96D:
	ld e,$6D
	ld a,[de]
	cp $03
	jr nc,Unknown_0xB995
	cp $01
	jr z,Unknown_0xB983
	jr nc,Unknown_0xB98C

Unknown_0xB97A:
	ld hl,$200E
	ld bc,$014C
	jp Unknown_0x386E

Unknown_0xB983:
	ld hl,$080E
	ld bc,$00A0
	jp Unknown_0x386E

Unknown_0xB98C:
	ld hl,$200E
	ld bc,$01E0
	jp Unknown_0x386E

Unknown_0xB995:
	cp $04
	jr z,Unknown_0xB983
	jr nc,Unknown_0xB98C
	jr Unknown_0xB97A

Unknown_0xB99D:
	ld e,$6D
	ld a,[de]
	cp $03
	jr nc,Unknown_0xB9F3
	cp $01
	jr z,Unknown_0xB9C1
	jr nc,Unknown_0xB9DA

Unknown_0xB9AA:
	ld bc,$014C
	ld hl,$00A6
	ld a,$20
	ld [$FF00+$85],a
	ld a,$10
	ld [$FF00+$86],a
	ld a,$0E
	ld [$FF00+$80],a
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xB9C1:
	ld bc,$00A0
	ld hl,$00F0
	ld a,$08
	ld [$FF00+$85],a
	ld a,$10
	ld [$FF00+$86],a
	ld a,$0E
	ld [$FF00+$80],a
	ld a,$0E
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xB9DA:
	ld bc,$01E0
	ld hl,$0050
	ld a,$20
	ld [$FF00+$85],a
	ld a,$04
	ld [$FF00+$86],a
	ld a,$0E
	ld [$FF00+$80],a
	ld a,$0E
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xB9F3:
	cp $04
	jr z,Unknown_0xB9C1
	jr nc,Unknown_0xB9DA
	jr Unknown_0xB9AA

Unknown_0xB9FB:
	ld b,$00
	ld e,$4D
	ld a,[de]
	cp $04
	jr c,Unknown_0xBA76
	ld a,[$FF00+$A5]
	jr nz,Unknown_0xBA3F
	and $10
	ld a,[$A070]
	jr z,Unknown_0xBA27
	or a
	jr nz,Unknown_0xBA1F
	bit 0,b
	ld e,$04
	jr z,Unknown_0xBA1A
	ld e,$04

Unknown_0xBA1A:
	ld bc,$0010
	jr Unknown_0xBA24

Unknown_0xBA1F:
	ld e,$02
	ld bc,$0008

Unknown_0xBA24:
	jp Unknown_0x0CA2

Unknown_0xBA27:
	or a
	jr nz,Unknown_0xBA37
	bit 0,b
	ld e,$20
	jr z,Unknown_0xBA32
	ld e,$18

Unknown_0xBA32:
	ld bc,$FE20
	jr Unknown_0xBA3C

Unknown_0xBA37:
	ld e,$0B
	ld bc,$FF00

Unknown_0xBA3C:
	jp Unknown_0x0CD3

Unknown_0xBA3F:
	and $20
	ld a,[$A070]
	jr z,Unknown_0xBA5E
	or a
	jr nz,Unknown_0xBA56
	bit 0,b
	ld e,$04
	jr z,Unknown_0xBA51
	ld e,$04

Unknown_0xBA51:
	ld bc,$FFF0
	jr Unknown_0xBA5B

Unknown_0xBA56:
	ld e,$02
	ld bc,$FFF8

Unknown_0xBA5B:
	jp Unknown_0x0CD3

Unknown_0xBA5E:
	or a
	jr nz,Unknown_0xBA6E
	bit 0,b
	ld e,$20
	jr z,Unknown_0xBA69
	ld e,$18

Unknown_0xBA69:
	ld bc,$01E0
	jr Unknown_0xBA73

Unknown_0xBA6E:
	ld e,$0B
	ld bc,$0100

Unknown_0xBA73:
	jp Unknown_0x0CA2

Unknown_0xBA76:
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0xBA9E
	ld h,a
	ld a,[$A070]
	or a
	jr nz,Unknown_0xBA90
	bit 0,b
	ld e,$20
	jr z,Unknown_0xBA8B
	ld e,$18

Unknown_0xBA8B:
	ld bc,$014C
	jr Unknown_0xBA95

Unknown_0xBA90:
	ld e,$0B
	ld bc,$0099

Unknown_0xBA95:
	ld a,h
	and $10
	jp nz,Unknown_0x0CA2
	jp Unknown_0x0CC9

Unknown_0xBA9E:
	ld a,[$A070]
	or a
	jr nz,Unknown_0xBAAE
	bit 0,b
	ld e,$0E
	jr z,Unknown_0xBAB0
	ld e,$04
	jr Unknown_0xBAB0

Unknown_0xBAAE:
	ld e,$05

Unknown_0xBAB0:
	jp Unknown_0x0D04

Unknown_0xBAB3:
	ld hl,$160E
	ld bc,$014C
	jp Unknown_0x3894

Unknown_0xBABC:
	ld bc,$014C
	ld hl,$00A6
	ld a,$16
	ld [$FF00+$85],a
	ld a,$0B
	ld [$FF00+$86],a
	ld a,$0E
	ld [$FF00+$80],a
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xBAD3:
	ld e,$6D
	ld a,[de]
	cp $03
	jr c,Unknown_0xBADC
	sub $03

Unknown_0xBADC:
	cp $01
	jr z,Unknown_0xBAEB
	jr nc,Unknown_0xBAF4
	ld hl,$0B05
	ld bc,$0099
	jp Unknown_0x386E

Unknown_0xBAEB:
	ld hl,$0305
	ld bc,$0040
	jp Unknown_0x386E

Unknown_0xBAF4:
	ld hl,$0B05
	ld bc,$0100
	jp Unknown_0x386E

Unknown_0xBAFD:
	ld e,$6D
	ld a,[de]
	cp $03
	jr c,Unknown_0xBB06
	sub $03

Unknown_0xBB06:
	cp $01
	jr z,Unknown_0xBB23
	jr nc,Unknown_0xBB3C
	ld bc,$0099
	ld hl,$004D
	ld a,$0B
	ld [$FF00+$85],a
	ld a,$06
	ld [$FF00+$86],a
	ld a,$05
	ld [$FF00+$80],a
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xBB23:
	ld bc,$0040
	ld hl,$0080
	ld a,$03
	ld [$FF00+$85],a
	ld a,$06
	ld [$FF00+$86],a
	ld a,$05
	ld [$FF00+$80],a
	ld a,$05
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xBB3C:
	ld bc,$0100
	ld hl,$0020
	ld a,$0B
	ld [$FF00+$85],a
	ld a,$02
	ld [$FF00+$86],a
	ld a,$05
	ld [$FF00+$80],a
	ld a,$05
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xBB55:
	ld h,d
	ld l,$6E
	ld a,[hl]
	or a
	jr z,Unknown_0xBB5F
	dec [hl]
	jr Unknown_0xBB6E

Unknown_0xBB5F:
	ld a,[$FF00+$A5]
	and $41
	jr z,Unknown_0xBB6E
	ld [hl],$0F
	ld l,$0F
	ld [hl],$00
	inc l
	ld [hl],$FF

Unknown_0xBB6E:
	ld e,$08
	ld bc,$00E0
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0xBB7E
	ld e,$10
	ld bc,$0200

Unknown_0xBB7E:
	jp Unknown_0x0D23

Unknown_0xBB81:
	ld h,d
	ld l,$6E
	ld a,[hl]
	or a
	jr z,Unknown_0xBB8B
	dec [hl]
	jr Unknown_0xBB9A

Unknown_0xBB8B:
	ld a,[$FF00+$A5]
	and $41
	jr z,Unknown_0xBB9A
	ld [hl],$0F
	ld l,$0F
	ld [hl],$00
	inc l
	ld [hl],$FF

Unknown_0xBB9A:
	ld e,$08
	ld bc,$00E0
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0xBBAA
	ld e,$10
	ld bc,$0200

Unknown_0xBBAA:
	jp Unknown_0x0D23

Unknown_0xBBAD:
	ld hl,$0809
	ld bc,$010C
	jp Unknown_0x3894

Unknown_0xBBB6:
	ld bc,$010C
	ld hl,$0086
	ld a,$08
	ld [$FF00+$85],a
	ld a,$04
	ld [$FF00+$86],a
	ld a,$09
	ld [$FF00+$80],a
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xBBCD:
	ld e,$6D
	ld a,[de]
	ld hl,$7BDD
	add a,l
	ld l,a
	jr nc,Unknown_0xBBD8
	inc h

Unknown_0xBBD8:
	ld a,[hl]
	ld e,a
	jp Unknown_0x0D04

UnknownData_0xBBDD:
INCBIN "baserom.gb", $BBDD, $BBE3 - $BBDD

Unknown_0xBBE3:
	ld e,$4E
	ld a,[de]
	and $F0
	cp $70
	ld b,$00
	jr z,Unknown_0xBBF6
	inc b
	ld a,[$A070]
	or a
	jr nz,Unknown_0xBBF6
	inc b

Unknown_0xBBF6:
	ld e,$4D
	ld a,[de]
	cp $04
	jr c,Unknown_0xBC2B
	ld e,$20
	jr nz,Unknown_0xBC16
	bit 1,b
	jr nz,Unknown_0xBC10
	ld e,$0B
	bit 0,b
	ld bc,$FF00
	jr nz,Unknown_0xBC13
	ld e,$18

Unknown_0xBC10:
	ld bc,$FE20

Unknown_0xBC13:
	jp Unknown_0x0CD3

Unknown_0xBC16:
	bit 1,b
	jr nz,Unknown_0xBC25
	ld e,$0B
	bit 0,b
	ld bc,$0100
	jr nz,Unknown_0xBC28
	ld e,$18

Unknown_0xBC25:
	ld bc,$01E0

Unknown_0xBC28:
	jp Unknown_0x0CA2

Unknown_0xBC2B:
	bit 1,b
	ld e,$0E
	jr nz,Unknown_0xBC39
	bit 0,b
	ld e,$05
	jr nz,Unknown_0xBC39
	ld e,$04

Unknown_0xBC39:
	jp Unknown_0x0D04

Unknown_0xBC3C:
	ld hl,$160E
	ld bc,$0160
	jp Unknown_0x3894

Unknown_0xBC45:
	ld bc,$0160
	ld hl,$00A6
	ld a,$16
	ld [$FF00+$85],a
	ld a,$0B
	ld [$FF00+$86],a
	ld a,$0E
	ld [$FF00+$80],a
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xBC5C:
	ld a,[$FF00+$A5]
	and $C1
	ld [$FF00+$84],a
	bit 0,a
	jr z,Unknown_0xBC7E
	ld e,$43
	ld a,[$FF00+$A6]
	bit 0,a
	jr nz,Unknown_0xBC75
	ld a,[de]
	or a
	jr z,Unknown_0xBC7E
	dec a
	jr Unknown_0xBC77

Unknown_0xBC75:
	ld a,$10

Unknown_0xBC77:
	ld [de],a
	ld a,[$FF00+$84]
	and $FE
	ld [$FF00+$84],a

Unknown_0xBC7E:
	ld h,d
	ld l,$10
	ld a,[$FF00+$A6]
	bit 0,a
	jr nz,Unknown_0xBCBC

Unknown_0xBC87:
	ld a,[hld]
	rla
	jr c,Unknown_0xBC98
	ld a,[hli]
	sub $E0
	ld a,[hl]
	sbc a,$00
	jr c,Unknown_0xBCA0

Unknown_0xBC93:
	ld e,$12
	jp Unknown_0x0D85

Unknown_0xBC98:
	ld a,[hli]
	sub $20
	ld a,[hl]
	sbc a,$FF
	jr c,Unknown_0xBC93

Unknown_0xBCA0:
	ld a,[$FF00+$84]
	or a
	jr nz,Unknown_0xBCAA
	ld e,$08
	jp Unknown_0x0D85

Unknown_0xBCAA:
	ld e,$10
	bit 7,a
	jr z,Unknown_0xBCB6
	ld bc,$00E0
	jp Unknown_0x0D35

Unknown_0xBCB6:
	ld bc,$FF20
	jp Unknown_0x0D70

Unknown_0xBCBC:
	ld a,[$FF00+$84]
	and $C0
	or a
	jr nz,Unknown_0xBCCB
	ld a,[$FF00+$A5]
	and $30
	jr nz,Unknown_0xBC87
	jr Unknown_0xBCD2

Unknown_0xBCCB:
	bit 7,a
	ld bc,$0150
	jr nz,Unknown_0xBCD5

Unknown_0xBCD2:
	ld bc,$FEB0

Unknown_0xBCD5:
	ld [hl],b
	dec l
	ld [hl],c
	ret

Unknown_0xBCD9:
	ld e,$45
	ld a,[$FF00+$A5]
	and $30
	ld [$FF00+$84],a
	jr z,Unknown_0xBCEC
	bit 4,a
	ld a,$40
	jr nz,Unknown_0xBCEB
	ld a,$C0

Unknown_0xBCEB:
	ld [de],a

Unknown_0xBCEC:
	ld h,d
	ld l,$0E
	ld a,[$FF00+$A6]
	bit 0,a
	jr nz,Unknown_0xBD2A

Unknown_0xBCF5:
	ld a,[hld]
	rla
	jr c,Unknown_0xBD06
	ld a,[hli]
	sub $0C
	ld a,[hl]
	sbc a,$01
	jr c,Unknown_0xBD0E

Unknown_0xBD01:
	ld e,$12
	jp Unknown_0x0D04

Unknown_0xBD06:
	ld a,[hli]
	sub $F4
	ld a,[hl]
	sbc a,$FE
	jr c,Unknown_0xBD01

Unknown_0xBD0E:
	ld a,[$FF00+$84]
	or a
	jr nz,Unknown_0xBD18
	ld e,$08
	jp Unknown_0x0D04

Unknown_0xBD18:
	ld e,$10
	bit 4,a
	jr z,Unknown_0xBD24
	ld bc,$010C
	jp Unknown_0x0CB4

Unknown_0xBD24:
	ld bc,$FEF4
	jp Unknown_0x0CEF

Unknown_0xBD2A:
	ld a,[$FF00+$84]
	or a
	jr z,Unknown_0xBCF5
	ld e,$45
	ld a,[de]
	rla
	ld bc,$0192
	jr nc,Unknown_0xBD3B
	ld bc,$FE6E

Unknown_0xBD3B:
	ld [hl],b
	dec l
	ld [hl],c
	ret

Unknown_0xBD3F:
	ld bc,$010C
	ld hl,$0086
	ld a,$10
	ld [$FF00+$85],a
	ld a,$04
	ld [$FF00+$86],a
	ld a,$08
	ld [$FF00+$80],a
	ld [$FF00+$81],a
	jp Unknown_0x38BC

Unknown_0xBD56:
	ld a,[$FF00+$A6]
	bit 0,a
	jr z,Unknown_0xBD72
	ld a,[$FF00+$A5]
	and $30
	jr z,Unknown_0xBD72
	bit 4,a
	ld bc,$01B9
	jr nz,Unknown_0xBD6C
	ld bc,$FE47

Unknown_0xBD6C:
	ld h,d
	ld l,$0E
	ld [hl],b
	dec l
	ld [hl],c

Unknown_0xBD72:
	ld hl,$1A0C
	ld bc,$0126
	jp Unknown_0x3894

Unknown_0xBD7B:
	ld hl,$1A0C
	ld bc,$0126
	jp Unknown_0x386E

Unknown_0xBD84:
	ld a,[$FF00+$A5]
	and $C1
	ld [$FF00+$84],a
	bit 0,a
	jr z,Unknown_0xBDA6
	ld e,$43
	ld a,[$FF00+$A6]
	bit 0,a
	jr nz,Unknown_0xBD9D
	ld a,[de]
	or a
	jr z,Unknown_0xBDA6
	dec a
	jr Unknown_0xBD9F

Unknown_0xBD9D:
	ld a,$10

Unknown_0xBD9F:
	ld [de],a
	ld a,[$FF00+$84]
	and $FE
	ld [$FF00+$84],a

Unknown_0xBDA6:
	ld h,d
	ld l,$10
	ld a,[$FF00+$A6]
	bit 0,a
	jr nz,Unknown_0xBDFD

Unknown_0xBDAF:
	ld a,[hld]
	rla
	jr nc,Unknown_0xBDC0
	ld a,[hli]
	sub $B3
	ld a,[hl]
	sbc a,$FE
	jr nc,Unknown_0xBDC0
	ld e,$1C
	jp Unknown_0x0D85

Unknown_0xBDC0:
	ld a,[$FF00+$84]
	bit 6,a
	jr nz,Unknown_0xBDD6
	bit 0,a
	jr nz,Unknown_0xBDD6
	bit 7,a
	jr z,Unknown_0xBDDE
	ld e,$20
	ld bc,$014C
	jp Unknown_0x0D23

Unknown_0xBDD6:
	ld e,$20
	ld bc,$FEB3
	jp Unknown_0x0D70

Unknown_0xBDDE:
	ld bc,$0060
	ld l,$10
	ld a,[hld]
	rla
	jr c,Unknown_0xBDF8
	ld a,[$FF00+$A5]
	and $30
	jr nz,Unknown_0xBDF3
	ld a,[hli]
	sub c
	ld a,[hl]
	sbc a,b
	jr c,Unknown_0xBDF8

Unknown_0xBDF3:
	ld e,$0E
	jp Unknown_0x0D85

Unknown_0xBDF8:
	ld e,$0E
	jp Unknown_0x0D23

Unknown_0xBDFD:
	ld a,[$FF00+$84]
	ld e,a
	and $C0
	jr nz,Unknown_0xBE0C
	ld a,[$FF00+$A5]
	and $30
	jr nz,Unknown_0xBDAF
	jr Unknown_0xBE13

Unknown_0xBE0C:
	bit 7,a
	ld bc,$01F3
	jr nz,Unknown_0xBE16

Unknown_0xBE13:
	ld bc,$FE0D

Unknown_0xBE16:
	ld [hl],b
	dec l
	ld [hl],c
	ret

Unknown_0xBE1A:
	ld h,d
	ld l,$6E
	ld a,[hl]
	or a
	jr z,Unknown_0xBE24
	dec [hl]
	jr Unknown_0xBE33

Unknown_0xBE24:
	ld a,[$FF00+$A5]
	and $41
	jr z,Unknown_0xBE33
	ld [hl],$0F
	ld l,$0F
	ld [hl],$00
	inc l
	ld [hl],$FF

Unknown_0xBE33:
	ld e,$08
	ld bc,$00E0
	ld a,[$FF00+$A5]
	and $80
	jr z,Unknown_0xBE43
	ld e,$10
	ld bc,$0200

Unknown_0xBE43:
	jp Unknown_0x0D23

Unknown_0xBE46:
	ld hl,$0809
	ld bc,$010C
	jp Unknown_0x3894

Unknown_0xBE4F:
	ld e,$4E
	ld a,[de]
	and $F0
	cp $70
	ld b,$00
	jr z,Unknown_0xBE62
	inc b
	ld a,[$A070]
	or a
	jr nz,Unknown_0xBE62
	inc b

Unknown_0xBE62:
	ld e,$4D
	ld a,[de]
	cp $04
	jr c,Unknown_0xBE97
	ld e,$20
	jr nz,Unknown_0xBE82
	bit 1,b
	jr nz,Unknown_0xBE7C
	ld e,$0B
	bit 0,b
	ld bc,$FF00
	jr nz,Unknown_0xBE7F
	ld e,$18

Unknown_0xBE7C:
	ld bc,$FE20

Unknown_0xBE7F:
	jp Unknown_0x0CD3

Unknown_0xBE82:
	bit 1,b
	jr nz,Unknown_0xBE91
	ld e,$0B
	bit 0,b
	ld bc,$0100
	jr nz,Unknown_0xBE94
	ld e,$18

Unknown_0xBE91:
	ld bc,$01E0

Unknown_0xBE94:
	jp Unknown_0x0CA2

Unknown_0xBE97:
	bit 1,b
	ld e,$0E
	jr nz,Unknown_0xBEA5
	bit 0,b
	ld e,$05
	jr nz,Unknown_0xBEA5
	ld e,$04

Unknown_0xBEA5:
	jp Unknown_0x0D04

Unknown_0xBEA8:
	call Unknown_0xBEC2
	call Unknown_0xBECF
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB926
	call Unknown_0x391A
	call Unknown_0x3972
	jp Unknown_0x3952

Unknown_0xBEC2:
	ld a,[$A070]
	or a
	ld e,$0E
	jr z,Unknown_0xBECC
	ld e,$09

Unknown_0xBECC:
	jp Unknown_0x0D04

Unknown_0xBECF:
	ld a,[$A070]
	or a
	ld e,$20
	ld bc,$0280
	jr z,Unknown_0xBEDF
	ld e,$08
	ld bc,$00E0

Unknown_0xBEDF:
	jp Unknown_0x0D23

Unknown_0xBEE2:
	call Unknown_0xBEFC
	call Unknown_0xBF09
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB93C
	call Unknown_0x391A
	call Unknown_0x3972
	jp Unknown_0x3952

Unknown_0xBEFC:
	ld a,[$A070]
	or a
	ld e,$0E
	jr z,Unknown_0xBF06
	ld e,$08

Unknown_0xBF06:
	jp Unknown_0x0D04

Unknown_0xBF09:
	ld a,[$A070]
	or a
	jr z,Unknown_0xBF14
	ld e,$08
	jp Unknown_0x0D85

Unknown_0xBF14:
	ld e,$20
	ld bc,$0280
	jp Unknown_0x0D23

Unknown_0xBF1C:
	call Unknown_0xBF36
	call Unknown_0xBF43
	ld hl,$6E10
	ld a,$08
	call FarCall
	call Unknown_0xB952
	call Unknown_0x391A
	call Unknown_0x3972
	jp Unknown_0x393E

Unknown_0xBF36:
	ld a,[$A070]
	or a
	ld e,$0C
	jr z,Unknown_0xBF40
	ld e,$09

Unknown_0xBF40:
	jp Unknown_0x0D04

Unknown_0xBF43:
	ld a,[$A070]
	or a
	jr nz,Unknown_0xBF4E
	ld e,$0E
	jp Unknown_0x0D85

Unknown_0xBF4E:
	ld e,$08
	ld bc,$00E0
	jp Unknown_0x0D23

UnknownData_0xBF56:
INCBIN "baserom.gb", $BF56, $C000 - $BF56