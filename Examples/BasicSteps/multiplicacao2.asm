
; int A=4, B=2, C=4, D=0;
; D = (A+B) * C;

.code
 lda A
 add B
 sta aux  ; aux = A + B

iteracao:
 lda D
 add aux
 sta D  ; D = D + aux
 
 lda cnt
 add #1
 sta cnt  ; cnt++
 
 lda cnt
 not
 add #1  
 add C	  ; AC = -cnt + C
 jz  FIM
 jmp iteracao
 
FIM:
 hlt 

.endcode
.data
  A : db #4
  B : db #2
  C : db #4
  D : db #0
aux : db #0 
cnt : db #0
.enddata
