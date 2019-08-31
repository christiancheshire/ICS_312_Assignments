;ICS 312 Homework 5 - Part 2, Christian Cheshire
;03/05/19

%include "asm_io.inc"

segment	.data
	msg0	db	"luminance 0-9: ", 0
	msg1	db	"luminance 10-19: ", 0
	msg2	db	"luminance 20-29: ", 0
	msg3	db	"luminance 30-39: ", 0
	msg4	db	"luminance 40-49: ", 0
	msg5	db	"luminance 50-59: ", 0
	msg6	db	"luminance 60-69: ", 0
	msg7	db	"luminance 70-79: ", 0
	msg8	db	"luminance 80-89: ", 0
	msg9	db	"luminance 90-99: ", 0

	msg10	db	"luminance 100-109: ", 0
	msg11	db	"luminance 110-119: ", 0
	msg12	db	"luminance 120-129: ", 0
	msg13	db	"luminance 130-139: ", 0
	msg14	db	"luminance 140-149: ", 0
	msg15	db	"luminance 150-159: ", 0
	msg16	db	"luminance 160-169: ", 0
	msg17	db	"luminance 170-179: ", 0
	msg18	db	"luminance 180-189: ", 0
	msg19	db	"luminance 190-199: ", 0

	msg20	db	"luminance 200-209: ", 0
	msg21	db	"luminance 210-219: ", 0
	msg22	db	"luminance 220-229: ", 0
	msg23	db	"luminance 230-239: ", 0
	msg24	db	"luminance 240-249: ", 0
	msg25	db	"luminance 250-259: ", 0
	msg26	db	"luminance 260-269: ", 0
	msg27	db	"luminance 270-279: ", 0
	msg28	db	"luminance 280-289: ", 0
	msg29	db	"luminance 290-299: ", 0

	msg30	db	"luminance 300-309: ", 0
	msg31	db	"luminance 310-319: ", 0
	msg32	db	"luminance 320-329: ", 0
	msg33	db	"luminance 330-339: ", 0
	msg34	db	"luminance 340-349: ", 0
	msg35	db	"luminance 350-359: ", 0
	msg36	db	"luminance 360-369: ", 0
	msg37	db	"luminance 370-379: ", 0
	msg38	db	"luminance 380-389: ", 0
	msg39	db	"luminance 390-399: ", 0

	msg40	db	"luminance 400-409: ", 0
	msg41	db	"luminance 410-419: ", 0
	msg42	db	"luminance 420-429: ", 0
	msg43	db	"luminance 430-439: ", 0
	msg44	db	"luminance 440-449: ", 0
	msg45	db	"luminance 450-459: ", 0
	msg46	db	"luminance 460-469: ", 0
	msg47	db	"luminance 470-479: ", 0
	msg48	db	"luminance 480-489: ", 0
	msg49	db	"luminance 490-499: ", 0

	msg50	db	"luminance 500-509: ", 0
	msg51	db	"luminance 510-519: ", 0
	msg52	db	"luminance 520-529: ", 0
	msg53	db	"luminance 530-539: ", 0
	msg54	db	"luminance 540-549: ", 0
	msg55	db	"luminance 550-559: ", 0
	msg56	db	"luminance 560-569: ", 0
	msg57	db	"luminance 570-579: ", 0
	msg58	db	"luminance 580-589: ", 0
	msg59	db	"luminance 590-599: ", 0

	msg60	db	"luminance 600-609: ", 0
	msg61	db	"luminance 610-619: ", 0
	msg62	db	"luminance 620-629: ", 0
	msg63	db	"luminance 630-639: ", 0
	msg64	db	"luminance 640-649: ", 0
	msg65	db	"luminance 650-659: ", 0
	msg66	db	"luminance 660-669: ", 0
	msg67	db	"luminance 670-679: ", 0
	msg68	db	"luminance 680-689: ", 0
	msg69	db	"luminance 690-699: ", 0

	msg70	db	"luminance 700-709: ", 0
	msg71	db	"luminance 710-719: ", 0
	msg72	db	"luminance 720-729: ", 0
	msg73	db	"luminance 730-739: ", 0
	msg74	db	"luminance 740-749: ", 0		
		
segment	.bss
	rgb	resd	1	;rgb value
	width	resd	1	;width	
	height	resd	1	;height	

	b0	resd	20
	b1	resd	20
	b2	resd	20
	b3	resd	20
	b4	resd	20
	b5	resd	20
	b6	resd	20
	b7	resd	20
	b8	resd	20
	b9	resd	20

	b10	resd	20
	b11	resd	20
	b12	resd	20
	b13	resd	20
	b14	resd	20
	b15	resd	20
	b16	resd	20
	b17	resd	20
	b18	resd	20
	b19	resd	20

	b20	resd	20
	b21	resd	20
	b22	resd	20
	b23	resd	20
	b24	resd	20
	b25	resd	20
	b26	resd	20
	b27	resd	20
	b28	resd	20
	b29	resd	20

	b30	resd	20
	b31	resd	20
	b32	resd	20
	b33	resd	20
	b34	resd	20
	b35	resd	20
	b36	resd	20
	b37	resd	20
	b38	resd	20
	b39	resd	20

	b40	resd	20
	b41	resd	20
	b42	resd	20
	b43	resd	20
	b44	resd	20
	b45	resd	20
	b46	resd	20
	b47	resd	20
	b48	resd	20
	b49	resd	20

	b50	resd	20
	b51	resd	20
	b52	resd	20
	b53	resd	20
	b54	resd	20
	b55	resd	20
	b56	resd	20
	b57	resd	20
	b58	resd	20
	b59	resd	20

	b60	resd	20
	b61	resd	20
	b62	resd	20
	b63	resd	20
	b64	resd	20
	b65	resd	20
	b66	resd	20
	b67	resd	20
	b68	resd	20
	b69	resd	20

	b70	resd	20
	b71	resd	20
	b72	resd	20
	b73	resd	20
	b74	resd	20

segment	.text
	global	asm_main

asm_main:
	enter	0,0
	pusha

begin:
	mov 	edx, 0			;track for new lines
	mov 	ecx, 0			;track for width

	call 	read_int 		;read width of the image
	mov 	[width], eax 		;store width in memory

	call 	read_int 		;read height of the image
	mov	[height], eax		;store height in memory

	jmp	checkrgb

makenewline:
	inc	edx			;increment newline count			
	mov	ecx, 0			;reset to count again
	jmp	checkrgb

checkrgb:				
	cmp	edx, [height]		;check if edx equal to height
	je 	printstuff		;if edx is equal to height jump to printstuff

	cmp	ecx, [width]		;check if ecx equal to width
	je	makenewline		;if ecx=width makenewline

	mov 	dword [rgb], 0 		;set rgb to 0

	call 	read_int 		;read 1st rgb value
	mov 	[rgb], eax 		;store into rgb

	;call 	read_int 		;read 2nd rgb value
	;add 	[rgb], eax 		;add to rgb

	;call 	read_int 		;read 3rd rgb value
	;add 	[rgb], eax 		;add to rgb

	cmp 	dword [rgb], 9		;compare rgb to 9
	jle 	case9 			;if rgb <= 9 jump to case9

	cmp 	dword [rgb], 19		;compare rgb to 19
	jle 	case19 			;if rgb <= 19 jump to case19

	cmp 	dword [rgb], 29		;compare rgb to 29
	jle 	case29 			;if rgb <= 29 jump to case29

	cmp 	dword [rgb], 39		;compare rgb to 39
	jle 	case39 			;if rgb <= 39 jump to case39

	cmp 	dword [rgb], 49		;compare rgb to 49
	jle 	case49 			;if rgb <= 49 jump to case49

	cmp 	dword [rgb], 59		;compare rgb to 59
	jle 	case59 			;if rgb <= 59 jump to case59

	cmp 	dword [rgb], 69		;compare rgb to 69
	jle 	case69 			;if rgb <= 69 jump to case69

	cmp 	dword [rgb], 79		;compare rgb to 79
	jle 	case79 			;if rgb <= 79 jump to case79

	cmp 	dword [rgb], 89		;compare rgb to 89
	jle 	case89 			;if rgb <= 89 jump to case89

	cmp 	dword [rgb], 99		;compare rgb to 99
	jle 	case99 			;if rgb <= 99 jump to case99

	cmp 	dword [rgb], 109	
	jle 	case109 			

	cmp 	dword [rgb], 119	
	jle 	case119 	

	cmp 	dword [rgb], 129	
	jle 	case129 	

	cmp 	dword [rgb], 139	
	jle 	case139 

	cmp 	dword [rgb], 149	
	jle 	case149 	

	cmp 	dword [rgb], 159	
	jle 	case159 	

	cmp 	dword [rgb], 169	
	jle 	case169 	

	cmp 	dword [rgb], 179	
	jle 	case179 	

	cmp 	dword [rgb], 189	
	jle 	case189 	

	cmp 	dword [rgb], 199	
	jle 	case199 	

	cmp 	dword [rgb], 209	
	jle 	case209 	

	cmp 	dword [rgb], 219	
	jle 	case219 

	cmp 	dword [rgb], 229	
	jle 	case229 

	cmp 	dword [rgb], 239	
	jle 	case239 

	cmp 	dword [rgb], 249	
	jle 	case249 

	cmp 	dword [rgb], 259	
	jle 	case259

	cmp 	dword [rgb], 269	
	jle 	case269

	cmp 	dword [rgb], 279	
	jle 	case279

	cmp 	dword [rgb], 289	
	jle 	case289

	cmp 	dword [rgb], 299	
	jle 	case299

	cmp 	dword [rgb], 309	
	jle 	case309
	cmp 	dword [rgb], 319	
	jle 	case319
	cmp 	dword [rgb], 329	
	jle 	case329
	cmp 	dword [rgb], 339	
	jle 	case339
	cmp 	dword [rgb], 349	
	jle 	case349
	cmp 	dword [rgb], 359	
	jle 	case359
	cmp 	dword [rgb], 369	
	jle 	case369
	cmp 	dword [rgb], 379	
	jle 	case379
	cmp 	dword [rgb], 389	
	jle 	case389
	cmp 	dword [rgb], 399	
	jle 	case399

	cmp 	dword [rgb], 409	
	jle 	case409
	cmp 	dword [rgb], 419	
	jle 	case419
	cmp 	dword [rgb], 429	
	jle 	case429
	cmp 	dword [rgb], 439	
	jle 	case439
	cmp 	dword [rgb], 449	
	jle 	case449
	cmp 	dword [rgb], 459	
	jle 	case459
	cmp 	dword [rgb], 469	
	jle 	case469
	cmp 	dword [rgb], 479	
	jle 	case479
	cmp 	dword [rgb], 489	
	jle 	case489
	cmp 	dword [rgb], 499	
	jle 	case499

	cmp 	dword [rgb], 509	
	jle 	case509
	cmp 	dword [rgb], 519	
	jle 	case519
	cmp 	dword [rgb], 529	
	jle 	case529
	cmp 	dword [rgb], 539	
	jle 	case539
	cmp 	dword [rgb], 549	
	jle 	case549
	cmp 	dword [rgb], 559	
	jle 	case559
	cmp 	dword [rgb], 569	
	jle 	case569
	cmp 	dword [rgb], 579	
	jle 	case579
	cmp 	dword [rgb], 589	
	jle 	case589
	cmp 	dword [rgb], 599	
	jle 	case599

	cmp 	dword [rgb], 609	
	jle 	case609
	cmp 	dword [rgb], 619	
	jle 	case619
	cmp 	dword [rgb], 629	
	jle 	case629
	cmp 	dword [rgb], 639	
	jle 	case639
	cmp 	dword [rgb], 649	
	jle 	case649
	cmp 	dword [rgb], 659	
	jle 	case659
	cmp 	dword [rgb], 669	
	jle 	case669
	cmp 	dword [rgb], 679	
	jle 	case679
	cmp 	dword [rgb], 689	
	jle 	case689
	cmp 	dword [rgb], 699	
	jle 	case699

	cmp 	dword [rgb], 709	
	jle 	case709
	cmp 	dword [rgb], 719	
	jle 	case719
	cmp 	dword [rgb], 729	
	jle 	case729
	cmp 	dword [rgb], 739	
	jle 	case739
	cmp 	dword [rgb], 765	
	jle 	case749

	jmp	endprogram

