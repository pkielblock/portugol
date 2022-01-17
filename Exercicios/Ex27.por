programa
{
	
	funcao inicio()
	{
		real produto, desconto = 0.0
		caracter tipo_cliente = ' '

		escreva("\nDigite o Valor do Produto: ")
		leia(produto)
		escreva("\nDigite o Tipo do Cliente: ")
		leia(tipo_cliente)

		escolha(tipo_cliente)
			{
				caso 'E':
				caso 'e':
					desconto = produto * 0.15
					produto = produto - desconto
					escreva("\nValor A Ser Pago Com 15% de Desconto: R$", produto)
					pare
				caso 'A':
				caso 'a':
					desconto = produto * 0.10
					produto = produto - desconto
					escreva("\nValor A Ser Pago Com 10% de Desconto: R$", produto)
					pare
				caso 'P':
				caso 'p':
					desconto = produto * 0.25
					produto = produto - desconto
					escreva("\nValor A Ser Pago Com 25% de Desconto: R$", produto)
					pare
				caso contrario:
					escreva("\nValor a Ser Pago sem Nenhum Desconto: R$", produto)
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 852; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */