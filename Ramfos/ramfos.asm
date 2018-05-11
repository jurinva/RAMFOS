; ===========================================================================
; ЌЂ‘’ђЋ‰ЉЂ

STD_RAMFOS = 0				; ‘Є®¬ЇЁ«Ёа®ў вм бв ­¤ ав­л© RAMFOS

#if STD_RAMFOS==0

DATE_IN_RAM		= 1		; 0      ђ §¬Ґй вм ¤ вг ў ®б­®ў­®© ®ЇҐа вЁў­®© Ї ¬пвЁ (ў®§¬®¦­  а Ў®в  ЎҐ§ „Ћ‡“)
RKS_SHIFT_LOADER	= 1		; 0	 …б«Ё ­ ¦ вм SHIFT, в® RKS § ЇгбЄ Ґвбп ў аҐ¦Ё¬Ґ MX
NO_ROM_ENTRY		= 1		; 0      ‘в ­¤ ав­лҐ Їа®Ја ¬¬л ў ўЁ¤Ґ д ©«®ў
NO_PRINTER		= 1		; 0 	 ЋвЄ«озЁвм ЇаЁ­вҐа
NO_MXDOS		= 1		; 0 	 ЋвЄ«озЁвм § Јаг§Єг б ¤ЁбЄҐвл (ў з бв­®cвЁ MXDOS)
OPEN_ANY_FILE		= 1		; 0 	 ЋвЄалў вм д ©« б «оЎл¬ а биЁаҐ­ЁҐ¬ (Ђ ­Ґ в®«мЄ® TXT ў аҐ¤ Єв®аҐ)
ALL_CHARS		= 1		; 0	 ЏҐз вм ўбҐе бЁ¬ў®«®ў §­ Є®ЈҐ­Ґа в®а  зҐаҐ§ ESC
RKS_LOADER		= 1		; 0      ‡ ЇгбЄ вм RKS д ©«л
BIG_ROM			= 1		; 0 	 €бЇ®«м§®ў вм ўбҐ 64 ЉЎ Џ‡“ ‘ЇҐжЁ «Ёбв  Њ•2 Ї®¤ ROM-¤ЁбЄ
WORK_WITHOUT_ARAM	= 32		; 0      …б«Ё „Ћ‡“ ­Ґ ­ ©¤Ґ­®, в® ЁбЇ®«м§®ў вм ЎгдҐа ў Ћ‡“ а §¬Ґа®¬ б нвг ЇҐаҐ¬Ґ­­го
ROM_PAGE_START		= 01880h	; 04000h ЏҐаўл© Ў ©в бва ­Ёжл Џ‡“
ROM_PAGE_END		= 0FFFCh	; 0C000h Џ®б«Ґ¤­Ё© Ў ©в бва ­Ёжл Џ‡“ + 1
CURSOR_BLINK_SPEED	= 767		; 767    ‡ ¤Ґа¦Є  ¬ЁЈ ­Ёп Єгаб®а 
ARAM_MAX_PAGE           = 0Fh		; 6      Њ ЄбЁ¬ «м­®Ґ Є®«-ў® бва ­Ёж а биЁаҐ­­®© Ї ¬пвЁ (¬ ЄбЁ¬г¬ 0Fh)
ARAM_PAGE_END		= 0FFBBh        ; 0FFBBh Љ®­Ґж бва ­Ёжл „Ћ‡“ (36 Ў ©в ­ҐЁбЇ®«м§гҐ¬®Ј® Ћ‡“ Ї®б«Ґ)
DLG_START_PAGE		= 80h		; 0      ЏаЁ § ЇгбЄҐ Ї®Є § вм нвг бва ­Ёжг
INIT_SCREEN_COLOR	= 0F1h		; 100h	 –ўҐв, Є®в®ал¬ § «Ёў Ґвбп нЄа ­ ЇаЁ Ё­ЁжЁ «Ё§ жЁЁ. 100h - § «Ёў Ґвбп вҐЄгйЁ¬ жўҐв®¬, Є®в®ал© ЇаЁ вҐЇ«®© ЇҐаҐ§ Јаг§ЄҐ ¬®¦Ґв Ўлвм «оЎл¬.
FAST_PRINT		= 1		; 0      Ѓлбва п дг­ЄжЁп ўлў®¤  вҐЄбв . ’ Є ¦Ґ ўлў®¤Ёв вҐЄбв бва®ЄЁ ЎҐ§ а §алў®ў. € ­Ґ Ї®авЁв жўҐв  бЁ¬ў®«®ў Їа ўҐҐ.
TRUE_CHECK_ARAM		= 1		; 0      €бЇЇа ў«Ґ­­ п дг­ЄжЁп ®ЇаҐ¤Ґ«Ґ­Ёп ®ЎмҐ¬  „Ћ‡“
NICE			= 1		; 0	 Ќ®ўл© Ё­вҐадҐ©б
COLOR_SUPPORT		= 1		; 0	 “бв ­®ўЄ  жўҐв  Ї® г¬®«з ­Ёо ЇаЁ ®зЁбвЄҐ б«г¦ҐЎ­ле бва®Є Ё нЄа ­ 
NO_PRINT_STATUS_BUG	= 1		; 0	 €бЇа ўЁвм ®иЁЎЄг
DLG_CURSOR_AT_TOP	= 0		; 0	 Љгаб®а ­  ЇҐаў®¬ д ©«Ґ
NO_ROM_SWITCH_BUG	= 1		; 0	 Њ®¦­® Ўл«® ўлЎа вм ­Ґ ­г«Ґўго бва ­Ёжг Џ‡“
RELOCATE_FILE_FUNCTIONS = 1		; 0      ЏҐаҐ­ҐбвЁ ­ҐЄ®в®алҐ дг­ЄжЁЁ Ё§ F800 ў C800, Ё­ зҐ Є®¤ ­Ґ ў«Ґ§ Ґв
SIZE_OPTIMIZATION	= 1		; 0      Ѓ®«ҐҐ Є®¬Ї Єв­л© Є®¤

#else

DATE_IN_RAM		= 0
RKS_SHIFT_LOADER	= 0
NO_ROM_ENTRY		= 0
NO_PRINTER		= 0
NO_MXDOS		= 0
OPEN_ANY_FILE		= 0
ALL_CHARS		= 0
RKS_LOADER		= 0
BIG_ROM			= 0
WORK_WITHOUT_ARAM	= 0
ROM_PAGE_START		= 04000h
ROM_PAGE_END		= 0C000h
CURSOR_BLINK_SPEED	= 767
ARAM_MAX_PAGE           = 6
ARAM_PAGE_END		= 0FFBBh
DLG_START_PAGE		= 0
INIT_SCREEN_COLOR	= 100h
FAST_PRINT		= 0
TRUE_CHECK_ARAM		= 0
NICE			= 0
COLOR_SUPPORT		= 0
NO_PRINT_STATUS_BUG	= 0
DLG_CURSOR_AT_TOP	= 0
NO_ROM_SWITCH_BUG	= 0
RELOCATE_FILE_FUNCTIONS = 0
SIZE_OPTIMIZATION	= 0

#endif

; ===========================================================================
; ЏЋђ’› ‚‚Ћ„Ђ-‚›‚Ћ„Ђ

IO_KEYB_A		= 0FFE0h
IO_KEYB_B		= 0FFE1h
IO_KEYB_C		= 0FFE2h
IO_KEYB_MODE		= 0FFE3h
IO_EXT_A		= 0FFE4h
IO_EXT_B		= 0FFE5h
IO_EXT_C		= 0FFE6h
IO_EXT_MODE		= 0FFE7h
IO_FLOPPY_CMD		= 0FFE8h
IO_FLOPPY_SECTOR	= 0FFEAh
IO_FLOPPY_DATA		= 0FFEBh
IO_TIMER		= 0FFECh
IO_FLOPPY_TRIG		= 0FFF0h
IO_FLOPPY_HEAD		= 0FFF2h
IO_COLOR		= 0FFF8h
IO_PAGE_RAM		= 0FFFCh
IO_PAGE_ARAM		= 0FFFDh
IO_PAGE_ROM		= 0FFFEh
IO_PAGE_STD		= 0FFFFh

