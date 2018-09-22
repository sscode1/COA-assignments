############################
# Program: Matrix multiplication using functions
# Name: Siddharth Singh
,Chaitany Pandiya# Roll number: 17CO146
,171CO112# Date: 5/9/2018
############################
	.option nopic
	.section	.rodata
	.align	3
.LC2:
	.string	"Matrix 1 is"
	.align	3
.LC3:
	.string	"%d\t"
	.align	3
.LC4:
	.string	"Matrix 2 is "
	.align	3
.LC5:
	.string	"Resultant is"
	.text
	.align	1
	.globl	multiply
	.type	multiply, @function
multiply:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	mv	a1,a2
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	mv	a5,a1
	sw	a5,-68(s0)
	mv	a5,a2
	sw	a5,-72(s0)
	mv	a5,a3
	sw	a5,-76(s0)
	mv	a5,a4
	sw	a5,-80(s0)
	sd	zero,-48(s0)
	sd	zero,-40(s0)
	sw	zero,-32(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	puts
	sw	zero,-20(s0)
	j	.L2
.L5:
	sw	zero,-24(s0)
	j	.L3
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L4
	li	a0,10
	call	putchar
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	sw	zero,-20(s0)
	j	.L6
.L9:
	sw	zero,-24(s0)
	j	.L7
.L8:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L7:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L8
	li	a0,10
	call	putchar
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L9
	sw	zero,-20(s0)
	j	.L10
.L15:
	sw	zero,-24(s0)
	j	.L11
.L14:
	sw	zero,-28(s0)
	j	.L12
.L13:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a3,-64(s0)
	add	a3,a3,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-32(s0)
	addw	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L12:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L13
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	slli	a4,a4,1
	add	a5,a4,a5
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,-32(a5)
	sw	zero,-32(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L11:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L14
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L15
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	puts
	sw	zero,-20(s0)
	j	.L16
.L19:
	sw	zero,-24(s0)
	j	.L17
.L18:
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	slli	a4,a4,1
	add	a5,a4,a5
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-32(a5)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L17:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L18
	li	a0,10
	call	putchar
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L16:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L19
	nop
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	multiply, .-multiply
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	5
	.word	6
	.word	7
	.word	8
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
	sd	a4,-32(s0)
	addi	a5,a5,%lo(.LC0)
	ld	a5,8(a5)
	sd	a5,-24(s0)
	lui	a5,%hi(.LC1)
	ld	a4,%lo(.LC1)(a5)
	sd	a4,-48(s0)
	addi	a5,a5,%lo(.LC1)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a1,s0,-48
	addi	a0,s0,-32
	li	a5,2
	li	a4,2
	li	a3,2
	li	a2,2
	call	multiply
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 7.2.0"
