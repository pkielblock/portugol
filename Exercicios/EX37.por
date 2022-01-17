programa
{
	inclua biblioteca Tipos --> tp
	
	/*
	37)	(STRING) Solicitar do usuário dois números em variáveis 
	inteiras. Armazenar esses dois números no formato N1-N2 em uma 
	variável do tipo String. Apresentar a variável String. EX
		N1 = 123
		N2 = 4
		String= 123-4
	*/
	
	funcao inicio()
	{
		inteiro n1, n2
		cadeia string

		escreva("Digite N1: ")
		leia(n1)

		escreva("Digite N2: ")
		leia(n2)

		string = tp.inteiro_para_cadeia(n1, 10) + "-" + 
			    tp.inteiro_para_cadeia(n2, 10)

	     escreva("Dados concatenados: ", string)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 547; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */