PROCEDURE Main()
    LOCAL cJogadaUser, cJogadaCPU, cVencedor
    LOCAL lJogando := .T.

    CLEAR SCREEN
    ? "========================================"
    ? "          BEM-VINDO AO JOKENPO          "
    ? "========================================"
    
    // Loop de partidas orquestrado pela Main
    DO WHILE lJogando
        ? ""
        ? "Escolha sua jogada:"
        ? "[ 1 ] Pedra"
        ? "[ 2 ] Papel"
        ? "[ 3 ] Tesoura"
        ? "[ S ] Sair do jogo"
        ? ""
        
        ACCEPT "Sua opcao: " TO cJogadaUser
        cJogadaUser := Upper( AllTrim( cJogadaUser ) )

        // Condição de saída do loop
        IF cJogadaUser == "S"
            ? "Saindo do jogo... Obrigado por jogar!"
            EXIT
        ENDIF

        // Valida a entrada do usuário
        IF ValidarJogada( cJogadaUser )
            // Sorteia a jogada do computador
            cJogadaCPU := SortearJogadaCPU()
            
            ? "----------------------------------------"
            ? "Voce escolheu : " + NomeDaJogada( cJogadaUser )
            ? "CPU escolheu  : " + NomeDaJogada( cJogadaCPU )
            
            // Define e exibe o vencedor
            cVencedor := DefinirVencedor( cJogadaUser, cJogadaCPU )
            ? ">>> RESULTADO : " + cVencedor + " <<<"
            ? "----------------------------------------"
        ELSE
            ? ">>> Opcao invalida! Digite 1, 2, 3 ou S. <<<"
        ENDIF
    ENDDO

RETURN

// Sorteia a jogada do computador
FUNCTION SortearJogadaCPU()
    LOCAL nSorteio, cJogada
    
    // hb_RandomInt( min, max ) gera um numero aleatorio no Harbour
    nSorteio := hb_RandomInt( 1, 3 ) 
    
    // Converte o numero sorteado para string correspondente
    cJogada := LTrim( Str( nSorteio ) ) 
    
RETURN cJogada

// Valida a entrada do usuario
FUNCTION ValidarJogada( cJogada )
    // Retorna .T. se a jogada estiver contida na string "123"
RETURN cJogada $ "123"

// Retorna quem ganhou
FUNCTION DefinirVencedor( cJogada1, cJogada2 )
    LOCAL cResultado
    
    // cJogada1 é o Usuario, cJogada2 é a CPU
    IF cJogada1 == cJogada2
        cResultado := "EMPATE!"
        // Regras de vitória do usuário: 
        // 1 (Pedra) ganha de 3 (Tesoura)
        // 2 (Papel) ganha de 1 (Pedra)
        // 3 (Tesoura) ganha de 2 (Papel)
    ELSEIF (cJogada1 == "1" .AND. cJogada2 == "3") .OR. ;
            (cJogada1 == "2" .AND. cJogada2 == "1") .OR. ;
            (cJogada1 == "3" .AND. cJogada2 == "2")
        cResultado := "VOCE VENCEU!"
    ELSE
        cResultado := "COMPUTADOR VENCEU!"
    ENDIF
    
RETURN cResultado

// Funcao extra auxiliar para melhorar a exibicao no console
FUNCTION NomeDaJogada( cJogada )
    LOCAL cNome := ""
    
    SWITCH cJogada
        CASE "1"
            cNome := "Pedra"
            EXIT
        CASE "2"
            cNome := "Papel"
            EXIT
        CASE "3"
            cNome := "Tesoura"
            EXIT
    ENDSWITCH
    
RETURN cNome