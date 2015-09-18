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
	movw	r0, #:lower16:12
	movt	r0, #:upper16:12
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #12]
	push	{r1}
	pop	{r0}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #12]
	push	{r1}
	pop	{r0}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:16
	movt	r0, #:upper16:16
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #4]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	pop	{r1}
	str	r0, [r1, #12]
	push	{r1}
	pop	{r0}
	pop	{r1}
	str	r0, [r1, #8]
	push	{r1}
	pop	{r0}
	push	{r0}
#10 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#11 End ASSIGNMENT_STATEMENT
#12 Starting ASSIGNMENT_STATEMENT
#13 Starting EXPRESSION of type NEW
	movw	r0, #:lower16:20
	movt	r0, #:upper16:20
	push	{r0}
	bl	_malloc
	pop	{r1}
	push	{r0}
#14 Ending EXPRESSION of type NEW
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#15 End ASSIGNMENT_STATEMENT
#16 Starting ASSIGNMENT_STATEMENT
#17 Starting CONSTANT
	movw	r0, #:lower16:42
	movt	r0, #:upper16:42
	push	{r0}
#18 End CONSTANT
#19 Starting EXPRESSION of type ARRAY_INDEX
#20 Starting EXPRESSION of type ARRAY_INDEX
#21 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#22 End VARIABLE a, depth difference: 0, stack offset: -4
#23 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#24 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#25 Ending EXPRESSION of type ARRAY_INDEX
#26 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#27 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#28 Ending EXPRESSION of type ARRAY_INDEX
#29 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#30 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#31 End ASSIGNMENT_STATEMENT
#32 Starting ASSIGNMENT_STATEMENT
#33 Starting CONSTANT
	movw	r0, #:lower16:43
	movt	r0, #:upper16:43
	push	{r0}
#34 End CONSTANT
#35 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#36 End VARIABLE c, depth difference: 0, stack offset: -12
#37 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#38 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#39 End ASSIGNMENT_STATEMENT
#40 Starting ASSIGNMENT_STATEMENT
#41 Starting EXPRESSION of type ARRAY_INDEX
#42 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#43 End VARIABLE a, depth difference: 0, stack offset: -4
#44 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#45 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#46 Ending EXPRESSION of type ARRAY_INDEX
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#47 End ASSIGNMENT_STATEMENT
#48 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#49 Starting EXPRESSION of type ARRAY_INDEX
#50 Starting EXPRESSION of type ARRAY_INDEX
#51 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#52 End VARIABLE b, depth difference: 0, stack offset: -8
#53 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#54 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#55 Ending EXPRESSION of type ARRAY_INDEX
#56 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#57 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#58 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#59 Ending PRINT_STATEMENT
#60 Starting ASSIGNMENT_STATEMENT
#61 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#62 End VARIABLE c, depth difference: 0, stack offset: -12
#63 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#64 End VARIABLE b, depth difference: 0, stack offset: -8
#65 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#66 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	pop	{r1}
	str	r1, [r0]
#67 End ASSIGNMENT_STATEMENT
#68 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#69 Starting EXPRESSION of type ARRAY_INDEX
#70 Starting EXPRESSION of type ARRAY_INDEX
#71 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#72 End VARIABLE b, depth difference: 0, stack offset: -8
#73 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#74 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#75 Ending EXPRESSION of type ARRAY_INDEX
#76 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#77 End CONSTANT
	pop	{r0}
	pop	{r2}
	mov	r1, $4
	mul	r0,r0,r1
	add	r0, r0, r2
	ldr	r3, [r0]
	push	{r3}
#78 Ending EXPRESSION of type ARRAY_INDEX
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#79 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#80 Leaving FUNCTION (main) with depth 2
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
#81 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
