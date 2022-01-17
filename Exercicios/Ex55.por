programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> ut
	
	funcao inicio()
	{
		inteiro val1, val2, qtd2=0, qtd3=0, qtd4=0, sm2=0, sm3=0, sm4=0

		faca {
			escreva("Digite o primeiro numero do intervalo: ")
			leia(val1)

			escreva("Digite o ultimo numero do intervalo: ")
			leia(val2)

			se(val1 > val2) 
			{
				escreva("Os valores devem ser em ordem crescente...")
				ut.aguarde(2000)
				limpa()
			}
		} enquanto(val1 > val2)

		//fazer os calculos
		enquanto(val1 <= val2)
		{
			se(val1 % 2 == 0) 
			{
				qtd2++
				sm2 += val1 //equivale a sm2 = sm2 + val1
			}

			se(val1 % 3 == 0) 
			{
				qtd3++
				sm3 += val1
			}

			se(val1 % 4 == 0) 
			{
				qtd4++
				sm4 += val1
			}

			val1++ //avança 1 na variavel
		}

		//saida de resultado
		escreva("\nQtd de numeros divisiveis por 2: ", qtd2)
		escreva("\nSoma dos numeros divisiveis por 2: ", sm2)

		escreva("\nQtd de numeros divisiveis por 3: ", qtd3)
		escreva("\nSoma dos numeros divisiveis por 3: ", sm3)

		escreva("\nQtd de numeros divisiveis por 4: ", qtd4)
		escreva("\nSoma dos numeros divisiveis por 4: ", sm4)
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */