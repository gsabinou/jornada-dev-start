// 5 - Busca produto e retorna posicao (ou 0 se nao achar)
FUNCTION BuscarProduto( aEstoque, cCodigo )
    LOCAL i
    FOR i := 1 TO Len( aEstoque )
        IF aEstoque[ i ][ 1 ] == cCodigo
            RETURN i
        ENDIF
    NEXT
RETURN 0

// 1 - Cadastra produto
PROCEDURE CadastrarProduto( aEstoque )
    LOCAL cCodigo, cNome, nQtd, nPreco, cInput
    
    ACCEPT "Codigo: " TO cCodigo
    IF BuscarProduto( aEstoque, cCodigo ) > 0
        ? "Erro: Codigo ja cadastrado!"
        RETURN
    ENDIF
    
    ACCEPT "Nome: " TO cNome
    ACCEPT "Qtd inicial: " TO cInput; nQtd := Val( cInput )
    ACCEPT "Preco unitario: " TO cInput; nPreco := Val( cInput )
    
    AAdd( aEstoque, { cCodigo, cNome, nQtd, nPreco } )
    ? "Produto cadastrado com sucesso."
RETURN

// 2 - Lista produtos
PROCEDURE ListarProdutos( aEstoque )
    LOCAL i
    ? "--- LISTA DE PRODUTOS ---"
    FOR i := 1 TO Len( aEstoque )
        ? "Cod:", aEstoque[i][1], "| Nome:", aEstoque[i][2], "| Qtd:", aEstoque[i][3], "| Preco: R$", aEstoque[i][4]
    NEXT
RETURN

// 3 - Entrada de estoque
PROCEDURE EntradaEstoque( aEstoque )
    LOCAL cCodigo, nPos, nQtd, cInput
    
    ACCEPT "Codigo do produto: " TO cCodigo
    nPos := BuscarProduto( aEstoque, cCodigo )
    
    IF nPos > 0
        ACCEPT "Quantidade para entrada: " TO cInput; nQtd := Val( cInput )
        IF nQtd > 0
            aEstoque[ nPos ][ 3 ] += nQtd
            ? "Entrada registrada."
        ELSE
            ? "Erro: Quantidade invalida."
        ENDIF
    ELSE
        ? "Erro: Produto nao encontrado."
    ENDIF
RETURN

// 4 - Saida de estoque (com validacao)
PROCEDURE SaidaEstoque( aEstoque )
    LOCAL cCodigo, nPos, nQtd, cInput
    
    ACCEPT "Codigo do produto: " TO cCodigo
    nPos := BuscarProduto( aEstoque, cCodigo )
    
    IF nPos > 0
        ACCEPT "Quantidade para saida: " TO cInput; nQtd := Val( cInput )
        IF nQtd > 0 .AND. aEstoque[ nPos ][ 3 ] >= nQtd
            aEstoque[ nPos ][ 3 ] -= nQtd
            ? "Saida registrada."
        ELSE
            ? "Erro: Quantidade invalida ou estoque insuficiente."
        ENDIF
    ELSE
        ? "Erro: Produto nao encontrado."
    ENDIF
RETURN

// 6 - Relatorio de valor em estoque
PROCEDURE RelatorioEstoque( aEstoque )
    LOCAL i, nValorItem, nTotalGeral := 0
    
    ? "--- RELATORIO DE ESTOQUE ---"
    FOR i := 1 TO Len( aEstoque )
        nValorItem := aEstoque[i][3] * aEstoque[i][4]
        nTotalGeral += nValorItem
        ? "Produto:", aEstoque[i][2], "| Valor Total: R$", Transform(nValorItem, "999,999.99")
    NEXT
    ? "----------------------------"
    ? "Total Geral: R$", Transform(nTotalGeral, "999,999.99")
RETURN