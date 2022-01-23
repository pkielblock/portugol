programa
{
	
	funcao inicio()
	{
		inteiro numero

		escreva("Digite um numero: ")
		leia(numero)

		se(numero >= 0 e numero <= 10)
		{
			escreva("Você está na faixa 1")
		}
		senao
		{
			se(numero >= 15 e numero <= 25)
			{
				escreva("Você está na faixa 2")
			}
			senao
			{
				se(numero >= 26 e numero <= 40)
				{
					escreva("Você está na faixa 3")
				}
				senao
					escreva("Você não está em nenhuma faixa")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 428; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */