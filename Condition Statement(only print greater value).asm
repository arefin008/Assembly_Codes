.model small
.stack 100h
.code
main proc    ;This program only print greater value
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bl,bh   ;compare 
    jg IF_
    
    jl then_   ;nothing will  print
    
    If_:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    then_: 
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
           
    exit:
    mov ah,4ch
    int 21h
    main endp
end main