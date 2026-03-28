.module hello
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
; p24p output: hello

.proc main 0
    enter 0
    push S0
    call _p24p_write_str
    call _p24p_write_ln
    halt
.end
.data S0 72,101,108,108,111,44,32,87,111,114,108,100,33,0
.endmodule
; OK
