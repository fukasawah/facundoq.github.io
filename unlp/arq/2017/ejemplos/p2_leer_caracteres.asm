;leer caracteres hasta que se ingrese la letra z
; contar cuantos caracteres se leyeron y almacenar dicha cuenta en la variable cantidad
ascii_z EQU 60h

org 1000h
c db ?
cantidad db 0

org 2000h
		mov bx, offset c
loop:	int 6
		; c tiene el char leido
		cmp c, ascii_z
		jz fin
		inc cantidad
		jmp loop
fin: 	int 0
end
