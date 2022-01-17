programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, diferenca

		escreva("Digite o Valor de N1: ")
		leia(n1)
		
		escreva("Digite o Valor de N2: ")
		leia(n2)

		se(n1 > n2)
		{
			diferenca = n1 - n2
			escreva("A diferença de ", n1, " e ", n2, " é: ", diferenca)
		}
		senao se(n2 > n1)
		{
			diferenca = n2 - n1
			escreva("A diferença de ", n2, " e ", n1, " é: ", diferenca)
		}
		senao
		{
			escreva("Erro, digite um número correto")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 363; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */