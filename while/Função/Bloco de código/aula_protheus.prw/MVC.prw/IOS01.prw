#include 'protheus.ch'

User Function autor()
local oBrownser := FWMBrowse():New()

oBrownser:SetAlias('ZA0')
oBrownser:SetMenuDef('IOS01')

oBrownser:Activate() // vaii

return
// função que pertence somente a esse fonte

static Function Menudef() // padrão

return FWMVCMenu("IOS01") // Menu padrão com C.R.U.D

//MVC - Model (Dados e regra de negócio)
//      View (Interface)
//      Controller (dentro da lib)


static Function ModelDef()
local oModel := MPFormModel():New('Zeca')
local oStruZA0 := FwFormStruct(1,'ZA0')
local bPos     := {|oModelField| PosVldAutor(oModelField)}
//FormField (Campo do Formulário)

oModel:AddFields('ZA0MASTER',/*Owner*/,oStruZA0,/* */,bPos)
//Está utilizando o modelo da ZA0 contido no StruZA0
Return oModel

Static Function PosVldAutor(oModelField)
local lTudoOK := .F. // falso
local dFalec  := oModelField:GetValue('ZA0_DTAFAL')
local cNome  := oModelField:GetValue('ZA0_NOME')
// Para atribuir valor SetValue (Pesquisar: Encapsulamento)

if dFalec > Date()
   lTudoOk := .F.
   Help( ,, 'Help' ,, 'Blz Kira',1,0,,,,,,{"Informe outra data menor " + dtoc(date(()))})
   //Help exibe a interface de ajuda 
Elseif 'Ricardo' $ UPPER(cNome) .OR. Empty(cNome)
    lTudoOk := .F.
    Help(  ,, 'Help' ,, 'Ele é um babaca',1,0)
Endif

return lTudoOK

Static Function ViewDef() // padrão def
local oView := FwFormView():New()
local oStruct := FwFormStruct(2,"ZA0")
oView:SetModel(ModelDef()) //return do ModelDef para SetModel

//ID, ESTRUTURA, ID MODEL

oView:AddField("ZA0_VIEW",oStruct, "ZA0MASTER")
oView:CreateHorizontalBox("BOXZA0",100)
oView:SetOwnerView("ZA0_VIEW","BOXZA0")


Return oView