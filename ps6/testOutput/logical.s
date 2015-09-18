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
#8 Starting DECLARATION: adding space on stack
	push	{r0}
#9 Ending DECLARATION
#10 Starting DECLARATION: adding space on stack
	push	{r0}
#11 Ending DECLARATION
#12 Starting DECLARATION: adding space on stack
	push	{r0}
#13 Ending DECLARATION
#14 Starting ASSIGNMENT_STATEMENT
#15 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#16 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#17 End ASSIGNMENT_STATEMENT
#18 Starting ASSIGNMENT_STATEMENT
#19 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#20 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#21 End ASSIGNMENT_STATEMENT
#22 Starting ASSIGNMENT_STATEMENT
#23 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#24 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#25 End ASSIGNMENT_STATEMENT
#26 Starting ASSIGNMENT_STATEMENT
#27 Starting EXPRESSION of type &&
#28 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#29 End VARIABLE a, depth difference: 0, stack offset: -4
#30 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#31 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#32 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#33 End ASSIGNMENT_STATEMENT
#34 Starting ASSIGNMENT_STATEMENT
#35 Starting EXPRESSION of type &&
#36 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#37 End VARIABLE b, depth difference: 0, stack offset: -8
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#39 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#40 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#41 End ASSIGNMENT_STATEMENT
#42 Starting ASSIGNMENT_STATEMENT
#43 Starting EXPRESSION of type &&
#44 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#45 End VARIABLE c, depth difference: 0, stack offset: -12
#46 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#47 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#48 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#49 End ASSIGNMENT_STATEMENT
#50 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#51 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#52 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#54 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#55 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#56 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#57 Ending PRINT_STATEMENT
#58 Starting ASSIGNMENT_STATEMENT
#59 Starting EXPRESSION of type ||
#60 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#61 End VARIABLE a, depth difference: 0, stack offset: -4
#62 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#63 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#64 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#65 End ASSIGNMENT_STATEMENT
#66 Starting ASSIGNMENT_STATEMENT
#67 Starting EXPRESSION of type ||
#68 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#69 End VARIABLE b, depth difference: 0, stack offset: -8
#70 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#71 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#72 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#73 End ASSIGNMENT_STATEMENT
#74 Starting ASSIGNMENT_STATEMENT
#75 Starting EXPRESSION of type ||
#76 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#77 End VARIABLE c, depth difference: 0, stack offset: -12
#78 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#79 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#80 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#81 End ASSIGNMENT_STATEMENT
#82 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#83 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#84 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#85 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#86 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#87 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#88 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#89 Ending PRINT_STATEMENT
#90 Starting ASSIGNMENT_STATEMENT
#91 Starting EXPRESSION of type !
#92 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#93 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#94 Ending EXPRESSION of type !
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#95 End ASSIGNMENT_STATEMENT
#96 Starting ASSIGNMENT_STATEMENT
#97 Starting EXPRESSION of type !
#98 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#99 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#100 Ending EXPRESSION of type !
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#101 End ASSIGNMENT_STATEMENT
#102 Starting ASSIGNMENT_STATEMENT
#103 Starting EXPRESSION of type !
#104 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#105 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#106 Ending EXPRESSION of type !
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#107 End ASSIGNMENT_STATEMENT
#108 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#109 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#110 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#111 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#112 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#113 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#114 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#115 Ending PRINT_STATEMENT
#116 Starting ASSIGNMENT_STATEMENT
#117 Starting EXPRESSION of type &&
#118 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#119 End VARIABLE a, depth difference: 0, stack offset: -4
#120 Starting EXPRESSION of type !
#121 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#122 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#123 Ending EXPRESSION of type !
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#124 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#125 End ASSIGNMENT_STATEMENT
#126 Starting ASSIGNMENT_STATEMENT
#127 Starting EXPRESSION of type &&
#128 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#129 End VARIABLE b, depth difference: 0, stack offset: -8
#130 Starting EXPRESSION of type !
#131 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#132 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#133 Ending EXPRESSION of type !
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#134 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#135 End ASSIGNMENT_STATEMENT
#136 Starting ASSIGNMENT_STATEMENT
#137 Starting EXPRESSION of type &&
#138 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#139 End VARIABLE c, depth difference: 0, stack offset: -12
#140 Starting EXPRESSION of type !
#141 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#142 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#143 Ending EXPRESSION of type !
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#144 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#145 End ASSIGNMENT_STATEMENT
#146 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#147 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#148 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#149 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#150 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#151 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#152 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#153 Ending PRINT_STATEMENT
#154 Starting ASSIGNMENT_STATEMENT
#155 Starting EXPRESSION of type ||
#156 Starting EXPRESSION of type !
#157 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#158 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#159 Ending EXPRESSION of type !
#160 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#161 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#162 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#163 End ASSIGNMENT_STATEMENT
#164 Starting ASSIGNMENT_STATEMENT
#165 Starting EXPRESSION of type ||
#166 Starting EXPRESSION of type !
#167 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#168 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#169 Ending EXPRESSION of type !
#170 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#171 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#172 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#173 End ASSIGNMENT_STATEMENT
#174 Starting ASSIGNMENT_STATEMENT
#175 Starting EXPRESSION of type ||
#176 Starting EXPRESSION of type !
#177 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#178 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#179 Ending EXPRESSION of type !
#180 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#181 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#182 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#183 End ASSIGNMENT_STATEMENT
#184 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#185 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#186 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#187 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#188 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#189 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#190 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#191 Ending PRINT_STATEMENT
#192 Starting ASSIGNMENT_STATEMENT
#193 Starting EXPRESSION of type &&
#194 Starting EXPRESSION of type &&
#195 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#196 End VARIABLE a, depth difference: 0, stack offset: -4
#197 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#198 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#199 Ending EXPRESSION of type &&
#200 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#201 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#202 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#203 End ASSIGNMENT_STATEMENT
#204 Starting ASSIGNMENT_STATEMENT
#205 Starting EXPRESSION of type ||
#206 Starting EXPRESSION of type ||
#207 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#208 End VARIABLE a, depth difference: 0, stack offset: -4
#209 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#210 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#211 Ending EXPRESSION of type ||
#212 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#213 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#214 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#215 End ASSIGNMENT_STATEMENT
#216 Starting ASSIGNMENT_STATEMENT
#217 Starting EXPRESSION of type ||
#218 Starting EXPRESSION of type &&
#219 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#220 End VARIABLE a, depth difference: 0, stack offset: -4
#221 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#222 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#223 Ending EXPRESSION of type &&
#224 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#225 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#226 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#227 End ASSIGNMENT_STATEMENT
#228 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#229 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#230 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#231 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#232 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#233 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#234 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#235 Ending PRINT_STATEMENT
#236 Starting ASSIGNMENT_STATEMENT
#237 Starting EXPRESSION of type ||
#238 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#239 End VARIABLE a, depth difference: 0, stack offset: -4
#240 Starting EXPRESSION of type &&
#241 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#242 End VARIABLE b, depth difference: 0, stack offset: -8
#243 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#244 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#245 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#246 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#247 End ASSIGNMENT_STATEMENT
#248 Starting ASSIGNMENT_STATEMENT
#249 Starting EXPRESSION of type &&
#250 Starting EXPRESSION of type ||
#251 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#252 End VARIABLE a, depth difference: 0, stack offset: -4
#253 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#254 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#255 Ending EXPRESSION of type ||
#256 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#257 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#258 Ending EXPRESSION of type &&
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#259 End ASSIGNMENT_STATEMENT
#260 Starting ASSIGNMENT_STATEMENT
#261 Starting EXPRESSION of type ||
#262 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#263 End VARIABLE a, depth difference: 0, stack offset: -4
#264 Starting EXPRESSION of type &&
#265 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#266 End VARIABLE b, depth difference: 0, stack offset: -8
#267 Starting EXPRESSION of type !
#268 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#269 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#270 Ending EXPRESSION of type !
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#271 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#272 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#273 End ASSIGNMENT_STATEMENT
#274 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#275 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#276 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#277 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#278 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#279 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#280 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#281 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#282 Leaving FUNCTION (main) with depth 2
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
#283 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