case9:					;If rgb is between 0 and 9
	mov	eax, 0
	mov	eax, [b0]		;move bin 6 value to the ebx register
	inc 	eax			;increment because we need to increase the count in b6
	mov	[b0], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case19:					;If rgb is between 10 and 19
	mov	eax, 0
	mov	eax, [b1]		;move bin 6 value to the ebx register
	inc	eax			;increment because we need to increase the count in b6
	mov	[b1], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case29:					;If rgb is between 20 and 29
	mov	eax, 0
	mov	eax, [b2]		;move bin 6 value to the ebx register
	inc	eax			;increment because we need to increase the count in b6
	mov	[b2], eax
	inc 	ecx
	jmp 	checkrgb 		;jump to checkrgb

case39:					;If rgb is between 30 and 39
	mov	eax, 0
	mov	eax, [b3]		;move bin 6 value to the ebx register
	inc	eax			;increment because we need to increase the count in b6
	mov	[b3], eax
	jmp 	checkrgb 		;jump to checkrgb

case49:					;If rgb is between 40 and 49
	mov	eax, 0
	mov	eax, [b4]		;move bin 6 value to the ebx register
	inc	eax			;increment because we need to increase the count in b6
	mov	[b4], eax
	jmp 	checkrgb 		;jump to checkrgb

case59:					;If rgb is between 50 and 59
	mov	eax, 0
	mov	eax, [b5]		;move bin 6 value to the ebx register
	inc	eax			;increment because we need to increase the count in b6
	mov	[b5], eax
	jmp 	checkrgb 		;jump to checkrgb

case69:					;If rgb is between 60 and 69
	mov	eax, 0
	mov	eax, [b6]		;move bin 6 value to the ebx register
	inc	eax			;increment because we need to increase the count in b6
	mov	[b6], eax
	jmp 	checkrgb 		;jump to checkrgb

case79:					
	mov	eax, 0
	mov	eax, [b7]		
	inc	eax			
	mov	[b7], eax
	jmp 	checkrgb 		;jump to checkrgb

case89:					
	mov	eax, 0
	mov	eax, [b8]		
	inc	eax			
	mov	[b8], eax
	jmp 	checkrgb 		;jump to checkrgb

case99:					
	mov	eax, 0
	mov	eax, [b9]		
	inc	eax			
	mov	[b9], eax
	jmp 	checkrgb 		;jump to checkrgb

case109:					
	mov	eax, 0
	mov	eax, [b10]		
	inc	eax			
	mov	[b10], eax
	jmp 	checkrgb 		;jump to checkrgb

case119:					
	mov	eax, 0
	mov	eax, [b11]		
	inc	eax			
	mov	[b11], eax
	jmp 	checkrgb 		;jump to checkrgb

case129:					
	mov	eax, 0
	mov	eax, [b12]		
	inc	eax			
	mov	[b12], eax
	jmp 	checkrgb 		;jump to checkrgb

case139:					
	mov	eax, 0
	mov	eax, [b13]		
	inc	eax			
	mov	[b13], eax
	jmp 	checkrgb 		;jump to checkrgb

case149:					
	mov	eax, 0
	mov	eax, [b14]		
	inc	eax			
	mov	[b14], eax
	jmp 	checkrgb 		;jump to checkrgb

case159:					
	mov	eax, 0
	mov	eax, [b15]		
	inc	eax			
	mov	[b15], eax
	jmp 	checkrgb 		;jump to checkrgb

case169:					
	mov	eax, 0
	mov	eax, [b16]		
	inc	eax			
	mov	[b16], eax
	jmp 	checkrgb 		;jump to checkrgb

case179:					
	mov	eax, 0
	mov	eax, [b17]		
	inc	eax			
	mov	[b17], eax
	jmp 	checkrgb 		;jump to checkrgb

case189:					
	mov	eax, 0
	mov	eax, [b18]		
	inc	eax			
	mov	[b18], eax
	jmp 	checkrgb 		;jump to checkrgb

case199:					
	mov	eax, 0
	mov	eax, [b19]		
	inc	eax			
	mov	[b19], eax
	jmp 	checkrgb 		;jump to checkrgb

case209:					
	mov	eax, 0
	mov	eax, [b20]		
	inc	eax			
	mov	[b20], eax
	jmp 	checkrgb 		;jump to checkrgb

case219:					
	mov	eax, 0
	mov	eax, [b21]		
	inc	eax			
	mov	[b21], eax
	jmp 	checkrgb 		;jump to checkrgb

case229:					
	mov	eax, 0
	mov	eax, [b22]		
	inc	eax			
	mov	[b22], eax
	jmp 	checkrgb 		;jump to checkrgb

case239:					
	mov	eax, 0
	mov	eax, [b23]		
	inc	eax			
	mov	[b23], eax
	jmp 	checkrgb 		;jump to checkrgb

case249:					
	mov	eax, 0
	mov	eax, [b24]		
	inc	eax			
	mov	[b24], eax
	jmp 	checkrgb 		;jump to checkrgb

case259:					
	mov	eax, 0
	mov	eax, [b25]		
	inc	eax			
	mov	[b25], eax
	jmp 	checkrgb 		;jump to checkrgb

case269:					
	mov	eax, 0
	mov	eax, [b26]		
	inc	eax			
	mov	[b26], eax
	jmp 	checkrgb 		;jump to checkrgb

case279:					
	mov	eax, 0
	mov	eax, [b27]		
	inc	eax			
	mov	[b27], eax
	jmp 	checkrgb 		;jump to checkrgb

case289:					
	mov	eax, 0
	mov	eax, [b28]		
	inc	eax			
	mov	[b28], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case299:					
	mov	eax, 0
	mov	eax, [b29]		
	inc	eax			
	mov	[b29], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case309:					
	mov	eax, 0
	mov	eax, [b30]		
	inc	eax			
	mov	[b30], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case319:					
	mov	eax, 0
	mov	eax, [b31]		
	inc	eax			
	mov	[b31], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case329:					
	mov	eax, 0
	mov	eax, [b32]		
	inc	eax			
	mov	[b32], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case339:					
	mov	eax, 0
	mov	eax, [b33]		
	inc	eax			
	mov	[b33], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case349:					
	mov	eax, 0
	mov	eax, [b34]		
	inc	eax			
	mov	[b34], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case359:					
	mov	eax, 0
	mov	eax, [b35]		
	inc	eax			
	mov	[b35], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case369:					
	mov	eax, 0
	mov	eax, [b36]		
	inc	eax			
	mov	[b36], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case379:					
	mov	eax, 0
	mov	eax, [b37]		
	inc	eax			
	mov	[b37], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case389:					
	mov	eax, 0
	mov	eax, [b38]		
	inc	eax			
	mov	[b38], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case399:					
	mov	eax, 0
	mov	eax, [b39]		
	inc	eax			
	mov	[b39], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case409:					
	mov	eax, 0
	mov	eax, [b40]		
	inc	eax			
	mov	[b40], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case419:					
	mov	eax, 0
	mov	eax, [b41]		
	inc	eax			
	mov	[b41], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case429:					
	mov	eax, 0
	mov	eax, [b42]		
	inc	eax			
	mov	[b42], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case439:					
	mov	eax, 0
	mov	eax, [b43]		
	inc	eax			
	mov	[b43], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case449:					
	mov	eax, 0
	mov	eax, [b44]		
	inc	eax			
	mov	[b44], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case459:					
	mov	eax, 0
	mov	eax, [b45]		
	inc	eax			
	mov	[b45], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case469:					
	mov	eax, 0
	mov	eax, [b46]		
	inc	eax			
	mov	[b46], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case479:					
	mov	eax, 0
	mov	eax, [b47]		
	inc	eax			
	mov	[b47], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case489:					
	mov	eax, 0
	mov	eax, [b38]		
	inc	eax			
	mov	[b38], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case499:					
	mov	eax, 0
	mov	eax, [b49]		
	inc	eax			
	mov	[b49], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case509:					
	mov	eax, 0
	mov	eax, [b50]		
	inc	eax			
	mov	[b50], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case519:					
	mov	eax, 0
	mov	eax, [b51]		
	inc	eax			
	mov	[b51], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case529:					
	mov	eax, 0
	mov	eax, [b52]		
	inc	eax			
	mov	[b52], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case539:					
	mov	eax, 0
	mov	eax, [b53]		
	inc	eax			
	mov	[b53], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case549:					
	mov	eax, 0
	mov	eax, [b54]		
	inc	eax			
	mov	[b54], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case559:					
	mov	eax, 0
	mov	eax, [b55]		
	inc	eax			
	mov	[b55], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case569:					
	mov	eax, 0
	mov	eax, [b56]		
	inc	eax			
	mov	[b56], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case579:					
	mov	eax, 0
	mov	eax, [b57]		
	inc	eax			
	mov	[b57], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case589:					
	mov	eax, 0
	mov	eax, [b58]		
	inc	eax			
	mov	[b58], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case599:					
	mov	eax, 0
	mov	eax, [b59]		
	inc	eax			
	mov	[b59], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case609:					
	mov	eax, 0
	mov	eax, [b60]		
	inc	eax			
	mov	[b60], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case619:					
	mov	eax, 0
	mov	eax, [b61]		
	inc	eax			
	mov	[b61], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case629:					
	mov	eax, 0
	mov	eax, [b62]		
	inc	eax			
	mov	[b62], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case639:					
	mov	eax, 0
	mov	eax, [b63]		
	inc	eax			
	mov	[b63], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case649:					
	mov	eax, 0
	mov	eax, [b64]		
	inc	eax			
	mov	[b64], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case659:					
	mov	eax, 0
	mov	eax, [b65]		
	inc	eax			
	mov	[b65], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case669:					
	mov	eax, 0
	mov	eax, [b66]		
	inc	eax			
	mov	[b46], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case679:					
	mov	eax, 0
	mov	eax, [b67]		
	inc	eax			
	mov	[b67], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case689:					
	mov	eax, 0
	mov	eax, [b68]		
	inc	eax			
	mov	[b68], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case699:					
	mov	eax, 0
	mov	eax, [b69]		
	inc	eax			
	mov	[b49], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case709:					
	mov	eax, 0
	mov	eax, [b70]		
	inc	eax			
	mov	[b70], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case719:					
	mov	eax, 0
	mov	eax, [b71]		
	inc	eax			
	mov	[b71], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case729:					
	mov	eax, 0
	mov	eax, [b72]		
	inc	eax			
	mov	[b72], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case739:					
	mov	eax, 0
	mov	eax, [b73]		
	inc	eax			
	mov	[b73], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

