.module forloop
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
; p24p output: forloop
.global i 1
.global sum 1

.proc main 0
    enter 0
    push 0
    storeg sum
    push 1
    storeg i
L0:
    loadg i
    push 10
    le
    jz L1
    loadg sum
    loadg i
    add
    storeg sum
    loadg i
    push 1
    add
    storeg i
    jmp L0
L1:
    loadg sum
    call _p24p_write_int
    call _p24p_write_ln
    push 5
    storeg i
L2:
    loadg i
    push 1
    ge
    jz L3
    loadg i
    call _p24p_write_int
    call _p24p_write_ln
    loadg i
    push 1
    sub
    storeg i
    jmp L2
L3:
    halt
.end
.endmodule
; OK
