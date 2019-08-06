#include 'protheus.ch'

//Ler dois valores (considere que não serão lidos valores iguais)e escrever o maior deles
    

user Function Avaliar2()
local nValor1 := Val(FwInputBox("Um numero"))
local nValor2 := Val(FwInputBox("Outro numero"))

if nValor1 > nValor2
    Alert(cValToChar(nValor1) + "é maior que" + cValToChar(nValor2))
else 
    Alert(cValToChar(nValor2) + "é maior que" + cValToChar(nValor1))
endif

Return     