case749:					
	mov	eax, 0
	mov	eax, [b74]		
	inc	eax			
	mov	[b74], eax
	inc	ecx
	jmp 	checkrgb 		;jump to checkrgb

;-----------------PRINT----------------------------------

printstuff:
	mov	eax, msg0		
	call	print_string
	mov	eax, 0
	mov 	eax, [b0]
	call 	print_int 	
	call	print_nl

	mov	eax, msg1		;eax points to msg0
	call	print_string
	mov	eax, 0
	mov 	eax, [b1]		;eax points to b0
	call 	print_int 		;print
	call	print_nl

	mov	eax, msg2		
	call	print_string
	mov	eax, 0
	mov 	eax, [b2]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg3		
	call	print_string
	mov	eax, 0
	mov 	eax, [b3]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg4		
	call	print_string
	mov	eax, 0
	mov 	eax, [b4]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg5		
	call	print_string
	mov	eax, 0
	mov 	eax, [b5]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg6		
	call	print_string
	mov	eax, 0
	mov 	eax, [b6]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg7		
	call	print_string
	mov	eax, 0
	mov 	eax, [b7]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg8		
	call	print_string
	mov	eax, 0
	mov 	eax, [b8]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg9		
	call	print_string
	mov	eax, 0
	mov 	eax, [b9]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg10		
	call	print_string
	mov	eax, 0
	mov 	eax, [b10]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg11		
	call	print_string
	mov	eax, 0
	mov 	eax, [b11]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg12		
	call	print_string
	mov	eax, 0
	mov 	eax, [b12]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg12		
	call	print_string
	mov	eax, 0
	mov 	eax, [b12]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg13		
	call	print_string
	mov	eax, 0
	mov 	eax, [b13]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg14		
	call	print_string
	mov	eax, 0
	mov 	eax, [b14]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg15		
	call	print_string
	mov	eax, 0
	mov 	eax, [b15]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg16		
	call	print_string
	mov	eax, 0
	mov 	eax, [b16]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg17		
	call	print_string
	mov	eax, 0
	mov 	eax, [b17]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg18		
	call	print_string
	mov	eax, 0
	mov 	eax, [b18]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg19		
	call	print_string
	mov	eax, 0
	mov 	eax, [b19]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg20		
	call	print_string
	mov	eax, 0
	mov 	eax, [b20]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg21		
	call	print_string
	mov	eax, 0
	mov 	eax, [b21]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg22		
	call	print_string
	mov	eax, 0
	mov 	eax, [b22]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg23		
	call	print_string
	mov	eax, 0
	mov 	eax, [b23]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg24		
	call	print_string
	mov	eax, 0
	mov 	eax, [b24]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg25		
	call	print_string
	mov	eax, 0
	mov 	eax, [b25]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg26		
	call	print_string
	mov	eax, 0
	mov 	eax, [b26]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg27		
	call	print_string
	mov	eax, 0
	mov 	eax, [b27]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg28		
	call	print_string
	mov	eax, 0
	mov 	eax, [b28]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg29		
	call	print_string
	mov	eax, 0
	mov 	eax, [b29]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg30		
	call	print_string
	mov	eax, 0
	mov 	eax, [b30]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg31		
	call	print_string
	mov	eax, 0
	mov 	eax, [b31]	
	call 	print_int 	
	call	print_nl

	mov	eax, msg32		
	call	print_string
	mov	eax, 0
	mov 	eax, b32	
	call 	print_int 	
	call	print_nl

	mov	eax, msg33		
	call	print_string
	mov	eax, 0
	mov 	eax, b33	
	call 	print_int 	
	call	print_nl

	mov	eax, msg34		
	call	print_string
	mov	eax, 0
	mov 	eax, b34	
	call 	print_int 	
	call	print_nl

	mov	eax, msg35		
	call	print_string
	mov	eax, 0
	mov 	eax, b35	
	call 	print_int 	
	call	print_nl

	mov	eax, msg36		
	call	print_string
	mov	eax, 0
	mov 	eax, b36	
	call 	print_int 	
	call	print_nl

	mov	eax, msg37		
	call	print_string
	mov	eax, 0
	mov 	eax, b37	
	call 	print_int 	
	call	print_nl

	mov	eax, msg38		
	call	print_string
	mov	eax, 0
	mov 	eax, b38	
	call 	print_int 	
	call	print_nl

	mov	eax, msg39		
	call	print_string
	mov	eax, 0
	mov 	eax, b39	
	call 	print_int 	
	call	print_nl

	mov	eax, msg40		
	call	print_string
	mov	eax, 0
	mov 	eax, b40	
	call 	print_int 	
	call	print_nl

	mov	eax, msg41		
	call	print_string
	mov	eax, 0
	mov 	eax, b41	
	call 	print_int 	
	call	print_nl

	mov	eax, msg42		
	call	print_string
	mov	eax, 0
	mov 	eax, b42	
	call 	print_int 	
	call	print_nl

	mov	eax, msg43		
	call	print_string
	mov	eax, 0
	mov 	eax, b43	
	call 	print_int 	
	call	print_nl

	mov	eax, msg44		
	call	print_string
	mov	eax, 0
	mov 	eax, b44	
	call 	print_int 	
	call	print_nl

	mov	eax, msg45		
	call	print_string
	mov	eax, 0
	mov 	eax, b45	
	call 	print_int 	
	call	print_nl

	mov	eax, msg46		
	call	print_string
	mov	eax, 0
	mov 	eax, b46	
	call 	print_int 	
	call	print_nl

	mov	eax, msg47		
	call	print_string
	mov	eax, 0
	mov 	eax, b47	
	call 	print_int 	
	call	print_nl

	mov	eax, msg48		
	call	print_string
	mov	eax, 0
	mov 	eax, b48	
	call 	print_int 	
	call	print_nl

	mov	eax, msg49		
	call	print_string
	mov	eax, 0
	mov 	eax, b49	
	call 	print_int 	
	call	print_nl

	mov	eax, msg50		
	call	print_string
	mov	eax, 0
	mov 	eax, b50	
	call 	print_int 	
	call	print_nl

	mov	eax, msg51		
	call	print_string
	mov	eax, 0
	mov 	eax, b51	
	call 	print_int 	
	call	print_nl

	mov	eax, msg52		
	call	print_string
	mov	eax, 0
	mov 	eax, b52	
	call 	print_int 	
	call	print_nl

	mov	eax, msg53		
	call	print_string
	mov	eax, 0
	mov 	eax, b53	
	call 	print_int 	
	call	print_nl

	mov	eax, msg54		
	call	print_string
	mov	eax, 0
	mov 	eax, b54	
	call 	print_int 	
	call	print_nl

	mov	eax, msg55		
	call	print_string
	mov	eax, 0
	mov 	eax, b55	
	call 	print_int 	
	call	print_nl

	mov	eax, msg56		
	call	print_string
	mov	eax, 0
	mov 	eax, b56	
	call 	print_int 	
	call	print_nl

	mov	eax, msg57		
	call	print_string
	mov	eax, 0
	mov 	eax, b57	
	call 	print_int 	
	call	print_nl

	mov	eax, msg58		
	call	print_string
	mov	eax, 0
	mov 	eax, b58	
	call 	print_int 	
	call	print_nl

	mov	eax, msg59		
	call	print_string
	mov	eax, 0
	mov 	eax, b59	
	call 	print_int 	
	call	print_nl

	mov	eax, msg60		
	call	print_string
	mov	eax, 0
	mov 	eax, b60	
	call 	print_int 	
	call	print_nl

	mov	eax, msg61		
	call	print_string
	mov	eax, 0
	mov 	eax, b61	
	call 	print_int 	
	call	print_nl

	mov	eax, msg62		
	call	print_string
	mov	eax, 0
	mov 	eax, b62	
	call 	print_int 	
	call	print_nl

	mov	eax, msg63		
	call	print_string
	mov	eax, 0
	mov 	eax, b63	
	call 	print_int 	
	call	print_nl

	mov	eax, msg64		
	call	print_string
	mov	eax, 0
	mov 	eax, b64	
	call 	print_int 	
	call	print_nl

	mov	eax, msg65		
	call	print_string
	mov	eax, 0
	mov 	eax, b65	
	call 	print_int 	
	call	print_nl

	mov	eax, msg66		
	call	print_string
	mov	eax, 0
	mov 	eax, b66	
	call 	print_int 	
	call	print_nl

	mov	eax, msg67		
	call	print_string
	mov	eax, 0
	mov 	eax, b67	
	call 	print_int 	
	call	print_nl

	mov	eax, msg68		
	call	print_string
	mov	eax, 0
	mov 	eax, b68	
	call 	print_int 	
	call	print_nl

	mov	eax, msg69		
	call	print_string
	mov	eax, 0
	mov 	eax, b69	
	call 	print_int 	
	call	print_nl

	mov	eax, msg70		
	call	print_string
	mov	eax, 0
	mov 	eax, b70	
	call 	print_int 	
	call	print_nl

	mov	eax, msg71		
	call	print_string
	mov	eax, 0
	mov 	eax, b71	
	call 	print_int 	
	call	print_nl

	mov	eax, msg72		
	call	print_string
	mov	eax, 0
	mov 	eax, b72	
	call 	print_int 	
	call	print_nl

	mov	eax, msg73		
	call	print_string
	mov	eax, 0
	mov 	eax, b73	
	call 	print_int 	
	call	print_nl

	mov	eax, msg74		
	call	print_string
	mov	eax, 0
	mov 	eax, b74	
	call 	print_int 	
	call	print_nl

	;dump_mem	0, b0, 1
	;dump_regs	1

;---------------------END-------------------------------------

endprogram:				;jump here to end program once image file has been read completely
	popa
	mov	eax, 0
	leave
	ret