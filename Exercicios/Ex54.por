programa
{
	inclua biblioteca Util --> ut
	
	funcao inicio()
	{
		inteiro cont, numero, maior20=0, menor10=0

		para(cont=1; cont <= 10; cont++) 
		{
			faca 
			{
				escreva("Informe um numero (", cont, "):")
				leia(numero)

				se(numero < 1 ou numero > 100) 
				{
					escreva("\nInforme um numero entre 1 e 100!!\n")
					ut.aguarde(2000) //espera por 2 segundos para continuar
					limpa() //apaga a tela
				}
				
			} enquanto(numero < 1 ou numero > 100)

			//fazer as comparações
			se(numero > 20)
				maior20++
			senao
				se(numero < 10)
					menor10++
			
		}

		//exibir os resultados
		escreva("\nTotal de numeros maiores que 20: ", maior20)
		escreva("\nTotal de numeros menores que 10: ", menor10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 132; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */