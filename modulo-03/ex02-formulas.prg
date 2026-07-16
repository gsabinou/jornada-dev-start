#define PI 3.14159

FUNCTION MAIN ()
    
    // Variáveis para cálculo da área do círculo
    LOCAL nRaio
    LOCAL nArea

    // Variáveis para cálculo da hipotenusa do triângulo retângulo
    LOCAL nCateto1
    LOCAL nCateto2
    LOCAL nHipotenusa

    // Variáveis para cálculo do IMC
    LOCAL nPeso
    LOCAL nAltura
    LOCAL nIMC

    // Cálculo da área do círculo
    ACCEPT "Digite o raio do círculo: " TO nRaio
    nRaio := Val(nRaio)
    
    nArea := PI * (nRaio ^ 2)
    
    QOut("Área do círculo: ", Str(nArea, 10, 2))

    // Cálculo da hipotenusa do triângulo retângulo
    ACCEPT "Digite o valor do primeiro cateto: " TO nCateto1
    nCateto1 := Val(nCateto1)
    ACCEPT "Digite o valor do segundo cateto: " TO nCateto2
    nCateto2 := Val(nCateto2)

    nHipotenusa := Sqrt(nCateto1 ^ 2 + nCateto2 ^ 2)
    QOut("Hipotenusa do triângulo: ", Str(nHipotenusa, 10, 2))

    // Cálculo do IMC
    ACCEPT "Digite o peso (em kg): " TO nPeso
    nPeso := Val(nPeso)
    ACCEPT "Digite a altura (em metros): " TO nAltura
    nAltura := Val(nAltura)

    nIMC := nPeso / nAltura ^ 2
    QOut("Índice de Massa Corporal (IMC): ", Str(nIMC, 10, 2))

RETURN NIL