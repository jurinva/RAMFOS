;+---------------------------------------------------------------------------
; RAMFOS
; Деление HL на два
;
; 2013-11-01 vinxru
;----------------------------------------------------------------------------                   

hl_div_2:	; Обнуляем флаг C
		xra	a
		rrc
                ; Сдвигаем H		
		mov	a, h
		rar
		mov	h, a
                ; Сдвигаем L
		mov	a, l
		rar
		mov	l, a
		ret