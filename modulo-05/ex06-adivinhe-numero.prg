FUNCTION MAIN()

    LOCAL nNumero
    LOCAL nChute
    LOCAL lAcertou := .F.

    nNumero := HB_RandomInt(1, 100)

    QOut("Bem-vindo ao jogo do número!")

    FOR i := 1 TO 7 STEP 1

        ACCEPT "Dê o seu palpite (entre 1 e 100): " TO nChute
        nChute := Val(nChute)

        IF nChute > 100 .OR. nChute <= 0
            QOut("O chute deve estar entre 1 e 100. Por favor, tente novamente.")
            i -= 1 // Decrementa o contador para não contar a tentativa inválida
        ELSEIF nChute == nNumero
            QOut("Parabéns! Você acertou o número!")
            EXIT
        ELSEIF nChute < nNumero
            QOut("O número é maior do que " + Alltrim(Str(nChute)) + ".")
        ELSE
            QOut("O número é menor do que " + Alltrim(Str(nChute)) + ".")
        ENDIF

        QOut("Você tem mais " + Alltrim(Str(7 - i)) + " tentativa(s).")

    ENDFOR

    QOut("Fim de jogo!")
    QOut("O número era: " + Alltrim(Str(nNumero)))

RETURN NIL