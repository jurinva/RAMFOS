;----------------------------------------------------------------------------
; RAMFOS
; ������ ����� � ����������� � ���������� � ��������� ��������
;
; 2013-11-01 ����������������� vinxru
;----------------------------------------------------------------------------

fileFromTape:	; ������ ��������� � �����
		call	tapeReadHeader

		; ������� ����� "������" + �������� ������. 
		; ���� ������� ESC � ������� � ������������� ������ C
		jc	fileFromTapeErr2

		; ������ �� ����� �� ����� ��� ���������� �����?
		lhld	v_pageFreeTotal
		dcx	h
		dcx	h
		dcx	h
		call	j_cmp_hl_de

		; ������� ����� "��� ����" + �������� ������. 
		; ���� ������� ESC � ������� � ������������� ������ C
		jc	outOfSpace

		; ��������� ������ �� ����
		lhld	v_pageFreePtr
readLoop:	 ; ������ ���� � �����������
		 call	j_tapeRead		
		 jc	fileFromTapeErr
		 ; ���������� ���� A �� ���� �� ������ HL
		 mov	c, a
		 call	pageWrite
		 inx	h
		 ; ���� DE
		 dcx	d
		 mov	a, e
		 ora	d
		jnz	readLoop

		; ���� ��������
		jmp	fileChanged2

; ---------------------------------------------------------------------------

fileFromTapeErr:
		; ������������ ����� ����� � v_curFile
		lhld	v_curFile
		call	fileChanged

fileFromTapeErr2: