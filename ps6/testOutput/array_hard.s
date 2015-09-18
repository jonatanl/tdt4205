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
#8 Starting ASSIGNMENT_STATEMENT
#9 Starting CONSTANT
	movw	r0, #:lower16:5
	movt	r0, #:upper16:5
	push	{r0}
#10 End CONSTANT
#11 Starting EXPRESSION of type ARRAY_INDEX
#12 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#13 End VARIABLE a, depth difference: 0, stack offset: -4
#14 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#15 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#16 Ending EXPRESSION of type ARRAY_INDEX
#17 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#18 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#19 End ASSIGNMENT_STATEMENT
#20 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#21 Starting EXPRESSION of type ARRAY_INDEX
#22 Starting EXPRESSION of type ARRAY_INDEX
#23 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#24 End VARIABLE a, depth difference: 0, stack offset: -4
#25 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#26 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#27 Ending EXPRESSION of type ARRAY_INDEX
#28 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#29 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#30 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#31 Ending PRINT_STATEMENT
#32 Starting DECLARATION: adding space on stack
	push	{r0}
#33 Ending DECLARATION
#34 Starting ASSIGNMENT_STATEMENT
#35 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #12]
	push	{r1}
	pop	{r0}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #12]
	push	{r1}
	pop	{r0}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #12]
	push	{r1}
	pop	{r0}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #12]
	push	{r1}
	pop	{r0}
	pop	{r1}
	str	r0, [r1, #12]
	push	{r1}
	pop	{r0}
	push	{r0}
#36 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#37 End ASSIGNMENT_STATEMENT
#38 Starting ASSIGNMENT_STATEMENT
#39 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#40 End CONSTANT
#41 Starting EXPRESSION of type ARRAY_INDEX
#42 Starting EXPRESSION of type ARRAY_INDEX
#43 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#44 End VARIABLE b, depth difference: 0, stack offset: -8
#45 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
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
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
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
#51 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#52 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#53 End ASSIGNMENT_STATEMENT
#54 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#55 Starting EXPRESSION of type ARRAY_INDEX
#56 Starting EXPRESSION of type ARRAY_INDEX
#57 Starting EXPRESSION of type ARRAY_INDEX
#58 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#59 End VARIABLE b, depth difference: 0, stack offset: -8
#60 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#61 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#62 Ending EXPRESSION of type ARRAY_INDEX
#63 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#64 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#65 Ending EXPRESSION of type ARRAY_INDEX
#66 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#67 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#68 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#69 Ending PRINT_STATEMENT
#70 Starting DECLARATION: adding space on stack
	push	{r0}
#71 Ending DECLARATION
#72 Starting ASSIGNMENT_STATEMENT
#73 Starting EXPRESSION of type FUNC_CALL
	bl	_create
	push	{r0}
#74 Ending EXPRESSION of type (null)
#75 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#76 End ASSIGNMENT_STATEMENT
#77 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#78 Starting EXPRESSION of type ARRAY_INDEX
#79 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#80 End VARIABLE c, depth difference: 0, stack offset: -12
#81 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#82 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#83 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#84 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#85 Leaving FUNCTION (main) with depth 2
#86 Starting FUNCTION (create) with depth 2
_create:
	push	{lr}
	push	{fp}
	mov	fp, sp
#87 Starting DECLARATION: adding space on stack
	push	{r0}
#88 Ending DECLARATION
#89 Starting ASSIGNMENT_STATEMENT
#90 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
#91 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#92 End ASSIGNMENT_STATEMENT
#93 Starting ASSIGNMENT_STATEMENT
#94 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#95 End CONSTANT
#96 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#97 End VARIABLE a, depth difference: 0, stack offset: -4
#98 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#99 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#100 End ASSIGNMENT_STATEMENT
#101 Starting ASSIGNMENT_STATEMENT
#102 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#103 End CONSTANT
#104 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#105 End VARIABLE a, depth difference: 0, stack offset: -4
#106 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#107 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#108 End ASSIGNMENT_STATEMENT
#109 Starting ASSIGNMENT_STATEMENT
#110 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#111 End CONSTANT
#112 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#113 End VARIABLE a, depth difference: 0, stack offset: -4
#114 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#115 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#116 End ASSIGNMENT_STATEMENT
#117 Starting RETURN_STATEMENT
#118 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#119 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#120 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#121 Leaving FUNCTION (create) with depth 2
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
#122 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
