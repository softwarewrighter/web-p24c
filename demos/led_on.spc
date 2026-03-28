.module ledon
.extern _p24p_write_int
.extern _p24p_write_bool
.extern _p24p_write_str
.extern _p24p_write_ln
.extern _p24p_read_int
.extern _p24p_read_ln
.extern _p24p_abs
.extern _p24p_odd
.extern _p24p_ord
.extern _p24p_chr
.extern _p24p_succ
.extern _p24p_pred
.extern _p24p_sqr
.extern _p24p_eof
.extern _p24p_eoln
.extern _p24p_write_char
.extern _p24p_set_led
.extern _p24p_read_switch
.export main
; p24p output: ledon

.proc main 0
    enter 0
    push 1
    call _p24p_set_led
    push S0
    call _p24p_write_str
    call _p24p_write_ln
    halt
.end
.data S0 76,69,68,32,111,110,0
.endmodule
; OK
