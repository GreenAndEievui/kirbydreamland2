SECTION "Bank1B", ROMX, BANK[$1B]

UnknownData_0x6C000:
INCBIN "baserom.gb", $6C000, $6C27B - $6C000

Unknown_0x6C27B:
INCBIN "baserom.gb", $6C27B, $6DADA - $6C27B

Unknown_0x6DADA:
INCBIN "baserom.gb", $6DADA, $70000 - $6DADA