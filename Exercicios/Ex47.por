programa
{
	
	funcao inicio()
	{
		inteiro cont, d2 = 0, d4 = 0, d7 = 0

		cont = 0
		enquanto(cont <= 1000)
		{
			se(cont % 2 == 0)
			{
				d2++
			}
			
			se(cont % 4 == 0)
			{
				d4++
			}
			
			se(cont % 7 == 0)
			{
				d7++
			}
			
			cont++
		}
		escreva("\nTotal Divisivel por 2 é: " + d2)
		escreva("\nTotal Divisivel por 4 é: " + d4)
		escreva("\nTotal Divisivel por 7 é: " + d7)

		faca
		{
			se(cont % 2 == 0)
			{
				d2++
			}
			
			se(cont % 4 == 0)
			{
				d4++
			}
			
			se(cont % 7 == 0)
			{
				d7++
			}
			
			cont++
		}
		
		enquanto(cont <= 1000)

		escreva("\nTotal Divisivel por 2 é: " + d2)
		escreva("\nTotal Divisivel por 4 é: " + d4)
		escreva("\nTotal Divisivel por 7 é: " + d7)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 583; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */