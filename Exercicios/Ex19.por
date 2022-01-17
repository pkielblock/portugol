programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{

		real a, b, c, delta, x1, x2

		escreva("Digite o valor de A:")
		leia(a)

		escreva("Digite o valor de B:")
		leia(b)

		escreva("Digite o valor de C:")
		leia(c)

		se(a == 0) 
		{
			escreva("\nEsta não é uma equação do 2º Grau..")
		}
		senao
		{
			//verificar se é completa ou incompleta
			se(b == 0 ou c == 0) 
			{
				escreva("\nA equação é incompleta...")
			} 
			senao
			{
				escreva("A equação é completa...")
			}
			
			delta = mat.potencia(b, 2) - 4 * a * c
			
			//verificar as raizes
			se (delta < 0) 
			{
				escreva("\nNão existem raizes")
			}
			senao 
			{
				x1 = (-b + mat.raiz(delta, 2)) / (2 * a)
				
				se(delta == 0)
				{
					x2 = x1
				}
				senao 
				{
					x2 = (-b - mat.raiz(delta, 2)) / (2 * a)
				}

				//resultado
				escreva("\nX1 = ", x1)
				escreva("\nX2 = ", x2)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 813; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */