SECTION "Bank0C", ROMX, BANK[$0C]

UnknownData_0x30000:
INCBIN "baserom.gb", $30000, $307D1 - $30000

Unknown_0x307D1:
INCBIN "baserom.gb", $307D1, $34000 - $307D1