FUNCTION MAIN()

    QOut("Iniciando contagem de 1 a 100:")

    FOR i := 1 TO 100
        QOut(Str(i))
    ENDFOR

    QOut("Contagem finalizada!")
    QOut("Agora, iniciando contagem de -50 a 50:")

    FOR i := -50 TO 50
        QOut(Str(i))
    ENDFOR

    QOut("Contagem finalizada!")
    QOut("Agora, iniciando contagem decrescente de 80 a 5:")

    FOR i := 80 TO 5 STEP -1
        QOut(Str(i))
    ENDFOR

    QOut("Contagem finalizada!")

RETURN NIL