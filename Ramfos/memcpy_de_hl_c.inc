;+---------------------------------------------------------------------------
; RAMFOS
; Копирование ОЗУ
;
; На входе
;  hl - откуда
;  de - куда
;  с  - размер-1
; 
; 2013-11-01 Дизассемблировано vinxru
;----------------------------------------------------------------------------

memcpy_de_hl_c: mov	a, m
		stax	d
		inx	h
		inx	d
		dcr	c
		jp	memcpy_de_hl_c
		ret
