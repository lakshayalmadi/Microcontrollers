org 0000h
mov a, #92h;
mov b,#23h;
add a,b;
jnc l1;
inc r0;
l1:mov b,a
mov a, #66h
add a,b;
jnc l2;
inc r0;
l2: mov b,a;
mov a, #87h;
add a,b;
jnc l3;
inc r0;
l3: mov b,a;
mov a, #0f5h;
add a,b;
jnc l4;
inc r0;
l4:sjmp l4;
end