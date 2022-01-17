programa
{
	
	funcao inicio()
	{
		inteiro cont, numero, qtd=0, somatoria=0

		cont = 0
		enquanto(cont < 10)
		{
			escreva("valor do cont: ", cont, "\n")
			
			escreva("Digite um numero qualquer: ")
			leia(numero)

			se(numero > 0)
			{
				//adiciona 1 na quantidade de numeros > 0
				qtd++  //qtd +=1 ou qtd = qtd + 1

				//acumular a soma de todos os numeros > 0
				somatoria = somatoria + numero
			}

			//incremento do laço
			cont++ //equivale a cont = cont + 1
		}

		escreva("Total de numeros maiores que 0: ", qtd)
		escreva("\nSomatoria dos numeros maiores que 0: ", somatoria)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */