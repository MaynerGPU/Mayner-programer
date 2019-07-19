#include "protheus.ch"
/*Escreva um algoritmo que tenha um array de letras. O algoritmo deve avaliar
quantas letras o array tem em seu conte�do e mostrar essa informa��o na tela
para o usu�rio.  

Baseado no algoritmo desenvolvido no exerc�cio 1, altere-o para que ele ignore
a letra A e a letra B n�o devendo coloca-las na contagem das letras.*/


user function ArrayLetras()
local aLetras := {'A','C','W','G','O','S','B'}
Local nX
Local nTotal := 0

For nX := 1 to Len(aLetras)
    if aLetras[nX] <> 'A' .AND. aLetras[nX] <> 'B'
        nTotal++    
    Endif
Next 

Alert(nTotal)

Return