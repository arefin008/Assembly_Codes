.model small
.stack 100h
.code
main proc    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bl,bh   ;compare 
    jg IF_
    
    jmp then_   ;nothing will  print
    
    If_:
    mov ah,2
    mov dl,bl
    int 21h
    
    
    then_: 
    
           
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    