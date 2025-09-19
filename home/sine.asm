Cosine::
; a = d * cos(a * pi/32)
	add %010000 ; cos(x) = sin(x + pi/2)
	; fallthrough
Sine::
; a = d * sin(a * pi/32)
	calc_sine_wave
