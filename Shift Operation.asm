.model small
.stack 100h
.code
main proc
    mov ax,4
    shl ax,1 ;1 bar shif hbe 
    
    mov ah,2  ;left shift e value double hoiye jai
    mov dx,ax
    add dx,30h  ;30h or 48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main