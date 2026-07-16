FUNCTION MAIN()

    LOCAL cNome
    LOCAL dNasc
    LOCAL nIdade
    LOCAL nPreco
    LOCAL nDesconto
    LOCAL nTotal

    SET DATE TO BRITISH

    ACCEPT "Digite o nome do cliente: " TO cNome
    ACCEPT "Digite a data de nascimento (dd/mm/aaaa): " TO dNasc
    dNasc := CTOD(dNasc)
    ACCEPT "Digite o preço do produto: " TO nPreco
    nPreco := Val(nPreco)

    nIdade := Int((Date() - dNasc) / 365)

    IF nIdade > 60 
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("==========================")
    QOut("     RESUMO DA COMPRA     ")
    QOut("==========================")
    QOut("Nome: " + cNome)
    QOut("Idade: " + Alltrim(Str(nIdade)) + " anos")
    QOut("Preço: " + Str(nPreco, 10, 2))
    QOut("Desconto: " + Str(nDesconto, 10, 2))
    QOut("Total: " + Str(nTotal, 10, 2))
RETURN NIL