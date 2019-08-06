#include 'protheus.ch'

User Function musica()
local oBrownser := FWMBrowse():New()

oBrownser:SetAlias('ZA1')
oBrownser:SetMenuDef('IOS02')

oBrownser:Activate()

return 

static Function Menudef() 

return FWMVCMenu("IOS02") 

static Function ModelDef()
local oModel := MPFormModel():New('Zeca')
local oStruZA1 := FwFormStruct(1,'ZA1')
local oStruZA2 := FWFormStruct(1,"ZA2")
local bValid   := {|oModelGrid|ValidAutor(oModelGrid) } //validação da linha do grid 

oModel:AddFields("ZA1MASTER",/*Owner*/,oStruZA1,/* */)
oModel:AddGrid('ZA2DETAIL', 'ZA1MASTER', oStruZA2, , bValid)
oModel:SetRelation( 'ZA2DETAIL', { {'ZA2_FILIAL', "xFilial('ZA2')"},;
 {"ZA2_MUSICA" , "ZA1_MUSICA"} }, ZA2->( IndexKey( 1 ) ) )

oModel:GetModel( 'ZA1MASTER' ):SetDescription( 'Dados da Musica' )
oModel:GetModel( 'ZA2DETAIL' ):SetDescription( 'Dados do Autor Da Musica'  )

Return oModel

Static Function ViewDef() 
local oView := FwFormView():New()
local oStruct := FwFormStruct(2,"ZA1")
Local oStructZA2 := FWFormStruct(2, "ZA2")
oView:SetModel(ModelDef()) //return do ModelDef para SetModel

 //ID       , Estrutura, ID do Model
oView:AddField("ZA1_VIEW", oStruct, "ZA1MASTER")
oView:AddGrid( 'ZA2_VIEW', oStructZA2, 'ZA2DETAIL' )
// Define campos que terao Auto Incremento
oView:AddIncrementField( 'ZA2_VIEW', 'ZA2_ITEM' )

oView:CreateHorizontalBox("BOXZA1", 50)
oView:CreateHorizontalBox("BOXZA2", 50)

oView:SetOwnerView("ZA1_VIEW","BOXZA1") //Cajuzinho ?
oView:SetOwnerView("ZA2_VIEW","BOXZA2") 

oView:EnableTitleView('ZA2_VIEW') //habilita a descricao do submodelo

Return oView

Static Function ValidAutor(oModelGrid)
local lRet := .F. 
local cCodAutor := oModelGrid:GetValue('ZA2_AUTOR')

// 1) buscar na ZA0 o registro do autor que está sendo inserido no grid
// 2) Pegar a data de falecimento
// 3) se a data não estiver em branco, bloquear a inclusão exibindo msg de erro

//guardar a area ativa e area da tabela 

//Abrir a tabela ZA0

// setar = atribuir, o indice da ZA0 (indice que contenha filial+código)

//buscar o registro filtrando o código especifico
//se eu achar o registro eu avalio o campo de data de falecimento

//Restaurar a area da tabela e a area ativa 
return lRet