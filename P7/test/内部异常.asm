.text
beq $0, $0, epc1
lw $2, 0x3($0)
epc1:
beq $0, $0, epc2
lw $2, 0x3($0)
epc2:
beq $0, $0, epc3
lw $2, 0x3($0)
epc3:
lw $1, 0x4($0)
sw $1, 0x4($0)
lw $1, 0x4($0)
addi $1, $1, 0x1
.ktext 0x4180
_entry:
    # ����������
    la $s0,_save_context
    jr $s0
    nop

_main_handler:
    # ȡ�� ExcCode
    mfc0 $k0, $13
    ori $k1, $0, 0x7c
    and $k0, $k0, $k1

    # ������жϣ�ֱ�ӻָ�������
    beq $k0, $0, _restore_context
    nop

    # �� EPC + 4���������쳣�ķ�������������ǰָ��
    mfc0 $k0, $14
    add $k0, $k0, 4
    mtc0 $k0, $14
    la $s1,_restore_context
    jr $s1 
    nop

_exception_return:
    eret

_save_context:
    ori $k0, $0, 0x1000     # ��ջ����һ��ռ䱣���ֳ�
    addi $k0, $k0, -256
    sw $sp, 116($k0)        # ���ȱ���ջָ��
    add $sp,$0, $k0

    # ���α���ͨ�üĴ�����ע��Ҫ���� $sp����HI �� LO
    sw $1, 4($sp)
    sw $2, 8($sp)
    # ......
    sw $31, 124($sp)
    mfhi $k0
    mflo $k1
    sw $k0, 128($sp)
    sw $k1, 132($sp)

    la $s2, _main_handler
    jr $s2
    nop

_restore_context:
    # ���λָ�ͨ�üĴ�����ע��Ҫ���� $sp���� HI �� LO
    lw $1, 4($sp)
    lw $2, 8($sp)
    # ......
    lw $31, 124($sp)
    lw $k0, 128($sp)
    lw $k1, 132($sp)
    mthi $k0
    mtlo $k1

    # ���ָ�ջָ��
    lw $sp, 116($sp)

    la $s3,_exception_return
    jr $s3 
    nop
