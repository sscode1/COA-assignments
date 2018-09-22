############################
# Program: Implement a function that calculates the sum of the #elements of the array. The function accepts the length of
#	the array and the address of the first element of the #array. The function returns the sum to the caller. The
#	main procedure calculates the average of the elements of #the array. The main procedure uses the mentioned
#	the function. Use the RISC-V compiler subroutine #conventions for this code.
# Name: Siddharth Singh,Chaitany Pandiya
# Roll number: 17CO146,171CO112
# Date: 5/9/2018
############################
	.option nopic
	.text
	.align	1
	.globl	add
	.type	add, @function
add:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	lw	a5,-24(s0)
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	add, .-add
	.section	.rodata
	.align	3
.LC1:
	.string	"the array is"
	.align	3
.LC2:
	.string	"%d\t"
	.align	3
.LC4:
	.string	"\nthe sum is %d and avg is %f"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	lui	a5,%hi(.LC0)
	ld	a1,%lo(.LC0)(a5)
	addi	a4,a5,%lo(.LC0)
	ld	a2,8(a4)
	addi	a4,a5,%lo(.LC0)
	ld	a3,16(a4)
	addi	a4,a5,%lo(.LC0)
	ld	a4,24(a4)
	addi	a5,a5,%lo(.LC0)
	ld	a5,32(a5)
	sd	a1,-72(s0)
	sd	a2,-64(s0)
	sd	a3,-56(s0)
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	puts
	sw	zero,-20(s0)
	sw	zero,-20(s0)
	j	.L6
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-56(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L7
	addi	a5,s0,-72
	li	a1,10
	mv	a0,a5
	call	add
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	fcvt.d.w	fa4,a5
	lui	a5,%hi(.LC3)
	fld	fa5,%lo(.LC3)(a5)
	fdiv.d	fa5,fa4,fa5
	fcvt.s.d	fa5,fa5
	fsw	fa5,-28(s0)
	flw	fa5,-28(s0)
	fcvt.d.s	fa5,fa5
	lw	a5,-24(s0)
	fmv.x.d	a2,fa5
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	nop
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC3:
	.word	0
	.word	1076101120
	
