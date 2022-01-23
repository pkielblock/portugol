programa
{
	
	funcao inicio()
	{
		//Dividir por 16 Media PONDERADA

		real n1, n2, n3, n4, media

		faca
		{
			escreva("\nDigite a N1: ")
			leia(n1)

			se(n1 < 0 ou n1 > 10)
			{
				escreva("\nNota Precisa Estar Entre 0 e 10")
			}
			
		} enquanto (n1 < 0 ou n1 > 10)

		faca
		{
			escreva("\nDigite a N2: ")
			leia(n2)

			se(n2 < 0 ou n2 > 10)
			{
				escreva("\nNota Precisa Estar Entre 0 e 10")
			}
			
		} enquanto (n2 < 0 ou n2 > 10)

		faca
		{
			escreva("\nDigite a N3: ")
			leia(n3)

			se(n3 < 0 ou n3 > 10)
			{
				escreva("\nNota Precisa Estar Entre 0 e 10")
			}
			
		} enquanto (n3 < 0 ou n3 > 10)

		faca
		{
			escreva("\nDigite a N4: ")
			leia(n4)

			se(n4 < 0 ou n4 > 10)
			{
				escreva("\nNota Precisa Estar Entre 0 e 10")
			}
			
		} enquanto (n4 < 0 ou n4 > 10)

		n1 = n1 * 2
		n2 = n2 * 3
		n3 = n3 * 5
		n4 = n4 * 6
		media = (n1 + n2 + n3 + n4) / 16

		escreva("\nMédia Ponderada é De: " + media)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 945; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */