# Exercício 2 - Pseudocódigo

## A. Calcular a área de um retângulo (base x altura)
```
Início

Leia base
Leia altura
area ← base x altura

Escreva "A área do retângulo é ", area

Fim
```

## B. Verificar se um número é par ou ímpar

```
Início

Leia numero
Se <numero / 2 = 0>
    Escreva numero, " é par!"
Senão 
    Escreva numero, " é impar!"

Fim
```

## C. Encontrar o maior entre três números

```
Início

Leia num1
Leia num2
Leia num3

Declare maior
Se <num1 >= num2> e <num1 >= num3>
        maior <- num1
    Senão Se <num2 >= num1> e <num2 >= num3> Então
        maior <- num2
    Senão
        maior <- num3

Escreva "O maior número é ", maior
Fim
```