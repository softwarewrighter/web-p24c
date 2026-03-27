.module countdown
.export main
.extern _p24p_write_int
.extern _p24p_write_ln

.global _g_i 1

.proc main 0
    ; i := 5
    push 5
    storeg _g_i
loop_test:
    ; while i > 0
    loadg _g_i
    push 0
    gt
    jz loop_end
    ; writeln(i)
    loadg _g_i
    call _p24p_write_int
    call _p24p_write_ln
    ; i := i - 1
    loadg _g_i
    push 1
    sub
    storeg _g_i
    jmp loop_test
loop_end:
    halt
.end

.endmodule
