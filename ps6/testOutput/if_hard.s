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
.STRING0: .ascii "A is different from 10"
.ascii "\000"
.STRING1: .ascii "B is different from -15"
.ascii "\000"
.STRING2: .ascii "B equals -15"
.ascii "\000"
.STRING3: .ascii "This never happens..."
.ascii "\000"
.STRING4: .ascii "a >0, b > 0"
.ascii "\000"
.STRING5: .ascii "a > 0, b <= 0"
.ascii "\000"
.STRING6: .ascii "a <= 0, b > 0"
.ascii "\000"
.STRING7: .ascii "a <= 0, b <= 0"
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (while_test) with depth 2
_while_test:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting DECLARATION: adding space on stack
	push	{r0}
#3 Ending DECLARATION
#4 Starting DECLARATION: adding space on stack
	push	{r0}
#5 Ending DECLARATION
#6 Starting ASSIGNMENT_STATEMENT
#7 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#8 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#9 End ASSIGNMENT_STATEMENT
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting EXPRESSION of type UMINUS
#12 Starting CONSTANT
	movw	r0, #:lower16:15
	movt	r0, #:upper16:15
	push	{r0}
#13 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#14 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#15 End ASSIGNMENT_STATEMENT
#16 Starting IF_STATEMENT'
#17 Starting EXPRESSION of type !=
#18 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#19 End VARIABLE a, depth difference: 0, stack offset: -4
#20 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#21 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#22 Ending EXPRESSION of type !=
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_0
#23 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#24 Starting CONSTANT
	movw	r0, #:lower16:.STRING0
	movt	r0, #:upper16:.STRING0
	push	{r0}
#25 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#26 Ending PRINT_STATEMENT
if_end_label_0:
#27 End IF_STATEMENT
#28 Starting IF_STATEMENT'
#29 Starting EXPRESSION of type >=
#30 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#31 End VARIABLE a, depth difference: 0, stack offset: -4
#32 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#33 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movge	 r1, #1
	movlt	 r1, #0
	push	{r1}
#34 Ending EXPRESSION of type >=
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_1
#35 Starting IF_STATEMENT'
#36 Starting EXPRESSION of type !=
#37 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#38 End VARIABLE b, depth difference: 0, stack offset: -8
#39 Starting EXPRESSION of type UMINUS
#40 Starting CONSTANT
	movw	r0, #:lower16:15
	movt	r0, #:upper16:15
	push	{r0}
#41 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#42 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#43 Ending EXPRESSION of type !=
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_2
#44 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#45 Starting CONSTANT
	movw	r0, #:lower16:.STRING1
	movt	r0, #:upper16:.STRING1
	push	{r0}
#46 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#47 Ending PRINT_STATEMENT
	b	if_end_label_2
if_else_label_2:
#48 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#49 Starting CONSTANT
	movw	r0, #:lower16:.STRING2
	movt	r0, #:upper16:.STRING2
	push	{r0}
#50 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#51 Ending PRINT_STATEMENT
if_end_label_2:
#52 End IF_STATEMENT
	b	if_end_label_1
if_else_label_1:
#53 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#54 Starting CONSTANT
	movw	r0, #:lower16:.STRING3
	movt	r0, #:upper16:.STRING3
	push	{r0}
#55 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#56 Ending PRINT_STATEMENT
if_end_label_1:
#57 End IF_STATEMENT
#58 Starting IF_STATEMENT'
#59 Starting EXPRESSION of type >
#60 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#61 End VARIABLE a, depth difference: 0, stack offset: -4
#62 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#63 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#64 Ending EXPRESSION of type >
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_3
#65 Starting IF_STATEMENT'
#66 Starting EXPRESSION of type >
#67 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#68 End VARIABLE b, depth difference: 0, stack offset: -8
#69 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#70 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#71 Ending EXPRESSION of type >
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_4
#72 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#73 Starting CONSTANT
	movw	r0, #:lower16:.STRING4
	movt	r0, #:upper16:.STRING4
	push	{r0}
#74 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#75 Ending PRINT_STATEMENT
	b	if_end_label_4
if_else_label_4:
#76 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#77 Starting CONSTANT
	movw	r0, #:lower16:.STRING5
	movt	r0, #:upper16:.STRING5
	push	{r0}
#78 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#79 Ending PRINT_STATEMENT
if_end_label_4:
#80 End IF_STATEMENT
	b	if_end_label_3
if_else_label_3:
#81 Starting IF_STATEMENT'
#82 Starting EXPRESSION of type >
#83 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#84 End VARIABLE b, depth difference: 0, stack offset: -8
#85 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#86 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#87 Ending EXPRESSION of type >
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_5
#88 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#89 Starting CONSTANT
	movw	r0, #:lower16:.STRING6
	movt	r0, #:upper16:.STRING6
	push	{r0}
#90 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#91 Ending PRINT_STATEMENT
	b	if_end_label_5
if_else_label_5:
#92 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#93 Starting CONSTANT
	movw	r0, #:lower16:.STRING7
	movt	r0, #:upper16:.STRING7
	push	{r0}
#94 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#95 Ending PRINT_STATEMENT
if_end_label_5:
#96 End IF_STATEMENT
if_end_label_3:
#97 End IF_STATEMENT
#98 Starting RETURN_STATEMENT
#99 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#100 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#101 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#102 Leaving FUNCTION (while_test) with depth 2
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
	bl	_while_test
#103 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
