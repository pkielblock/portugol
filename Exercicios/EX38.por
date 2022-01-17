programa
{
	inclua biblioteca Texto --> txt
	
	/**
	 * 38)	(STRING) Receba do usuário 2 números com 3 dígitos 
	 * cada uma, não permita que o programa receba algo diferente 
	 * disso. Crie uma variável String que recebera os número 
	 * intercalados. EX: use a função extrair_subtexto()
			N1 = 123
			N2 = 456
			T = 142536
	 */
	
	funcao inicio()
	{
		cadeia num1, num2, resultado

		escreva("Digite um numero com 3 digitos: ")
		leia(num1)

		escreva("Digite outro numero com 3 digitos: ")
		leia(num2)

		se(txt.numero_caracteres(num1) != 3 ou 
		   txt.numero_caracteres(num2) != 3) {
			escreva("Numero deve ter 3 digitos")
		}
		senao {
			resultado = txt.extrair_subtexto(num1, 0, 1) + 
					  txt.extrair_subtexto(num2, 0, 1)

			resultado += txt.extrair_subtexto(num1, 1, 2) + 
					   txt.extrair_subtexto(num2, 1, 2)

			resultado += txt.extrair_subtexto(num1, 2, 3) + 
					   txt.extrair_subtexto(num2, 2, 3)

			escreva("A intercalação é: ", resultado)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 981; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */