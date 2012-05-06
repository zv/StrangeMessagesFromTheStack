# Strange Messages

One of my roomates asked me if I could write a program that's ASCII readable in assembly and
also english. 

One Viterbi search algorithm and dredging over the x86 hex-to-opcode docs, the challenge has
been completed.

This is built for BSD-derivates, but you can drop the pushes in the printf routine and convert 
them to mov operands into some temporary register (but not ECX!).

The message contained in the binary is as follows. Your operating system's executable and linkable format may vary.


```
 00000fa0  00 00 42 59 41 43 49 47  41 52 41 46 41 59 49 47  |..BYACIGARAFAYIG|
 00000fb0  52 41 50 48 57 48 4f 48  41 5a 41 52 53 48 41 5a  |RAPHWHOHAZARSHAZ|
 00000fc0  59 48 41 43 4b 52 53 50  52 41 59 53 68 37 00 00  |YHACKRSPRAYSh7..|
 00000fd0  00 68 00 20 00 00 68 01  00 00 00 b8 04 00 00 00  |.h. ..h.........|
 00000fe0  81 ec 04 00 00 00 cd 80  81 c4 10 00 00 00 68 00  |..............h.|
 00000ff0  00 00 00 b8 01 00 00 00  81 ec 04 00 00 00 cd 80  |................|
``` 

You may notice it lacks Ds, I accidentally built the Viterbi search to utilize "D" (or inc %esp), which obviously
will break the correct stack pointer and cause the whole thing to come crashing down.

Build it as you normally would, 

```
nasm -f WHATEVERYOURLINKABLEFORMATIS faydigraph.asm
ld -o faydigraph -e strangemsg faydigraph.o
```

I'll think of something more clever to write later.
