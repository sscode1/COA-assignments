############################
# Program: Load two 64b constants from memory on to x5 and x6. Add them and store the result in x7.
# Name: Siddharth Singh
,Chaitany Pandiya# Roll number: 17CO146,171CO112
# Date: 5/9/2018
############################
       	.option nopic
	.text
	.align 1
	.globl main
	.type main, @function
main:
addi sp,sp,-16
li x7,5
li x8,6
sd x7,0(sp)
sd x8,8(sp)
ld x5,0(sp)
ld x6,8(sp)
add x7,x5,x6


