FUNCTION MAIN()
    LOCAL nA
    LOCAL nB
    LOCAL cOperacao

    ACCEPT "Digite a operação (+, -, *, /, R): " TO cOperacao
    cOperacao := Upper(cOperacao)

    ACCEPT "Digite o primeiro valor: " TO nA
    nA := Val(nA)

    IF cOperacao != "R"
        ACCEPT "Digite o segundo valor: " TO nB
        nB := Val(nB)
    ENDIF

    DO CASE
        CASE cOperacao == "+"
            QOut("Resultado: " + Str(nA + nB, 10))
        CASE cOperacao == "-"
            QOut("Resultado: " + Str(nA - nB, 10))
        CASE cOperacao == "*"
            QOut("Resultado: " + Str(nA * nB, 10))
        CASE cOperacao == "/"
            IF nA = 0 .OR. nB = 0
                QOut("Não é possível dividir por zero!")
            ELSE
                QOut("Resultado: " + Str(nA / nB, 10))
            ENDIF
        CASE cOperacao == "R"
            IF nA >= 0
                QOut("Resultado: " + Str(Sqrt(nA), 10))
            ELSE
                QOut("Raiz quadrada de número negativo não é possível!")
            ENDIF
        OTHERWISE
            QOut("Operação inválida!")
    ENDCASE

RETURN NIL