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
.STRING0: .ascii "Greatest common divisor of"
.ascii "\000"
.STRING1: .ascii "and"
.ascii "\000"
.STRING2: .ascii "is"
.ascii "\000"
.STRING3: .ascii "and"
.ascii "\000"
.STRING4: .ascii "are relative primes"
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (euclid) with depth 2
_euclid:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting IF_STATEMENT'
#3 Starting EXPRESSION of type -
#4 Starting EXPRESSION of type FUNC_CALL
#5 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#6 End VARIABLE a, depth difference: 0, stack offset: 12
#7 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#8 End VARIABLE b, depth difference: 0, stack offset: 8
	bl	_gcd
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#9 Ending EXPRESSION of type (null)
#10 Ending EXPRESSION of type FUNC_CALL
#11 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#12 End CONSTANT
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#13 Ending EXPRESSION of type -
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_0
#14 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#15 Starting CONSTANT
	movw	r0, #:lower16:.STRING0
	movt	r0, #:upper16:.STRING0
	push	{r0}
#16 End CONSTANT
	pop	{r0}
	bl	printf
#17 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#18 End VARIABLE a, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#19 Starting CONSTANT
	movw	r0, #:lower16:.STRING1
	movt	r0, #:upper16:.STRING1
	push	{r0}
#20 End CONSTANT
	pop	{r0}
	bl	printf
#21 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#22 End VARIABLE b, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#23 Starting CONSTANT
	movw	r0, #:lower16:.STRING2
	movt	r0, #:upper16:.STRING2
	push	{r0}
#24 End CONSTANT
	pop	{r0}
	bl	printf
#25 Starting EXPRESSION of type FUNC_CALL
#26 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#27 End VARIABLE a, depth difference: 0, stack offset: 12
#28 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#29 End VARIABLE b, depth difference: 0, stack offset: 8
	bl	_gcd
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#30 Ending EXPRESSION of type (null)
#31 Ending EXPRESSION of type FUNC_CALL
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#32 Ending PRINT_STATEMENT
	b	if_end_label_0
if_else_label_0:
#33 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#34 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#35 End VARIABLE a, depth difference: 0, stack offset: 12
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#36 Starting CONSTANT
	movw	r0, #:lower16:.STRING3
	movt	r0, #:upper16:.STRING3
	push	{r0}
#37 End CONSTANT
	pop	{r0}
	bl	printf
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#39 End VARIABLE b, depth difference: 0, stack offset: 8
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#40 Starting CONSTANT
	movw	r0, #:lower16:.STRING4
	movt	r0, #:upper16:.STRING4
	push	{r0}
#41 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#42 Ending PRINT_STATEMENT
if_end_label_0:
#43 End IF_STATEMENT
#44 Starting RETURN_STATEMENT
#45 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#46 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#47 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#48 Leaving FUNCTION (euclid) with depth 2
#49 Starting FUNCTION (gcd) with depth 2
_gcd:
	push	{lr}
	push	{fp}
	mov	fp, sp
#50 Starting DECLARATION: adding space on stack
	push	{r0}
#51 Ending DECLARATION
#52 Starting IF_STATEMENT'
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#54 End VARIABLE b, depth difference: 0, stack offset: 8
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_else_label_1
#55 Starting ASSIGNMENT_STATEMENT
#56 Starting EXPRESSION of type FUNC_CALL
#57 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#58 End VARIABLE b, depth difference: 0, stack offset: 8
#59 Starting EXPRESSION of type -
#60 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#61 End VARIABLE a, depth difference: 0, stack offset: 12
#62 Starting EXPRESSION of type *
#63 Starting EXPRESSION of type /
#64 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#65 End VARIABLE a, depth difference: 0, stack offset: 12
#66 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#67 End VARIABLE b, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#68 Ending EXPRESSION of type /
#69 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#70 End VARIABLE b, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#71 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#72 Ending EXPRESSION of type -
	bl	_gcd
	add	sp, sp, $4
	add	sp, sp, $4
	push	{r0}
#73 Ending EXPRESSION of type (null)
#74 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#75 End ASSIGNMENT_STATEMENT
	b	if_end_label_1
if_else_label_1:
#76 Starting ASSIGNMENT_STATEMENT
#77 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #12]
	pop	{fp}
	push	{r0}
#78 End VARIABLE a, depth difference: 0, stack offset: 12
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#79 End ASSIGNMENT_STATEMENT
if_end_label_1:
#80 End IF_STATEMENT
#81 Starting RETURN_STATEMENT
#82 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#83 End VARIABLE g, depth difference: 0, stack offset: -4
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#84 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#85 Leaving FUNCTION (gcd) with depth 2
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
	bl	_euclid
#86 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
