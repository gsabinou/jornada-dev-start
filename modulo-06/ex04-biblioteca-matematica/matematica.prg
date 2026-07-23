// Calcula o fatorial de N
FUNCTION FatorialN( nN )
    LOCAL nFat := 1
    LOCAL i
    
    // Fatorial de números negativos não é definido neste escopo, e 0! é 1.
    IF nN < 0
        RETURN 0 
    ENDIF
    
    FOR i := 2 TO nN
        nFat *= i
    NEXT
RETURN nFat

// Retorna .T. se N é primo
FUNCTION EhPrimo( nN )
    LOCAL i
    
    // Números menores ou iguais a 1 não são primos
    IF nN <= 1
        RETURN .F.
    ENDIF
    
    // Verifica divisibilidade de 2 até a metade do número
    FOR i := 2 TO Int( nN / 2 )
        IF nN % i == 0
            RETURN .F.
        ENDIF
    NEXT
RETURN .T.

// Calcula o Maximo Divisor Comum (Metodo de Euclides)
FUNCTION MDC( nA, nB )
    LOCAL nResto
    
    DO WHILE nB != 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO
RETURN nA

// Calcula o Minimo Multiplo Comum
FUNCTION MMC( nA, nB )
    // O MMC pode ser obtido pela formula: (A * B) / MDC(A, B)
    IF nA == 0 .OR. nB == 0
        RETURN 0
    ENDIF
RETURN Abs( nA * nB ) / MDC( nA, nB )