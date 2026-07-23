SET PROCEDURE TO estoque_lib.prg

PROCEDURE Main()
    LOCAL aEstoque := {}
    LOCAL cOpcao := ""

    // Loop principal do sistema
    DO WHILE cOpcao != "0"
        cOpcao := ExibirMenu()
        CLEAR SCREEN
        
        SWITCH cOpcao
            CASE "1"
                CadastrarProduto( aEstoque )
                EXIT
            CASE "2"
                ListarProdutos( aEstoque )
                EXIT
            CASE "3"
                EntradaEstoque( aEstoque )
                EXIT
            CASE "4"
                SaidaEstoque( aEstoque )
                EXIT
            CASE "5"
                LocalizarProdutoMenu( aEstoque ) // Wrapper para o menu
                EXIT
            CASE "6"
                RelatorioEstoque( aEstoque )
                EXIT
            CASE "0"
                ? "Saindo..."
                EXIT
            OTHERWISE
                ? "Opcao invalida!"
        ENDSWITCH
        
        IF cOpcao != "0"
            ? ""
            WAIT "Pressione qualquer tecla..."
        ENDIF
    ENDDO
RETURN

// Desenha o menu e captura opcao
FUNCTION ExibirMenu()
    LOCAL cOp
    CLEAR SCREEN
    ? "=== CONTROLE DE ESTOQUE ==="
    ? "1 - Cadastrar produto"
    ? "2 - Listar produtos"
    ? "3 - Entrada de estoque"
    ? "4 - Saida de estoque"
    ? "5 - Buscar produto por codigo"
    ? "6 - Relatorio"
    ? "0 - Sair"
    ? "==========================="
    ACCEPT "Opcao: " TO cOp
RETURN Trim( cOp )

// Rotina auxiliar para a opcao 5 do menu
PROCEDURE LocalizarProdutoMenu( aEstoque )
    LOCAL cCodigo, nPos
    ACCEPT "Digite o codigo: " TO cCodigo
    nPos := BuscarProduto( aEstoque, cCodigo )
    IF nPos > 0
        ? "Produto encontrado (Posicao " + LTrim(Str(nPos)) + "):", aEstoque[ nPos ][ 2 ]
    ELSE
        ? "Produto nao encontrado."
    ENDIF
RETURN