; Rotate operation  
; 1) ROL --> Rotate Left
; 2) ROR -->Rotate Right
; 3) RCL -->Rotate Carry Left
; 3) RCR -->Rotate Carry Right  

.model small
.stack 100h
.code
main proc
    mov ax,6
    ;rol ax,1    ;ror or rcl ->output will be same 
    rcr ax,1     ;ror and rcr ->output will be same
    
    mov ah,2  
    mov dx,ax
    add dx,30h  
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main



