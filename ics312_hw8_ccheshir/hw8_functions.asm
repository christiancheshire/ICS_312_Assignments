;ICS 312 - HW8
;Christian Cheshire, 4/16/19

%include "asm_io.inc"
%define _malloc  malloc
extern	_malloc

segment .data
	getInputArray_not_implemented		db	"getInputArray not implemented!", 0
	findFirstIndex_not_implemented		db	"findFirstIndex not implemented!", 0
	findAllIndices_not_implemented		db	"findAllIndices not implemented!", 0
	items	db	"z", 0

segment .text

global getInputArray
global findFirstIndex
global findAllIndices

;;;  Helper function to allocate memory         ;;;
;;;   - arg#1: number of bytes to allocate      ;;;
;;;  returns a pointer to allocated memory zone ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

allocate_memory:
        enter   4,0
        pusha
        pushf

        push    dword [ebp+8]
        call    _malloc
        pop     ecx
        mov     [ebp-4], eax
        popf
        popa
        mov     eax, [ebp-4]
        leave
        ret


;;;  getInputArray function (TO BE IMPLEMENTED)  ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

getInputArray:
	enter	0, 0
	mov	ebx, [ebp+8]	;point ebx to ebp+8
	call	read_int	;read the integer that defines the size of the array
	mov	[ebx], eax	;save count
	push 	eax		;push that integer onto the stack as parameter for allocate_memory
	call	allocate_memory ;allocate_memory for the number of bytes read in previously

	add	esp, 4		;add 4 to esp
	mov	ecx, [ebx]	;move the count to ecx
	mov	edx, eax	;save eax
	push 	eax		;push eax onto the stack

loop: 	
	call	read_int	;read in the one byte array value
	mov	byte[edx], al 	;move the value to edx
	inc 	edx		;increment the counter
	loop	loop		;loop

	pop 	eax		;pop eax off to restore
	leave
	ret

;;;  findFirstIndex function (TO BE IMPLEMENTED)  ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

findFirstIndex:
	enter	0, 0
	mov	esi, 0		;set counter to 0

loop_index:
	cmp	esi, [ebp+12]	;compare counter with the number of array elements
	jz	not_two		;if it's not a power of 2, then jump to not_two
	mov	ebx, [ebp+8]	;set ebx to the value of the first parameter
	add	ebx, esi	;point to the ith index
	xor	ecx, ecx	;clear ecx
	mov	ecx, [ebx] 
	movzx	ecx, cl		;extend cl into ecx
	push	ecx		;push ecx onto the stack
	mov 	edx, [ebp+16]	;move the pointer to the power_of_two function to edx
	call	edx		;move the address of is_power_of_two to edx

	add 	esp, 4		;move esp up by 4 for returning
	cmp	eax, 1		;compare eax to 1
	jz	end		;if it's one, jump to end

	inc	esi		;increment the counter
	jmp 	loop_index	;return to beginning of loop

not_two:			
	mov	eax, -1		;set return value to -1 if not a multiple of 2
	jmp	end_2		;jump over the end branch for multiples of 2
end:	
	mov	eax, esi	;set return value for a multiple of 2
end_2:				;jump here if not a multiple of 2
	leave
	ret

;;;  findAllIndices function (TO BE IMPLEMENTED)  ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

findAllIndices:
	enter	0, 0

	xor	eax, eax	;clear all regs from prev ops	
        xor     ebx, ebx
        xor     ecx, ecx               
        xor     edx, edx                  
        xor     esi, esi                  
        xor     edi, edi 
	mov     esi, [ebp+8]  	;first param - array              
	mov     eax, [ebp+12]	;second param - num_array_element
        mov     edi, [ebp+16]	;third param - fun
        mov     edx, [ebp+20]	;fourth param - found_count
        mov     [items], eax	;move items to eax

firstBranch:
        cmp     [items], ecx	;compare the items to count
        je      endOne		;if equal then end
        mov     al, [esi]	;otherwise move the array byte to al
        push    eax		;push it onto the stack
        call    edi		;call fun
        add     esp, 4		;clean the stack
        cmp     eax, 1		;compare return value to 1
        jne     helperOne	;if it's not 1, jump to the helper branch
        inc     ebx		;increment found counter

helperOne:			;not power of two
        inc     esi		;increment to next byte
        inc     ecx		;increment count
        jmp     firstBranch	;jump back to top

endOne:				;save powers of two
        mov     [edx], ebx	;move ebx to the found_count
        shl     ebx, 2		;shift it
        push    ebx		;push it on the stack
        call    allocate_memory	;create memory
        add     esp, 4		;clean stack
        mov     ebx, eax	;point ebx to items
        mov     edx, eax	;point found_count to eax
        xor     ecx, ecx	;reset ecx		
        mov     esi, [ebp+8]	;reset esi to array param

secondBranch:
        cmp     [items], ecx	;compare items to count
        je      endTwo		;if equal then end
        xor     eax, eax	;clear reg
        mov     al, [esi]	;move array byte to al
        push    eax		;push it
        call    edi		;call fun
        add     esp, 4		;clean the stack
        cmp     eax, 1		;check if 1
        jne     helperTwo	;if not jump to helper branch
        mov     [ebx], cl	;move to cl
        add     ebx, 4		;clean up

helperTwo:			;not muls of seven
        inc     esi             ;increment to next byte
        inc     ecx             ;increment count
        jmp     secondBranch	;jump back to top

endTwo:				;end
        mov     eax, edx	;set function return value

	leave
	ret	
