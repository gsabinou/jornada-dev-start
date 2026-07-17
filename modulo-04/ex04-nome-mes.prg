FUNCTION MAIN()
    
    LOCAL nMes
    LOCAL cNomeMes

    ACCEPT "Digite o número do mês (1-12): " TO nMes
    nMes := Val(nMes)

    DO CASE
        CASE nMes == 1
            cNomeMes := "Janeiro"
        CASE nMes == 2
            cNomeMes := "Fevereiro"
        CASE nMes == 3
            cNomeMes := "Março"
        CASE nMes == 4
            cNomeMes := "Abril"
        CASE nMes == 5
            cNomeMes := "Maio"
        CASE nMes == 6
            cNomeMes := "Junho"
        CASE nMes == 7
            cNomeMes := "Julho"
        CASE nMes == 8
            cNomeMes := "Agosto"
        CASE nMes == 9
            cNomeMes := "Setembro"
        CASE nMes == 10
            cNomeMes := "Outubro"
        CASE nMes == 11
            cNomeMes := "Novembro"
        CASE nMes == 12
            cNomeMes := "Dezembro"
        OTHERWISE
            cNomeMes := "Mês inválido"
    ENDCASE

    QOut("Nome do mês: " + cNomeMes)

RETURN NIL