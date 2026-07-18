FUNCTION MAIN()

    LOCAL cNome := ""
    LOCAL cDisciplina := "" 
    LOCAL nNota := 11
    LOCAL nMedia := 0

    WHILE Len(Trim(cNome)) == 0
        ACCEPT "Digite o nome do aluno: " TO cNome

        IF Len(Trim(cNome)) > 0
            EXIT
        ELSE
            QOut("O nome do aluno não pode ser vazio. Por favor, tente novamente.")
        ENDIF

    ENDDO

    WHILE Len(Trim(cDisciplina)) != 3 .OR. cDisciplina != Upper(cDisciplina)
        ACCEPT "Digite a disciplina: " TO cDisciplina
        Upper(cDisciplina)

        IF Len(Trim(cDisciplina)) == 3 .AND. cDisciplina == Upper(cDisciplina)
            EXIT
        ELSE
            QOut("A disciplina deve ter exatamente 3 letras maiúsculas. Por favor, tente novamente.")
        ENDIF

    ENDDO

    FOR i := 1 TO 2

        WHILE nNota < 0 .OR. nNota > 10
            ACCEPT "Digite a nota " + Alltrim(Str(i)) + " (entre 0 e 10): " TO nNota
            nNota := Val(nNota)

            IF nNota >= 0 .AND. nNota <= 10
            nMedia += nNota
            ELSE
                QOut("A nota deve estar entre 0 e 10. Por favor, tente novamente.")
            ENDIF

        ENDDO
        nNota := 11  // Reseta o valor da nota para forçar a validação na próxima iteração
    ENDFOR

    nMedia := nMedia / 2
    QOut("A média do aluno " + cNome + " na disciplina " + cDisciplina + " é: " + Alltrim(Str(nMedia)))

RETURN NIL