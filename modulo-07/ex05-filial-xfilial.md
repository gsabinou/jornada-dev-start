# Exercício 5 — A1_FILIAL e xFilial()
## A. Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus, incluindo a ZA1 que criamos, precisa de um campo de filial)?"

Este campo é obrigatório em todas as tabelas do Protheus, pois sem ele as tabelas não se encaixariam no padrão multiempresa do ERP. 

## B. "O que a função xFilial() tem a ver com isso? O que aconteceria se um programa “escrevesse a filial na mão” em vez de usar xFilial() ?"

A função xFilial() serve exatamente para descobrir a filial atual em que o usuário está logado, já formatada com o tamanho e os zeros à esquerda corretos da tabela em questão.