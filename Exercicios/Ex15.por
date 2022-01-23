programa
{
	
	funcao inicio()
	{
		real salario_bruto, salario_liquido, inss, ir

		escreva("Digite o Salário Bruto: ")
		leia(salario_bruto)

		se(salario_bruto < 1.500)
		{
			inss = salario_bruto * 0.08
			salario_liquido = salario_bruto - inss

			escreva("Salário Líquido: ", salario_liquido)
			escreva("\nSalário Bruto: ", salario_bruto)
			escreva("\nINSS: ", inss)
			escreva("\nIR: Não Disconta")
		}
		senao se(salario_bruto >= 1.500)
		{
			inss = salario_bruto * 0.11
			ir = salario_bruto * 0.05
			salario_liquido = salario_bruto - inss - ir

			escreva("Salário Líquido: ", salario_liquido)
			escreva("\nSalário Bruto: ", salario_bruto)
			escreva("\nINSS: ", inss)
			escreva("\nIR: ", ir)
			
		}
		senao
		{
			escreva("Erro, digiter um salário válido!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 777; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */