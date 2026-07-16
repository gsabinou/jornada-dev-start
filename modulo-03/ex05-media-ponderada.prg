FUNCTION MAIN()

    LOCAL nNota1
    LOCAL nNota2
    LOCAL nNota3
    LOCAL nNota4
    LOCAL nMediaPonderada

    LOCAL nPeso1 := 1
    LOCAL nPeso2 := 2
    LOCAL nPeso3 := 3
    LOCAL nPeso4 := 4
    LOCAL nSomaPesos := nPeso1 + nPeso2 + nPeso3 + nPeso4

    ACCEPT "Digite a nota do primeiro bimestre: " TO nNota1
    nNota1 := Val(nNota1)
    ACCEPT "Digite a nota do segundo bimestre: " TO nNota2
    nNota2 := Val(nNota2)
    ACCEPT "Digite a nota do terceiro bimestre: " TO nNota3
    nNota3 := Val(nNota3)
    ACCEPT "Digite a nota do quarto bimestre: " TO nNota4
    nNota4 := Val(nNota4)

    nMediaPonderada := ( (nNota1 * nPeso1) + (nNota2 * nPeso2) + (nNota3 * nPeso3) + (nNota4 * nPeso4) ) / nSomaPesos

    QOut("A média ponderada é: ", Str(nMediaPonderada, 10, 2))

RETURN NIL