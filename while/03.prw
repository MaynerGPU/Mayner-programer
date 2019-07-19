#include "protheus.ch"

user function notasAluno()

local nNota1 := -1
local nNota2 := -1
local nMedia
local lRepete := .T.

While lRepete
        nNota1 := nNota2 := -1

    While nNota1 < 0 .OR. nNota1 > 10
        nNota1 := Val(FwInputBox("Digite a primeira nota"))
    End do

    While nNota2 < 0 .OR. nNota2 > 10
        nNota2 := Val(FwinputBox("Digite a segunda nota"))
    End do

    nMedia := (nNota1 + nNota2) /2

    Alert(cValToChar(nMedia))

    lrepete := MSGYESNO('Deseja calcular novamente ?')

End do

Return
