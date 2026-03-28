.module collatz
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
; p24p output: collatz
.global n 1
.global steps 1

.proc main 0
    enter 0
    push 27
    storeg n
    push 0
    storeg steps
    loadg n
    call _p24p_write_int
    call _p24p_write_ln
L0:
    loadg n
    push 1
    ne
    jz L1
    loadg n
    push 2
    mod
    push 0
    eq
    jz L2
    loadg n
    push 2
    div
    storeg n
    jmp L3
L2:
    push 3
    loadg n
    mul
    push 1
    add
    storeg n
L3:
    loadg steps
    push 1
    add
    storeg steps
    loadg n
    call _p24p_write_int
    call _p24p_write_ln
    jmp L0
L1:
    loadg steps
    call _p24p_write_int
    call _p24p_write_ln
    halt
.end
.endmodule
; OK
