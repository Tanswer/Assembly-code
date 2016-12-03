assume cd : code

code segment
start:
    mov ax,0b800h
    mov ds,ax
    mov bx,0000h
    mov cx,0741h
    mov ds:[bx],cx

    mov ax,4c00h
    int 21h

code ends
end start
