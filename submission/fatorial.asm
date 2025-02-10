START   SC /200 ; Inicia sub-rotina
END     HM =0   ; Termina o programa

@ /100
N       k =0    ; Armazena o valor de N
RES     k =1    ; Armazena o resultado
AUX1    k =1    ; Memória Auxiliar 1
AUX2    k =1    ; Memória Auxiliar 2
ONE     k =1    ; Memória que Armazena o valor de 1
 
@ /200
JP START        ; Volta para o início
LD N            ; Carrega N no Acumulador
JZ /212         ; Pula para o endereço 0x212 se o Acumulador for nulo
MM AUX1         ; Carrega o valor do Acumulador na Memória Auxiliar 1
ML AUX2         ; Multiplica o valor do Acumulador pelo valor armazenado na Memória Auxiliar 2
MM AUX2         ; Carrega o Resultado da Multiplicacao na Memória Auxiliar 2
LD AUX1         ; Carrega o valor da Memória Auxiliar 1 no Acumulador
SB ONE          ; Subtrai o valor do Acumulador por 1
JP /204         ; Volta para a instrução no endereço 0x204
LD AUX2         ; Carrega o valor da Memória Auxiliar 2 no Acumulador
MM RES          ; Carrega o valor do Acumulador na Memória do resultado
RS /200         ; Fecha a sub-rotina