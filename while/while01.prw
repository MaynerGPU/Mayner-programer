#include "protheus.ch"
/*Escreva um algoritmo para ler 2 valores e se o segundo valor informado for
ZERO, deve ser lido um novo valor, ou seja, para o segundo valor não pode ser
aceito o valor zero e imprimir o resultado da divisão do primeiro valor lido pelo
segundo valor lido.*/

User function LerValores()

local nValor1 := Val(FwInputBox("Insira o primeiro valor"))
local nValor2 := Val(FwInputBox("Insira o segundo valor"))
local nTotal := 0
local nContador := 0

While nValor1 == 0
      nValor1 :=  Val(FwInputBox("Insira o primeiro valor novamente"))
      nContador++
      if nContador ==3
      Alert("Vc tem problema Filho da puta ???")
      end if
end do      
 
 While nValor2 ==0
        nValor2 :=  Val(FwInputBox("Insira o segundo valor novamente"))
    nContador++
 if nContador ==3
 Alert("Sua mãe tem vegonha de vc ")
 end if

end do      
  Alert(cValToChar(nValor1/nValor2))

return

