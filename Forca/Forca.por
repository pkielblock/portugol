programa
{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Texto --> txt
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Util --> ut

	
	funcao inicio()
	{
		inteiro op, refArq, qtdLinhas = 0, indice = 0
		refArq = arq.abrir_arquivo("./jogo.txt", arq.MODO_LEITURA)
		cadeia nomes[1000]	
		inteiro indices[100][11]
		
		apresentar()
		
		faca
		{
			escreva("\nDigite 0 para jogar: ")
			leia(op)
		
			se (op > 0)
			{
				escreva("\nErro, Digite o número 0 para jogar!")
			}
		}enquanto(op > 0)
		limpa()
		 enquanto(nao arq.fim_arquivo(refArq)) {
		 	nomes[indice] = arq.ler_linha(refArq)
		 	indice++
		 	qtdLinhas++
		 }
		 arq.fechar_arquivo(refArq)
		 inteiro pi = 0
		 inteiro di = 0
		 para(indice=0; indice < qtdLinhas; indice++)
		 {
		 	se(txt.numero_caracteres(nomes[indice]) > 0) 
		 	{
			 	se(txt.obter_caracter(nomes[indice], 0) == 'P'){
			 	di = 0
			 	indices[pi][di] = indice
			 	pi++
			 	di = 1
			 	}senao se (txt.obter_caracter(nomes[indice], 0) == 'D'){
			 	indices[pi - 1][di] = indice
			 	di++
				}
		 	}
		 }
		 inteiro tamanho = 0
		 para(indice=0; indice < qtdLinhas; indice++)
		 {
		 	tamanho = txt.numero_caracteres(nomes[indice])
		 	se(tamanho > 0){
		 		nomes[indice] = txt.extrair_subtexto(nomes[indice], 2, tamanho)
		 	}
		 }
		 logico loop_pro = falso
		 
		 enquanto(nao loop_pro)
		 {
		 
		 logico terminou = falso
		 const inteiro pala_atual = 0
		 inteiro temp_zero = 0
		 inteiro temp_um = 0
		 inteiro temp_de = 0
		 inteiro temp_to = 180
		 cadeia letra = ""
		 inteiro random = ut.sorteia(0, pi-1)
		 inteiro tamanho_p = txt.numero_caracteres(nomes[indices[random][pala_atual]])
		 inteiro local_certos[1000]
		 inteiro vidas = 6
		 inteiro dica_atual = 1
		 cadeia tentativas = ""
		 inteiro tentativasi = 0
		 enquanto(nao terminou)
		 {
			 logico contem = falso
			 logico ganhou = falso
			 logico perdeu_j = falso
			 logico perdeu_vida = falso
			 boneco(vidas)
			 escreva("\nPalavra: ", mascara(nomes[indices[random][pala_atual]], letra, local_certos))
			 escreva("\nDica: ", nomes[indices[random][dica_atual]])
			 se(tentativasi != 1){
			 	se(letra != ""){
			 		tentativas += "," + letra
			 	}
			 }senao{
			 	se(letra != ""){
			 		tentativas += letra
			 	}
			 }
			 escreva("\nTentativas: ", tentativas)
			 escreva("\nVocê tem ", temp_to,"s")
			 escreva("\nDigite Uma Letra: ")
			 temp_zero = ut.tempo_decorrido()
			 leia(letra)
			 temp_um = ut.tempo_decorrido()
			 temp_de = temp_um - temp_zero
			 temp_to -= temp_de/1000
			 	 
			 se(tp.cadeia_e_caracter(letra)){
			 	checarSeLetraExiste(nomes[indices[random][pala_atual]], letra, contem, local_certos)
			 	tentativasi++
			 }senao se(letra == "dica"){
			 	dica_atual++
			 	perdeu_vida = verdadeiro
			 }
			 
			 se(nao contem){
			 	perdeu_vida = verdadeiro
			 }

			 se(perdeu_vida){
			 	vidas--
			 }

			 se(vidas == 0 ou temp_to <= 0){
			 	perdeu_j = verdadeiro
			 }
			 
			 checarGanhou(local_certos, tamanho_p, ganhou)
			 
			 se(ganhou){
			 	limpa()
			 	parabens()
			 	terminou = verdadeiro
			 	logico valido = falso
			 	enquanto(nao valido){
				 	escreva("\nDeseja continua (S/N): ")
			 		leia(letra)
			 		se(letra == "S" ou letra == "s"){
			 			escreva("\nVocê Escolher Continuar")
			 			valido = verdadeiro
				 	}senao se(letra == "N" ou letra == "n"){
			 			loop_pro = verdadeiro
			 			valido = verdadeiro
			 		}senao{
			 			escreva("\nCaracter Inválido")
					}
			 	}
			 }

			 se(perdeu_j){
			 	limpa()
			 	perdeu()
			 	terminou = verdadeiro
			 	logico valido = falso
			 	enquanto(nao valido){
				 	escreva("\nDeseja continua (S/N): ")
			 		leia(letra)
			 		se(letra == "S" ou letra == "s"){
			 			escreva("\nVocê Escolher Continuar")
			 			valido = verdadeiro
				 	}senao se(letra == "N" ou letra == "n"){
			 			loop_pro = verdadeiro
			 			valido = verdadeiro
			 		}senao{
			 			escreva("\nCaracter Inválido")
					}
			 	}
			 }
		 }
		 }
	}

	funcao checarGanhou(inteiro local_certos[],inteiro tamanho, logico &ganhou)
	{
		logico ainda_nao = falso
		para(inteiro i = 0; i < tamanho; i++)
		{
			se(local_certos[i] == 0){
				ainda_nao = verdadeiro
			}
		}

		se(nao ainda_nao){
			ganhou = verdadeiro
		}
	}

	funcao checarSeLetraExiste(cadeia palavra, cadeia letra, logico &contem, inteiro &local_certos[])
	{
		inteiro tamanho = txt.numero_caracteres(palavra)
		caracter letrae = ' '
		se(tp.cadeia_e_caracter(letra)){
			letrae = tp.cadeia_para_caracter(letra)
		}
		
		para(inteiro i = 0; i < tamanho; i++)
		{
			cadeia a = tp.caracter_para_cadeia(txt.obter_caracter(palavra, i))
			cadeia b = tp.caracter_para_cadeia(letrae)
			cadeia a_ajeitada = txt.caixa_baixa(a)
			cadeia b_ajeitada = txt.caixa_baixa(b)
			se(a_ajeitada == b_ajeitada){
				contem = verdadeiro
				local_certos[i] = 1
			}
		}
	}
	
	funcao cadeia mascara(cadeia palavra, cadeia letra, inteiro &local_certos[])
	{
		cadeia resultado = ""
		inteiro tamanho = txt.numero_caracteres(palavra)
		caracter letrae = ' '
		se(tp.cadeia_e_caracter(letra)){
			letrae = tp.cadeia_para_caracter(letra)
		}
		
		para(inteiro i = 0; i < tamanho; i++)
		{
			resultado += " "

			se(local_certos[i] == 1){
				resultado +=  txt.obter_caracter(palavra, i)
			}senao{
				resultado += "_"
			}

			
		}
		retorne resultado
	}
	
	funcao apresentar()	
	{	
		escreva("\nINTEGRANTE:")
		escreva("\nPedro Henrique Sampaio Kielblock	RA: 1680482112029")
		escreva("\n-----------------------------------------")
		escreva("\n|   [X]	JOGO					|")
		escreva("\n|   [X]	DICAS				|")
		escreva("\n|   [X]	CONTROLE DE TEMPO		|")
		escreva("\n-----------------------------------------")
	}
	
	funcao boneco(inteiro vidas){
		escolha(vidas){
			caso 6:
				forca()
				pare
			caso 5:
				cabeca()
				pare
			caso 4:
				corpo()
				pare
			caso 3:
				bracoEsquerdo()
				pare
			caso 2:
				bracoDireito()
				pare
			caso 1:
				pernaEsquerda()
				pare
		}	
	}
	
	funcao forca()
	{
		escreva("\n|----------------")
		escreva("\n|               |")
		escreva("\n|               |")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
	}
	
	funcao cabeca()
	{
		escreva("\n|----------------")
		escreva("\n|               |")
		escreva("\n|               |")
		escreva("\n|             (-_-)")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
	}
	
	funcao corpo()
	{
		escreva("\n|----------------")
		escreva("\n|               |")
		escreva("\n|               |")
		escreva("\n|             (-_-)")
		escreva("\n|               |  ")
		escreva("\n|               | ")
		escreva("\n|               |  ")
		escreva("\n|               |   ")
		escreva("\n|               |")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
	}
	
	funcao bracoDireito()
	{
		escreva("\n|----------------")
		escreva("\n|               |")
		escreva("\n|               |")
		escreva("\n|             (-_-)")
		escreva("\n|               |  ")
		escreva("\n|             / | \\")
		escreva("\n|            /  |  \\")
		escreva("\n|         __/   |   \\__")
		escreva("\n|               |")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
	}
	funcao bracoEsquerdo()
	{
		escreva("\n|----------------")
		escreva("\n|               |")
		escreva("\n|               |")
		escreva("\n|             (-_-)")
		escreva("\n|               |  ")
		escreva("\n|             / |")
		escreva("\n|            /  |")
		escreva("\n|         __/   |")
		escreva("\n|               |")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
	}

	funcao pernaDireita()
	{
		escreva("\n|----------------")
		escreva("\n|               |")
		escreva("\n|               |")
		escreva("\n|             (-_-)")
		escreva("\n|               |  ")
		escreva("\n|             / | \\")
		escreva("\n|            /  |  \\")
		escreva("\n|         __/   |   \\__")
		escreva("\n|               |")
		escreva("\n|              / \\")
		escreva("\n|             /   \\")
		escreva("\n|          __/     \\__")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
	}

	funcao pernaEsquerda()
	{
		escreva("\n|----------------")
		escreva("\n|               |")
		escreva("\n|               |")
		escreva("\n|             (-_-)")
		escreva("\n|               |  ")
		escreva("\n|             / | \\")
		escreva("\n|            /  |  \\")
		escreva("\n|         __/   |   \\__")
		escreva("\n|               |")
		escreva("\n|              / ")
		escreva("\n|             /   ")
		escreva("\n|          __/     ")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
		escreva("\n|")
	}
	
	
	funcao parabens()
	{
		escreva("\n\nPARABÉNS, VOCÊ GANHOU!")
	}
	
	funcao perdeu()
	{
		escreva("\nVOCÊ PERDEU!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5501; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */