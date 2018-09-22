############################
# Program: Load a 64b constant in the memory location pointed to by the global pointer. Load another 64b constant in
#	the first memory location of the data segment. Add them both and save the sum in the 100 th doubleword of
#	the data segment
# Name: Siddharth Singh, Chaitany Pandiya
# Roll number: 17CO146,171CO112
# Date: 5/9/2018
############################
	.option nopic
	.text
	.align 1
	.globl main
	.type main, @function
main:
	li x5,5
	sd x5,0(x3)
	li x8,6
	sd x8,8(x3)
	add x7,x5,x8
	sd x7,792(x3)
	
