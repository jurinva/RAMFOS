		; �������� ����� � ������
		call	fileSetPage
dlg_findPrev:    ; ��������� ����
		 call	fileLoadHeader
		 jnz	0F800h
		 ; ��������� ���� �� ���, ��� ���?
		 pop	d
		 call	cmp_hl_de
		 push	d
		 ; ����
		 lhld	f_nextFile
		 jnz	dlg_findPrev
		; ���� ������
		lhld	v_curFile