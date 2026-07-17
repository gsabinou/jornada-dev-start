FUNCTION MAIN()

    LOCAL nValor1
    LOCAL nValor2

    ACCEPT "Digite o primeiro valor numérico: " TO nValor1
    nValor1 := Val(nValor1)
    ACCEPT "Digite o segundo valor numérico: " TO nValor2
    nValor2 := Val(nValor2)

    IF nValor1 == nValor2
        QOut("Os valores são iguais: " + Str(nValor1))
    ELSEIF nValor1 > nValor2
        QOut("O maior valor é: " + Str(nValor1))
        QOut("O menor valor é: " + Str(nValor2))
    ELSEIF nValor2 > nValor1
        QOut("O maior valor é: " + Str(nValor2))
        QOut("O menor valor é: " + Str(nValor1))
    ENDIF


RETURN NIL
