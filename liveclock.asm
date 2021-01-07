       #start=Emulation Kit.exe#

org 100h

GETHOUR:
	
	MOV AH, 2CH
	INT 21h
	
	MOV BL, 10
	
	xor AX, AX
	MOV AL, CH
	DIV BL
	PUSH AX    
	
	xor AX, AX
	MOV AL, CL 
	DIV BL
	PUSH AX
	
	xor AX, AX
	MOV AL, DH
	DIV BL
	PUSH AX
	
	MOV DX, 2037h
	xor AX, AX
	
	POP CX
	MOV BH, CH
	CALL SEGMENTIZE
	MOV BH, CL
	CALL SEGMENTIZE
	
	MOV AL, 01000000b
	OUT DX, AL
	DEC DX
		
	POP CX
	MOV BH, CH
	CALL SEGMENTIZE
	MOV BH, CL
	CALL SEGMENTIZE
	
	MOV AL, 01000000b
	OUT DX, AL
	DEC DX
	
	POP CX
	MOV BH, CH
	CALL SEGMENTIZE
	MOV BH, CL
	CALL SEGMENTIZE
	

	LOOP GETHOUR

    
    PROC SEGMENTIZE
    
    CMP BH, 0
    JE  is0
    	
    CMP BH, 1
    JE  is1
    	
    CMP BH, 2
    JE  is2
    	
    CMP BH, 3
    JE  is3
    	
    CMP BH, 4
    JE  is4
    	
    CMP BH, 5
    JE  is5
    	
    CMP BH, 6
    JE  is6
    	                                                
    CMP BH, 7
    JE  is7
    	
    CMP BH, 8
    JE  is8
    	
    CMP BH, 9
    JE  is9
    
    is0:
    MOV AL, 00111111b
    OUT DX, AL
	DEC DX
    ret
    
    is1:
    MOV AL, 00000110b
    OUT DX, AL
	DEC DX
    ret
    
    is2:
    MOV AL, 01011011b
    OUT DX, AL
	DEC DX
    ret
    
    is3:
    MOV AL, 01001111b
    OUT DX, AL
	DEC DX
    ret
    
    is4:
    MOV AL, 01100110b
    OUT DX, AL
	DEC DX
    ret
    
    is5:
    MOV AL, 01101101b
    OUT DX, AL
	DEC DX
    ret
    
    is6:
    MOV AL, 01111101b
    OUT DX, AL
	DEC DX
    ret
    
    is7:
    MOV AL, 00000111b
    OUT DX, AL
	DEC DX
    ret
    
    is8:
    MOV AL, 01111111b
    OUT DX, AL
	DEC DX
    ret
    
    is9:
    MOV AL, 01101111b
    OUT DX, AL
	DEC DX
    ret            
