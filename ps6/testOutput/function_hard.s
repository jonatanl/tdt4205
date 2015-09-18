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
#8 Starting ASSIGNMENT_STATEMENT
#9 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
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
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
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
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#18 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#19 End ASSIGNMENT_STATEMENT
#20 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#21 Starting EXPRESSION of type FUNC_CALL
#22 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#23 End VARIABLE a, depth difference: 0, stack offset: -4
#24 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#25 End VARIABLE b, depth difference: 0, stack offset: -8
#26 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#27 End VARIABLE c, depth difference: 0, stack offset: -12
	bl	_func1
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#28 Ending EXPRESSION of type (null)
#29 Ending EXPRESSION of type FUNC_CALL
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#30 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#31 Leaving FUNCTION (main) with depth 2
#32 Starting FUNCTION (func1) with depth 2
_func1:
	push	{lr}
	push	{fp}
	mov	fp, sp
#33 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#34 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#35 End VARIABLE a, depth difference: 0, stack offset: 16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#36 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#37 End VARIABLE b, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#39 End VARIABLE c, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#40 Ending PRINT_STATEMENT
#41 Starting DECLARATION: adding space on stack
	push	{r0}
#42 Ending DECLARATION
#43 Starting ASSIGNMENT_STATEMENT
#44 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#45 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#46 End ASSIGNMENT_STATEMENT
#47 Starting IF_STATEMENT'
#48 Starting EXPRESSION of type >
#49 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#50 End VARIABLE a, depth difference: 0, stack offset: 16
#51 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#52 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#53 Ending EXPRESSION of type >
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_0
#54 Starting ASSIGNMENT_STATEMENT
#55 Starting EXPRESSION of type FUNC_CALL
#56 Starting EXPRESSION of type -
#57 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#58 End VARIABLE a, depth difference: 0, stack offset: 16
#59 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#60 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#61 Ending EXPRESSION of type -
#62 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#63 End VARIABLE b, depth difference: 0, stack offset: 12
#64 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#65 End VARIABLE c, depth difference: 0, stack offset: 8
	bl	_func2
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#66 Ending EXPRESSION of type (null)
#67 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#68 End ASSIGNMENT_STATEMENT
if_end_label_0:
#69 End IF_STATEMENT
#70 Starting RETURN_STATEMENT
#71 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#72 End VARIABLE d, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#73 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#74 Leaving FUNCTION (func1) with depth 2
#75 Starting FUNCTION (func2) with depth 2
_func2:
	push	{lr}
	push	{fp}
	mov	fp, sp
#76 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#77 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#78 End VARIABLE a, depth difference: 0, stack offset: 16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#79 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#80 End VARIABLE b, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#81 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#82 End VARIABLE c, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#83 Ending PRINT_STATEMENT
#84 Starting DECLARATION: adding space on stack
	push	{r0}
#85 Ending DECLARATION
#86 Starting ASSIGNMENT_STATEMENT
#87 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#88 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#89 End ASSIGNMENT_STATEMENT
#90 Starting IF_STATEMENT'
#91 Starting EXPRESSION of type >
#92 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#93 End VARIABLE b, depth difference: 0, stack offset: 12
#94 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#95 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#96 Ending EXPRESSION of type >
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_1
#97 Starting ASSIGNMENT_STATEMENT
#98 Starting EXPRESSION of type FUNC_CALL
#99 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#100 End VARIABLE a, depth difference: 0, stack offset: 16
#101 Starting EXPRESSION of type -
#102 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#103 End VARIABLE b, depth difference: 0, stack offset: 12
#104 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#105 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#106 Ending EXPRESSION of type -
#107 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#108 End VARIABLE c, depth difference: 0, stack offset: 8
	bl	_func3
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#109 Ending EXPRESSION of type (null)
#110 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#111 End ASSIGNMENT_STATEMENT
if_end_label_1:
#112 End IF_STATEMENT
#113 Starting RETURN_STATEMENT
#114 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#115 End VARIABLE d, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#116 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#117 Leaving FUNCTION (func2) with depth 2
#118 Starting FUNCTION (func3) with depth 2
_func3:
	push	{lr}
	push	{fp}
	mov	fp, sp
#119 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#120 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#121 End VARIABLE a, depth difference: 0, stack offset: 16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#122 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#123 End VARIABLE b, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#124 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#125 End VARIABLE c, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#126 Ending PRINT_STATEMENT
#127 Starting DECLARATION: adding space on stack
	push	{r0}
#128 Ending DECLARATION
#129 Starting ASSIGNMENT_STATEMENT
#130 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#131 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#132 End ASSIGNMENT_STATEMENT
#133 Starting IF_STATEMENT'
#134 Starting EXPRESSION of type >
#135 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#136 End VARIABLE c, depth difference: 0, stack offset: 8
#137 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#138 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#139 Ending EXPRESSION of type >
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_2
#140 Starting ASSIGNMENT_STATEMENT
#141 Starting EXPRESSION of type FUNC_CALL
#142 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #16]
	pop	{fp}
	push	{r0}
#143 End VARIABLE a, depth difference: 0, stack offset: 16
#144 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#145 End VARIABLE b, depth difference: 0, stack offset: 12
#146 Starting EXPRESSION of type -
#147 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#148 End VARIABLE c, depth difference: 0, stack offset: 8
#149 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#150 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#151 Ending EXPRESSION of type -
	bl	_func1
	add	sp, sp, $4
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#152 Ending EXPRESSION of type (null)
#153 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#154 End ASSIGNMENT_STATEMENT
if_end_label_2:
#155 End IF_STATEMENT
#156 Starting RETURN_STATEMENT
#157 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#158 End VARIABLE d, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#159 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#160 Leaving FUNCTION (func3) with depth 2
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
#161 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
