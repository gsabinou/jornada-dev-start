# Exercício 1 — Conceitos fundamentais
## A. "Qual é a função do AppServer?"

O AppServer trata-se de um executável que tem a função de abrir o servidor (server) o qual tem a função de processar o código e conversar com o banco de dados do Protheus. A janela que a aplicação abre precisa ficar aberta para que o server não se encerre.

## B. "O que é o RPO?"

RPO é um arquivo compactado no sistema que funciona como o "coração" dele. Ele armazena todos os programas, códigos-fonte compilados, rotinas, dicionários de dados e etc. Quando você abre uma rotina como o Faturamento por exemplo, o AppServer lê o RPO para executar as instruções. E também é onde o que é programado em ADVPL é compilado, diferente do harbour, que compilava com hbmk2 e gerava o .exe.

## C. "Para que serve o Configurador (SIGACFG)?"

Ele funciona comop o "painel de controle" do Protheus. Ele pode ser usado para várias finalidades como alterar, criar e deletar campos. Por exemplo, na aula nós o usamos para criar o campo customizado A1_VOVO na aba nova "frescura", e também alteramos o campo "bairro" tornando obrigatório o seu preenchimento.

## D. "Qual a diferença entre campo Real e campo Virtual no SX3?"

Um campo Real ocupa espaço e salva as informações dentro do banco de dados, enquanto um campo Virtual apenas existe na interface e os dados exibidos são apenas temporários ou então calculados. 