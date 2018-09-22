############################
# Program: Print Hello World on the output screen. 
# Name: Siddharth Singh,Chaitany Pandiya
# Roll number: 17CO146,171CO112
# Date: 5/9/2018
############################
	.option nopic
	.text
	.align 1
	.type main, @function
.data
	number1: .word 10
.LC0:
	.string	"Hello world"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	nop
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
