
programa
{
	inclua biblioteca Texto --> tx
	/**
	*
	*95)	(VETOR/STRING) Crie um programa que solicite do usuário 5 nomes de frutas, 
	*armazene-os em um vetor, e um único caractere de pesquisa. Crie uma rotina que 
	*busque dentro dos 5 nomes de frutas quantas vezes esse caractere aparece em cada 
	*fruta. Exiba na tela as mensagens “Nome da Fruta – 9999 vezes”.
	*/
	
	funcao inicio()
	{
		cadeia frutas[5]
		caracter letraProcurada
		inteiro aux

		para(aux=0; aux<5; aux++) {
			escreva("Digite uma Fruta[", aux+1, "]:")
			leia(frutas[aux])
		}

		//o que procurar
		escreva("Qual letra procurar? ")
		leia(letraProcurada)

		//vamos procurar em cada fruta
		para(aux=0; aux<5; aux++) {
			escreva("\n", frutas[aux], " --> ", procura(frutas[aux], letraProcurada))
		}
	}

	/**
	 * Faz a pesquisa de uma letra dentro de uma cadeia e 
	 * devolve a quantidade de vezes que essa letra apareceu
	 * 
	 *        012345
	 * texto="banana"
	 * procurado='a'
	 */
	 funcao inteiro procura(cadeia texto, caracter procurado) {
	 	inteiro pos, qtd=0

		//varre letra por letra o 'texto' e compara com o 'procurado'
		para(pos=0; pos < tx.numero_caracteres(texto); pos++) {
			se(procurado == tx.obter_caracter(texto, pos)) {
				qtd++
			}
		}

		//retorna
		retorne qtd
	 }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */