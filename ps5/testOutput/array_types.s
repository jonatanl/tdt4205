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
#9 Starting EXPRESSION of type NEW
	movw	10 Ending EXPRESSION of type NEW
, #:lower16:r1
	movt	10 Ending EXPRESSION of type NEW
, #:upper16:r1
	push	{r1}
	mov	lr, pc
	bl	_malloc
	push	{r0}
#10 Ending EXPRESSION of type NEW
	pop	{r1}
	str	r1, [fp, #-4]
#11 End ASSIGNMENT_STATEMENT
#12 Starting ASSIGNMENT_STATEMENT
#13 Starting EXPRESSION of type NEW
	movw	14 Ending EXPRESSION of type NEW
, #:lower16:r1
	movt	14 Ending EXPRESSION of type NEW
, #:upper16:r1
	push	{r1}
	mov	lr, pc
	bl	_malloc
	push	{r0}
#14 Ending EXPRESSION of type NEW
	pop	{r1}
	str	r1, [fp, #-12]
#15 End ASSIGNMENT_STATEMENT
#16 Starting ASSIGNMENT_STATEMENT
#17 Starting CONSTANT
	movw	r1, #:lower16:#42
	movt	r1, #:upper16:#42
	push	{r1}
#18 End CONSTANT
	pop	{r1}
	str	r1, [fp, #16]
#19 End ASSIGNMENT_STATEMENT
#20 Starting ASSIGNMENT_STATEMENT
#21 Starting CONSTANT
	movw	r1, #:lower16:#43
	movt	r1, #:upper16:#43
	push	{r1}
#22 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-12]
#23 End ASSIGNMENT_STATEMENT
#24 Starting ASSIGNMENT_STATEMENT
#25 Starting EXPRESSION of type ARRAY_INDEX
#26 Ending EXPRESSION of type ARRAY_INDEX
	pop	{r1}
	str	r1, [fp, #-8]
#27 End ASSIGNMENT_STATEMENT
#28 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#29 Starting EXPRESSION of type ARRAY_INDEX
#30 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#31 Ending PRINT_STATEMENT
#32 Starting ASSIGNMENT_STATEMENT
#33 Starting VARIABLE
	ldr	r1, [fp, #-12]
	push	{r1}
#34 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	str	r1, [fp, #-8]
#35 End ASSIGNMENT_STATEMENT
#36 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#37 Starting EXPRESSION of type ARRAY_INDEX
#38 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#39 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#40 Leaving FUNCTION (main) with depth 2
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
#41 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
