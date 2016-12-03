assume cs:code,ds:data

data segment
    db 'BaSic'
    db 'iNfOrMaTiOn'
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov bx,0
    
    mov cx,5   ;设置循环次数为5，因为basic有五个字母
s:  mov al,[bx]
    and al,11011111B   ;将al中的ASCII码的第五个位置置0，变为大写字母
    mov [bx],al
    inc bx
    loop s


    mov bx,5        ;ds:bx指向iNfOrMaTiOn 的第一个字母
    
    mov cx,11
s0: mov al,[bx]
    or al,00100000B         ;将第五个位置置1，变为小写字母
    mov [bx],al
    inc bx
    loop s0

    mov ax,4c00h
    int 21h

code ends
end start
