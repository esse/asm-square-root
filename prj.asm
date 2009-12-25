section .text use32
global _sqrt
_sqrt:
%idefine	a	[ebp+8]
	PUSH ebp
	MOV ebp, esp
	FINIT
	FLD1
	FLD1
	FLD1
	MOV cx, 1000
	FLD st0
	petla:		
		DEC cx
		FDIVR dword a
		FADD st1
		FDIV dword [liczba]		
		FCOM
		FSTSW ax
		SAHF
		PUSH dword a
		FST dword a
		PUSH dword a
		FST dword a
		FINIT
		FLD dword a
		POP dword a
		FLD dword a
		POP dword a		
		JZ instrukcja
	back:
		CMP cx, 0	
		JNE petla
finish:
	leave
	ret
instrukcja:
xor ecx, ecx
JMP back
liczba dd 2.0