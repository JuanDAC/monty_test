# Test for monty
> Unit test for monty project

## Install

compile your project with
```console
foo@bar$ make
gcc -g -Wall -Wextra -Werror -pedantic ../*.c -o test
./test ../bytecodes/prueba.m
3
2
```

## Create a new unittest
The unittest is compose by 2 files, and `*.m` file and
`expected-*` output.

The first must be in the root directory in the path `bytecodes/<file>.m`
and the second must be in the `test/expected-out/expected-<file>`

the code and the output must have the same name. But the first one with the
suffix `.m` and the second one with the prefix `expected-`

### Example
for the demo file `000.m` the expected file must be `expected-000`
and the path distributions must be
```console
foo@bar[monty]$ tree .
.
├── bytecodes
│   ├── 000.m                    <- Monty code 000.m
│   └── README.md
├── main.c
├── makefile
├── monty.h
├── README.md
└── test
    ├── expected-out
    │   └── expected-000         <- Expected output for 000.m
    ├── makefile
    ├── README.md
    ├── test                     <- compilated program
    ├── test-all                 <- script-for-unit-tests
    └── tmp
        └── stdout-000           <- temporal-file-for-000.m
...
```

## How to use
 - go to the test directory `cd test`
 - run the `test-all [monty-file]` script

there are 2 ways to run the test-all script. The first one
is without arguments

### Run without args
```console
foo@bar$ ./test-all
NO ARGS
000.m: NO_REF
001.m: NO_REF
00-isdigit.m: NO_REF
00.m: OK
00-negativeDigit.m: NO_REF
00-noFunction.m: NO_REF
00-noLine.m: NO_REF
00-nullFile.m: NO_REF
00-pushAlone.m: NO_REF
03-lessthan2A.m: OK
03-lessthan2B.m: OK
06.m: FAILED
07.m: OK
09.m: OK
```
it will show the files and the status code [OK/FAILED/NO_REF]
if the output and the expected are equals the code should
be `[OK]`

If the output and the expected are diferents. The code
should be `[FAILED]`

If the expected is not found The code sould be `[NO_REF]`

### Run with args
If you run the command with a `<monty-file>` as argument
the script will search this file in the bytecode folder
and show
 - `ARGS` in the first line
 - The file name and the test code in the second line
 - A horizonal line
 - [GOT] output of the `<monty-file>` througt your program
 - The *Output* of program
 - [EXPECTED]
 - Expected output

```console
foo@bar$ ./test-all 00.m
ARGS
00.m: OK
------------------
[GOT]
3
2
1
[EXPECTED]
3
2
1
------------------
```
