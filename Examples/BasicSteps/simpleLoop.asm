;;;
;;; Exercicio 1 - Cleopatra
;;; Prof. Filipo
;;;  int I=0, N=5;
;;;  for(I = 0; I < N; I++)
;;;
.code
 inicio_laco:
  lda I			; carrega I em AC
  not			; complemento de 2
  add #1
  add N
  jz fim_laco	; se ZERO, pula para fim do laço
  lda I			; I++
  add #1
  sta I
  jmp inicio_laco
 fim_laco:
  hlt
.endcode 
 
.data
 N : db #05		
 I : db #0
.enddata
