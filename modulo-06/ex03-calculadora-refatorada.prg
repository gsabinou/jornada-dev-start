FUNCTION MAIN()
    LOCAL nA
    LOCAL nB
    LOCAL cOperacao
    LOCAL cMensagem

    ACCEPT "Digite a operação (+, -, *, /, R): " TO cOperacao
    cOperacao := Upper(cOperacao)

    cMensagem := "Por favor, informe o primeiro valor: "
    nA := LerNumero(cMensagem)

    IF cOperacao != "R"
        cMensagem := "Por favor, informe o segundo valor: "
    nB := LerNumero(cMensagem)
    ENDIF

    QOut(MostrarResultado(Calcular(cOperacao, nA, nB)))

RETURN NIL

FUNCTION LerNumero(cMensagem)
    LOCAL nNumero
    ACCEPT cMensagem TO nNumero
    nNumero := Val(nNumero)
RETURN nNumero

FUNCTION Calcular(cOperacao, nA, nB)

    LOCAL cResultado

    DO CASE
        CASE cOperacao == "+"
            cResultado := Str(nA + nB, 10)
        CASE cOperacao == "-"
            cResultado := Str(nA - nB, 10)
        CASE cOperacao == "*"
            cResultado := Str(nA * nB, 10)
        CASE cOperacao == "/"
            IF nB = 0
            cResultado := .F.
            RETURN cResultado
            ELSE
            cResultado := Str(nA / nB, 10)
            ENDIF
        CASE cOperacao == "R"
            IF nA >= 0
            cResultado := Str(Sqrt(nA), 10)
            ELSE
            cResultado := "Raiz quadrada de número negativo não é possível!"
            ENDIF
            OTHERWISE
            cResultado := "Operação inválida!"
    ENDCASE

RETURN cResultado

PROCEDURE MostrarResultado(cResultado)
    IF ValType(cResultado) = "C"
        QOut("Resultado:" + cResultado)
    ELSE
        QOut("Não é possível dividir por zero!")
    ENDIF

RETURN
