programa
{
	
	funcao inicio()
	{
		inteiro fat=1, cont, numero

		escreva("Digite o Número a Ser Fatoriado: ")
		leia(numero)

		para(cont=1; cont <= numero; cont++)
		{
			se(cont < numero)
				escreva(cont, " x ")
			senao
				escreva(cont)
				
			fat = fat * cont
		}

		escreva(" = ", fat)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */