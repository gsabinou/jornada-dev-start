FUNCTION MAIN()

    LOCAL nSalario
    LOCAL nReajuste
    LOCAL nNovoSalario

    ACCEPT "Digite o salário atual: " TO nSalario
    nSalario := Val(nSalario)

    IF nSalario < 1000
        nReajuste := nSalario * 0.15
    ELSEIF nSalario >= 1000 .AND. nSalario <= 2000
        nReajuste := nSalario * 0.12
    ELSEIF nSalario > 2000 .AND. nSalario <= 4000
        nReajuste := nSalario * 0.08
    ELSE
        nReajuste := nSalario * 0.05
    ENDIF

    nNovoSalario := nSalario + nReajuste

    QOut("Reajuste: " + Str(nReajuste, 10, 2))
    QOut("Novo salário: " + Str(nNovoSalario, 10, 2))

RETURN NIL