; ===========================================================================
; ‘Џ…–€Ђ‹њЌ›… ЉЋ„› ‘€Њ‚Ћ‹Ћ‚

C_BEEP		= 7
C_LEFT		= 8
C_CLEARSCREEN	= 1Fh
C_PUSHCOLOR	= 88h
C_POPCOLOR	= 89h
C_INVERSE	= 8Bh
C_NORMAL	= 8Ch
C_PUSHCURSORL	= 8Dh
C_TOPLINE	= 8Fh
C_POPCURSORL	= 8Eh
C_BOTTOMLINE	= 90h
C_PUSHCURSORS	= 93h
C_POPCURSORS	= 94h
C_SCROLLUPEX	= 9Ah

; ===========================================================================
; ЉЋЌ‘’ЂЌ’› Ќ…‹њ‡џ Њ…Ќџ’њ

CHAR_HEIGHT	  	= 8
LINE_HEIGHT	 	= 10
SCREEN_HEIGHT	 	= 250
FILE_HEADER_SIZE	= 30
STACK_TOP		= 0D2FFh
RAM_TOP			= 8FFFh

; ===========================================================================
; Џ…ђ…Њ…ЌЌ›…

.org 0C000h

charGen:

.include "chargen.inc"

keybMap:	.db 81h, 0ch, 19h, 1ah, 20h, 20h, 20h, 08h, 09h, 18h, 0ah, 0dh ; ЌЁ¦­пп бва®Є  Є« ўЁ вгал
v_charGenPtr:	.dw charGen
v_keybMap:	.dw keybMap
		.db 51h, 5Eh, 53h, 4Dh,	49h, 54h, 58h, 42h, 40h, 2Ch, 2Fh, 5Fh ; Q^SMITXB@,/_
v_aramPageEnd:	.dw ARAM_PAGE_END
v_aramPageStart:.dw 0
		.db 46h, 59h, 57h, 41h,	50h, 52h, 4Fh, 4Ch, 44h, 56h, 5Ch, 2Eh; FYWAPROLDV\.
v_koi8:		.db 0	; ЉЋ€-7=FF / ЉЋ€-8=00
v_rusLat:	.db 0	; ђ“‘=FF / LAT=00
v_capsLock:	.db 0	; BP=00 / HP=02
v_printerEcho:	.db 0
		.db 4Ah, 43h, 55h, 4Bh, 45h, 4Eh, 47h, 5Bh, 5Dh, 5Ah, 48h, 3Ah ; JCUKENG[]ZH:
v_selColor:	.db 0B1h
v_aramMaxPage:	.db 0			; Ќ®¬Ґа	Ї®б«Ґ¤­Ґ© бва ­Ёжл RAM-¤ЁбЄ 
v_cursorPos:	.dw 0			; Џ®«®¦Ґ­ЁҐ Єгаб®а  ў ЇЁЄбҐ«пе
		.db 3Bh, 31h, 32h, 33h,	34h, 35h, 36h, 37h, 38h, 39h, 30h, 2Dh ; ;1234567890-
v_beepConfig:	.dw 0A05h
v_oldBeep:	.dw 0
		.db 1Bh, 8Ah, 0, 1, 2, 3, 4, 5,	6, 8Bh,	8Ch, 1Fh ; ‚Ґае­пп бва®Є  Є« ўЁ вгал
v_inverse:	.db 0
		.db 0
v_aramMaxPageI:	.db ARAM_MAX_PAGE
v_tapeMode:	.db '0'
v_tapePulseB:	.dw 322Ch	; 1200 Ѓ®¤
v_tapePulseA:	.dw 1812h
v_tapePulseB2:	.dw 211Bh	; 1800 Ѓ®¤
v_tapePulseA2:	.dw 0F09h
v_tapePulseB3:	.dw 1812h	; 2400 Ѓ®¤
v_tapePulseA3:	.dw 0B05h
v_tapePresets:

; ===========================================================================
; ЉЋ„

.org 0C66Ch

.include "tapeReadPilot.inc"
.include "tapeWait.inc"
.include "tapeRead.inc"
.include "tapeWritePilot.inc"
.include "tapeWrite.inc"
.include "tapePulse.inc"
.include "strToHex.inc"
.include "calcCrc.inc"
.include "pushPopCursor.inc"
.include "setGetMemTop.inc"
.include "pushColor.inc"

#if $ > 0C800h
ЋиЁЎЄ _з бвм_C000_­Ґ_ў«Ґ§« 
#endif
.org 0C800h

.include "c800.inc"
.include "cmp_hl_de.inc"
.include "inputFileName.inc"
.include "printFileName.inc"
.include "printCharA.inc"
.include "biosInit.inc"
.include "printString.inc"
.include "parseDate.inc"
#if TRUE_CHECK_ARAM
.include "checkARAM_v2.inc"
#else
.include "checkARAM.inc"
#endif
.include "inputDate.inc"
.include "topLine.inc"		; Їа®¤®«¦ Ґвбп ў inverse
.include "inverse.inc"
.include "bottomLine.inc"
.include "input.inc"
.include "getCharFromScreen.inc"
.include "memcmp_hl1_de_c.inc"
.include "hl_div_2.inc"
.include "fullClearScreen.inc"
.include "printHex.inc"
#if FAST_PRINT
.include "printChar_fast.inc"
#else
.include "printChar.inc"
#endif
.include "calcCharAddr.inc"
.include "printChar2.inc"
#if FAST_PRINT!=1
.include "printChar3.inc"	; Їа®¤®«¦ Ґвбп ў setCursorPos
#endif
.include "setCursorPos.inc"
.include "getCursorPos.inc"
.include "scrollUp.inc"
.include "memcpy_hl_de_c2.inc"
.include "cursor.inc"
.include "scrollDown.inc"
.include "memcpyb_hl_de_c2.inc"
.include "clearScreen.inc"
.include "clearLine.inc"
.include "keyWait.inc"
.include "keyCursor.inc"		
.include "keyCheck.inc"
.include "keyScan.inc"		; Їа®¤®«¦ Ґвбп ў keySound
.include "keySound.inc"
.include "oldbeep.inc"
.include "delay_l.inc"
.include "beep.inc"
.include "capsLock.inc"
.include "tapeMode.inc"
.include "printerEchoMode.inc"
.include "printerHex.inc"
.include "printerEcho.inc"
.include "printer.inc"
.include "setColorChar.inc"
.include "setColor.inc"
.include "popColor.inc"
.include "bigRom.inc"
#if RELOCATE_FILE_FUNCTIONS
.include "fileSaveHeader.inc"	; Їа®¤®«¦Ґ­ЁҐ ў pageWriteBlock
.include "pageWriteBlock.inc"
.include "fileSetType.inc"
#endif

.include "v_printerXlat.inc"

; …б«Ё ­Ґв „Ћ‡“, в® ЁбЇ®«м§гҐвбп нв®в ­ҐЎ®«ми®© ЎгдҐа, зв® Ўл е®вм зв® в®
; а Ў®в «®.

#if WORK_WITHOUT_ARAM != 0
miniPage:
.org $ + FILE_HEADER_SIZE + WORK_WITHOUT_ARAM + 2	; ‘®еа ­Ґ­ЁҐ д ©«  ў WORK_WITHOUT_ARAM Ў ©в
miniPageEnd:
.db 8							; ‘о¤  § ЇЁблў Ґвбп Ў ©в вҐа¬Ё­ в®а.
#endif

a_lat:		.db 04Ch, 041h, 054h, 0 ; "LAT"
a_rus:		.db 0F2h, 0F5h,	0F3h, 0	; "ђ“‘"

