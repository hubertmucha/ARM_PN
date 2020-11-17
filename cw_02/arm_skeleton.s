		area	MAIN_CODE, CODE, READONLY
		get		LPC213x.s
		
		ENTRY
__main
__use_two_region_memory
		export			__main
		export			__use_two_region_memory
		
main_loop
		ldr R0,=1
		nop
		ldr R4,=15000
		mul R0,R4,R0
loop
		subs R0,R0,#1
		bne				loop
		b				main_loop

		end

