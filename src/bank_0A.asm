SECTION "Bank0A", ROMX, BANK[$0A]

UnknownData_0x28000:
INCBIN "baserom.gb", $28000, $2B81C - $28000

Unknown_0x2B81C:
INCBIN "baserom.gb", $2B81C, $2C000 - $2B81C