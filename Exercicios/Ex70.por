programa
{
	/**
	* Faça um programa que gere o seguinte desenho. Utilize exclusivamente o FOR
		1-*
		2-**
		3-***
		4-****
		5-*****
		6-******
		7-*******
		8-********
		9-*********
		10-**********
	*
	*/
	 
	funcao inicio()
	{
		inteiro primeiro, segundo

		para(primeiro = 1; primeiro <= 10; primeiro++)
		{
			escreva("\n", primeiro, "-")
			
			para(segundo=0; segundo < primeiro; segundo++)
			{
				escreva("*")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */