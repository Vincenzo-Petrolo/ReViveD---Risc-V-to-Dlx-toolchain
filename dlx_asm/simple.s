main:
	addi	r2,r2,#-32
	sw	r1,28(r2)
	sw	r8,24(r2)
	addi	r8,r2
	addi	r15,#0
	sw	r15,-20(r8)
	addi	r15,#0
	sw	r15,-24(r8)
	lw	r14,-20(r8)
	addi	r15,#0
	bne	r14,r15
	lw	r11,-24(r8)
	addi	r10,#0
	jal	add
	sw	r10,-28(r8)
	lw	r11,-24(r8)
	lw	r10,-20(r8)
	jal	add
	sw	r10,-28(r8)
	lw	r15,-28(r8)
	addi	r10,r15,#0
	lw	r1,28(r2)
	lw	r8,24(r2)
	addi	r2,r2
	jr	r1
add:
	addi	r2,r2,#-32
	sw	r8,28(r2)
	addi	r8,r2
	sw	r10,-20(r8)
	sw	r11,-24(r8)
	lw	r14,-20(r8)
	lw	r15,-24(r8)
	add	r15,r14,r15
	addi	r10,r15,#0
	lw	r8,28(r2)
	addi	r2,r2
	jr	r1