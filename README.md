# Test for monty
> Unit test for monty project

## Install

1. Clone the repo inside your project.
```console
git clone https://github.com/JuanDAC/monty_test.git
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

* Move to the folder.
```
cd monty_test
```

There are 2 ways to run the test-all script. The first one
is without arguments

### Run without args
```console
foo@bar$ ./test-all
NO ARGS
NO ARGS
0-add.m: OK
0-comments.m: OK
0-div.m: OK
0-mul.m: OK
0-nop.m: OK
0-pchar.m: FAILED.
0-pint.m: OK
```
<style>
r { color: Red }
m { color: Magenta }
g { color: Green }
</style>

It will show the files and the status code.

- <g>OK:</g> Expected result.
- <r>FAILED:</r> It is not the expected result.
- <m>NO_REF:</m> There is no file to be compared.

If the output and the expected are equals the code should
be <g>OK</g>

If the output and the expected are diferents. The code
should be <r>FAILED</r>.

If the expected is not found The code sould be <m>NO_REF</m>.

### Run with args
If you run the command with a `<monty-file>` as argument
the script will search this file in the bytecode folder
and show
 - `ARGS` in the first line
 - The file name and the test code in the second line
 - A horizonal line
 - _`[GOT]`_ output of the `<monty-file>` througt your program
 - The *Output* of program
 - _`[EXPECTED]`_
 - Expected output

```console
foo@bar$ ./test-all 2-pupa.m
ARGS
2-pupa.m: OK
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
