	org 0000h
	mov tmod,#01h;
here: mov tl0, #66h;
	mov th0, #0fch;
	cpl p1.0;
	acall delay;
	sjmp here

delay: setb tr0;
again: jnb tf0, again;
	clr tr0;
	clr tf0;
	ret;
	end