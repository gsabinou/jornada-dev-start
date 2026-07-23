SET PROCEDURE TO matematica.prg

PROCEDURE Main()
    CLEAR SCREEN
    
    ? "========================================"
    ? " TESTES DA BIBLIOTECA MATEMATICA.PRG"
    ? "========================================"
    ? ""
    
    // Testando Fatorial
    ? "--- Testando FatorialN(nN) ---"
    ? "Fatorial de 5 (esperado 120) :", FatorialN( 5 )
    ? "Fatorial de 0 (esperado 1)   :", FatorialN( 0 )
    ? ""

    // Testando Numeros Primos
    ? "--- Testando EhPrimo(nN) ---"
    ? "7 eh primo? (esperado .T.)   :", EhPrimo( 7 )
    ? "10 eh primo? (esperado .F.)  :", EhPrimo( 10 )
    ? "1 eh primo? (esperado .F.)   :", EhPrimo( 1 )
    ? ""

    // Testando MDC
    ? "--- Testando MDC(nA, nB) ---"
    ? "MDC de 48 e 18 (esperado 6)  :", MDC( 48, 18 )
    ? "MDC de 54 e 24 (esperado 6)  :", MDC( 54, 24 )
    ? ""

    // Testando MMC
    ? "--- Testando MMC(nA, nB) ---"
    ? "MMC de 12 e 15 (esperado 60) :", MMC( 12, 15 )
    ? "MMC de 4 e 6 (esperado 12)   :", MMC( 4, 6 )
    ? ""
    
    ? "========================================"
    WAIT "Pressione qualquer tecla para encerrar..."
    
RETURN