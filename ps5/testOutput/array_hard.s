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
	movw	6 Ending EXPRESSION of type NEW
, #:lower16:r1
	movt	6 Ending EXPRESSION of type NEW
, #:upper16:r1
	push	{r1}
	mov	lr, pc
	bl	_malloc
	push	{r0}
#6 Ending EXPRESSION of type NEW
	pop	{r1}
	str	r1, [fp, #-4]
#7 End ASSIGNMENT_STATEMENT
#8 Starting ASSIGNMENT_STATEMENT
#9 Starting CONSTANT
	movw	r1, #:lower16:#5
	movt	r1, #:upper16:#5
	push	{r1}
#10 End CONSTANT
	pop	{r1}
	str	r1, [fp, #4]
#11 End ASSIGNMENT_STATEMENT
#12 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#13 Starting EXPRESSION of type ARRAY_INDEX
#14 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#15 Ending PRINT_STATEMENT
#16 Starting DECLARATION: adding space on stack
	push	{r0}
#17 Ending DECLARATION
#18 Starting ASSIGNMENT_STATEMENT
#19 Starting EXPRESSION of type NEW
	movw	20 Ending EXPRESSION of type NEW
, #:lower16:r1
	movt	20 Ending EXPRESSION of type NEW
, #:upper16:r1
	push	{r1}
	mov	lr, pc
	bl	_malloc
	push	{r0}
#20 Ending EXPRESSION of type NEW
	pop	{r1}
	str	r1, [fp, #-8]
#21 End ASSIGNMENT_STATEMENT
#22 Starting ASSIGNMENT_STATEMENT
#23 Starting CONSTANT
	movw	r1, #:lower16:#10
	movt	r1, #:upper16:#10
	push	{r1}
#24 End CONSTANT
	pop	{r1}
	str	r1, [fp]
#25 End ASSIGNMENT_STATEMENT
#26 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#27 Starting EXPRESSION of type ARRAY_INDEX
#28 Ending EXPRESSION of type ARRAY_INDEX
	movw  r0, #:lower16:.INTEGER
	movt  r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#29 Ending PRINT_STATEMENT
#30 Starting DECLARATION: adding space on stack
	push	{r0}
#31 Ending DECLARATION
#32 Starting ASSIGNMENT_STATEMENT
#33 Starting EXPRESSION of type FUNC_CALL
	bl	_create
	push	{r0}
#34 Ending EXPRESSION of type FUNC_CALL
	pop	{r1}
	str	r1, [fp, #-12]
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
#41 Starting FUNCTION (create) with depth 2
_create:
	push	{lr}
	push	{fp}
	mov	fp, sp
#42 Starting DECLARATION: adding space on stack
	push	{r0}
#43 Ending DECLARATION
#44 Starting ASSIGNMENT_STATEMENT
#45 Starting EXPRESSION of type NEW
	movw	46 Ending EXPRESSION of type NEW
, #:lower16:r1
	movt	46 Ending EXPRESSION of type NEW
, #:upper16:r1
	push	{r1}
	mov	lr, pc
	bl	_malloc
	push	{r0}
#46 Ending EXPRESSION of type NEW
	pop	{r1}
	str	r1, [fp, #-4]
#47 End ASSIGNMENT_STATEMENT
#48 Starting ASSIGNMENT_STATEMENT
#49 Starting CONSTANT
	movw	r1, #:lower16:#1
	movt	r1, #:upper16:#1
	push	{r1}
#50 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-4]
#51 End ASSIGNMENT_STATEMENT
#52 Starting ASSIGNMENT_STATEMENT
#53 Starting CONSTANT
	movw	r1, #:lower16:#2
	movt	r1, #:upper16:#2
	push	{r1}
#54 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-4]
#55 End ASSIGNMENT_STATEMENT
#56 Starting ASSIGNMENT_STATEMENT
#57 Starting CONSTANT
	movw	r1, #:lower16:#3
	movt	r1, #:upper16:#3
	push	{r1}
#58 End CONSTANT
	pop	{r1}
	str	r1, [fp, #-4]
#59 End ASSIGNMENT_STATEMENT
#60 Starting RETURN_STATEMENT
#61 Starting EXPRESSION of type 
#62 Ending EXPRESSION of type 
	pop	{r0}
#63 End RETURN_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#64 Leaving FUNCTION (create) with depth 2
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
#65 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
