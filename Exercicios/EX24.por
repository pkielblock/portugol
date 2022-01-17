programa
{
	/*
	24)	 (IF) Solicitar do usuário 4 notas. Calcular a média aritmética. Informar se o aluno está aprovado ou não, seguindo os critérios
		Media >=7 – Aprovado
		Media < 7 – Fazer prova de Exame, solicitar essa nota de exame
		Calcular nova média, média antiga + exame dividido por 2
		novaMedia >=6 – Aprovado Exame
		novaMedia <6 – Reprovado
	*/
	funcao inicio()
	{
		real n1, n2, n3, n4
		real media, exame, novaMedia

		//entrada de dados
		escreva("Digite N1:")
		leia(n1)
		
		escreva("Digite N2:")
		leia(n2)
		
		escreva("Digite N3:")
		leia(n3)
		
		escreva("Digite N4:")
		leia(n4)

		//processamento
		media = (n1 + n2 + n3 + n4) / 4

		//verificar aprovação
		se(media >= 7)
		{
			escreva("Aprovado...")
		}
		senao // media < 7
		{
			//solicitar nota do exame
			escreva("Digite a nota do exame: ")
			leia(exame)
			//calcular a nova media
			novaMedia = (media + exame) / 2
			se(novaMedia >= 6)
				escreva("Aprovado pelo Exame...")
			senao
			{
				escreva("Reprovado pelo Exame...")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1030; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */