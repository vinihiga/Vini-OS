[org 0x7c00]

mov bx, HELLO

LOOP:
    mov al, [bx]
    cmp al, 0
    je  DONE

    mov ah, 0x0e ; tty mode 
    int 0x10

    add bx, 1
    jmp LOOP

DONE:


jmp $

HELLO:
    db  "Hello World! This is my boot system!", 0


times 510-($-$$) db 0
dw 0xaa55