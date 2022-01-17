programa
{
	/*Ler uma temperatura em graus Celsius e apresentá-la convertida em graus Fahrenheit. 
	A formula de conversão é: F := (9 * C + 160)/5, sendo C a temperatura em Celsius e F em Fahrenheit*/
	
	funcao inicio()
	{
		real celsius, fahrenheit

		escreva ("Digite uma Temperatura em ºC: ")
		leia(celsius)

		fahrenheit = (9 * celsius + 160)/5

		escreva ("A conversão de ", celsius, "ºC é de: ", fahrenheit, "F") 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 391; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */