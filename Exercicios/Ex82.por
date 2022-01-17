programa
{
	inclua biblioteca Util --> ut
	
	/*
	Ler dois vetores A e B com 5 elementos cada. Após a entrada criar um vetor C 
	de 10 elementos que seja o resultado da junção de A e B. Exiba o conteúdo do 
	vetor C.
	*/
	
	funcao inicio()
	{
		inteiro vetA[5], vetB[5], vetC[10]
		inteiro cont

		leVetor(vetA, "Informe o valor do vetor A: ")
		leVetor(vetB, "Informe o valor do vetor B: ")

		//juntar os vetores A e B com C
		para(cont=0; cont<5; cont++)
		{
			vetC[cont] = vetA[cont]
			vetC[cont+5] = vetB[cont]
		}

		//mostrando os dados
		escreva("\nVetor A")
		imprimeVetor(vetA, "Valor do vetor A")

		escreva("\nVetor B")
		imprimeVetor(vetB, "Valor do vetor B")

		escreva("\nVetor C")
		imprimeVetor(vetC, "Valor do vetor C")
		
	}

	funcao leVetor(inteiro vetor[], cadeia texto) 
	{
		//ler os dados
		para(inteiro i=0; i < ut.numero_elementos(vetor); i++)
		{
			escreva(texto)
			//leia(vetor[i])
			//automatico
			vetor[i] = ut.sorteia(1, 100)

			escreva(vetor[i], "\n")
		}
	}

	funcao imprimeVetor(inteiro vetor[], cadeia texto) 
	{
		//ler os dados
		para(inteiro i=0; i < ut.numero_elementos(vetor); i++)
		{
			escreva("\n", texto, " - ", i, " : ", vetor[i])
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 879; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetA, 13, 10, 4}-{vetB, 13, 19, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */