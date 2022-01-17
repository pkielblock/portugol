programa
{
	/**
	*
	* 94)	(VETOR) Crie um programa que solicite do usuário 10 nomes e 10 salários, 
	* armazena cada um deles em um vetor. Ao final apresente os nomes dos funcionários que 
	* recebem mais do que a média geral entre os 10 funcionários cadastrados
	*/

	//variaveis Globais
	cadeia nomes[10]
	real salarios[10]
	
	funcao inicio()
	{
		real media
		inteiro aux
		//entrada de dados
		entrada()

		//calcular média salarial
		media = calculaMedia()

		//exibir dados
		para(aux=0; aux<10; aux++) {
			se(salarios[aux] > media) {
				escreva("\n", nomes[aux], " Ganha acima da média")
			}
		}
	}

	/**
	 * faz a entrada de todos os dados
	 */
	funcao vazio entrada() {
		
		inteiro aux

		para(aux=0; aux<10; aux++) {
			escreva("Digite o Nome[", aux+1, "]:")
			leia(nomes[aux])

			escreva("Digite o Salario[", aux+1, "]:")
			leia(salarios[aux])
		}
	}

	/**
	 * Calcular a média salariol e devolve essa media
	 */
	funcao real calculaMedia() {
		inteiro aux
		real mediaCalculada = 0.0

		para(aux=0; aux<10; aux++) {
			mediaCalculada += salarios[aux]
		}

		//devolve a media
		retorne mediaCalculada / 10
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 612; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */