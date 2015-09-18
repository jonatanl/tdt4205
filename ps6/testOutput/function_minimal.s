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
.STRING0: .ascii "In main()"
.ascii "\000"
.STRING1: .ascii "In function()"
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
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#5 Ending PRINT_STATEMENT
#6 Starting EXPRESSION of type FUNC_CALL
	bl	_function
#7 Ending EXPRESSION of type (null)
#8 Ending EXPRESSION of type FUNC_CALL
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#9 Leaving FUNCTION (main) with depth 2
#10 Starting FUNCTION (function) with depth 2
_function:
	push	{lr}
	push	{fp}
	mov	fp, sp
#11 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#12 Starting CONSTANT
	movw	r0, #:lower16:.STRING1
	movt	r0, #:upper16:.STRING1
	push	{r0}
#13 End CONSTANT
	pop	{r0}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#14 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#15 Leaving FUNCTION (function) with depth 2
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
#16 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
