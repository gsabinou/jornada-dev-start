// exercicio8.prg
PROCEDURE Main()
    LOCAL aTurma := {}
    LOCAL nQtdAlunos, i, cInput
    LOCAL cNome, n1, n2, n3, n4, nMedia

    CLEAR SCREEN
    ? "========================================"
    ? "            SISTEMA DE NOTAS            "
    ? "========================================"
    ? ""

    // Pede o numero de alunos (N)
    ACCEPT "Quantos alunos deseja cadastrar? " TO cInput
    nQtdAlunos := Val(cInput)
    ? ""

    // Le os dados de cada aluno
    FOR i := 1 TO nQtdAlunos
        ? "--- Aluno " + LTrim(Str(i)) + " ---"
        ACCEPT "Nome: " TO cNome
        ACCEPT "Nota 1: " TO cInput; n1 := Val(cInput)
        ACCEPT "Nota 2: " TO cInput; n2 := Val(cInput)
        ACCEPT "Nota 3: " TO cInput; n3 := Val(cInput)
        ACCEPT "Nota 4: " TO cInput; n4 := Val(cInput)
        
        // Armazena no array multidimensional: {nome, n1, n2, n3, n4}
        AAdd(aTurma, {cNome, n1, n2, n3, n4})
        ? ""
    NEXT

    CLEAR SCREEN
    ? "========================================"
    ? "          RESULTADO DA TURMA            "
    ? "========================================"
    
    // Processa o array e exibe o resultado
    FOR i := 1 TO Len(aTurma)
        // Calcula a media acessando os indices de cada array interno
        // Indice 1: Nome | Indices 2 a 5: Notas
        nMedia := (aTurma[i][2] + aTurma[i][3] + aTurma[i][4] + aTurma[i][5]) / 4
        
        ? "Aluno(a) : " + aTurma[i][1]
        ? "Media    : " + LTrim(Str(nMedia))
        
        IF nMedia >= 7
            ? "Status   : APROVADO(A)"
        ELSE
            ? "Status   : REPROVADO(A)"
        ENDIF
        ? "----------------------------------------"
    NEXT
    
    WAIT
RETURN