#include 'protheus.ch'

User Function STTIP003SALVAR(cCliente, cAssunto)
    Local oErro

    BeginTran()

    // Inicia a sequência de controle de falhas
    BEGIN SEQUENCE

        // Validações com IF (usa Break() se faltar)
        If Empty(cCliente)
            Break("O campo Cliente (Z1_CLIENTE) é obrigatório e não pode estar vazio.")
        EndIf

        If Empty(cAssunto)
            Break("O campo Assunto (Z1_ASSUNTO) é obrigatório e não pode estar vazio.")
        EndIf

        RecLock("SZ1", .T.)
        SZ1->Z1_CLIENTE := cCliente
        SZ1->Z1_ASSUNTO := cAssunto
        MsUnLock()

        // Só chama CommitTran() se tudo deu certo (não caiu no Break)
        CommitTran()
        MsgInfo("Contato salvo com sucesso!", "Sucesso")

    // RECOVER: captura a falha
    RECOVER USING oErro
        
        // Faz o rollback para desfazer qualquer lock ou transação pendente
        RollBackTran()

        // Mostra mensagem amigável ao usuário
        MsgStop("Houve uma falha ao tentar salvar o contato. Verifique as informações e tente novamente.", "Atenção")

        // Chama a função de gravação de log passando a rotina e o erro
        U_GRAVARLOG("U_STTIP003SALVAR", oErro)

    END SEQUENCE

Return