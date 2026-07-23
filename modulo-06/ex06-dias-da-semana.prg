// Programa para exibir o dia da semana baseado em um indice

PROCEDURE Main()
    // 1. Define um array literal com os 7 dias da semana
    // Lembrete: Em Harbour, o primeiro elemento esta no indice 1.
    LOCAL aDias := { "Domingo", "Segunda-feira", "Terca-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sabado" }
    LOCAL cInput
    LOCAL nDia

    CLEAR SCREEN
    ? "========================================"
    ? "       DIAS DA SEMANA POR INDICE        "
    ? "========================================"
    ? ""
    
    // 2. Le um numero do usuario
    ACCEPT "Digite um numero de 1 a 7: " TO cInput
    nDia := Val( cInput ) // Converte a string digitada para um valor numerico
    
    ? ""
    
    // 3. Valida se o numero esta no intervalo correto
    IF nDia >= 1 .AND. nDia <= 7
        // Exibe o nome do dia correspondente usando a posicao no array
        ? "O dia correspondente e: " + aDias[ nDia ]
    ELSE
        // Aviso caso o numero seja invalido (fora de 1 a 7)
        ? "ERRO: Numero invalido! Por favor, digite um valor entre 1 e 7."
    ENDIF
    
    ? ""
    ? "========================================"
    WAIT "Pressione qualquer tecla para encerrar..."

RETURN