#if NICE
a_inputFileName:.db ' ', 0C6h, 0C1h, 0CAh, 0CCh, 3Ah, ' ', C_PUSHCURSORL, 0 ; "д ©«" + § Ї®¬Ё­ ­ЁҐ Єгаб®а  бва®ЄЁ
#else
a_inputFileName:.db 11h, 0C6h, 0C1h, 0CAh, 0CCh, 3Ah, C_PUSHCURSORL, C_BEEP, 0 ; "д ©«" + § Ї®¬Ё­ ­ЁҐ Єгаб®а  бва®ЄЁ
#endif

A_INPUTDATE
A_INITSCREEN

; ===========================================================================
; Џ…ђ…Њ…ЌЌ›…

#if $ > 0D1F0h
ЋиЁЎЄ _з бвм_C800_­Ґ_ў«Ґ§« 
#endif
.org 0D1F0h

v_tape:		.dw 0

; ‡ Ј®«®ў®Є д ©«  2

v_header2:	.db 0D3h, 0D3h, 0D3h		; вгв ¤®«¦­® Ўлвм 0D3h, 0D3h, 0D3h, Ё­ зҐ дг­ЄжЁп § Јаг§ЄЁ д ©«  ­Ґ а Ў® вҐв. ЌЁЄв® ­Ґ Ё­ЁжЁ «Ё§йЁагҐв нвЁ ЇҐаҐ¬Ґ­­лҐ!
v_header2_name:	.db ' ',' ',' ',' ',' ',' ',' ',' ',' '
v_header2_ext:	.db ' ',' ',' '
v_header2_saved:.db 8Bh			; ЏаЁ§­ Є ­Ґ б®еа ­Ґ­­®бвЁ 8B, 8C
v_header2_date:	.db 01h, 11h, 13h	; „ в 
		.db 0, 0, 0, 0, 0	; ђҐ§Ґаў MXDOS
v_header2_start:.dw 0
v_header2_end:	.dw 0
v_header2_crc:	.dw 0

; Љ®­Ґж § Ј®«®ўЄ  д ©« 

v_dblClear:	.db 0
		.db 0,0,0,0,0,0,0,0,0
unk_D21A:	.db 0,0,0,0,0,0
v_pushCursorLn:	.dw 0
v_pushCursor:	.dw 0
v_escMode:	.db 0
v_key2:		.db 0
v_printerCrLf:	.db 0		
v_memTop:	.dw 0
v_key0:		.dw 0
v_key1:		.dw 0
v_oldSP:	.dw 0
		.db 0
v_topLineHeight:.dw 0
v_screenHeight:	.db 0		; ‚лб®в  нЄа ­ 
v_screenHeight1:.db 0		; ‚лб®в  нЄа ­  - 10
v_bottomLineId:	.db 0
v_color:	.db 0		; ’ҐЄгйЁ© жўҐв д®­  Ё ЎгЄў
v_pushColor:	.dw 0
		.db 0,0,0,0
v_aramPageEnd2:	.dw 0
v_escRow:	.db 0
		.db 0
v_lastKey:	.db 0
		.db 0
		.db 0
v_pageStart:	.dw 0		; Ќ з «® вҐЄгйҐ© бва ­Ёжл
v_page:		.db 0		; ’ҐЄгй п бва ­Ёж 

		.db 0,0,0,0, 0,0,0,0, 0,0,0,0

; ‡ Ј®«®ў®Є д ©« 
; ЏҐаўлҐ 15 Ў ©в (v_header, v_header_name, v_header_ext) зЁв Ґвбп дг­ЄжЁҐ© fileFromTapeCom
; ЏҐаўлҐ 30 Ў ©в зЁв овбп дг­ЄжЁҐ© fileLoadHeader


