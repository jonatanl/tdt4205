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
.STRING0: .ascii "Fibonacci number #"
.ascii "\000"
.STRING1: .ascii "is "
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (fibonacci_iterative) with depth 2
_fibonacci_iterative:
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
#8 Starting ASSIGNMENT_STATEMENT
#9 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#10 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#11 End ASSIGNMENT_STATEMENT
#12 Starting ASSIGNMENT_STATEMENT
#13 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#14 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#15 End ASSIGNMENT_STATEMENT
#16 Starting ASSIGNMENT_STATEMENT
#17 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#18 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#19 End ASSIGNMENT_STATEMENT
#20 Starting IF_STATEMENT'
#21 Starting EXPRESSION of type >=
#22 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#23 End VARIABLE n, depth difference: 0, stack offset: 8
#24 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#25 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movge	 r1, #1
	movlt	 r1, #0
	push	{r1}
#26 Ending EXPRESSION of type >=
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_0
#27 Starting DECLARATION: adding space on stack
	push	{r0}
#28 Ending DECLARATION
#29 Starting ASSIGNMENT_STATEMENT
#30 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#31 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#32 End ASSIGNMENT_STATEMENT
#33 Starting WHILE_STATEMENT
while_start_label_0:
#34 Starting EXPRESSION of type <
#35 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#36 End VARIABLE i, depth difference: 0, stack offset: -16
#37 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#38 End VARIABLE n, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movlt	 r1, #1
	movge	 r1, #0
	push	{r1}
#39 Ending EXPRESSION of type <
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	while_end_label_0
#40 Starting ASSIGNMENT_STATEMENT
#41 Starting EXPRESSION of type +
#42 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#43 End VARIABLE x, depth difference: 0, stack offset: -4
#44 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#45 End VARIABLE y, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#46 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#47 End ASSIGNMENT_STATEMENT
#48 Starting ASSIGNMENT_STATEMENT
#49 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#50 End VARIABLE y, depth difference: 0, stack offset: -8
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#51 End ASSIGNMENT_STATEMENT
#52 Starting ASSIGNMENT_STATEMENT
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#54 End VARIABLE f, depth difference: 0, stack offset: -12
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#55 End ASSIGNMENT_STATEMENT
#56 Starting ASSIGNMENT_STATEMENT
#57 Starting EXPRESSION of type +
#58 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#59 End VARIABLE i, depth difference: 0, stack offset: -16
#60 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#61 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#62 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#63 End ASSIGNMENT_STATEMENT
	b	while_start_label_0
while_end_label_0:
#64 End WHILE_STATEMENT
if_end_label_0:
#65 End IF_STATEMENT
#66 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#67 Starting CONSTANT
	movw	r0, #:lower16:.STRING0
	movt	r0, #:upper16:.STRING0
	push	{r0}
#68 End CONSTANT
	pop	{r0}
	bl	printf
#69 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#70 End VARIABLE n, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#71 Starting CONSTANT
	movw	r0, #:lower16:.STRING1
	movt	r0, #:upper16:.STRING1
	push	{r0}
#72 End CONSTANT
	pop	{r0}
	bl	printf
#73 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#74 End VARIABLE f, depth difference: 0, stack offset: -12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#75 Ending PRINT_STATEMENT
#76 Starting RETURN_STATEMENT
#77 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#78 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#79 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#80 Leaving FUNCTION (fibonacci_iterative) with depth 2
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
	bl	_fibonacci_iterative
#81 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
