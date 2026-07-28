# Exercício 2 — A tabela ZA1 (Pets) que criamos em aula
## A. "Liste os campos da ZA1 (nome do campo, tipo, tamanho) — incluindo o campo de filial, que é obrigatório em toda tabela do Protheus."

Nós criamos as tabelas:
- ZA1_FILIAL: campo de filial, que é obrigatório em toda tabela do Protheus, do tipo caracter, tendo o tamanho de 2 a 12 caracteres.
- ZA1_NOME: para armazenar o nome do pet, tem o tipo caracter, com tamanho máximo de 30.
- ZA1_RACA: informa a raça do pet, possui o tipo caracter, tamanho máximo de 50.
- ZA1_NASC: A data de nascimento do pet, que possui a tipagem data.

## B. "Que índice faria sentido para a ZA1? Justifique (lembre da analogia da lista telefônica)."

Um bom índice iria organizar a tabela pelo nome do pet, pois daria para os organizar por ordem alfabética e evitaria duplicidade na maioria dos casos.

## C. "Explique por que o prefixo da tabela é Z (o que esse prefixo significa em termos de convenção do Protheus)."

Esse Z é usado para referenciar tabelas que não vieram de fábrica com o Protheus, ou seja, tabelas customizadas de cliente tem a obrigação de ter esse prefixo para serem identificadas.

## D. "Explique por que os campos começam com ZA1_ (ex: ZA1_NOME , ZA1_RACA ) e não apenas com o nome do campo solto."

Assim como qualquer outra tabela padrão do ERP, tabelas customizadas também precisam ter seu prefixo seguido de um "_" e logo em seguida o nome do campo (Exemplo: ZA1_NOME). Isso é uma boa prática para que todos possam reconhecer, tanto você quanto qualquer outro desenvolvedor de qual tabela é aquele campo.
