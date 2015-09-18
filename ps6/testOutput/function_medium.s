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
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#12 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#13 End ASSIGNMENT_STATEMENT
#14 Starting ASSIGNMENT_STATEMENT
#15 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#16 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#17 End ASSIGNMENT_STATEMENT
#18 Starting ASSIGNMENT_STATEMENT
#19 Starting EXPRESSION of type FUNC_CALL
#20 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#21 End VARIABLE b, depth difference: 0, stack offset: -8
#22 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#23 End VARIABLE d, depth difference: 0, stack offset: -16
#24 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#25 End CONSTANT
#26 Starting EXPRESSION of type +
#27 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#28 End CONSTANT
#29 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#30 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#31 Ending EXPRESSION of type +
	bl	_func1
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#32 Ending EXPRESSION of type (null)
#33 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#34 End ASSIGNMENT_STATEMENT
#35 Starting ASSIGNMENT_STATEMENT
#36 Starting EXPRESSION of type FUNC_CALL
#37 Starting EXPRESSION of type &&
#38 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#39 End CONSTANT
#40 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#41 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#42 Ending EXPRESSION of type &&
#43 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#44 End VARIABLE b, depth difference: 0, stack offset: -8
#45 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#46 End VARIABLE d, depth difference: 0, stack offset: -16
#47 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#48 End CONSTANT
#49 Starting CONSTANT
	movw	r0, #:lower16:11
	movt	r0, #:upper16:11
	push	{r0}
#50 End CONSTANT
#51 Starting CONSTANT
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
#52 End CONSTANT
	bl	_func2
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#53 Ending EXPRESSION of type (null)
#54 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#55 End ASSIGNMENT_STATEMENT
#56 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#57 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#58 End VARIABLE a, depth difference: 0, stack offset: -4
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#59 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#60 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#61 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#62 Leaving FUNCTION (main) with depth 2
#63 Starting FUNCTION (func1) with depth 2
_func1:
	push	{lr}
	push	{fp}
	mov	fp, sp
#64 Starting IF_STATEMENT'
#65 Starting EXPRESSION of type &&
#66 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#67 End VARIABLE b, depth difference: 0, stack offset: 16
#68 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#69 End VARIABLE c, depth difference: 0, stack offset: 12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#70 Ending EXPRESSION of type &&
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_0
#71 Starting RETURN_STATEMENT
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#73 End VARIABLE a, depth difference: 0, stack offset: 20
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#74 End RETURN_STATEMENT
	b	if_end_label_0
if_else_label_0:
#75 Starting RETURN_STATEMENT
#76 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#77 End VARIABLE d, depth difference: 0, stack offset: 8
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#78 End RETURN_STATEMENT
if_end_label_0:
#79 End IF_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#80 Leaving FUNCTION (func1) with depth 2
#81 Starting FUNCTION (func2) with depth 2
_func2:
	push	{lr}
	push	{fp}
	mov	fp, sp
#82 Starting RETURN_STATEMENT
#83 Starting EXPRESSION of type ||
#84 Starting EXPRESSION of type ||
#85 Starting EXPRESSION of type &&
#86 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #28]
	pop	{fp}
	push	{r0}
#87 End VARIABLE a, depth difference: 0, stack offset: 28
#88 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #20]
	pop	{fp}
	push	{r0}
#89 End VARIABLE c, depth difference: 0, stack offset: 20
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#90 Ending EXPRESSION of type &&
#91 Starting EXPRESSION of type >
#92 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #24]
	pop	{fp}
	push	{r0}
#93 End VARIABLE b, depth difference: 0, stack offset: 24
#94 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#95 End VARIABLE d, depth difference: 0, stack offset: 16
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#96 Ending EXPRESSION of type >
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#97 Ending EXPRESSION of type ||
#98 Starting EXPRESSION of type >
#99 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#100 End VARIABLE e, depth difference: 0, stack offset: 12
#101 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#102 End VARIABLE f, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#103 Ending EXPRESSION of type >
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#104 Ending EXPRESSION of type ||
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#105 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#106 Leaving FUNCTION (func2) with depth 2
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
#107 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
