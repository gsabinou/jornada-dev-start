# Exercício 5 — Recriando a ZA1 no Configurador
## A. Cadastre a estrutura no dicionário (SX2/SX3).

Para cadastrar a estrutura, nós abrimos o Server, depois o Smartclient e iniciamos o programa SIGACFG, referente ao configurador. Após isso, nós vamos em:
Base de dados > Dicionário > Base de dados, e lá nós selecionamos o dicionário de dados e clicamos em incluir. Ali, criamos a tabela ZA1, com descrição pets. 

Depois de criada, nós a procuramos na lista do dicionário e clicamos em editar. Irá abrir uma tela que nos permitirá adicionar campos e índice, então, antes de qualquer coisa, iremos popular a tabela com as colunas ZA1_NOME do tipo caracter, ZA1_RACA também do tipo caracter e ZA1_NASC do tipo data. Por padrão, a tabela quando foi criada já vem com o campo de filial (ZA1_FILIAL). Após isso, basta criarmos o índice ZA1_FILIAL+ZA1_NOME e darmos um nome qualquer a ele. Pronto! Agora é só confirmar e aplicar as mudanças clicando no símbolo de disquete, para atualizar a base de dados.

## B. Force o reconhecimento da tabela pelo framework (rotina de fórmulas, como foi mostrado em aula).

Para isso, nós fechamos o SIGACFG e abrimos o Smartclient novamente para abrir o SIGAMDI (ou SIGAFAT, para reduzir alguns passos). Ao abrir o programa, iremos em Atualizar > Cadastros > Fórmulas > Incluir. Ali, damos qualquer código e nome para a fórmula pois não possui muita relevância, e então damos a ela o comando dbSelectArea("ZA1"). Assim como foi mostrado em aula, isso irá forçar que o programa reconheça a tabela, a inclua no programa e na pasta de data, aonde ela não era encontrada antes.

## C. Confira a estrutura final no MPSDU.

Ao abrir o MPSDU pelo Smartclient, apertando ok, expandindo o SYSTEM, indo a pasta data, encontraremos lá no final do diretório o arquivo za1990.dbf. Ele é a tabela que nós criamos.