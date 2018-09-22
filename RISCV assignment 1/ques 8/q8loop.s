############################
# Program: Find factorial using loop. 
# Name: Siddharth Singh,Chaitany Pandiya
# Roll number: 17CO146,171CO112
# Date: 5/9/2018
############################
 #t1 = counter
# t2 = product
.option nopic
.text
.align 1
.text
.globl main
.type main, @function
	main:
    		li t0, 7
    		li t1, 1
    		li t2, 1

	loop:
        	bgt t1, t0, end   # If greater then number, go to end
        	mul t2, t2, t1   # t2=t2*t1
        	addi t1,t1, 1         # t1+=1
        	j loop

	end:
		addi x0,x0,5
