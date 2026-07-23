PROCEDURE Main()
    LOCAL aCarrinho := {}
    LOCAL cNome, nPreco, cInput
    LOCAL cContinuar := "S"
    LOCAL nTotal := 0
    LOCAL i

    CLEAR SCREEN
    ? "========================================"
    ? "        MINI-CARRINHO DE COMPRAS        "
    ? "========================================"
    ? ""

    // Loop para adicionar itens
    DO WHILE Upper(cContinuar) == "S"
        ACCEPT "Nome do produto : " TO cNome
        ACCEPT "Preco do produto: R$ " TO cInput
        nPreco := Val(cInput)
        
        // Adiciona a estrutura {nome, preco} ao carrinho
        AAdd(aCarrinho, {cNome, nPreco})
        
        ? ""
        ACCEPT "Deseja adicionar outro produto? (S/N): " TO cContinuar
        cContinuar := Left(AllTrim(cContinuar), 1) // Pega apenas a primeira letra
        ? "----------------------------------------"
    ENDDO

    CLEAR SCREEN
    ? "========================================"
    ? "             CUPOM FISCAL               "
    ? "========================================"
    
    // Exibe a lista de itens e calcula o total
    FOR i := 1 TO Len(aCarrinho)
        // aCarrinho[i][1] eh o Nome, aCarrinho[i][2] eh o Preco
        ? PadR(aCarrinho[i][1], 25) + " R$ " + Transform(aCarrinho[i][2], "999,999.99")
        nTotal += aCarrinho[i][2]
    NEXT
    
    ? "----------------------------------------"
    ? PadR("TOTAL A PAGAR", 25) + " R$ " + Transform(nTotal, "999,999.99")
    ? "========================================"
    
    WAIT
RETURN