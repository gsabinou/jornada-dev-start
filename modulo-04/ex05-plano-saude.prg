FUNCTION MAIN()

    LOCAL nIdade
    LOCAL nDependentes
    LOCAL nValorMensal
    LOCAL nAdicionalDep

    ACCEPT "Digite a idade do beneficiário: " TO nIdade
    nIdade := Val(nIdade)

    ACCEPT "Digite o número de dependentes: " TO nDependentes
    nDependentes := Val(nDependentes)
    nAdicionalDep := 90 * nDependentes
    nValorMensal := nAdicionalDep

    IF nIdade <= 25
        nValorMensal := nValorMensal + 180
    ELSEIF nIdade >= 26 .AND. nIdade <= 40
        nValorMensal := nValorMensal + 260
    ELSEIF nIdade >= 41 .AND. nIdade <= 60
        nValorMensal := nValorMensal + 380
    ELSE
        nValorMensal := nValorMensal + 520
    ENDIF

    QOut("Valor mensal do plano de saúde: " + Str(nValorMensal, 10, 2))
    QOut("Valor adicional por dependentes: " + Str(nAdicionalDep, 10, 2))

RETURN NIL