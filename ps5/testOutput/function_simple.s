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
#7 Starting CONSTANT
	movw	r1, #:lower16:#5
	movt	r1, #:upper16:#5
	push	{r1}
#8 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-4]
#9 End ASSIGNMENT_STATEMENT
#10 Starting ASSIGNMENT_STATEMENT
#11 Starting EXPRESSION of type FUNC_CALL
#12 Starting VARIABLE
	ldr	r1, [fp, #-4]
	push	{r1}
#13 End VARIABLE a, depth difference: 0, stack offset: -4
	bl	_func
	push	{r0}
#14 Ending EXPRESSION of type FUNC_CALL
	pop	{r1}
	str	r1, [fp, #-8]
#15 End ASSIGNMENT_STATEMENT
#16 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#17 Starting VARIABLE
	ldr	r1, [fp, #-4]
	push	{r1}
#18 End VARIABLE a, depth difference: 0, stack offset: -4
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#19 Starting VARIABLE
	ldr	r1, [fp, #-8]
	push	{r1}
#20 End VARIABLE b, depth difference: 0, stack offset: -8
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#21 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#22 Leaving FUNCTION (main) with depth 2
#23 Starting FUNCTION (func) with depth 2
_func:
	push	{lr}
	push	{fp}
	mov	fp, sp
#24 Starting DECLARATION: adding space on stack
	push	{r0}
#25 Ending DECLARATION
#26 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#27 Starting VARIABLE
	ldr	r1, [fp, #8]
	push	{r1}
#28 End VARIABLE x, depth difference: 0, stack offset: 8
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#29 Ending PRINT_STATEMENT
#30 Starting RETURN_STATEMENT
#31 Starting EXPRESSION of type 
#32 Ending EXPRESSION of type 
	pop	{r0}
#33 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#34 Leaving FUNCTION (func) with depth 2
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
#35 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
