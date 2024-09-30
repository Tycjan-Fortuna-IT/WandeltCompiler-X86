	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 1
	.file	"wandelt"
	.def	_main;
	.scl	2;
	.type	32;
	.endef
	.globl	_main                           # -- Begin function main
	.p2align	4, 0x90
_main:                                  # @main
# %bb.0:                                # %entry
	xorl	%eax, %eax
	movl	$1, %edx
	.p2align	4, 0x90
LBB0_1:                                 # %loop
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ecx
	leal	(,%edx,4), %edx
	leal	(%edx,%edx,2), %edx
	incl	%eax
	cmpl	$3, %eax
	jb	LBB0_1
# %bb.2:                                # %afterloop
	pushl	%edi
	pushl	%esi
	movl	$-1840700269, %edx              # imm = 0x92492493
	movl	%ecx, %eax
	imull	%edx
	addl	%ecx, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	addl	%eax, %edx
	leal	(,%edx,8), %eax
	subl	%eax, %edx
	addl	%ecx, %edx
	leal	18(%edx,%edx,2), %eax
	xorl	%edx, %edx
	movl	$1, %esi
	.p2align	4, 0x90
LBB0_3:                                 # %loop1
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	imull	%eax, %esi
	incl	%edx
	cmpl	$3, %edx
	jb	LBB0_3
# %bb.4:                                # %afterloop2
	movl	$780903145, %edx                # imm = 0x2E8BA2E9
	movl	%ecx, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	%edx
	addl	%eax, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,2), %eax
	subl	%eax, %ecx
	leal	13(%ecx,%ecx), %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	.p2align	4, 0x90
LBB0_5:                                 # %loop5
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	leal	(%edx,%edx,2), %edx
	shll	$3, %edx
	subl	%esi, %edx
	incl	%eax
	cmpl	$3, %eax
	jb	LBB0_5
# %bb.6:                                # %afterloop6
	addl	$-8, %esi
	movl	$1717986919, %edx               # imm = 0x66666667
	movl	%esi, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	%edx
	addl	%eax, %edx
	leal	(%edx,%edx,4), %eax
	subl	%eax, %esi
	leal	6(,%esi,4), %eax
	xorl	%edx, %edx
	movl	$1, %edi
	.p2align	4, 0x90
LBB0_7:                                 # %loop9
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %esi
	imull	%eax, %edi
	incl	%edx
	cmpl	$3, %edx
	jb	LBB0_7
# %bb.8:                                # %afterloop10
	movl	$1321528399, %edx               # imm = 0x4EC4EC4F
	movl	%esi, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	addl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	leal	(%edx,%eax,4), %eax
	subl	%eax, %esi
	addl	%esi, %ecx
	movl	%ecx, %eax
	popl	%esi
	popl	%edi
	retl
                                        # -- End function
