#include 'protheus.ch'

user function somanum()
local nNum1 := 0
local nNum2 := 0
local nTotal := 0
local cNum1 :=  ''
local cNum2 :=  ''

cNum1 := FWInputbox("Digite aqui o primeiro n�mero")
cNum2 := FWInputbox("Digite aqui o segundo n�mero")

nNum1 := Val(cNum1)
nNum2 := Val(cNum2)

nTotal := nNum1 + nNum2

Alert("A soma dos n�meros � " +cValToChar(nTotal)) 
return