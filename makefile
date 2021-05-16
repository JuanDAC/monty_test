flags=-g -Wall -Wextra -Werror -pedantic
btcodes=../bytecodes
ll:
	clear;
	gcc $(flags) ../*.c -o test
	./test ../bytecodes/test.m

test-pint:
	clear;
	gcc $(flags) ../*.c -o test
	./test $(btcodes)/pint-files/0-pint.m
	./test $(btcodes)/pint-files/1-pint.m
	./test $(btcodes)/pint-files/2-pint.m
	./test $(btcodes)/pint-files/3-pint.m
