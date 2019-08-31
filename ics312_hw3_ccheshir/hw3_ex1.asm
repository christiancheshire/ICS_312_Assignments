; ICS 312, Spring 2019
; Homework 3, Exercise 1
; Christian Cheshire

%include "asm_io.inc"

segment .data
	msg1		db	"Enter an integer: ", 0
	msg2		db	"The output character is ", 0
	msg3		db	"'", 0
	integer65	dd	65

segment .bss
	integerX	resd     1	; first integer	
	integerY	resd     1	; second integer
	result		resd     1	; result

segment .text
        global  asm_main

asm_main:
	enter	0,0			; setup
	pusha				; setup

	mov 	eax, msg1	    	; pointer
	call	print_string
	call	read_int	    	; read integerX from user
	mov 	[integerX], eax   	; store integerX in memory
	mov	eax, msg1		; pointer
	call 	print_string
	call	read_int	    	; read integerY from user
	mov 	[integerY], eax   	; store integerY in memory

	mov 	eax, [integerX]   	; eax = integerX
	add 	eax, [integerY]   	; eax += integerY
	add	eax, [integer65]	; eax += 65
	mov 	[result], eax	    	; store the result

	mov 	eax, msg2	    	; pointer
	call	print_string		; print "the output character is"
	mov 	eax, msg3	    	; pointer
	call	print_string		; print '
	mov	eax, [result]   	; note that this is a value
	call 	print_char
	mov 	eax, msg3	    	; pointer
	call	print_string		; print '
	call	print_nl

	popa				; cleanup
	mov	eax, 0			; cleanup
	leave				; cleanup
	ret				; cleanup