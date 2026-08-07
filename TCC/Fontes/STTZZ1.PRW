#include "protheus.ch"

USER FUNCTION STTZZ1()
   PRIVATE cCadastro := "Controle de Fornecimento"
   dbSelectArea("ZZ1")
   dbSetOrder(1)
   //AxCadastro("ZZ1", "Controle de Fornecimento", , "1", , , , .F.)
   AxCadastro("ZZ1", "Controle de Fornecimento")
RETURN NIL