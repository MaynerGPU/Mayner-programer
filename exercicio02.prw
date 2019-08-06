#include 'protheus.ch'

user function MediAlu()

local nNum1 := 0
local nNum2 := 0
local nMum3 := 0
local nMedia := 0
local cNome := 0

cNome := FWInputBox("Digite o nome do aluno")
nNum1 := Val(FWInputBox("Digite aqui o primeiro número"))
nNum2 := Val(FWInputBox("Digite aqui o segundo número"))
nNum3 := Val(FWInputBox("Digite aqui o terceiro número"))

nMedia := ((nNum1*2 + nNum2*3 + nMum3*5)/10) 

Alert("A média ponderada da " + cNome+" é:" +cValTochar(nMedia))

Return
