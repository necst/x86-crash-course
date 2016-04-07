	.file	"test.c"
	.text
	.globl	sum
	.type	sum, @function
sum:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	popl	%ebp
	ret
	.size	sum, .-sum
	.section	.rodata
.LC0:
	.string	"%d + %d = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ecx
	subl	$20, %esp
	movl	$3, -12(%ebp)
	movl	$5, -16(%ebp)
	movl	$7, -20(%ebp)
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	call	sum
	addl	$8, %esp
	pushl	%eax
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	subl	$8, %esp
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	call	sum
	addl	$16, %esp
	pushl	%eax
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	leave
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 5.3.0"
	.section	.note.GNU-stack,"",@progbits
