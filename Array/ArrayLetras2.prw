#include 'protheus.ch'
/*Baseado no algoritmo desenvolvido no exercicio1, altere-o para que ele pare a
execução se encontrar a letra F no array. Ao parar a execução ele deve mostrar
quantas letras conseguiu ler até aquele momento e quantas letras faltaram
analisar.*/

user function QntLetras()

Local aLetras := {'I','G','F','W','Q'}
Local nX 
Local nTotal := 0

For nX := 1 to Len(aLetras)
    if aLetras[nX] == 'F'
        exit
    endif 
    nTotal++

Next 

Alert("Letras lidas " + cValToChar(nTotal))
Alert("Letras faltantes " + cValToChar(Len(aLetras) - nTotal - 1))

Return

