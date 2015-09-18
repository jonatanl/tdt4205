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
#14 Starting DECLARATION: adding space on stack
	push	{r0}
#15 Ending DECLARATION
#16 Starting DECLARATION: adding space on stack
	push	{r0}
#17 Ending DECLARATION
#18 Starting DECLARATION: adding space on stack
	push	{r0}
#19 Ending DECLARATION
#20 Starting DECLARATION: adding space on stack
	push	{r0}
#21 Ending DECLARATION
#22 Starting DECLARATION: adding space on stack
	push	{r0}
#23 Ending DECLARATION
#24 Starting DECLARATION: adding space on stack
	push	{r0}
#25 Ending DECLARATION
#26 Starting ASSIGNMENT_STATEMENT
#27 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#28 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-4]
	mov	fp, r1
#29 End ASSIGNMENT_STATEMENT
#30 Starting ASSIGNMENT_STATEMENT
#31 Starting EXPRESSION of type UMINUS
#32 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#33 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#34 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#35 End ASSIGNMENT_STATEMENT
#36 Starting ASSIGNMENT_STATEMENT
#37 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#38 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#39 End ASSIGNMENT_STATEMENT
#40 Starting ASSIGNMENT_STATEMENT
#41 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#42 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#43 End ASSIGNMENT_STATEMENT
#44 Starting ASSIGNMENT_STATEMENT
#45 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#46 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#47 End ASSIGNMENT_STATEMENT
#48 Starting ASSIGNMENT_STATEMENT
#49 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#50 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#51 End ASSIGNMENT_STATEMENT
#52 Starting ASSIGNMENT_STATEMENT
#53 Starting EXPRESSION of type +
#54 Starting EXPRESSION of type *
#55 Starting EXPRESSION of type UMINUS
#56 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#57 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#58 Ending EXPRESSION of type UMINUS
#59 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#60 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#61 Ending EXPRESSION of type *
#62 Starting EXPRESSION of type *
#63 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#64 End VARIABLE c, depth difference: 0, stack offset: -12
#65 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#66 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#67 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#68 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-28]
	mov	fp, r1
#69 End ASSIGNMENT_STATEMENT
#70 Starting ASSIGNMENT_STATEMENT
#71 Starting EXPRESSION of type +
#72 Starting EXPRESSION of type *
#73 Starting EXPRESSION of type UMINUS
#74 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#75 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#76 Ending EXPRESSION of type UMINUS
#77 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#78 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#79 Ending EXPRESSION of type *
#80 Starting EXPRESSION of type *
#81 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#82 End VARIABLE a, depth difference: 0, stack offset: -4
#83 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#84 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#85 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#86 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-32]
	mov	fp, r1
#87 End ASSIGNMENT_STATEMENT
#88 Starting ASSIGNMENT_STATEMENT
#89 Starting EXPRESSION of type +
#90 Starting EXPRESSION of type *
#91 Starting EXPRESSION of type UMINUS
#92 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#93 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#94 Ending EXPRESSION of type UMINUS
#95 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#96 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#97 Ending EXPRESSION of type *
#98 Starting EXPRESSION of type *
#99 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#100 End VARIABLE b, depth difference: 0, stack offset: -8
#101 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#102 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#103 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#104 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-36]
	mov	fp, r1
#105 End ASSIGNMENT_STATEMENT
#106 Starting ASSIGNMENT_STATEMENT
#107 Starting EXPRESSION of type ||
#108 Starting EXPRESSION of type ==
#109 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#110 End VARIABLE a, depth difference: 0, stack offset: -4
#111 Starting EXPRESSION of type UMINUS
#112 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#113 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#114 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	moveq	 r1, #1
	movne	 r1, #0
	push	{r1}
#115 Ending EXPRESSION of type ==
#116 Starting EXPRESSION of type !=
#117 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#118 End VARIABLE a, depth difference: 0, stack offset: -4
#119 Starting EXPRESSION of type UMINUS
#120 Starting CONSTANT
	movw	r0, #:lower16:8
	movt	r0, #:upper16:8
	push	{r0}
#121 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#122 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#123 Ending EXPRESSION of type !=
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#124 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-40]
	mov	fp, r1
#125 End ASSIGNMENT_STATEMENT
#126 Starting ASSIGNMENT_STATEMENT
#127 Starting EXPRESSION of type ||
#128 Starting EXPRESSION of type !=
#129 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#130 End VARIABLE b, depth difference: 0, stack offset: -8
#131 Starting EXPRESSION of type UMINUS
#132 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#133 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#134 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#135 Ending EXPRESSION of type !=
#136 Starting EXPRESSION of type ==
#137 Starting EXPRESSION of type UMINUS
#138 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#139 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#140 Ending EXPRESSION of type UMINUS
#141 Starting CONSTANT
	movw	r0, #:lower16:7
	movt	r0, #:upper16:7
	push	{r0}
#142 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	moveq	 r1, #1
	movne	 r1, #0
	push	{r1}
#143 Ending EXPRESSION of type ==
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#144 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-44]
	mov	fp, r1
#145 End ASSIGNMENT_STATEMENT
#146 Starting ASSIGNMENT_STATEMENT
#147 Starting EXPRESSION of type ||
#148 Starting EXPRESSION of type ==
#149 Starting EXPRESSION of type UMINUS
#150 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#151 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#152 Ending EXPRESSION of type UMINUS
#153 Starting EXPRESSION of type UMINUS
#154 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#155 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#156 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	moveq	 r1, #1
	movne	 r1, #0
	push	{r1}
#157 Ending EXPRESSION of type ==
#158 Starting EXPRESSION of type !=
#159 Starting EXPRESSION of type UMINUS
#160 Starting CONSTANT
	movw	r0, #:lower16:100
	movt	r0, #:upper16:100
	push	{r0}
#161 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#162 Ending EXPRESSION of type UMINUS
#163 Starting EXPRESSION of type UMINUS
#164 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#165 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#166 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#167 Ending EXPRESSION of type !=
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#168 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-48]
	mov	fp, r1
#169 End ASSIGNMENT_STATEMENT
#170 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#171 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-28]
	pop	{fp}
	push	{r0}
#172 End VARIABLE g, depth difference: 0, stack offset: -28
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#173 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-32]
	pop	{fp}
	push	{r0}
#174 End VARIABLE h, depth difference: 0, stack offset: -32
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#175 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-36]
	pop	{fp}
	push	{r0}
#176 End VARIABLE i, depth difference: 0, stack offset: -36
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#177 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-40]
	pop	{fp}
	push	{r0}
#178 End VARIABLE j, depth difference: 0, stack offset: -40
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#179 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-44]
	pop	{fp}
	push	{r0}
#180 End VARIABLE k, depth difference: 0, stack offset: -44
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#181 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-48]
	pop	{fp}
	push	{r0}
#182 End VARIABLE l, depth difference: 0, stack offset: -48
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
#183 Ending PRINT_STATEMENT
#184 Starting ASSIGNMENT_STATEMENT
#185 Starting EXPRESSION of type +
#186 Starting EXPRESSION of type -
#187 Starting EXPRESSION of type +
#188 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#189 End VARIABLE a, depth difference: 0, stack offset: -4
#190 Starting EXPRESSION of type /
#191 Starting EXPRESSION of type /
#192 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#193 End VARIABLE b, depth difference: 0, stack offset: -8
#194 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#195 End CONSTANT
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#196 Ending EXPRESSION of type /
#197 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#198 End CONSTANT
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#199 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#200 Ending EXPRESSION of type +
#201 Starting EXPRESSION of type UMINUS
#202 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#203 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#204 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#205 Ending EXPRESSION of type -
#206 Starting EXPRESSION of type *
#207 Starting EXPRESSION of type *
#208 Starting EXPRESSION of type *
#209 Starting CONSTANT
	movw	r0, #:lower16:3
	movt	r0, #:upper16:3
	push	{r0}
#210 End CONSTANT
#211 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#212 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#213 Ending EXPRESSION of type *
#214 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#215 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#216 Ending EXPRESSION of type *
#217 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#218 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#219 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#220 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-28]
	mov	fp, r1
#221 End ASSIGNMENT_STATEMENT
#222 Starting ASSIGNMENT_STATEMENT
#223 Starting EXPRESSION of type *
#224 Starting EXPRESSION of type +
#225 Starting EXPRESSION of type -
#226 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#227 End VARIABLE a, depth difference: 0, stack offset: -4
#228 Starting EXPRESSION of type UMINUS
#229 Starting EXPRESSION of type UMINUS
#230 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#231 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#232 Ending EXPRESSION of type UMINUS
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#233 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#234 Ending EXPRESSION of type -
#235 Starting EXPRESSION of type UMINUS
#236 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#237 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#238 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#239 Ending EXPRESSION of type +
#240 Starting EXPRESSION of type +
#241 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#242 End VARIABLE c, depth difference: 0, stack offset: -12
#243 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#244 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#245 Ending EXPRESSION of type +
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#246 Ending EXPRESSION of type *
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-32]
	mov	fp, r1
#247 End ASSIGNMENT_STATEMENT
#248 Starting ASSIGNMENT_STATEMENT
#249 Starting EXPRESSION of type /
#250 Starting EXPRESSION of type -
#251 Starting EXPRESSION of type /
#252 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#253 End VARIABLE a, depth difference: 0, stack offset: -4
#254 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#255 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#256 Ending EXPRESSION of type /
#257 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#258 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#259 Ending EXPRESSION of type -
#260 Starting EXPRESSION of type /
#261 Starting EXPRESSION of type -
#262 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#263 End VARIABLE a, depth difference: 0, stack offset: -4
#264 Starting EXPRESSION of type /
#265 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#266 End VARIABLE c, depth difference: 0, stack offset: -12
#267 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#268 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#269 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#270 Ending EXPRESSION of type -
#271 Starting EXPRESSION of type +
#272 Starting EXPRESSION of type -
#273 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#274 End VARIABLE a, depth difference: 0, stack offset: -4
#275 Starting EXPRESSION of type UMINUS
#276 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#277 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#278 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#279 Ending EXPRESSION of type -
#280 Starting CONSTANT
	movw	r0, #:lower16:43
	movt	r0, #:upper16:43
	push	{r0}
#281 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#282 Ending EXPRESSION of type +
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#283 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#284 Ending EXPRESSION of type /
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-36]
	mov	fp, r1
#285 End ASSIGNMENT_STATEMENT
#286 Starting ASSIGNMENT_STATEMENT
#287 Starting EXPRESSION of type ||
#288 Starting EXPRESSION of type ||
#289 Starting EXPRESSION of type ||
#290 Starting EXPRESSION of type &&
#291 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#292 End VARIABLE d, depth difference: 0, stack offset: -16
#293 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#294 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#295 Ending EXPRESSION of type &&
#296 Starting EXPRESSION of type &&
#297 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#298 End VARIABLE f, depth difference: 0, stack offset: -24
#299 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#300 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#301 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#302 Ending EXPRESSION of type ||
#303 Starting EXPRESSION of type &&
#304 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#305 End CONSTANT
#306 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#307 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#308 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#309 Ending EXPRESSION of type ||
#310 Starting EXPRESSION of type &&
#311 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#312 End CONSTANT
#313 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#314 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#315 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#316 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-40]
	mov	fp, r1
#317 End ASSIGNMENT_STATEMENT
#318 Starting ASSIGNMENT_STATEMENT
#319 Starting EXPRESSION of type ||
#320 Starting EXPRESSION of type ||
#321 Starting EXPRESSION of type &&
#322 Starting EXPRESSION of type !
#323 Starting EXPRESSION of type !
#324 Starting EXPRESSION of type !
#325 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#326 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#327 Ending EXPRESSION of type !
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#328 Ending EXPRESSION of type !
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#329 Ending EXPRESSION of type !
#330 Starting EXPRESSION of type !
#331 Starting EXPRESSION of type !
#332 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#333 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#334 Ending EXPRESSION of type !
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#335 Ending EXPRESSION of type !
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#336 Ending EXPRESSION of type &&
#337 Starting EXPRESSION of type &&
#338 Starting EXPRESSION of type !
#339 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#340 End VARIABLE f, depth difference: 0, stack offset: -24
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#341 Ending EXPRESSION of type !
#342 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#343 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#344 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#345 Ending EXPRESSION of type ||
#346 Starting EXPRESSION of type ||
#347 Starting EXPRESSION of type &&
#348 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#349 End CONSTANT
#350 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#351 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#352 Ending EXPRESSION of type &&
#353 Starting EXPRESSION of type &&
#354 Starting EXPRESSION of type !
#355 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#356 End CONSTANT
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#357 Ending EXPRESSION of type !
#358 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#359 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#360 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#361 Ending EXPRESSION of type ||
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#362 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-44]
	mov	fp, r1
#363 End ASSIGNMENT_STATEMENT
#364 Starting ASSIGNMENT_STATEMENT
#365 Starting EXPRESSION of type ||
#366 Starting EXPRESSION of type ||
#367 Starting EXPRESSION of type >
#368 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#369 End VARIABLE a, depth difference: 0, stack offset: -4
#370 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#371 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#372 Ending EXPRESSION of type >
#373 Starting EXPRESSION of type <=
#374 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#375 End VARIABLE c, depth difference: 0, stack offset: -12
#376 Starting EXPRESSION of type UMINUS
#377 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#378 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#379 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movle	 r1, #1
	movgt	 r1, #0
	push	{r1}
#380 Ending EXPRESSION of type <=
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#381 Ending EXPRESSION of type ||
#382 Starting EXPRESSION of type &&
#383 Starting EXPRESSION of type !
#384 Starting EXPRESSION of type &&
#385 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#386 End VARIABLE d, depth difference: 0, stack offset: -16
#387 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#388 End VARIABLE e, depth difference: 0, stack offset: -20
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#389 Ending EXPRESSION of type &&
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#390 Ending EXPRESSION of type !
#391 Starting EXPRESSION of type ||
#392 Starting EXPRESSION of type !
#393 Starting EXPRESSION of type !=
#394 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#395 End VARIABLE c, depth difference: 0, stack offset: -12
#396 Starting CONSTANT
	movw	r0, #:lower16:5
	movt	r0, #:upper16:5
	push	{r0}
#397 End CONSTANT
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#398 Ending EXPRESSION of type !=
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#399 Ending EXPRESSION of type !
#400 Starting EXPRESSION of type !
#401 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#402 End VARIABLE d, depth difference: 0, stack offset: -16
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#403 Ending EXPRESSION of type !
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#404 Ending EXPRESSION of type ||
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#405 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#406 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-48]
	mov	fp, r1
#407 End ASSIGNMENT_STATEMENT
#408 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#409 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-28]
	pop	{fp}
	push	{r0}
#410 End VARIABLE g, depth difference: 0, stack offset: -28
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#411 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-32]
	pop	{fp}
	push	{r0}
#412 End VARIABLE h, depth difference: 0, stack offset: -32
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#413 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-36]
	pop	{fp}
	push	{r0}
#414 End VARIABLE i, depth difference: 0, stack offset: -36
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#415 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-40]
	pop	{fp}
	push	{r0}
#416 End VARIABLE j, depth difference: 0, stack offset: -40
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#417 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-44]
	pop	{fp}
	push	{r0}
#418 End VARIABLE k, depth difference: 0, stack offset: -44
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#419 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-48]
	pop	{fp}
	push	{r0}
#420 End VARIABLE l, depth difference: 0, stack offset: -48
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
#421 Ending PRINT_STATEMENT
#422 Starting ASSIGNMENT_STATEMENT
#423 Starting EXPRESSION of type +
#424 Starting EXPRESSION of type *
#425 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#426 End VARIABLE a, depth difference: 0, stack offset: -4
#427 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#428 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#429 Ending EXPRESSION of type *
#430 Starting EXPRESSION of type *
#431 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#432 End VARIABLE c, depth difference: 0, stack offset: -12
#433 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#434 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#435 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#436 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-28]
	mov	fp, r1
#437 End ASSIGNMENT_STATEMENT
#438 Starting ASSIGNMENT_STATEMENT
#439 Starting EXPRESSION of type *
#440 Starting EXPRESSION of type *
#441 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#442 End VARIABLE a, depth difference: 0, stack offset: -4
#443 Starting EXPRESSION of type +
#444 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#445 End VARIABLE b, depth difference: 0, stack offset: -8
#446 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#447 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#448 Ending EXPRESSION of type +
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#449 Ending EXPRESSION of type *
#450 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#451 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#452 Ending EXPRESSION of type *
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-32]
	mov	fp, r1
#453 End ASSIGNMENT_STATEMENT
#454 Starting ASSIGNMENT_STATEMENT
#455 Starting EXPRESSION of type /
#456 Starting EXPRESSION of type /
#457 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#458 End VARIABLE a, depth difference: 0, stack offset: -4
#459 Starting EXPRESSION of type -
#460 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#461 End VARIABLE b, depth difference: 0, stack offset: -8
#462 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#463 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#464 Ending EXPRESSION of type -
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#465 Ending EXPRESSION of type /
#466 Starting CONSTANT
	movw	r0, #:lower16:2
	movt	r0, #:upper16:2
	push	{r0}
#467 End CONSTANT
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#468 Ending EXPRESSION of type /
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-36]
	mov	fp, r1
#469 End ASSIGNMENT_STATEMENT
#470 Starting ASSIGNMENT_STATEMENT
#471 Starting EXPRESSION of type ||
#472 Starting EXPRESSION of type ||
#473 Starting EXPRESSION of type ||
#474 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#475 End CONSTANT
#476 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#477 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#478 Ending EXPRESSION of type ||
#479 Starting EXPRESSION of type &&
#480 Starting EXPRESSION of type &&
#481 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#482 End CONSTANT
#483 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#484 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#485 Ending EXPRESSION of type &&
#486 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#487 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#488 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#489 Ending EXPRESSION of type ||
#490 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#491 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#492 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-40]
	mov	fp, r1
#493 End ASSIGNMENT_STATEMENT
#494 Starting ASSIGNMENT_STATEMENT
#495 Starting EXPRESSION of type ||
#496 Starting EXPRESSION of type &&
#497 Starting EXPRESSION of type &&
#498 Starting EXPRESSION of type ||
#499 Starting EXPRESSION of type ||
#500 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#501 End CONSTANT
#502 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#503 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#504 Ending EXPRESSION of type ||
#505 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#506 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#507 Ending EXPRESSION of type ||
#508 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#509 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#510 Ending EXPRESSION of type &&
#511 Starting CONSTANT
	movw	r0, #:lower16:1
	movt	r0, #:upper16:1
	push	{r0}
#512 End CONSTANT
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#513 Ending EXPRESSION of type &&
#514 Starting CONSTANT
	movw	r0, #:lower16:0
	movt	r0, #:upper16:0
	push	{r0}
#515 End CONSTANT
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#516 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-44]
	mov	fp, r1
#517 End ASSIGNMENT_STATEMENT
#518 Starting ASSIGNMENT_STATEMENT
#519 Starting EXPRESSION of type ||
#520 Starting EXPRESSION of type ||
#521 Starting EXPRESSION of type ||
#522 Starting EXPRESSION of type >
#523 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#524 End VARIABLE a, depth difference: 0, stack offset: -4
#525 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#526 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movgt	 r1, #1
	movle	 r1, #0
	push	{r1}
#527 Ending EXPRESSION of type >
#528 Starting EXPRESSION of type &&
#529 Starting EXPRESSION of type >=
#530 Starting CONSTANT
	movw	r0, #:lower16:56
	movt	r0, #:upper16:56
	push	{r0}
#531 End CONSTANT
#532 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#533 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movge	 r1, #1
	movlt	 r1, #0
	push	{r1}
#534 Ending EXPRESSION of type >=
#535 Starting EXPRESSION of type !=
#536 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#537 End VARIABLE a, depth difference: 0, stack offset: -4
#538 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#539 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movne	 r1, #1
	moveq	 r1, #0
	push	{r1}
#540 Ending EXPRESSION of type !=
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#541 Ending EXPRESSION of type &&
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#542 Ending EXPRESSION of type ||
#543 Starting EXPRESSION of type <=
#544 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#545 End VARIABLE a, depth difference: 0, stack offset: -4
#546 Starting EXPRESSION of type UMINUS
#547 Starting CONSTANT
	movw	r0, #:lower16:23
	movt	r0, #:upper16:23
	push	{r0}
#548 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#549 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movle	 r1, #1
	movgt	 r1, #0
	push	{r1}
#550 Ending EXPRESSION of type <=
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#551 Ending EXPRESSION of type ||
#552 Starting EXPRESSION of type !
#553 Starting EXPRESSION of type <
#554 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#555 End VARIABLE a, depth difference: 0, stack offset: -4
#556 Starting EXPRESSION of type UMINUS
#557 Starting CONSTANT
	movw	r0, #:lower16:10
	movt	r0, #:upper16:10
	push	{r0}
#558 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#559 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	cmp	r1,r2
	movlt	 r1, #1
	movge	 r1, #0
	push	{r1}
#560 Ending EXPRESSION of type <
	pop	{r1}
	cmp	r1,#0
	movne	 r1, #0
	moveq	 r1, #1
	push	{r1}
#561 Ending EXPRESSION of type !
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#562 Ending EXPRESSION of type ||
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-48]
	mov	fp, r1
#563 End ASSIGNMENT_STATEMENT
#564 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#565 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-28]
	pop	{fp}
	push	{r0}
#566 End VARIABLE g, depth difference: 0, stack offset: -28
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#567 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-32]
	pop	{fp}
	push	{r0}
#568 End VARIABLE h, depth difference: 0, stack offset: -32
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#569 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-36]
	pop	{fp}
	push	{r0}
#570 End VARIABLE i, depth difference: 0, stack offset: -36
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#571 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-40]
	pop	{fp}
	push	{r0}
#572 End VARIABLE j, depth difference: 0, stack offset: -40
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#573 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-44]
	pop	{fp}
	push	{r0}
#574 End VARIABLE k, depth difference: 0, stack offset: -44
	pop	{r1}
	mov	r0, #0
	cmp	r0,r1
	mov	r1, #0
	movne	 r1, #1
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	bl	printf
#575 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-48]
	pop	{fp}
	push	{r0}
#576 End VARIABLE l, depth difference: 0, stack offset: -48
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
#577 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#578 Leaving FUNCTION (main) with depth 2
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
#579 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
