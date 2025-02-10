START   ML TWO         ; AC *= 2
        AD ONE         ; AC += 1
        AD TEMP_SUM    ; AC += TEMP_SUM
        MM TEMP_SUM    ; TEMP_SUM  = AC
        LD /102        ; MEM[TEMP_ADDRESS] = AC 
        MM /008        ; AC = TEMP_ADDRESS
        AD TWO         ; AC += 2 
        MM /008        ; TEMP_ADDRESS = AC
        LD TOTAL_N     ; AC = 0x03F
        SB CURRENT_N   ; AC = 0x03F - CURRENT_N
        JZ END         ; if (AC == 0) jump to END
        LD CURRENT_N   ; AC = CURRENT_N
        AD ONE         ; AC += 1
        MM CURRENT_N   ; CURRENT_N = AC 
        JP START       ; Jump to START
END     HM =0          ; Finaliza programa

@ /100          ; Guarda os resultados a partir daqui 
k =0

@ /200
ONE          k =1
TWO          k =2
DEF_ADDRESS  k /100
TEMP_SUM     k =0
CURRENT_N    k =0
TOTAL_N      k /03F