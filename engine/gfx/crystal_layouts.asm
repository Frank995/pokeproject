GetCrystalCGBLayout:
	ret

MG_Mobile_Layout_LoadPals:
	ret

_CrystalCGB_MobileLayout0:
	ret

MG_Mobile_Layout_CreatePalBoxes:
	ret

LoadOW_BGPal7::
	ld hl, Palette_TextBG7
	ld de, wBGPals1 palette PAL_BG_TEXT
	ld bc, 1 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	ret

Palette_TextBG7:
INCLUDE "gfx/font/bg_text.pal"

Function49420::
	ret

INCLUDE "engine/tilesets/tileset_palettes.asm"

Function49742:
	ret

_InitMG_Mobile_LinkTradePalMap:
	ret

_LoadTradeRoomBGPals:
	ld hl, TradeRoomPalette
	ld de, wBGPals1 palette PAL_BG_GREEN
	ld bc, 6 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	farcall ApplyPals
	ret

TradeRoomPalette:
INCLUDE "gfx/trade/border.pal"

InitMG_Mobile_LinkTradePalMap:
	ret
