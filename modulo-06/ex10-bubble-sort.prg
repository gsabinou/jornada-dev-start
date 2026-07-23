PROCEDURE Main()
    LOCAL aNumeros := {}
    LOCAL i

    // Preenche array com 10 numeros aleatorios de 1 a 100
    FOR i := 1 TO 10
        AAdd( aNumeros, hb_RandomInt( 1, 100 ) )
    NEXT

    CLEAR SCREEN
    ? "Array Original :"
    ImprimirArray( aNumeros )

    // Ordena
    BubbleSort( aNumeros )

    ? "Array Ordenado :"
    ImprimirArray( aNumeros )
    ? ""
    
    WAIT
RETURN

// Algoritmo Bubble Sort (sem usar ASORT)
PROCEDURE BubbleSort( aVetor )
    LOCAL i, j, nAux
    LOCAL nLen := Len( aVetor )

    // Loops aninhados para comparar elementos vizinhos
    FOR i := 1 TO nLen - 1
        FOR j := 1 TO nLen - i
            IF aVetor[ j ] > aVetor[ j + 1 ]
                // Troca as posicoes
                nAux := aVetor[ j ]
                aVetor[ j ] := aVetor[ j + 1 ]
                aVetor[ j + 1 ] := nAux
            ENDIF
        NEXT
    NEXT
RETURN

// Funcao auxiliar para impressao
PROCEDURE ImprimirArray( aVetor )
    LOCAL i, cStr := ""
    FOR i := 1 TO Len( aVetor )
        cStr += LTrim( Str( aVetor[ i ] ) ) + " "
    NEXT
    ? cStr
RETURN