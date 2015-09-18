.syntax unified
.cpu cortex-a15
.fpu vfpv3-d16
.data
.align	2
.DEBUG: .ascii "Hit Debug\n\000"
.DEBUGINT: .ascii "Hit Debug, r0 was: %d\n\000"
.INTEGER: .ascii "%d \000"
.FLOAT: .ascii "%f \000"
.NEWLINE: .ascii "\n \000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (main) with depth 2
_main:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting DECLARATION: adding space on stack
	push	{r0}
#3 Ending DECLARATION
#4 Starting ASSIGNMENT_STATEMENT
#5 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	pop	{r0}
	push	{r0}
#6 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#7 End ASSIGNMENT_STATEMENT
#8 Starting DECLARATION: adding space on stack
	push	{r0}
#9 Ending DECLARATION
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	pop	{r0}
	push	{r0}
#12 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#13 End ASSIGNMENT_STATEMENT
#14 Starting DECLARATION: adding space on stack
	push	{r0}
#15 Ending DECLARATION
#16 Starting DECLARATION: adding space on stack
	push	{r0}
#17 Ending DECLARATION
#18 Starting FOR_STATEMENT
#19 End FOR_STATEMENT
#20 Starting DECLARATION: adding space on stack
	push	{r0}
#21 Ending DECLARATION
#22 Starting ASSIGNMENT_STATEMENT
#23 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	pop	{r0}
	push	{r0}
#24 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#25 End ASSIGNMENT_STATEMENT
#26 Starting DECLARATION: adding space on stack
	push	{r0}
#27 Ending DECLARATION
#28 Starting FOR_STATEMENT
#29 End FOR_STATEMENT
#30 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#31 Starting EXPRESSION of type ARRAY_INDEX
#32 Starting EXPRESSION of type ARRAY_INDEX
#33 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#34 End VARIABLE c, depth difference: 0, stack offset: -20
#35 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#36 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#37 Ending EXPRESSION of type ARRAY_INDEX
#38 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#39 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#40 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#41 Starting EXPRESSION of type ARRAY_INDEX
#42 Starting EXPRESSION of type ARRAY_INDEX
#43 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#44 End VARIABLE c, depth difference: 0, stack offset: -20
#45 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#46 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#47 Ending EXPRESSION of type ARRAY_INDEX
#48 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#49 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#50 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#51 Starting EXPRESSION of type ARRAY_INDEX
#52 Starting EXPRESSION of type ARRAY_INDEX
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#54 End VARIABLE c, depth difference: 0, stack offset: -20
#55 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#56 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#57 Ending EXPRESSION of type ARRAY_INDEX
#58 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#59 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#60 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#61 Ending PRINT_STATEMENT
#62 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#63 Starting EXPRESSION of type ARRAY_INDEX
#64 Starting EXPRESSION of type ARRAY_INDEX
#65 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#66 End VARIABLE c, depth difference: 0, stack offset: -20
#67 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#68 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#69 Ending EXPRESSION of type ARRAY_INDEX
#70 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#71 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#72 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#73 Starting EXPRESSION of type ARRAY_INDEX
#74 Starting EXPRESSION of type ARRAY_INDEX
#75 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#76 End VARIABLE c, depth difference: 0, stack offset: -20
#77 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#78 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#79 Ending EXPRESSION of type ARRAY_INDEX
#80 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#81 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#82 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#83 Starting EXPRESSION of type ARRAY_INDEX
#84 Starting EXPRESSION of type ARRAY_INDEX
#85 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#86 End VARIABLE c, depth difference: 0, stack offset: -20
#87 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#88 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#89 Ending EXPRESSION of type ARRAY_INDEX
#90 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#91 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#92 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#93 Ending PRINT_STATEMENT
#94 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#95 Starting EXPRESSION of type ARRAY_INDEX
#96 Starting EXPRESSION of type ARRAY_INDEX
#97 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#98 End VARIABLE c, depth difference: 0, stack offset: -20
#99 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#100 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#101 Ending EXPRESSION of type ARRAY_INDEX
#102 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#103 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#104 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#105 Starting EXPRESSION of type ARRAY_INDEX
#106 Starting EXPRESSION of type ARRAY_INDEX
#107 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#108 End VARIABLE c, depth difference: 0, stack offset: -20
#109 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#110 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#111 Ending EXPRESSION of type ARRAY_INDEX
#112 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#113 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#114 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#115 Starting EXPRESSION of type ARRAY_INDEX
#116 Starting EXPRESSION of type ARRAY_INDEX
#117 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#118 End VARIABLE c, depth difference: 0, stack offset: -20
#119 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#120 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#121 Ending EXPRESSION of type ARRAY_INDEX
#122 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#123 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#124 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#125 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#126 Leaving FUNCTION (main) with depth 2
debugprint:
	push {r0-r11, lr}
	movw	r0, #:lower16:.DEBUG
	movt	r0, #:upper16:.DEBUG
	bl	printf
	pop {r0-r11, pc}
debugprint_r0:
	push {r0-r11, lr}
	mov	r1, r0
	movw	r0, #:lower16:.DEBUGINT
	movt	r0, #:upper16:.DEBUGINT
	bl	printf
	pop {r0-r11, pc}
_malloc:
	push	{lr}
	push	{fp}
	ldr	r0, [sp, #8]
	bl	malloc
	pop	{fp}
	pop {pc}
main:
	push	{lr}
	push	{fp}
	mov	fp, sp
	mov	r5, r0
	sub	r5, r5, #1
	cmp	r5,#0
	beq	noargs
	mov	r6, r1
pusharg:
	ldr	r0, [r6, #4]
	add	r6, r6, #4
	mov	r1, #0
	mov	r2, #10
	bl	strtol
	push	{r0}
	sub	r5, r5, #1
	cmp	r5,#0
	bne	pusharg
noargs:
	bl	_main
#127 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
