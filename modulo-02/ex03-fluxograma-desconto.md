# Exercício 3 - Fluxograma

## Monte um fluxograma para o seguinte desafio: “Uma loja dá desconto de 10% para compras acima de R$ 100. Leia o valor da compra e mostre o valor final a pagar.”

```mermaid
graph TD
    Start((Início)) --> ReadValue[/Ler valor da compra/]
    ReadValue --> Decision{Valor > 100?}
    
    Decision -- Sim --> ApplyDiscount[Calcular Valor Final = Valor - 10%]
    Decision -- Não --> KeepValue[Valor Final = Valor]
    
    ApplyDiscount --> PrintResult[/Mostrar valor final a pagar/]
    KeepValue --> PrintResult
    
    PrintResult --> End((Fim))