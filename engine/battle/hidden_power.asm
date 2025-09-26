HiddenPowerDamage:
; Override Hidden Power's damage based on the user's DVs sum.
; Type remains unchanged

	ld hl, wBattleMonDVs
	ldh a, [hBattleTurn]
	and a
	jr z, .got_dvs
	ld hl, wEnemyMonDVs
.got_dvs

	; Move hl to bc for DVs summing
	ld b, h
	ld c, l

	farcall _SumPKMNDVs   ; A = sum of DVs

; Power = 30 + (sum / 2)

    ; divide by 2
    ld c, 2
	call SimpleDivide
	ld a, b           ; A = sum / 2

	add 30            ; A = sum / 2 + 30
	ld d, a           ; Put sum in d as the base power

; Get the rest of the damage formula variables
; but keep base power from DV sum.
	ld a, d
	push af
	farcall BattleCommand_DamageStats ; damagestats
	pop af
	ld d, a
	ret
