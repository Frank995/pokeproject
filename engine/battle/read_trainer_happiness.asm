GetTrainerHappiness:
; Return the happiness of wOtherTrainerClass in a

	push hl
	push bc
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassHappiness
	add hl, bc

	ld a, [hl]

	pop bc
	pop hl
	ret

INCLUDE "data/trainers/happiness.asm"
