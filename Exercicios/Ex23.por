programa
{
	
	funcao inicio()
	{
		real n1, n2, n3, n4, media, prova_exame

		escreva("Digite a N1: ")
		leia(n1)
		escreva("Digite a N2: ")
		leia(n2)
		escreva("Digite a N3: ")
		leia(n3)
		escreva("Digite a N4: ")
		leia(n4)

		media = (n1 + n2 + n3 + n4) / 2
		
		se(media >= 7)
		{
			escreva("Aprovado")
		}
		senao se(media < 7)
		{
			escreva("Nota Insuficiente, Digite a Nota da Prova de Exame: ")
			leia(prova_exame)

			media = (media + prova_exame) / 2

			se(media >= 6)
			{
				escreva("Aprovado no Exame")
			}
			senao
			{
				escreva("Reprovado")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 194; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */