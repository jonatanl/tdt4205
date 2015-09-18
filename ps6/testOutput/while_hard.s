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
#5 Starting CONSTANT
	movw	r0, #:lower16:4
	movt	r0, #:upper16:4
	push	{r0}
#6 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#7 End ASSIGNMENT_STATEMENT
#8 Starting WHILE_STATEMENT
while_start_label_0:
#9 Starting EXPRESSION of type >
#10 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#11 End VARIABLE a, depth difference: 0, stack offset: -4
#12 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#13 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#14 Ending EXPRESSION of type >
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	while_end_label_0
#15 Starting DECLARATION: adding space on stack
	push	{r0}
#16 Ending DECLARATION
#17 Starting ASSIGNMENT_STATEMENT
#18 Starting CONSTANT
	movw	r0, #:lower16:4
	movt	r0, #:upper16:4
	push	{r0}
#19 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#20 End ASSIGNMENT_STATEMENT
#21 Starting WHILE_STATEMENT
while_start_label_1:
#22 Starting EXPRESSION of type >
#23 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#24 End VARIABLE b, depth difference: 0, stack offset: -8
#25 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#26 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#27 Ending EXPRESSION of type >
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	while_end_label_1
#28 Starting DECLARATION: adding space on stack
	push	{r0}
#29 Ending DECLARATION
#30 Starting ASSIGNMENT_STATEMENT
#31 Starting EXPRESSION of type UMINUS
#32 Starting CONSTANT
	movw	r0, #:lower16:4
	movt	r0, #:upper16:4
	push	{r0}
#33 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#34 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#35 End ASSIGNMENT_STATEMENT
#36 Starting WHILE_STATEMENT
while_start_label_2:
#37 Starting EXPRESSION of type <
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#39 End VARIABLE c, depth difference: 0, stack offset: -12
#40 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#41 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movlt	 r1, #1
	movge	 r1, #0
	push	{r1}
#42 Ending EXPRESSION of type <
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	while_end_label_2
#43 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#44 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#45 End VARIABLE a, depth difference: 0, stack offset: -4
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#46 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#47 End VARIABLE b, depth difference: 0, stack offset: -8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#48 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#49 End VARIABLE c, depth difference: 0, stack offset: -12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#50 Starting EXPRESSION of type *
#51 Starting EXPRESSION of type *
#52 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#53 End VARIABLE a, depth difference: 0, stack offset: -4
#54 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#55 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#56 Ending EXPRESSION of type *
#57 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#58 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#59 Ending EXPRESSION of type *
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#60 Ending PRINT_STATEMENT
#61 Starting ASSIGNMENT_STATEMENT
#62 Starting EXPRESSION of type +
#63 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#64 End VARIABLE c, depth difference: 0, stack offset: -12
#65 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#66 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#67 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#68 End ASSIGNMENT_STATEMENT
	b	while_start_label_2
while_end_label_2:
#69 End WHILE_STATEMENT
#70 Starting ASSIGNMENT_STATEMENT
#71 Starting EXPRESSION of type -
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#73 End VARIABLE b, depth difference: 0, stack offset: -8
#74 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#75 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#76 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#77 End ASSIGNMENT_STATEMENT
	b	while_start_label_1
while_end_label_1:
#78 End WHILE_STATEMENT
#79 Starting ASSIGNMENT_STATEMENT
#80 Starting EXPRESSION of type -
#81 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#82 End VARIABLE a, depth difference: 0, stack offset: -4
#83 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#84 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#85 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#86 End ASSIGNMENT_STATEMENT
	b	while_start_label_0
while_end_label_0:
#87 End WHILE_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#88 Leaving FUNCTION (main) with depth 2
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
#89 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
