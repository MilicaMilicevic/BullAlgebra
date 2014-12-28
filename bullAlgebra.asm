;If bits ALD7-ALD0 are part of AL and they represent values of logical variables V7,...,V0, write cod that calculates value of Bull expression 
;and set result in AH.  FI(V7,...,V0)=(i)V7V5(i)V3V1+V6(i)V4V2(i)V0+
;+V5(i)V4(i)V3V2  

SECTION .data
testData	db	10100100b

SECTION .text
global _start
_start:

MOV	AL,[testData]
OR	AL,55h
XOR	AL,0DDh
CMP	AL,1
JE	setResult

MOV	AL,[testData]
OR	AL,0AAh
XOR	AL,0BBh
CMP	AL,1
JE	setResult

MOV	AL,[testData]
OR	AL,0C3h
XOR	AL,0DBh
CMP	AL,1
JE	setResult
JMP	end

setResult:	
  MOV	AH,1

end:
  MOV	EAX,1
  MOV	EBX,0
  INT	80h







