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
.STRING0: .ascii "The square root of"
.ascii "\000"
.STRING1: .ascii "is"
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (newton) with depth 2
_newton:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting DECLARATION: adding space on stack
	push	{r0}
#3 Ending DECLARATION
#4 Starting ASSIGNMENT_STATEMENT
#5 Starting EXPRESSION of type FUNC_CALL
#6 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#7 End VARIABLE n, depth difference: 0, stack offset: 8
#8 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#9 End CONSTANT
	bl	_improve
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#10 Ending EXPRESSION of type (null)
#11 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#12 End ASSIGNMENT_STATEMENT
#13 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#14 Starting CONSTANT
	movw	r0, #:lower16:.STRING0
	movt	r0, #:upper16:.STRING0
	push	{r0}
#15 End CONSTANT
	pop	{r0}
	bl	printf
#16 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#17 End VARIABLE n, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#18 Starting CONSTANT
	movw	r0, #:lower16:.STRING1
	movt	r0, #:upper16:.STRING1
	push	{r0}
#19 End CONSTANT
	pop	{r0}
	bl	printf
#20 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#21 End VARIABLE square_root, depth difference: 0, stack offset: -4
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#22 Ending PRINT_STATEMENT
#23 Starting RETURN_STATEMENT
#24 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#25 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#26 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#27 Leaving FUNCTION (newton) with depth 2
#28 Starting FUNCTION (improve) with depth 2
_improve:
	push	{lr}
	push	{fp}
	mov	fp, sp
#29 Starting DECLARATION: adding space on stack
	push	{r0}
#30 Ending DECLARATION
#31 Starting ASSIGNMENT_STATEMENT
#32 Starting EXPRESSION of type -
#33 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#34 End VARIABLE estimate, depth difference: 0, stack offset: 8
#35 Starting EXPRESSION of type /
#36 Starting EXPRESSION of type -
#37 Starting EXPRESSION of type *
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#39 End VARIABLE estimate, depth difference: 0, stack offset: 8
#40 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#41 End VARIABLE estimate, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#42 Ending EXPRESSION of type *
#43 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#44 End VARIABLE n, depth difference: 0, stack offset: 12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#45 Ending EXPRESSION of type -
#46 Starting EXPRESSION of type *
#47 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#48 End CONSTANT
#49 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#50 End VARIABLE estimate, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#51 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#52 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#53 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#54 End ASSIGNMENT_STATEMENT
#55 Starting IF_STATEMENT'
#56 Starting EXPRESSION of type -
#57 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#58 End VARIABLE next, depth difference: 0, stack offset: -4
#59 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#60 End VARIABLE estimate, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#61 Ending EXPRESSION of type -
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_0
#62 Starting RETURN_STATEMENT
#63 Starting EXPRESSION of type FUNC_CALL
#64 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#65 End VARIABLE n, depth difference: 0, stack offset: 12
#66 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#67 End VARIABLE next, depth difference: 0, stack offset: -4
	bl	_improve
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#68 Ending EXPRESSION of type (null)
#69 Ending EXPRESSION of type FUNC_CALL
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#70 End RETURN_STATEMENT
	b	if_end_label_0
if_else_label_0:
#71 Starting RETURN_STATEMENT
#72 Starting EXPRESSION of type -
#73 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#74 End VARIABLE next, depth difference: 0, stack offset: -4
#75 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#76 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#77 Ending EXPRESSION of type -
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
#80 Leaving FUNCTION (improve) with depth 2
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
	bl	_newton
#81 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
