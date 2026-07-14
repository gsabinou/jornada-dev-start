REQUEST HB_CODEPAGE_UTF8
REQUEST HB_LANG_PT

FUNCTION MAIN()
    LOCAL cNome   := "Gabriel Sabino" // Declarando vari vel
    LOCAL cCidade := "SÆo Paulo"
    LOCAL cCurso  := "Harbour/ADVPL"
    
    hb_cdpSelect("UTF8")
    hb_langSelect("PT")
    
    QOut("==========================")
    QOut("  FICHA DE APRESENTAÇÃO  ")
    QOut("==========================")

    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)
    QOut("==========================")
RETURN NIL