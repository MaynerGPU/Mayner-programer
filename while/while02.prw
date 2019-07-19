#include "protheus.ch"
/*Escreva um algoritmo para ler as notas da 1a. e 2a. avaliações de um aluno,
calcule e imprima a média (simples) desse aluno. Só devem ser aceitos valores
válidos durante a leitura (0 a 10) para cada nota.*/

user function notaFinal()

local nNota1 := -1
local nNota2 := -1
local nMedia := 0

While nNota1 < 0 .OR. nNota1 > 10
     nNota1 := Val(FwInputBox("Digite a primeira nota do aluno"))
End Do

While nNota2 < 0 .OR. nNota2 > 10
    nNota2 := Val(FwInputBox("Digite a segunda nota do aluno"))
End Do

nMedia := (nNota1 + nNota2) /2

Alert(cValToChar(nMedia))


Return
