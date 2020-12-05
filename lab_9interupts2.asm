org  0000h
mov r1, #40h
mov p1, #0ffh
mov a,p1
mov b,#64h
div ab
mov r2,a
add a,#30h
mov@r1,a
inc r1
mov a,b
mov b,#0ah
div ab
mov r3,a
add a,#30h
mov@r1,a
inc r1
mov a,b
add a,#30h
mov@r1,a
end