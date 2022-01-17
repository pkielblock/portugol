programa
{
	/**
	 * Faça um programa que solicite do usuário seu salário, e aplique um aumento 
	 * de 10 % para esse salário somente se for < 2000. Ao final do programa apresente 
	 * o valor do salário antigo e do novo salário.
	 * 
	 * Algoritmo
	 * 1-solicitar o salario
	 * 2-se o salario < 2000
	 * 2.1  aumentar em 10% o salario
	 * 3- exibir o valor do novo salario e do antigo
	 */
	funcao inicio()
	{
		real salario=0.0, salarioNovo=0.0

		escreva("Qual seu Salário? ")
		leia(salario)

		se (salario < 2000) 
		{
			salarioNovo = salario * 1.10
		}
		senao
		{
			salarioNovo = salario
		}

		escreva("Salario Antigo......R$ ", salario)
		escreva("\nSalario Novo........R$ ", salarioNovo)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 680; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */