; function to increment in one unity a variable with double data-type 
	global incdouble
	section .data
uno	dq	1.0
	section .text
incdouble:
	addsd	xmm0,	[rel uno]
	ret
