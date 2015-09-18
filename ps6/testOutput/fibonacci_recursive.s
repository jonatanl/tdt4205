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
.STRING0: .ascii "The"
.ascii "\000"
.STRING1: .ascii "th fibonacci number is"
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (fibonacci_recursive) with depth 2
_fibonacci_recursive:
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
	bl	_fibonacci_number
	add	sp, sp, $4
	push	{r0}
#8 Ending EXPRESSION of type (null)
#9 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#10 End ASSIGNMENT_STATEMENT
#11 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#12 Starting CONSTANT
	movw	r0, #:lower16:.STRING0
	movt	r0, #:upper16:.STRING0
	push	{r0}
#13 End CONSTANT
	pop	{r0}
	bl	printf
#14 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#15 End VARIABLE n, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#16 Starting CONSTANT
	movw	r0, #:lower16:.STRING1
	movt	r0, #:upper16:.STRING1
	push	{r0}
#17 End CONSTANT
	pop	{r0}
	bl	printf
#18 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#19 End VARIABLE f, depth difference: 0, stack offset: -4
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#20 Ending PRINT_STATEMENT
#21 Starting RETURN_STATEMENT
#22 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#23 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#24 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#25 Leaving FUNCTION (fibonacci_recursive) with depth 2
#26 Starting FUNCTION (fibonacci_number) with depth 2
_fibonacci_number:
	push	{lr}
	push	{fp}
	mov	fp, sp
#27 Starting DECLARATION: adding space on stack
	push	{r0}
#28 Ending DECLARATION
#29 Starting ASSIGNMENT_STATEMENT
#30 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#31 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#32 End ASSIGNMENT_STATEMENT
#33 Starting IF_STATEMENT'
#34 Starting EXPRESSION of type -
#35 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#36 End VARIABLE n, depth difference: 0, stack offset: 8
#37 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#38 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#39 Ending EXPRESSION of type -
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_0
#40 Starting IF_STATEMENT'
#41 Starting EXPRESSION of type -
#42 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#43 End VARIABLE n, depth difference: 0, stack offset: 8
#44 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#45 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#46 Ending EXPRESSION of type -
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_1
#47 Starting ASSIGNMENT_STATEMENT
#48 Starting EXPRESSION of type +
#49 Starting EXPRESSION of type FUNC_CALL
#50 Starting EXPRESSION of type -
#51 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#52 End VARIABLE n, depth difference: 0, stack offset: 8
#53 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#54 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#55 Ending EXPRESSION of type -
	bl	_fibonacci_number
	add	sp, sp, $4
	push	{r0}
#56 Ending EXPRESSION of type (null)
#57 Ending EXPRESSION of type FUNC_CALL
#58 Starting EXPRESSION of type FUNC_CALL
#59 Starting EXPRESSION of type -
#60 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#61 End VARIABLE n, depth difference: 0, stack offset: 8
#62 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#63 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#64 Ending EXPRESSION of type -
	bl	_fibonacci_number
	add	sp, sp, $4
	push	{r0}
#65 Ending EXPRESSION of type (null)
#66 Ending EXPRESSION of type FUNC_CALL
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#67 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#68 End ASSIGNMENT_STATEMENT
if_end_label_1:
#69 End IF_STATEMENT
if_end_label_0:
#70 End IF_STATEMENT
#71 Starting RETURN_STATEMENT
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#73 End VARIABLE y, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#74 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#75 Leaving FUNCTION (fibonacci_number) with depth 2
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
	bl	_fibonacci_recursive
#76 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
