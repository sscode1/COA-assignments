############################
# Program: Initialise contiguous chunk of memory with 10 two digit numbers.
# Name: Siddharth Singh
,Chaitany Pandiya# Roll number: 17CO146,171CO112
# Date: 5/9/2018
############################
	.data
		array: .dword 10,15,20,25,30,35,40,45,50,55
       	.option nopic
	.text
	.align 1
	.globl main
	.type main, @function
main:
	addi x5,x0,0
	li x6,0
	li x7,10
	la x8,array
loop:
	beq x6,x7,end
	ld x28,0(x8)
	add x5,x5,x28
	addi x8,x8,8
	addi x6,x6,1
	j loop
end:
	li x0,1
