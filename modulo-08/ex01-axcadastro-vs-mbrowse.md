# Exercício 1 - AxCadastro × mBrowse

## A. "Quando você usaria AxCadastro e quando usaria mBrowse ? Dê um exemplo de cada."

O AxCadastro é mais recomendado a ser usado quando sua intenção é apenas aprender e prototipar, por ter um código menor, ter um controle de interface baixo, e não suportar tabelas customizadas. O mBrowse é muito mais recomendado para sistemas reais. Por mais que o código dele seja mais detalhado, o controle de interface dele é alto, possui legendas coloridas, tem filtros dinâmicos completos, colunas customizadas e é mais usado em rotinas de produção.

## B. "Cite três coisas que o mBrowse faz e o AxCadastro não faz."

O mBRowse oferece mais controle da interface, possui legendas coloridas e suporta colunas customizadas.

## C. "Na configuração de legendas ( aColors ), por que a regra ".T." deve ficar por último?"

Ela deve ficar por último pois a ordem das regras declaradas importam, elas são lidas de cima para baixo. Por este motivo, a primeira que for verdadeira define a cor da linha.

## D. "Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preencher o nome do cliente?"

Ambos executam a mesma função: a de preencher o cliente. A diferença está no modo em que fazem isso. O campo virtual calcula na exibição e não grava o dado, ele apenas é exibido no momento, enquanto o gatilho o guarda em um campo Real na base de dados.

