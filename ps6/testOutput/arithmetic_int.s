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
	movw	r0, #:lower16:543
	movt	r0, #:upper16:543
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
	movw	r0, #:lower16:23
	movt	r0, #:upper16:23
	push	{r0}
#20 End CONSTANT
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-8]
	mov	fp, r1
#21 End ASSIGNMENT_STATEMENT
#22 Starting ASSIGNMENT_STATEMENT
#23 Starting EXPRESSION of type UMINUS
#24 Starting CONSTANT
	movw	r0, #:lower16:432
	movt	r0, #:upper16:432
	push	{r0}
#25 End CONSTANT
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#26 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-12]
	mov	fp, r1
#27 End ASSIGNMENT_STATEMENT
#28 Starting ASSIGNMENT_STATEMENT
#29 Starting EXPRESSION of type UMINUS
#30 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#31 End VARIABLE a, depth difference: 0, stack offset: -4
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#32 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#33 End ASSIGNMENT_STATEMENT
#34 Starting ASSIGNMENT_STATEMENT
#35 Starting EXPRESSION of type UMINUS
#36 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#37 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#38 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#39 End ASSIGNMENT_STATEMENT
#40 Starting ASSIGNMENT_STATEMENT
#41 Starting EXPRESSION of type UMINUS
#42 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#43 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#44 Ending EXPRESSION of type UMINUS
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#45 End ASSIGNMENT_STATEMENT
#46 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#47 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#48 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#49 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#50 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#51 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#52 End VARIABLE f, depth difference: 0, stack offset: -24
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#53 Ending PRINT_STATEMENT
#54 Starting ASSIGNMENT_STATEMENT
#55 Starting EXPRESSION of type +
#56 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#57 End VARIABLE a, depth difference: 0, stack offset: -4
#58 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#59 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#60 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#61 End ASSIGNMENT_STATEMENT
#62 Starting ASSIGNMENT_STATEMENT
#63 Starting EXPRESSION of type +
#64 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#65 End VARIABLE a, depth difference: 0, stack offset: -4
#66 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#67 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#68 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#69 End ASSIGNMENT_STATEMENT
#70 Starting ASSIGNMENT_STATEMENT
#71 Starting EXPRESSION of type +
#72 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#73 End VARIABLE b, depth difference: 0, stack offset: -8
#74 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#75 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#76 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#77 End ASSIGNMENT_STATEMENT
#78 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#79 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#80 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#81 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#82 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#83 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#84 End VARIABLE f, depth difference: 0, stack offset: -24
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#85 Ending PRINT_STATEMENT
#86 Starting ASSIGNMENT_STATEMENT
#87 Starting EXPRESSION of type -
#88 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#89 End VARIABLE a, depth difference: 0, stack offset: -4
#90 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#91 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#92 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#93 End ASSIGNMENT_STATEMENT
#94 Starting ASSIGNMENT_STATEMENT
#95 Starting EXPRESSION of type -
#96 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#97 End VARIABLE a, depth difference: 0, stack offset: -4
#98 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#99 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#100 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#101 End ASSIGNMENT_STATEMENT
#102 Starting ASSIGNMENT_STATEMENT
#103 Starting EXPRESSION of type -
#104 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#105 End VARIABLE b, depth difference: 0, stack offset: -8
#106 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#107 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#108 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#109 End ASSIGNMENT_STATEMENT
#110 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#111 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#112 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#113 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#114 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#115 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#116 End VARIABLE f, depth difference: 0, stack offset: -24
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#117 Ending PRINT_STATEMENT
#118 Starting ASSIGNMENT_STATEMENT
#119 Starting EXPRESSION of type -
#120 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#121 End VARIABLE a, depth difference: 0, stack offset: -4
#122 Starting EXPRESSION of type UMINUS
#123 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#124 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#125 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#126 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#127 End ASSIGNMENT_STATEMENT
#128 Starting ASSIGNMENT_STATEMENT
#129 Starting EXPRESSION of type -
#130 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#131 End VARIABLE a, depth difference: 0, stack offset: -4
#132 Starting EXPRESSION of type UMINUS
#133 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#134 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#135 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#136 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#137 End ASSIGNMENT_STATEMENT
#138 Starting ASSIGNMENT_STATEMENT
#139 Starting EXPRESSION of type -
#140 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#141 End VARIABLE b, depth difference: 0, stack offset: -8
#142 Starting EXPRESSION of type UMINUS
#143 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#144 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r1}
	mov	r2, #0
	sub	r1, r2, r1
	push	{r1}
#145 Ending EXPRESSION of type UMINUS
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#146 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#147 End ASSIGNMENT_STATEMENT
#148 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#149 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#150 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#151 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#152 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#153 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#154 End VARIABLE f, depth difference: 0, stack offset: -24
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#155 Ending PRINT_STATEMENT
#156 Starting ASSIGNMENT_STATEMENT
#157 Starting EXPRESSION of type *
#158 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#159 End VARIABLE a, depth difference: 0, stack offset: -4
#160 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#161 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#162 Ending EXPRESSION of type *
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#163 End ASSIGNMENT_STATEMENT
#164 Starting ASSIGNMENT_STATEMENT
#165 Starting EXPRESSION of type *
#166 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#167 End VARIABLE a, depth difference: 0, stack offset: -4
#168 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#169 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#170 Ending EXPRESSION of type *
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#171 End ASSIGNMENT_STATEMENT
#172 Starting ASSIGNMENT_STATEMENT
#173 Starting EXPRESSION of type *
#174 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#175 End VARIABLE b, depth difference: 0, stack offset: -8
#176 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#177 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#178 Ending EXPRESSION of type *
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#179 End ASSIGNMENT_STATEMENT
#180 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#181 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#182 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#183 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#184 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#185 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#186 End VARIABLE f, depth difference: 0, stack offset: -24
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#187 Ending PRINT_STATEMENT
#188 Starting ASSIGNMENT_STATEMENT
#189 Starting EXPRESSION of type /
#190 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#191 End VARIABLE a, depth difference: 0, stack offset: -4
#192 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#193 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#194 Ending EXPRESSION of type /
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#195 End ASSIGNMENT_STATEMENT
#196 Starting ASSIGNMENT_STATEMENT
#197 Starting EXPRESSION of type /
#198 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#199 End VARIABLE a, depth difference: 0, stack offset: -4
#200 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#201 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#202 Ending EXPRESSION of type /
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#203 End ASSIGNMENT_STATEMENT
#204 Starting ASSIGNMENT_STATEMENT
#205 Starting EXPRESSION of type /
#206 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#207 End VARIABLE b, depth difference: 0, stack offset: -8
#208 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#209 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#210 Ending EXPRESSION of type /
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#211 End ASSIGNMENT_STATEMENT
#212 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#213 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#214 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#215 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#216 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#217 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#218 End VARIABLE f, depth difference: 0, stack offset: -24
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#219 Ending PRINT_STATEMENT
#220 Starting ASSIGNMENT_STATEMENT
#221 Starting EXPRESSION of type +
#222 Starting EXPRESSION of type +
#223 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#224 End VARIABLE a, depth difference: 0, stack offset: -4
#225 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#226 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#227 Ending EXPRESSION of type +
#228 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#229 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#230 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#231 End ASSIGNMENT_STATEMENT
#232 Starting ASSIGNMENT_STATEMENT
#233 Starting EXPRESSION of type -
#234 Starting EXPRESSION of type -
#235 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#236 End VARIABLE a, depth difference: 0, stack offset: -4
#237 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#238 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#239 Ending EXPRESSION of type -
#240 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#241 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#242 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#243 End ASSIGNMENT_STATEMENT
#244 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#245 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#246 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#247 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#248 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#249 Ending PRINT_STATEMENT
#250 Starting ASSIGNMENT_STATEMENT
#251 Starting EXPRESSION of type *
#252 Starting EXPRESSION of type *
#253 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#254 End VARIABLE a, depth difference: 0, stack offset: -4
#255 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#256 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#257 Ending EXPRESSION of type *
#258 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#259 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#260 Ending EXPRESSION of type *
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#261 End ASSIGNMENT_STATEMENT
#262 Starting ASSIGNMENT_STATEMENT
#263 Starting EXPRESSION of type /
#264 Starting EXPRESSION of type /
#265 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#266 End VARIABLE a, depth difference: 0, stack offset: -4
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
#270 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#271 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#272 Ending EXPRESSION of type /
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
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
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#277 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#278 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#279 Ending PRINT_STATEMENT
#280 Starting ASSIGNMENT_STATEMENT
#281 Starting EXPRESSION of type +
#282 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#283 End VARIABLE a, depth difference: 0, stack offset: -4
#284 Starting EXPRESSION of type *
#285 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#286 End VARIABLE b, depth difference: 0, stack offset: -8
#287 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#288 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#289 Ending EXPRESSION of type *
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#290 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#291 End ASSIGNMENT_STATEMENT
#292 Starting ASSIGNMENT_STATEMENT
#293 Starting EXPRESSION of type +
#294 Starting EXPRESSION of type *
#295 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#296 End VARIABLE a, depth difference: 0, stack offset: -4
#297 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#298 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	mul	r1,r1,r2
	push	{r1}
#299 Ending EXPRESSION of type *
#300 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#301 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#302 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#303 End ASSIGNMENT_STATEMENT
#304 Starting ASSIGNMENT_STATEMENT
#305 Starting EXPRESSION of type +
#306 Starting EXPRESSION of type /
#307 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#308 End VARIABLE a, depth difference: 0, stack offset: -4
#309 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#310 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#311 Ending EXPRESSION of type /
#312 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#313 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#314 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#315 End ASSIGNMENT_STATEMENT
#316 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#317 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#318 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#319 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#320 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#321 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#322 End VARIABLE f, depth difference: 0, stack offset: -24
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#323 Ending PRINT_STATEMENT
#324 Starting ASSIGNMENT_STATEMENT
#325 Starting EXPRESSION of type +
#326 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#327 End VARIABLE a, depth difference: 0, stack offset: -4
#328 Starting EXPRESSION of type /
#329 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#330 End VARIABLE b, depth difference: 0, stack offset: -8
#331 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#332 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#333 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	add	r1, r1, r2
	push	{r1}
#334 Ending EXPRESSION of type +
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-16]
	mov	fp, r1
#335 End ASSIGNMENT_STATEMENT
#336 Starting ASSIGNMENT_STATEMENT
#337 Starting EXPRESSION of type -
#338 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#339 End VARIABLE a, depth difference: 0, stack offset: -4
#340 Starting EXPRESSION of type /
#341 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#342 End VARIABLE b, depth difference: 0, stack offset: -8
#343 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#344 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#345 Ending EXPRESSION of type /
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#346 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-20]
	mov	fp, r1
#347 End ASSIGNMENT_STATEMENT
#348 Starting ASSIGNMENT_STATEMENT
#349 Starting EXPRESSION of type -
#350 Starting EXPRESSION of type /
#351 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-4]
	pop	{fp}
	push	{r0}
#352 End VARIABLE a, depth difference: 0, stack offset: -4
#353 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-8]
	pop	{fp}
	push	{r0}
#354 End VARIABLE b, depth difference: 0, stack offset: -8
	pop	{r2}
	pop	{r1}
	sdiv	r1, r1, r2
	push	{r1}
#355 Ending EXPRESSION of type /
#356 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-12]
	pop	{fp}
	push	{r0}
#357 End VARIABLE c, depth difference: 0, stack offset: -12
	pop	{r2}
	pop	{r1}
	sub	r1, r1, r2
	push	{r1}
#358 Ending EXPRESSION of type -
	push	{fp}
	pop	{r1}
	pop	{r0}
	str	r0, [fp, #-24]
	mov	fp, r1
#359 End ASSIGNMENT_STATEMENT
#360 Starting PRINT_STATEMENT
	push	{r6}
	pop	{r6}
#361 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-16]
	pop	{fp}
	push	{r0}
#362 End VARIABLE d, depth difference: 0, stack offset: -16
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#363 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-20]
	pop	{fp}
	push	{r0}
#364 End VARIABLE e, depth difference: 0, stack offset: -20
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
#365 Starting VARIABLE
	push	{fp}
	ldr	r0, [fp, #-24]
	pop	{fp}
	push	{r0}
#366 End VARIABLE f, depth difference: 0, stack offset: -24
	movw	r0, #:lower16:.INTEGER
	movt	r0, #:upper16:.INTEGER
	pop	{r1}
	bl	printf
	movw	r0, #:lower16:0x0A
	movt	r0, #:upper16:0x0A
	bl	putchar
#367 Ending PRINT_STATEMENT
	mov	sp, fp
	pop	{fp}
	pop	{pc}
#368 Leaving FUNCTION (main) with depth 2
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
#369 End PROGRAM
	mov	sp, fp
	pop	{fp}
	bl	exit
.end
