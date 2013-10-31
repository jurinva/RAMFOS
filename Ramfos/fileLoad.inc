fileLoad:	; ��������� ����� �������� � ��������� �����
		; de = v_header_start = hl; v_header_stop = f_fileBodySize + hl;
		call	fileChangeAddr

		jmp	fileLoadCom

; ---------------------------------------------------------------------------

#if RKS_LOADER
fileLoadNoCheck:; bc - ����� �����
		; hl - ����� ���� ����� � ����
		lhld	f_fileBodySize
		push	h
		 lhld	v_curFile ; ��������� �� ���������
		 lxi	b, 30	; ����� ���������
		 dad	b
		pop	b

		; ������ bc ���� �� ���� �� ������ hl � ��� �� ������ de
		jmp	pageReadBlock ; hl-����,de-������,bc-�����-1

; ---------------------------------------------------------------------------
		
fileLoad2:	lhld	v_header_start
		xchg
#endif

; ������ ���� �������� ���������
; �� ������ ������ ���� de = v_header_start

fileLoadComEx:	; ����� ��������� "�����!"
		call	printStringEx
		.db 8Eh, 8Bh, 20h, 0D6h, 0C4h, 0C9h, 0D4h, 0C5h, 21h, 20h, 8Eh, 0

fileLoadCom:
#if RKS_LOADER
		call	fileLoadNoCheck
#else
		; bc - ����� �����
		; hl - ����� ���� ����� � ����
		lhld	f_fileBodySize
		push	h
		 lhld	v_curFile ; ��������� �� ���������
		 lxi	b, 30	; ����� ���������
		 dad	b
		pop	b

		; ������ bc ���� �� ���� �� ������ hl � ��� �� ������ de
		call	pageReadBlock ; hl-����,de-������,bc-�����-1#endif
#endif
		; ����������� ����������� ����� �� v_header_start �� v_header_stop
		dcx	d
		lhld	v_header_start
		call	j_calcCrc

		; �������� bc � v_header_crc
		push	b
		pop	d		
		lhld	v_header_crc
		call	j_cmp_hl_de

		; de=v_header_stop, hl=v_header_start
		jmp	loadDStartDStop