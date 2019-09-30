; int i=0;
; int N=3;
; 
; for(i=0; i<N; i++)
; {
;   A[i] = B[i] + C[i];
; }

.code
lacoPrincipal:
 ;;; calcula a proxima posicao de A
 lda #A		; carrega endereço de A em AC
 add posA
 sta posA
 
 ;;; agora caregga A[posA] em AC
 lda posA,I
 sta aux	; armazena o valor de A[posA] em AC
 
 ;;; calcula a próxima posição de B
 lda #B
 add posB
 sta posB
 
 ;;; agora carrega B[posB] em AC
 lda posB,I
 add aux    ; soma B[posB] com aux, que contém A[posA]
 sta aux
 
 ;;; calcula posC
 lda #C
 add posC
 sta posC
 
 ;;; finalmente, armazena o resultado contido em aux dentro de C[posC]
 lda aux
 sta posC,I
 
 ;;; atualiza o contador do laco (i++)
 lda i
 add #1
 sta i
 
 ;;; atualiza posA, posB, posC
 lda i
 sta posA
 sta posB
 sta posC
 
 ;;; (i < N) ???
 lda N
 not
 add #1    ; complemento de 2 de N
 add i
 jn  lacoPrincipal
 
FIM:
 hlt 
 
.endcode


.data
 i  : db #0  ; controle do laço
 A  : db #1, #2, #3
 B  : db #3, #2, #1
 C  : db #0, #0, #0
 N  : db #3
 posA : db #0
 posB : db #0
 posC : db #0
 aux  : db #0
.enddata
