@ /000
GD /000 ; Lê 2 bytes do terminal
MM /100 ; Guarda o valor de Xno endereço /100
GD /000 ; Lê mais 2 bytes de espaço no terminal
GD /000 ; Lê 2 bytes de Y no terminal
MM /102 ; Guarda o valor de Y em /100
LD X    ; AC = X
SB SUB1 ; AC -= /3030
MM X    ; X = AC 
LD Y    ; AC = Y
SB SUB1 ; AC -= /3030
AD X    ; AC += X
MM RES  ; RES = AC
DV SHIFT ; AC >> 1 Byte
ML SHIFT ; AC << 1 Byte
MM TEMP ; TEMP = AC 
LD RES  ; AC = X+Y
SB TEMP ; AC -= TEMP
SB SUB2 ; AC -= A
JN LSB_LESS ; Pula para o final se LSB de AC < A
LD RES  ; AC = RES
SB SUB2 ; AC-= A
AD ADD  ; AC += /100
MM RES  ; RES = AC
LSB_LESS LD RES  ; Carrega o valor final no AC
AD SUB1 ; AC += /3030
PD /100 ; Printa o resultado
HM /000 ; Para a rotina

@ /100
X k =0
Y k =0
SUB1 k /3030
SUB2 k /A
ADD k /100
SHIFT k /10
TEMP k /0
RES k =0