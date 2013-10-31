;----------------------------------------------------------------------------
; RAMFOS
; ������� ��� ����� �� ����� � ������� �� ���� ��� ������������ �������
;
; 2013-11-01 ����������������� vinxru
;----------------------------------------------------------------------------

printFileName:	; �����������
#if NICE
		call	printStringEx
		.db C_INVERSE, ' ', 0
#else
		mvi	c, 11h
		call	printChar
#endif

correctFileName:lxi	h, v_header2_name	; ���
		mvi	b, 12			; ����� �����
correctFileN_1:	 mov	a, m
		 ; ������� ������ 0x20 �������� �� ������
		 cpi	20h
		 jc	correctFileN_2
		 ; ������� �� 0x20 �� 0x7E �����������
		 cpi	7Fh
		 jc	correctFileN_3
		 ; ������� �� 0xC0 �� 0xFF �����������
		 cpi	0C0h
		 jnc	correctFileN_3		 
correctFileN_2:	 ; �������� ������������ ������ �� ������
		 mvi	m, 20h
		 mov	a, m
correctFileN_3:	 ; ������� ������ �� �����
		 call	printCharA
		 ; ��������� ������
		 inx	h
		 dcr	b
		jnz	correctFileN_1		

		; �����������
#if NICE
		mvi	c, ' '
		jmp	printChar
#endif
		; ������� �� printChar6