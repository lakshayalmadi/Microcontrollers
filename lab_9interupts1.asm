org 0000h
mov tmod, #16h
setb p3.4
mov th0, #00h
setb tr0
clr p1.7
wait: mov a,tl0
cjne a, #5, wait
setb p1.7
acall delay
clr p1.7
here: sjmp here
delay:mov r0, #14
again: mov th1, #00h
mov tl1, #00h
setb tr1
stay: jnb tf1,stay
clr tr1
clr tf1
djnz r0, again
ret
end
