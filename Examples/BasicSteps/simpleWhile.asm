;;;
;;; Exercicio 3 - Cleopatra
;;; Prof. Filipo
;;; int C=0; N=3;
;;; while (C<N) C++;
.code
inicio:
 lda N		; carrega N em AC
 not		; complemento de 2
 add #1
 add C		; C + (-N)
 jn  segue
fim:
 hlt
segue:
 lda C		; C++
 add #1
 sta C
 jmp inicio
.endcode 
 
.data
 C : db #00
 N : db #03
.enddata
