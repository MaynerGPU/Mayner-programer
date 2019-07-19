#include "protheus.ch"
/*2. Criar um array de 3 linhas e 2 colunas, cada linha deve guardar o nome de um aluno
e a idade do mesmo. Exiba os dados do segundo aluno.*/

user function aCaguei()

local aSla := Array(3,2)
aSla[1]:= {"Jobson",15}
aSla[2]:= {"Paul",10}
aSla[3]:= {"Odeth",25}

Alert("Nome do Aluno: " + aSla[2,1] + " Idade: " + cValToChar(aSla[2,2]))

Return