programa
{
	/*
	 * entradas: salario, convenio
	 * processamento: calcular INSS, IRRF e Salario Liquido
	 * Saidas: INSS, IRRF, convenio e Salario Liquido
	 * 
	 * Algoritmo
	 * 1-solicitar salario
	 * 2-solicitar convenio
	 * 3-calcular INSS 8% sobre salario
	 * 4-calcular IRRF 11% sobre o salario
	 * 5-calcular salario liquido (salario - INSS - IRRF - Convevio)
	 * 6-exibir o salario liquido e todos os outros valores
	 */
	 
	funcao inicio()
	{
		//criar as variaveis
		real salario, convenio, inss
		real irrf, salLiquido

		//entrada de dados
		escreva("Qual seu salário? ")
		leia(salario)

		escreva("Quanto você paga de convênio? ")
		leia(convenio)

		//processamento
		inss = salario * 0.08
		irrf = salario * 0.11
		salLiquido = salario - inss - irrf - convenio

		//saida de dados
		escreva("Salário Bruto...........................: R$ ", salario)
		escreva("\nINSS....................................: R$ ", inss)
		escreva("\nIRRF....................................: R$ ", irrf)
		escreva("\nConvênio................................: R$ ", convenio)
		escreva("\nSalário Liquido.........................: R$ ", salLiquido)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 430; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */