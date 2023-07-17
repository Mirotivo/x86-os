bits 16 
org 0x7c00 

boot:
    mov si,startText
    mov ah,0x0e
.loop:
    lodsb
    or al,al 
    jz getInput  
    int 0x10 
    jmp .loop

getInput:
    mov ah,00h
    int 16h
    cmp al, '1'
    je red
    cmp al, '2'
    je green
    cmp al, '3'
    je blue
    jmp getInput

red:
    mov si, redText
    jmp print
green:
    mov si, greenText
    jmp print
blue:
    mov si, blueText
    jmp print

print:
    mov ah, 0x0e
    .printloop:
    lodsb
    or al,al 
    jz halt  
    int 0x10 
    jmp .printloop

halt:
    cli
    hlt

startText:
    db "What is your favourite colour?",13,10
    db "Press 1 for red",13,10
    db "Press 2 for green",13,10
    db "Press 3 for blue",13,10
    db 13,10,0

redText:
    db "Your favourite colour is red",0
greenText:
    db "Your favourite colour is green",0
blueText:
    db "Your favourite colour is blue",0

times 510 - ($-$$) db 0 
dw 0xaa55
