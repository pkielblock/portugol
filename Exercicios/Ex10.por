programa
{
	/*Crie um programa para realizar o cálculo da área de uma circunferência, sendo a formula A = Pi*R2. 
	Solicite o valor do raio para o usuário, efetue o cálculo e exiba o valor. Lembre-se Pi=3.1415*/
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real raio, area

		escreva("Digite o Raio da Cincunferência: ")
		leia(raio)

		area = mat.PI * mat.potencia(raio, 2.0)
		
		escreva("A área da cincunferência é de: ", mat.arredondar(area,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */