programa
{
	/*Faça um algoritmo que leia dois números reais e 
	imprima a soma e a média aritmética desses números.*/
	funcao inicio()
	{
		real n1, n2, soma, media

		escreva("Digite N1: ")
		leia(n1)
		
		escreva("Digite N2: ")
		leia(n2)

		soma = n1 + n2
		media = soma / 2

		escreva("A Soma de ", n1, " + ", n2, " é de: ", soma)
		escreva("\nE A Média é de: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */