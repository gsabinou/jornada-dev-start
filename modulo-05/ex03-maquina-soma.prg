FUNCTION MAIN()

    LOCAL nNum := 1
    LOCAL nTotal := 0
    LOCAL nQtd := 0

    QOut("Bem-vindo à Máquina de Soma!")

    WHILE nNum != 0

        ACCEPT "Digite um número para somar (ou 0 para sair): " TO nNum
        nNum := Val(nNum)

        IF nNum != 0

            nTotal += nNum
            nQtd += 1
            QOut("Número adicionado à soma.")

        ENDIF

    ENDDO
    
    QOut("Soma total: " + Alltrim(Str(nTotal)))
    QOut("Quantidade de números adicionados: " + Alltrim(Str(nQtd)))

RETURN NIL