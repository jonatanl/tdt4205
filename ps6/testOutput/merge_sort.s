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
	movw	r0, #:lower16:400
	movt	r0, #:upper16:400
	push	{r0}
	bl	_malloc
	pop	{r1}
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
#10 Starting FOR_STATEMENT
#11 End FOR_STATEMENT
#12 Starting EXPRESSION of type FUNC_CALL
#13 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#14 End VARIABLE a, depth difference: 0, stack offset: -4
#15 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#16 End CONSTANT
#17 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#18 End CONSTANT
	bl	_merge_sort
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#19 Ending EXPRESSION of type (null)
#20 Ending EXPRESSION of type FUNC_CALL
#21 Starting FOR_STATEMENT
#22 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#23 Leaving FUNCTION (main) with depth 2
#24 Starting FUNCTION (merge_sort) with depth 2
_merge_sort:
	push	{lr}
	push	{fp}
	mov	fp, sp
#25 Starting IF_STATEMENT'
#26 Starting EXPRESSION of type <=
#27 Starting EXPRESSION of type -
#28 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#29 End VARIABLE end, depth difference: 0, stack offset: 8
#30 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#31 End VARIABLE start, depth difference: 0, stack offset: 12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#32 Ending EXPRESSION of type -
#33 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#34 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movle	 r1, #1
	movgt	 r1, #0
	push	{r1}
#35 Ending EXPRESSION of type <=
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_0
#36 Starting RETURN_STATEMENT
#37 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#38 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#39 End RETURN_STATEMENT
	b	if_end_label_0
if_else_label_0:
#40 Starting DECLARATION: adding space on stack
	push	{r0}
#41 Ending DECLARATION
#42 Starting ASSIGNMENT_STATEMENT
#43 Starting EXPRESSION of type +
#44 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#45 End VARIABLE start, depth difference: 0, stack offset: 12
#46 Starting EXPRESSION of type /
#47 Starting EXPRESSION of type -
#48 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#49 End VARIABLE end, depth difference: 0, stack offset: 8
#50 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#51 End VARIABLE start, depth difference: 0, stack offset: 12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#52 Ending EXPRESSION of type -
#53 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#54 End CONSTANT
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#55 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#56 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#57 End ASSIGNMENT_STATEMENT
#58 Starting EXPRESSION of type FUNC_CALL
#59 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#60 End VARIABLE a, depth difference: 0, stack offset: 16
#61 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#62 End VARIABLE start, depth difference: 0, stack offset: 12
#63 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#64 End VARIABLE middle, depth difference: 0, stack offset: -4
	bl	_merge_sort
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#65 Ending EXPRESSION of type (null)
#66 Ending EXPRESSION of type FUNC_CALL
#67 Starting EXPRESSION of type FUNC_CALL
#68 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#69 End VARIABLE a, depth difference: 0, stack offset: 16
#70 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#71 End VARIABLE middle, depth difference: 0, stack offset: -4
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#73 End VARIABLE end, depth difference: 0, stack offset: 8
	bl	_merge_sort
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#74 Ending EXPRESSION of type (null)
#75 Ending EXPRESSION of type FUNC_CALL
#76 Starting EXPRESSION of type FUNC_CALL
#77 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#78 End VARIABLE a, depth difference: 0, stack offset: 16
#79 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#80 End VARIABLE start, depth difference: 0, stack offset: 12
#81 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#82 End VARIABLE middle, depth difference: 0, stack offset: -4
#83 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#84 End VARIABLE end, depth difference: 0, stack offset: 8
	bl	_merge
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
#85 Ending EXPRESSION of type (null)
#86 Ending EXPRESSION of type FUNC_CALL
if_end_label_0:
#87 End IF_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#88 Leaving FUNCTION (merge_sort) with depth 2
#89 Starting FUNCTION (merge) with depth 2
_merge:
	push	{lr}
	push	{fp}
	mov	fp, sp
#90 Starting DECLARATION: adding space on stack
	push	{r0}
#91 Ending DECLARATION
#92 Starting ASSIGNMENT_STATEMENT
#93 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:400
	movt	r0, #:upper16:400
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
#94 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#95 End ASSIGNMENT_STATEMENT
#96 Starting DECLARATION: adding space on stack
	push	{r0}
#97 Ending DECLARATION
#98 Starting DECLARATION: adding space on stack
	push	{r0}
#99 Ending DECLARATION
#100 Starting ASSIGNMENT_STATEMENT
#101 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#102 End VARIABLE start, depth difference: 0, stack offset: 16
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#103 End ASSIGNMENT_STATEMENT
#104 Starting ASSIGNMENT_STATEMENT
#105 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#106 End VARIABLE middle, depth difference: 0, stack offset: 12
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#107 End ASSIGNMENT_STATEMENT
#108 Starting DECLARATION: adding space on stack
	push	{r0}
#109 Ending DECLARATION
#110 Starting FOR_STATEMENT
#111 End FOR_STATEMENT
#112 Starting DECLARATION: adding space on stack
	push	{r0}
#113 Ending DECLARATION
#114 Starting FOR_STATEMENT
#115 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#116 Leaving FUNCTION (merge) with depth 2
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
#117 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
