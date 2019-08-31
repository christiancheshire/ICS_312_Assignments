; ICS 312, Spring 2019
; Homework 3, Exercise 2
; Christian Cheshire

%include "asm_io.inc"

segment .data
	msg1		db	"Enter a 4-character string: ", 0
	msg2		db	"Enter a 2-character string: ", 0
	msg3		db	"The output is: ", 0
	msg4		db	"!", 0

segment .bss
	string1		resd     1	; first string	
	string2		resd     1	; second string

segment .text
        global  asm_main

asm_main:
	enter	0,0			; setup
	pusha				; setup

	mov 	eax, msg1	    	; pointer
	call	print_string		; print out msg1 - "Enter a 4-character string: "
	mov	ebx, string1		; points string1 to ebx
	
	call	read_char		; read in the first char - must read in 4 chars of user input, plus the carriage return value when the user presses enter
	mov	[ebx], al		; move the char into register ebx
	inc 	ebx 			; increment ebx

	call 	read_char		; read in the second char
	mov 	[ebx], al		; move the char into register ebx
	inc 	ebx			; increment ebx to point to the next char

	call 	read_char		; read in the third char
	mov 	[ebx], al		; move the char into register ebx
	inc 	ebx			; increment ebx to point to the next char

	call 	read_char		; read in the third char
	mov 	[ebx], al		; move the char into register ebx, don't increment ebx since we have all the chars we want

	call 	read_char 		; deal with user carriage return

	mov 	eax, msg2 		; move msg2 into eax
	call 	print_string 		; print msg2 - "Enter a 2-character string: "
	mov 	ecx, string2 		; point string2 to register ecx

	call 	read_char 		; read in the first char of the second set - must read a total of 3 chars because of carriage return
	mov 	[ecx], al		; move char into ecx
	inc 	ecx			; increment ecx to point to the next char

	call 	read_char		; read in the second char of the second set
	mov 	[ecx], al		; again move the char into ecx

	call 	read_char 		; deal with user carriage return

	mov 	eax, msg3 		; move msg3 into eax
	call 	print_string 		; print out msg3 - "The output is: "

	mov 	al, [ebx] 		; move string1 into eax and now ebx points to string1[3]
	call 	print_char  		; print out the character at string1[3]

	dec 	ecx 			; ecx now points to string2[0]
	mov 	eax, [ecx] 		; move ecx into eax so it can be printed
	call 	print_char 		; print character at string2[0]
	call 	print_char 		; print character at string2[0] again

	dec 	ebx 			; ebx now points to string1[2]
	mov 	eax, [ebx] 		; move string1 into eax
	call 	print_char 		; print character string1[2]

	inc 	ecx			; increment ecx to point to string2[2]
	mov 	eax, [ecx] 		; move string2 into eax and now ecx points to string2[2]
	call 	print_char 		; print character string2[2]



	mov 	eax, msg4 		; move msg4 into eax
	call 	print_string 		; print msg4 - "!"

	dec 	ebx 			; ebx now points to s1[1]
	mov 	al, [ebx] 		; move ebx into al
	call 	print_char 		; print character

	dec 	ecx 			; ecx now points to s2[0]
	mov 	eax, [ecx] 		; move s2 into eax
	call 	print_char 		; print character
	call 	print_char 		; print character
	call 	print_char 		; print character
	call 	print_char 		; print character

	dec 	ebx 			; ebx now points to s1[0]
	mov 	eax, [ebx] 		; move s1 into eax
	call 	print_char 		; print character

	inc 	ecx 			; ecx now points to s2[1]
	mov 	eax, [ecx] 		; move s2 into eax
	call 	print_char 		; print character
	call 	print_char 		; print character

	mov 	eax, msg4 		; move msg4 into eax
	call 	print_string 		; print msg4
	
	popa				; cleanup
	mov	eax, 0			; cleanup
	leave				; cleanup
	ret				; cleanup

