assume cs:code

code segment
    
    mov bx,0
    
    mov cx,12
s:  mov ax,0ffffh
    mov ds,ax       ;ds = 0ffffh
    mov dl,[bx]     ;将ffff:bx中的数据送入dl

    mov ax,0020h
    mov ds,ax       ;ds = 0020h
    mov [bx],dl     ;将dl中的数据送入0020:bx

    inc bx          ;bx = bx + 1
    loop s

    mov ax,4c00h
    int 21h

code ends
end


