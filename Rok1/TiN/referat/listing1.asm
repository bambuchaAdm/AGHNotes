	;; Pomijam includy i nie znaczące rzeczy

	sbi DDRA 1

main:	sbi PORTA 1
	nop
	nop
	cbi PORTA 1
	nop
	nop
	rjump main
	