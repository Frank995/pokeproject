; TypeNames indexes (see data/types/names.asm)
; also used in:
; - PokedexTypeSearchConversionTable (see data/types/search_types.asm)
; - PokedexTypeSearchStrings (see data/types/search_strings.asm)
; - TypeMatchups (see data/types/type_matchups.asm)
; - TypeBoostItems (see data/types/type_boost_items.asm)
	const_def

DEF PHYSICAL EQU const_value
	const NORMAL
	const FIGHTING
	const FLYING
	const POISON
	const GROUND
	const ROCK
	const BUG
	const GHOST
	const STEEL
DEF NUM_PHYSICAL_TYPES EQU const_value

DEF SPECIAL EQU const_value
	const FIRE
	const WATER
	const GRASS
	const ELECTRIC
	const PSYCHIC_TYPE
	const ICE
	const DRAGON
	const DARK
	const FAIRY
DEF NUM_SPECIAL_TYPES EQU const_value - NUM_PHYSICAL_TYPES

	const ANCIENT
DEF NUM_LEGENDARY_TYPES EQU const_value - NUM_PHYSICAL_TYPES - NUM_SPECIAL_TYPES

DEF NUM_TYPES EQU const_value

DEF POKEDEX_TYPE_STRING_LENGTH EQU 9
