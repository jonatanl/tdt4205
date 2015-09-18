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
.STRING0: .ascii "t is "
.ascii "\000"
.STRING1: .ascii "This never executes"
.ascii "\000"
.globl main
.align	2
.text
#0 Starting PROGRAM
#1 Starting FUNCTION (main) with depth 2
_main:
	push	{lr}
	push	{fp}
	mov	fp, sp
#2 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#3 Starting CONSTANT
	movw	r0, #:lower16:.STRING0
	movt	r0, #:upper16:.STRING0
	push	{r0}
#4 End CONSTANT
	pop	{r0}
	bl	printf
#5 Starting EXPRESSION of type FUNC_CALL
#6 Starting CONSTANT
	movw	r0, #:lower16:64
	movt	r0, #:upper16:64
	push	{r0}
#7 End CONSTANT
	bl	_test
	add	sp, sp, $4
	push	{r0}
#8 Ending EXPRESSION of type (null)
#9 Ending EXPRESSION of type FUNC_CALL
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#10 Ending PRINT_STATEMENT
#11 Starting RETURN_STATEMENT
#12 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#13 End CONSTANT
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#14 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#15 Leaving FUNCTION (main) with depth 2
#16 Starting FUNCTION (test) with depth 2
_test:
	push	{lr}
	push	{fp}
	mov	fp, sp
#17 Starting DECLARATION: adding space on stack
	push	{r0}
#18 Ending DECLARATION
#19 Starting DECLARATION: adding space on stack
	push	{r0}
#20 Ending DECLARATION
#21 Starting ASSIGNMENT_STATEMENT
#22 Starting CONSTANT
	movw	r0, #:lower16:32
	movt	r0, #:upper16:32
	push	{r0}
#23 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#24 End ASSIGNMENT_STATEMENT
#25 Starting ASSIGNMENT_STATEMENT
#26 Starting CONSTANT
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
#27 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#28 End ASSIGNMENT_STATEMENT
#29 Starting IF_STATEMENT'
#30 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#31 End CONSTANT
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_0
#32 Starting RETURN_STATEMENT
#33 Starting EXPRESSION of type +
#34 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#35 End VARIABLE x, depth difference: 0, stack offset: -4
#36 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#37 End VARIABLE y, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#38 Ending EXPRESSION of type +
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#39 End RETURN_STATEMENT
if_end_label_0:
#40 End IF_STATEMENT
#41 Starting IF_STATEMENT'
#42 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#43 End CONSTANT
	pop	{r1}
	mov	r2, #0
	cmp	r1,r2
	beq	if_end_label_1
#44 Starting DECLARATION: adding space on stack
	push	{r0}
#45 Ending DECLARATION
#46 Starting ASSIGNMENT_STATEMENT
#47 Starting CONSTANT
	movw	r0, #:lower16:64
	movt	r0, #:upper16:64
	push	{r0}
#48 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#49 End ASSIGNMENT_STATEMENT
#50 Starting RETURN_STATEMENT
#51 Starting EXPRESSION of type +
#52 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#53 End VARIABLE z, depth difference: 0, stack offset: -12
#54 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#55 End VARIABLE a, depth difference: 0, stack offset: 8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#56 Ending EXPRESSION of type +
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#57 End RETURN_STATEMENT
#58 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#59 Starting CONSTANT
	movw	r0, #:lower16:.STRING1
	movt	r0, #:upper16:.STRING1
	push	{r0}
#60 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#61 Ending PRINT_STATEMENT
#62 Starting RETURN_STATEMENT
#63 Starting EXPRESSION of type UMINUS
#64 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#65 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#66 Ending EXPRESSION of type UMINUS
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#67 End RETURN_STATEMENT
if_end_label_1:
#68 End IF_STATEMENT
#69 Starting RETURN_STATEMENT
#70 Starting EXPRESSION of type UMINUS
#71 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#72 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#73 Ending EXPRESSION of type UMINUS
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#74 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#75 Leaving FUNCTION (test) with depth 2
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
#76 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
