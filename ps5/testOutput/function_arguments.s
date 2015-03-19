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
#4 Starting DECLARATION: adding space on stack
	push	{r0}
#5 Ending DECLARATION
#6 Starting DECLARATION: adding space on stack
	push	{r0}
#7 Ending DECLARATION
#8 Starting DECLARATION: adding space on stack
	push	{r0}
#9 Ending DECLARATION
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting CONSTANT
	movw	r1, #:lower16:5
	movt	r1, #:upper16:5
	push	{r1}
#12 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-4]
#13 End ASSIGNMENT_STATEMENT
#14 Starting ASSIGNMENT_STATEMENT
#15 Starting CONSTANT
	movw	r1, #:lower16:6
	movt	r1, #:upper16:6
	push	{r1}
#16 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-8]
#17 End ASSIGNMENT_STATEMENT
#18 Starting ASSIGNMENT_STATEMENT
#19 Starting CONSTANT
	movw	r1, #:lower16:7
	movt	r1, #:upper16:7
	push	{r1}
#20 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-12]
#21 End ASSIGNMENT_STATEMENT
#22 Starting ASSIGNMENT_STATEMENT
#23 Starting CONSTANT
	movw	r1, #:lower16:8
	movt	r1, #:upper16:8
	push	{r1}
#24 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-16]
#25 End ASSIGNMENT_STATEMENT
#26 Starting DECLARATION: adding space on stack
	push	{r0}
#27 Ending DECLARATION
#28 Starting DECLARATION: adding space on stack
	push	{r0}
#29 Ending DECLARATION
#30 Starting ASSIGNMENT_STATEMENT
#31 Starting EXPRESSION of type FUNC_CALL
#32 Starting VARIABLE
	ldr	r1, [fp, #-4]
	push	{r1}
#33 End VARIABLE a, depth difference: 0, stack offset: -4
#34 Starting VARIABLE
	ldr	r1, [fp, #-8]
	push	{r1}
#35 End VARIABLE b, depth difference: 0, stack offset: -8
#36 Starting VARIABLE
	ldr	r1, [fp, #-12]
	push	{r1}
#37 End VARIABLE c, depth difference: 0, stack offset: -12
	mov	lr, pc
	bl	_func1
	push	{r0}
#38 Ending EXPRESSION of type FUNC_CALL
	pop	{r1}
	str	r1, [fp, #-20]
#39 End ASSIGNMENT_STATEMENT
#40 Starting ASSIGNMENT_STATEMENT
#41 Starting EXPRESSION of type FUNC_CALL
#42 Starting VARIABLE
	ldr	r1, [fp, #-4]
	push	{r1}
#43 End VARIABLE a, depth difference: 0, stack offset: -4
#44 Starting VARIABLE
	ldr	r1, [fp, #-8]
	push	{r1}
#45 End VARIABLE b, depth difference: 0, stack offset: -8
#46 Starting VARIABLE
	ldr	r1, [fp, #-12]
	push	{r1}
#47 End VARIABLE c, depth difference: 0, stack offset: -12
#48 Starting VARIABLE
	ldr	r1, [fp, #-16]
	push	{r1}
#49 End VARIABLE d, depth difference: 0, stack offset: -16
#50 Starting VARIABLE
	ldr	r1, [fp, #-20]
	push	{r1}
#51 End VARIABLE e, depth difference: 0, stack offset: -20
	mov	lr, pc
	bl	_func2
	push	{r0}
#52 Ending EXPRESSION of type FUNC_CALL
	pop	{r1}
	str	r1, [fp, #-24]
#53 End ASSIGNMENT_STATEMENT
#54 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#55 Starting VARIABLE
	ldr	r1, [fp, #-20]
	push	{r1}
#56 End VARIABLE e, depth difference: 0, stack offset: -20
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#57 Starting VARIABLE
	ldr	r1, [fp, #-24]
	push	{r1}
#58 End VARIABLE f, depth difference: 0, stack offset: -24
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#59 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#60 Leaving FUNCTION (main) with depth 2
#61 Starting FUNCTION (func1) with depth 2
_func1:
	push	{lr}
	push	{fp}
	mov	fp, sp
#62 Starting DECLARATION: adding space on stack
	push	{r0}
#63 Ending DECLARATION
#64 Starting DECLARATION: adding space on stack
	push	{r0}
#65 Ending DECLARATION
#66 Starting DECLARATION: adding space on stack
	push	{r0}
#67 Ending DECLARATION
#68 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#69 Starting VARIABLE
	ldr	r1, [fp, #16]
	push	{r1}
#70 End VARIABLE x, depth difference: 0, stack offset: 16
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#71 Starting VARIABLE
	ldr	r1, [fp, #12]
	push	{r1}
#72 End VARIABLE y, depth difference: 0, stack offset: 12
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#73 Starting VARIABLE
	ldr	r1, [fp, #8]
	push	{r1}
#74 End VARIABLE z, depth difference: 0, stack offset: 8
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#75 Ending PRINT_STATEMENT
#76 Starting RETURN_STATEMENT
#77 Starting VARIABLE
	ldr	r1, [fp, #8]
	push	{r1}
#78 End VARIABLE z, depth difference: 0, stack offset: 8
	pop	{r0}
#79 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#80 Leaving FUNCTION (func1) with depth 2
#81 Starting FUNCTION (func2) with depth 2
_func2:
	push	{lr}
	push	{fp}
	mov	fp, sp
#82 Starting DECLARATION: adding space on stack
	push	{r0}
#83 Ending DECLARATION
#84 Starting DECLARATION: adding space on stack
	push	{r0}
#85 Ending DECLARATION
#86 Starting DECLARATION: adding space on stack
	push	{r0}
#87 Ending DECLARATION
#88 Starting DECLARATION: adding space on stack
	push	{r0}
#89 Ending DECLARATION
#90 Starting DECLARATION: adding space on stack
	push	{r0}
#91 Ending DECLARATION
#92 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#93 Starting VARIABLE
	ldr	r1, [fp, #24]
	push	{r1}
#94 End VARIABLE x, depth difference: 0, stack offset: 24
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#95 Starting VARIABLE
	ldr	r1, [fp, #20]
	push	{r1}
#96 End VARIABLE y, depth difference: 0, stack offset: 20
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#97 Starting VARIABLE
	ldr	r1, [fp, #16]
	push	{r1}
#98 End VARIABLE z, depth difference: 0, stack offset: 16
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#99 Starting VARIABLE
	ldr	r1, [fp, #12]
	push	{r1}
#100 End VARIABLE w, depth difference: 0, stack offset: 12
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#101 Starting VARIABLE
	ldr	r1, [fp, #8]
	push	{r1}
#102 End VARIABLE ae, depth difference: 0, stack offset: 8
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#103 Ending PRINT_STATEMENT
#104 Starting RETURN_STATEMENT
#105 Starting VARIABLE
	ldr	r1, [fp, #16]
	push	{r1}
#106 End VARIABLE z, depth difference: 0, stack offset: 16
	pop	{r0}
#107 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#108 Leaving FUNCTION (func2) with depth 2
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
#109 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