v_header:	.db 0D3h, 0D3h, 0D3h	; €¤Ґ­вЁдЁЄ в®а, ¤®«¦Ґ­ Ўлвм 0D3h, 0D3h, 0D3h
v_header_name:	.db ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '
v_header_spc:	.db ' '
v_header_ext:	.db ' ', ' ', ' '
v_header_saved:	.db 0
v_header_date:	.db 0, 0, 0
v_header_unused:.db 0, 0, 0, 0, 0
v_header_start:	.dw 0
v_header_stop:	.dw 0
v_header_crc:	.dw 0

; Љ®­Ґж § Ј®«®ўЄ  д ©« 

v_curFile:	.dw 0
v_printedFile:	.dw 0
f_nextFile:	.dw 0
f_fileBodySize:	.dw 0
f_fileSize:	.dw 0
v_pageFreeTotal:.dw 0
v_pageFreePtr:	.dw 0

		.db 0F0h, 77h, 23h, 1Bh, 7Ah, 0B3h, 0CAh, 95h, 0D2h, 0Ch, 0C2h, 78h, 0D2h, 22h, 0, 8Fh, 0EBh, 22h, 2, 8Fh, 0C3h, 52h, 0D2h

buffer:		.db 0,0,0,0,0,0,0,0,0	; €бЇ®«м§гҐвбп ¬ ЄбЁ¬г¬ 9 бЁ¬ў®«®ў ¤«п ўў®¤  ¤ вл. Џ®б«Ґ¤­Ё© Ў ©в ¤«п Є®­ва®«п ЇҐаҐЇ®«­Ґ­Ёп

; ===========================================================================
; ЉЋ„

.org 0F800h

.include "f800.inc"
.include "loadMXDOS.inc"
.include "fileFind.inc"
.include "pageNext.inc"
.include "fileFind1.inc"
.include "dialog.inc"		; Їа®¤®«¦Ґ­ЁҐ ў fileSaveHeader
#if RELOCATE_FILE_FUNCTIONS
	jmp	fileSaveHeader
#else
.include "fileSaveHeader.inc"	; Їа®¤®«¦Ґ­ЁҐ ў pageWriteBlock
.include "pageWriteBlock.inc"
#endif
.include "fileSetGetName.inc"
#if RELOCATE_FILE_FUNCTIONS==0
.include "fileSetType.inc"
#endif
#if NO_ROM_ENTRY | RKS_LOADER
.include "exec.inc"
#endif

; ===========================================================================
; Џ…ђ…Њ…ЌЌ›…

a_defHeader:	.db 0D3h, 0D3h,	0D3h	; ¬ аЄҐа ­ з «  д ©«  (§  ­Ё¬ ®Ўп§ вҐ«м­® ¤®«¦Ґ­® Ё¤вЁ 12 Їа®ЎҐ«®ў)
a_12spaces:	.text "            "	; Їгбв®Ґ Ё¬п
a_exe:		.text "EXE"
a_com:		.text "COM"
a_copy:		.db 0CBh, 0CFh,	0D0h, 0C9h, 0D2h, 0CFh,	0D7h, 
		.db 0C1h, 0D4h, 0D8h, 0					; "Є®ЇЁа®ў вм"
a_deleteDate:	.db 0C4h, 0C1h,	0D4h, 0D5h, 20h				; "¤ вг г¤ «Ёвм"
a_delete:	.db 0D5h, 0C4h,	0C1h, 0CCh, 0C9h, 0D4h,	0D8h, 0		; "г¤ «Ёвм"
a_load:		.db 0DEh, 0D4h,	0C5h, 0CEh, 0C9h, 0C5h,	0		; "звҐ­ЁҐ"
a_save:		.db 0DAh, 0C1h,	0D0h, 0C9h, 0D3h, 0D8h,	0		; "§ ЇЁбм"
a_verify:	.db 0D3h, 0D2h,	0C1h, 0D7h, 0CEh, 0C9h,	0D4h, 0D8h, 0	; "ба ў­Ёвм"
a_name:		.db 0C9h, 0CDh,	0D1h, 0					; Ё¬п

; ===========================================================================
; ЋЉЌЋ ЏђЋ–…‘‘ЋђЂ

.include "window.inc"

.end		