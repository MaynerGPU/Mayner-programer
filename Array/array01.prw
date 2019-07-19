#include "protheus.ch"

/*Criar um array para guardar o nome de 5 alunos, os nomes deverão ser colocados no
array depois da declaração do mesmo, inserindo um valor de cada vez. Exiba o nome
do quinto aluno.*/

user function aMatriz()

local aAluno := {}

aAdd(aAluno,"Marlon")
aAdd(aAluno,"Glauber")
aAdd(aAluno,"Mayner")
aAdd(aAluno,"Judith")
aAdd(aAluno,"Klébin")

Alert("Nome do Aluno: " + aAluno[5])

Return