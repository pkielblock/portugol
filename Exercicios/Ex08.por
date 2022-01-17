programa
{
	/*Faça um programa que solicite do usuário o nome e sua idade. 
	Exiba a frase “Olá sr(a) XXXXXXXXXXXXXXXXX, você tem XX anos de idade”.*/
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade

		escreva ("Informe seu Nome: ")
		leia(nome)

		escreva ("Informe sua Idade: ")
		leia(idade)

		escreva ("Olá Sr(a) " + nome + ", você tem " + idade + " anos de idade.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */