#include 'protheus.ch'

  user Function AddAluno()
    Local aAluno :=  {}

    aAdd(aAluno, {"Amarelo", 7, 87, "Programador Cobol"})
    aAdd(aAluno, {"Lucas 1", 10, 22, "Jogador de CS"})
    aAdd(aAluno, {"Wualace", 2, 30, "Instrutor"})
    aAdd(aAluno, {"Castanhari", 0.10, 23, "Youtuber"})
    aAdd(aAluno, {"Igor RS", 6, 24, "Do Sul"})

    Alert("Nome do aluno: " + cValtoChar(aAluno[5][1]) +;
          "Média: " + cValtoChar(aAluno[5][2]) +;
          "Idade: " + cValtoChar(aAluno[5][3]) +;
          "Professor: " + aAluno[5][4])

    VarInfo("Texto Qualquer:", aAluno)

Return
