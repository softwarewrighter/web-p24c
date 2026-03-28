.module primecheck
.extern _p24p_write_int
.extern _p24p_write_bool
.extern _p24p_write_str
.extern _p24p_write_ln
.extern _p24p_abs
.extern _p24p_odd
.extern _p24p_ord
.extern _p24p_chr
.extern _p24p_succ
.extern _p24p_pred
.extern _p24p_sqr
.extern _p24p_eof
.extern _p24p_eoln
.extern _p24p_read_ln
.extern _p24p_write_char
.export main
; p24p output: primecheck
.global n 1
.global i 1
.global isprime 1

.proc main 0
    enter 0
    push 2
    storeg n
L0:
    loadg n
    push 20
    le
    jz L1
    push 1
    storeg isprime
    push 2
    storeg i
L2:
    loadg i
    loadg n
    lt
    jz L3
    loadg n
    loadg i
    mod
    push 0
    eq
    jz L4
    push 0
    storeg isprime
L4:
    loadg i
    push 1
    add
    storeg i
    jmp L2
L3:
    loadg isprime
    jz L6
    loadg n
    call _p24p_write_int
    call _p24p_write_ln
L6:
    loadg n
    push 1
    add
    storeg n
    jmp L0
L1:
    halt
.end
.endmodule
; OK
