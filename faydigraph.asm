section .text

global strangemsg 

strangemsg:

  inc edx; "b"
  pop ecx; "y"

  inc ecx; "a"

  inc ebx; "c"
  dec ecx; "i" 
  inc edi; "g"
  inc ecx; "a"
  push edx; "r"

  inc ecx; "a"

  inc esi; "f"
  inc ecx; "a"
  pop ecx; "y"

  dec ecx; "i"
  inc edi; "g"
  push edx; "r" 
  inc ecx ; "a"
  push eax; "p"
  dec eax; or "h"

  push edi; "w"
  dec eax; "h"
  dec edi; "o"

  dec eax; "h"
  inc ecx; "a"
  pop edx; "z"
  inc ecx; "a"
  push edx; "r"
  push ebx; "s"

  dec eax; "h"
  inc ecx; "a"
  pop edx; "z"
  pop ecx; 'y'

  dec eax; "h"
  inc ecx; "a"
  inc ebx; "c" 
  dec ebx;  "k"
  push edx; "r" 
  push ebx; "s"

  push eax; "p"
  push edx; "r"
  inc ecx; "a"
  pop ecx; "y"
  push ebx; "s"

  ; Everything past here
  ; is entirely nonessential
  ; and is not alphanumeric

  push dword mslen  
  push dword sgmes 
  push dword 1

  mov eax, 0x4
  sub esp, 4
  int 0x80
  add esp, 16
  push dword 0
  mov eax, 0x1
  sub esp, 4
  int 0x80

section .data

  sgmes db "by a cigar a fay digraph who hazards hazy hackrs prays", 0xa  
  mslen equ $-sgmes
