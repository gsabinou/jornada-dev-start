FUNCTION MAIN()

LOCAL cA
LOCAl cB
LOCAl cC

cA := "Harbour"
cB := "Harbour"
cC := "Harb"

QOut("O valor da variável cA é: " + cA)
QOut("O valor da variável cB é: " + cB)
QOut("O valor da variável cC é: " + cC)
QOut("Ao usar o operador de igualdade (==) para comparar as variáveis cA e cB, o resultado é: " + If((cA == cB),"True", "False"))
QOut("Tivemos este resultado porque as variáveis cA e cB possuem o mesmo valor, ou seja, ambas armazenam a string 'Harbour'.")
QOut("Ao usar o operador de igualdade (==) para comparar as variáveis cA e cC, o resultado é: " + If((cA == cC),"True", "False"))
QOut("Tivemos este resultado porque as variáveis cA e cC possuem valores diferente, elas não são exatamente iguais.")
QOut("Portanto, se compararmos cA e cC com o operador (=), o resultado será verdadeiro. Observe: " + If((cA = cC),"True", "False"))
QOut("Tivemos este resultado pois o início de cC é similar ao de cA, por isso o operador retorna verdadeiro.")
QOut("O mesmo aconteceria se comparassemos cA com cB, veja: " + If((cA = cB),"True", "False"))
RETURN NIL