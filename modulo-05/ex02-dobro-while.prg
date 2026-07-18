FUNCTION MAIN()

    LOCAL nNum := 1

    WHILE nNum > 0

        ACCEPT "Digite um número (ou 0 para sair): " TO nNum
        nNum := Val(nNum)

        IF nNum != 0
            QOut("O dobro de " + Alltrim(Str(nNum)) + " é " + Alltrim(Str(nNum * 2)))
        ENDIF

    ENDDO

RETURN NIL