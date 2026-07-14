REQUEST HB_CODEPAGE_UTF8
REQUEST HB_LANG_PT

FUNCTION MAIN()
    LOCAL cNome   := "Gabriel Sabino" // Declarando variável
    LOCAL cCidade := "São Paulo"
    LOCAL cCurso  := "Harbour/ADVPL"
    LOCAL cData   := DTOC( DATE() ) // Obtendo a data atual no formato DD/MM/AAAA
    LOCAL cHora   := TIME() // Obtendo a hora atual no formato HH:MM:SS

    hb_cdpSelect( "UTF8" )
    hb_langSelect( "PT" )
    
    QOut("==========================")
    QOut("  FICHA DE APRESENTAÇÃO  ")
    QOut("==========================")

    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)
    QOut("Data: " + cData) // Exibindo a data atual
    QOut("Hora: " + cHora) // Exibindo a hora atual
    QOut("==========================")
RETURN NIL