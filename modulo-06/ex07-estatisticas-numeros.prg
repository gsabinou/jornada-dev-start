PROCEDURE Main()
    LOCAL aNumeros := {}
    LOCAL i, nNum, cInput
    LOCAL nSoma := 0, nMedia := 0

    CLEAR SCREEN
    ? "========================================"
    ? "       ESTATISTICAS DE 10 NUMEROS       "
    ? "========================================"
    ? ""

    // Le os 10 numeros
    FOR i := 1 TO 10
        ACCEPT "Digite o numero " + LTrim(Str(i)) + ": " TO cInput
        nNum := Val(cInput)
        
        // Adiciona ao array e soma
        AAdd(aNumeros, nNum)
        nSoma += nNum
    NEXT

    // Calcula a media
    nMedia := nSoma / 10

    // Ordena o array em ordem crescente usando ASORT
    ASort(aNumeros)

    ? ""
    ? "--- Resultados ---"
    ? "Numeros em ordem crescente:"
    FOR i := 1 TO Len(aNumeros)
        ?? LTrim(Str(aNumeros[i])) + " "
    NEXT
    
    ? ""
    ? "Soma total :", nSoma
    ? "Media      :", nMedia
    // aV[1] eh o menor e aV[Len(aV)] eh o maior apos o ASort
    ? "Menor valor:", aNumeros[1]
    ? "Maior valor:", aNumeros[Len(aNumeros)]
    ? "========================================"
    WAIT
RETURN