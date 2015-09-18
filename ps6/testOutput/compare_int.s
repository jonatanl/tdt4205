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
	movw	r0, #:lower16:43
	movt	r0, #:upper16:43
	push	{r0}
#16 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#17 End ASSIGNMENT_STATEMENT
#18 Starting ASSIGNMENT_STATEMENT
#19 Starting EXPRESSION of type UMINUS
#20 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#21 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#22 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#23 End ASSIGNMENT_STATEMENT
#24 Starting ASSIGNMENT_STATEMENT
#25 Starting CONSTANT
	movw	r0, #:lower16:1000
	movt	r0, #:upper16:1000
	push	{r0}
#26 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#27 End ASSIGNMENT_STATEMENT
#28 Starting ASSIGNMENT_STATEMENT
#29 Starting EXPRESSION of type >
#30 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#31 End VARIABLE a, depth difference: 0, stack offset: -4
#32 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#33 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#34 Ending EXPRESSION of type >
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#35 End ASSIGNMENT_STATEMENT
#36 Starting ASSIGNMENT_STATEMENT
#37 Starting EXPRESSION of type >
#38 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#39 End VARIABLE b, depth difference: 0, stack offset: -8
#40 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#41 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#42 Ending EXPRESSION of type >
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#43 End ASSIGNMENT_STATEMENT
#44 Starting ASSIGNMENT_STATEMENT
#45 Starting EXPRESSION of type >
#46 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#47 End VARIABLE c, depth difference: 0, stack offset: -12
#48 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#49 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#50 Ending EXPRESSION of type >
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#51 End ASSIGNMENT_STATEMENT
#52 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#53 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#54 End VARIABLE d, depth difference: 0, stack offset: -16
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
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#56 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#57 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#58 End VARIABLE f, depth difference: 0, stack offset: -24
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
#59 Ending PRINT_STATEMENT
#60 Starting ASSIGNMENT_STATEMENT
#61 Starting EXPRESSION of type <
#62 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#63 End VARIABLE a, depth difference: 0, stack offset: -4
#64 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#65 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movlt	 r1, #1
	movge	 r1, #0
	push	{r1}
#66 Ending EXPRESSION of type <
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#67 End ASSIGNMENT_STATEMENT
#68 Starting ASSIGNMENT_STATEMENT
#69 Starting EXPRESSION of type <
#70 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#71 End VARIABLE b, depth difference: 0, stack offset: -8
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#73 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movlt	 r1, #1
	movge	 r1, #0
	push	{r1}
#74 Ending EXPRESSION of type <
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#75 End ASSIGNMENT_STATEMENT
#76 Starting ASSIGNMENT_STATEMENT
#77 Starting EXPRESSION of type <
#78 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#79 End VARIABLE c, depth difference: 0, stack offset: -12
#80 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#81 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movlt	 r1, #1
	movge	 r1, #0
	push	{r1}
#82 Ending EXPRESSION of type <
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#83 End ASSIGNMENT_STATEMENT
#84 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#85 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#86 End VARIABLE d, depth difference: 0, stack offset: -16
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
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#88 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#89 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#90 End VARIABLE f, depth difference: 0, stack offset: -24
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
#91 Ending PRINT_STATEMENT
#92 Starting ASSIGNMENT_STATEMENT
#93 Starting CONSTANT
	movw	r0, #:lower16:1000
	movt	r0, #:upper16:1000
	push	{r0}
#94 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#95 End ASSIGNMENT_STATEMENT
#96 Starting ASSIGNMENT_STATEMENT
#97 Starting EXPRESSION of type >=
#98 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#99 End VARIABLE a, depth difference: 0, stack offset: -4
#100 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#101 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movge	 r1, #1
	movlt	 r1, #0
	push	{r1}
#102 Ending EXPRESSION of type >=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#103 End ASSIGNMENT_STATEMENT
#104 Starting ASSIGNMENT_STATEMENT
#105 Starting EXPRESSION of type >=
#106 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#107 End VARIABLE b, depth difference: 0, stack offset: -8
#108 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#109 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movge	 r1, #1
	movlt	 r1, #0
	push	{r1}
#110 Ending EXPRESSION of type >=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#111 End ASSIGNMENT_STATEMENT
#112 Starting ASSIGNMENT_STATEMENT
#113 Starting EXPRESSION of type >=
#114 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#115 End VARIABLE c, depth difference: 0, stack offset: -12
#116 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#117 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movge	 r1, #1
	movlt	 r1, #0
	push	{r1}
#118 Ending EXPRESSION of type >=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#119 End ASSIGNMENT_STATEMENT
#120 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#121 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#122 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#123 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#124 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#125 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#126 End VARIABLE f, depth difference: 0, stack offset: -24
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
#127 Ending PRINT_STATEMENT
#128 Starting ASSIGNMENT_STATEMENT
#129 Starting EXPRESSION of type <=
#130 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#131 End VARIABLE a, depth difference: 0, stack offset: -4
#132 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#133 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movle	 r1, #1
	movgt	 r1, #0
	push	{r1}
#134 Ending EXPRESSION of type <=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#135 End ASSIGNMENT_STATEMENT
#136 Starting ASSIGNMENT_STATEMENT
#137 Starting EXPRESSION of type <=
#138 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#139 End VARIABLE b, depth difference: 0, stack offset: -8
#140 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#141 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movle	 r1, #1
	movgt	 r1, #0
	push	{r1}
#142 Ending EXPRESSION of type <=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#143 End ASSIGNMENT_STATEMENT
#144 Starting ASSIGNMENT_STATEMENT
#145 Starting EXPRESSION of type <=
#146 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#147 End VARIABLE c, depth difference: 0, stack offset: -12
#148 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#149 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movle	 r1, #1
	movgt	 r1, #0
	push	{r1}
#150 Ending EXPRESSION of type <=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#151 End ASSIGNMENT_STATEMENT
#152 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#153 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#154 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#155 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#156 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#157 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#158 End VARIABLE f, depth difference: 0, stack offset: -24
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
#159 Ending PRINT_STATEMENT
#160 Starting ASSIGNMENT_STATEMENT
#161 Starting EXPRESSION of type ==
#162 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#163 End VARIABLE a, depth difference: 0, stack offset: -4
#164 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#165 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	moveq	 r1, #1
	movne	 r1, #0
	push	{r1}
#166 Ending EXPRESSION of type ==
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#167 End ASSIGNMENT_STATEMENT
#168 Starting ASSIGNMENT_STATEMENT
#169 Starting EXPRESSION of type ==
#170 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#171 End VARIABLE b, depth difference: 0, stack offset: -8
#172 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#173 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	moveq	 r1, #1
	movne	 r1, #0
	push	{r1}
#174 Ending EXPRESSION of type ==
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#175 End ASSIGNMENT_STATEMENT
#176 Starting ASSIGNMENT_STATEMENT
#177 Starting EXPRESSION of type ==
#178 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#179 End VARIABLE c, depth difference: 0, stack offset: -12
#180 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#181 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	moveq	 r1, #1
	movne	 r1, #0
	push	{r1}
#182 Ending EXPRESSION of type ==
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
#193 Starting EXPRESSION of type !=
#194 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#195 End VARIABLE a, depth difference: 0, stack offset: -4
#196 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#197 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#198 Ending EXPRESSION of type !=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#199 End ASSIGNMENT_STATEMENT
#200 Starting ASSIGNMENT_STATEMENT
#201 Starting EXPRESSION of type !=
#202 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#203 End VARIABLE b, depth difference: 0, stack offset: -8
#204 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#205 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#206 Ending EXPRESSION of type !=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#207 End ASSIGNMENT_STATEMENT
#208 Starting ASSIGNMENT_STATEMENT
#209 Starting EXPRESSION of type !=
#210 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#211 End VARIABLE c, depth difference: 0, stack offset: -12
#212 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#213 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#214 Ending EXPRESSION of type !=
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#215 End ASSIGNMENT_STATEMENT
#216 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#217 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#218 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#219 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#220 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#221 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#222 End VARIABLE f, depth difference: 0, stack offset: -24
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
#223 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#224 Leaving FUNCTION (main) with depth 2
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
#225 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
