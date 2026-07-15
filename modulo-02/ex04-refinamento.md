# Exercício 4 - Refinamento sucessivo

## Aplicar a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema: “Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a pagar.”

## Nível 1 - Visão geral:
```
Início
    Registrar itens da compra
    Calcular subtotal
    Aplicar desconto de 5% se houver cartão fidelidade
    Mostrar total a pagar
Fim
```

## Nível 2 - Detalhamento:
```
Início

    Registrar itens da compra:
        Ler nome do 1° item
        Ler valor do 1° item
        Ler nome do 2° item
        Ler valor do 2° item
        Ler nome do 3° item
        Ler valor do 3° item

    Calcular subtotal:
        subtotal ← iValor1 + iValor2 + iValor3

    Aplicar desconto de 5% se houver cartão fidelidade:
    Se <cFidelidade == verdadeiro>
        desconto ← subtotal / 0,05
        subtotal ← subtotal - desconto

    Mostrar total a pagar:
        Escreva "O total a pagar é", subtotal

Fim
```