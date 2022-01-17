programa
{
	
	funcao inicio()
	{
		real preco
		caracter tipo

		escreva("Qual valor do produto? ")
		leia(preco)

		escreva("Opções...")
		escreva("\nE - Estudante: 15%")
		escreva("\nA - Assalariado: 10%")
		escreva("\nP - Aposentado: 25%")

		escreva("\n\nQual opção? ")
		leia(tipo)

		escolha (tipo) 
		{
			caso 'E':
			caso 'e':
				preco *= 0.85 //preco = preco * 0.85
				pare

			caso 'A':
			caso 'a':
				preco *= 0.90
				pare

			caso 'P':
			caso 'p':
				preco *= 0.75

			caso contrario:
				escreva("Você não terá desconto\n")
		}

		escreva("O valor a ser pago é R$ ", preco)

		//com se
		se(tipo == 'E' ou tipo == 'e')
		{
			preco *= 0.85
		}
		senao se(tipo == 'A' ou tipo == 'a')
		{
			preco *= 0.90
		}
		senao se(tipo == 'P' ou tipo == 'p') 
		{
			preco *= 0.75
		}
		senao 
		{
			escreva("Você não terá desconto")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 843; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */