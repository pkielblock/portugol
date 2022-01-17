programa
{
	inclua biblioteca Matematica --> mat

	/**
	 * Faça um algoritmo que receba como entrada as medidas dos dois catetos de um 
	 * triângulo retângulo e calcule e exiba a medida da hipotenusa e a área do 
	 * triângulo
	 * 
	 * Algoritmo
	 * 1-informar valor cateto 1
	 * 2-informat valor cateto 2
	 * 3-calcular a hipotenusa  hip = cateto1 ^ 2 + cateto2 ^ 2
	 * 4-calcular a raiz da hipotenusa calculada
	 * 5-calcular area do triangulo area = cateto1 * cateto2 / 2
	 * 6-Exibir a hipotenusa e a area
	 */
	 
	funcao inicio()
	{
		real cat1, cat2, hip, area

		//entrada de dados
		escreva("Informe o valor do Cateto 1: ")
		leia(cat1)

		escreva("Informe o valor do Cateto 2: ")
		leia(cat2)

		//processamento
		hip = mat.potencia(cat1, 2.0) + mat.potencia(cat2, 2.0)
		hip = mat.raiz(hip, 2.0)

		area = cat1 * cat2 / 2
		
		//saida de dados
		escreva("Valor da Hipotenusa: ", mat.arredondar(hip, 2))
		escreva("\nValor da Área: ", mat.arredondar(area, 2))
						
	}
}





/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 988; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */