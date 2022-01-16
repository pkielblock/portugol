programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Sons --> s
	inclua biblioteca Util --> ut
	inclua biblioteca Tipos --> tp
	
	funcao inicio()
	{
		inteiro op, refArq, qtdLinhas = 0, i = 0, pos = 0, j = 0, aux = 0, sorteado = 0, respostaTema = 0, perguntas = 0
		inteiro pontos = 0, inicioTema = 0, finalTema = 0, acertos = 0, erros = 0, qtdPerguntas = 0, quantidade = 0
		inteiro som = s.carregar_som("./som.mp3")
		inteiro sorteados[100]
		caracter resp
		cadeia respostaPergunta
		cadeia matriz[100][7], linha, tema
		
		refArq = arq.abrir_arquivo("./quiz.txt", arq.MODO_LEITURA)
		s.reproduzir_som(som, verdadeiro)
		s.definir_volume(50)
		
		apresentacao()

		enquanto(nao arq.fim_arquivo(refArq)) 
		{
			linha = arq.ler_linha(refArq)		

			se(txt.numero_caracteres(linha) != 0) 
			{
				inteiro pipe, pipe2, pipe3, pipe4, pipe5, pipe6, inicial, tamanho
				inicial = 0
				tamanho = txt.numero_caracteres(linha)

				//Perguntas
				pipe = txt.posicao_texto("|", linha, inicial)
				matriz[pos][0] = txt.extrair_subtexto(linha, inicial, pipe)

				//Temas
				pipe2 = txt.posicao_texto("|", linha, pipe + 1)
				matriz[pos][1] = txt.extrair_subtexto(linha, pipe + 1, pipe2)

				//Alternativas Corretas
				pipe3 = txt.posicao_texto("|", linha, pipe2 + 1)
				matriz[pos][2] = txt.substituir(txt.extrair_subtexto(linha, pipe2 + 1, pipe3), " ", "")

				//Alternativa 1
				pipe4 = txt.posicao_texto("|", linha, pipe3 + 1)
				matriz[pos][3] = txt.extrair_subtexto(linha, pipe3 + 1, pipe4)

				//Alternativa 2
				pipe5 = txt.posicao_texto("|", linha, pipe4 + 1)
				matriz[pos][4] = txt.extrair_subtexto(linha, pipe4 + 1, pipe5)

				//Alternativa 3
				pipe6 = txt.posicao_texto("|", linha, pipe5 + 1)
				matriz[pos][5] = txt.extrair_subtexto(linha, pipe5 + 1, pipe6)

				//Alternativa 4
				matriz[pos][6] = txt.extrair_subtexto(linha, pipe6 + 1, tamanho)
				pos++
			}
		 	qtdLinhas++
		}
		arq.fechar_arquivo(refArq)
		
		respostaTema = escolherTema(matriz, qtdLinhas, quantidade)

		tema = matriz[respostaTema][1]

		pos = 0
		enquanto(tema != matriz[pos][1])
		{
			inicioTema++
			pos++
		}

		finalTema = respostaTema + 1

		faca
		{
			escreva("\nDigite quantas perguntas quer responder: ")
			leia(qtdPerguntas)
		} enquanto (qtdPerguntas < 5)

		escreva("\nVocê escolheu responder ", qtdPerguntas, " perguntas")

		para(i = 1; i <= qtdPerguntas; i++)
		{
			
			sorteado = ut.sorteia(inicioTema, finalTema - 1)
			

			enquanto(sorteados[i] == sorteado ou sorteados[i + 1] == sorteado ou sorteados[i - 1] == sorteado)
			{
				sorteado = ut.sorteia(inicioTema, finalTema - 1)
			}
			
			escreva("\n\nPergunta: ", matriz[sorteado][0])
			escreva("\nAlternativa 1:", matriz[sorteado][3])
			escreva("\nAlternativa 2:", matriz[sorteado][4])
			escreva("\nAlternativa 3:", matriz[sorteado][5])
			escreva("\nAlternativa 4:", matriz[sorteado][6])
			escreva("\nDigite a Resposta[1 - 4]: ")
			leia(respostaPergunta)
			perguntas++
			
			se(respostaPergunta != matriz[sorteado][2])
			{
				pontos -= 25
				erros = erros + errou()	
			}
			senao
			{
				pontos += 50
				acertos = acertos + acertou()
			}
			sorteados[i] = sorteado
		}
		
		se(perguntas == qtdPerguntas)
		{
			fim(pontos, acertos, erros)
		}
	}

	funcao apresentacao()	
	{	
		escreva("\nINTEGRANTES:")
		escreva("\nPedro Henrique Sampaio Kielblock	RA: 1680482112029")
		escreva("\nJoão ViCtor Daniel Nogueira dos Santos	RA: 1680482121040 ")
		escreva("\n")
	}

	funcao inteiro escolherTema  (cadeia matriz[][], inteiro qtdLinhas , inteiro quantidade )
	{	

		inteiro i, respostaTema , cont = 0 , qtdperguntas = 0
		cadeia tema = "", aux
		cont = 0
		escreva("\n============================ Temas ============================")
		para(i = 0; i < qtdLinhas - 1; i++)
		{
			se(matriz[i][1] != matriz[i + 1][1])
			{
				escreva("\nDigite ",  i, " Para Escolher:", matriz[i][1], "(", qtdperguntas + 1,") Perguntas Disponiveis")
				qtdperguntas = 0
			}
			senao se (matriz[i][1] == matriz[i][1])
			{
				qtdperguntas++
				
			}
			cont = i
		}
		escreva("\n===============================================================")

		faca
		{
			escreva("\nEscolha um dos temas: ")
			leia(respostaTema)
		} enquanto (respostaTema < 1 ou respostaTema > cont)
		escreva("Tema Escolhido:", matriz[respostaTema - 1][1])
		retorne respostaTema
	}

	funcao inteiro acertou()
	{
		inteiro acertos = 0
		escreva("\nVocê Acertou | + 50 Pontos")
		acertos++
		retorne acertos
	}
	
	funcao inteiro errou()
	{
		inteiro erros = 0
		escreva("\nVocê Errou | - 25 Pontos")
		erros++
		retorne erros
	}

	funcao fim(inteiro pontos , inteiro acertos , inteiro erros )
	{
		caracter resp

		limpa()
		escreva("\nO Jogo Acabou, Você Fez: ", pontos, " Pontos \nAcertos: " , acertos , "\nErros: " , erros)
		escreva("\nDeseja Jogar Novamente?[S/N]: ")
		leia(resp)
		se(resp == 's' ou resp == 'S')
		{
			limpa()
			inicio()
		}
		senao se(resp == 'n' ou resp == 'N')
		{
			
		}
		senao
		{
			escreva("\nCaracter Inválido")
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2588; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */