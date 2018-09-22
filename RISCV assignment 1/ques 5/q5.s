############################
# Program: To reverse a string. 
# Name: Siddharth Singh,Chaitany Pandiya
# Roll number: 17CO146,171CO112
# Date: 5/9/2018
############################
	.option nopic
	.section	.rodata
	.align	3
.LC0:
	.string	"\nHello World!"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	lui	a5,%hi(.LC0)
	ld	a4,%lo(.LC0)(a5)
	sd	a4,-40(s0)
	addi	a4,a5,%lo(.LC0)
	lw	a4,8(a4)
	sw	a4,-32(s0)
	addi	a5,a5,%lo(.LC0)
	lhu	a5,12(a5)
	sh	a5,-28(s0)
	li	a5,12
	sw	a5,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a5,-24(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	putchar
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bgez	a5,.L3
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	
