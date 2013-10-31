;----------------------------------------------------------------------------
; RAMFOS
; ������ RKS �����
;
; 2013-11-01 ����������� vinxru
;----------------------------------------------------------------------------

#if RKS_LOADER
		; ��� RKS ����
		lxi	h, a_rks
		call	memcmp_ext
		jnz	defExec2
		
		; ��������� ��� � ������
		call	fileLoad2
		jnz	dlg_error

		; ����� ���� Monitor2.sys � ���
		push	h
		 lxi	h, a_monitor2_sys
		 call	exec1
		pop	h

		jnz	dlg_error
		
		; ��� �� �� ��������� ����
		lxi	sp, 8FFFh

		; ����� ���������
		push	h

exec2:		; ����� ������� ��������
		lhld	v_header_start
		push	h
		xchg
                jmp	fileLoadNoCheck

a_rks:		.db "RKS"
a_monitor2_sys:	.db "Monitor2 SYS"
		
exec1:		call	fileSetName		
		call	fileFind
		mvi	b, 80h
		cnz	fileFindEx
		ret

defExec2:
#endif