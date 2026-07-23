FUNCTION MAIN()
    LOCAL nInicioTempo
    LOCAL cHoraAtual
    LOCAL cHoraPronta

    nInicioTempo := Seconds() // Obtendo o tempo inicial em segundos

    DO WHILE (Seconds() - nInicioTempo) < 30 // Loop por 30 segundos
        cHoraAtual := ObterHora() 
        cHoraPronta := FormatarHora(cHoraAtual) 
        ExibirHora(cHoraPronta) 
        Inkey(1) // Pausa de 1 segundo para atualização da hora
    ENDDO

    QOut("Programa encerrado.")
RETURN NIL

FUNCTION ObterHora()
    LOCAL cHora := TIME() // Obtendo a hora atual no formato HH:MM:SS
RETURN cHora

FUNCTION FormatarHora(cHora)
RETURN Left(cHora, 8) // Retorna apenas a parte da hora (HH:MM:SS)

PROCEDURE ExibirHora(cHora)
    QOut("Hora atual: " + Alltrim(cHora)) 
RETURN