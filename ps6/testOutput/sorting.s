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
#6 Starting ASSIGNMENT_STATEMENT
#7 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:40
	movt	r0, #:upper16:40
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
#8 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#9 End ASSIGNMENT_STATEMENT
#10 Starting DECLARATION: adding space on stack
	push	{r0}
#11 Ending DECLARATION
#12 Starting FOR_STATEMENT
#13 End FOR_STATEMENT
#14 Starting ASSIGNMENT_STATEMENT
#15 Starting EXPRESSION of type FUNC_CALL
#16 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#17 End VARIABLE a, depth difference: 0, stack offset: -4
	bl	_sort
	add	sp, sp, $4
	push	{r0}
#18 Ending EXPRESSION of type (null)
#19 Ending EXPRESSION of type FUNC_CALL
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#20 End ASSIGNMENT_STATEMENT
#21 Starting FOR_STATEMENT
#22 End FOR_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#23 Leaving FUNCTION (main) with depth 2
#24 Starting FUNCTION (sort) with depth 2
_sort:
	push	{lr}
	push	{fp}
	mov	fp, sp
#25 Starting DECLARATION: adding space on stack
	push	{r0}
#26 Ending DECLARATION
#27 Starting DECLARATION: adding space on stack
	push	{r0}
#28 Ending DECLARATION
#29 Starting DECLARATION: adding space on stack
	push	{r0}
#30 Ending DECLARATION
#31 Starting FOR_STATEMENT
#32 End FOR_STATEMENT
#33 Starting RETURN_STATEMENT
#34 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #8]
	pop	{fp}
	push	{r0}
#35 End VARIABLE a, depth difference: 0, stack offset: 8
	pop	{r0}
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#36 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#37 Leaving FUNCTION (sort) with depth 2
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
#38 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
