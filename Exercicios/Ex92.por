programa
{
	/**
	*
	* 92)	(VETOR) Utilizando exclusivamente vetores, não matrizes, faça um programa que 
	* solicite do usuário o nome de 10 produtos com suas respectivas quantidades em estoque, 
	* armazene em dois vetores. Crie um loop principal que exiba um menu contendo opções de 
	* “Dar baixa em uma quantidade de Produtos”, “Adicionar novas quantidades de produtos”, 
	* “Listar o estoque de produtos” e sair. Você deverá após escolhido uma opção do menu, 
	* mostrar todos os produtos, solicitar o índice do produto e manipular sua quantidade 
	* dependendo da opção escolhida. Procure utilizar funções, se possível.
	*
	*/

	//criando variaveis globais
	cadeia produtos[10]
	inteiro quantidade[10]
	
	funcao inicio()
	{
		inteiro opcao
		entradaDados()

		faca {
			//limpar a tela
			limpa()
			opcao = exibeMenu()

			escolha (opcao) {
				caso 1:
					baixa()
					pare
				caso 2:
					entrada()
					pare
				caso 3:
					listar()
					pare
				caso 4:
					pare
				caso contrario:
					mensagem("Opção Inválida")
					ler_tecla()
					pare
			}
			
		} enquanto(opcao != 4)
		
	}


	/**
	 * Aguarda por uma tecla pressionada
	 */
	 funcao vazio ler_tecla() {
	 	cadeia aux
	 	escreva("\nPressione <Enter> para continuar...")
	 	leia(aux)
	 }
	 
	/**
	 * Lista todos os nomes dos produtos
	 */
	funcao vazio exibeProdutos() {
		inteiro pos
		para(pos=0; pos<10; pos++) {
			escreva("\n", (pos + 1), "º produto: ", produtos[pos])
		}
	}
	
	/**
	 * Função para dar baixa em quantidades no estoque
	 */
	funcao vazio baixa() {
		inteiro prod, qtd
		
		exibeProdutos()

		escreva("\nQual produto que dar baixa?: ")
		leia(prod)

		escreva("\nQual a quantidade? ")
		leia(qtd)

		se(quantidade[prod - 1] < qtd) {
			mensagem("Esse produto não suporta esta baixa..., tente outro..")
			ler_tecla()
		}
		senao {
			quantidade[prod - 1] -= qtd
		}
	}

	/**
	 * Função para adicionar novos itens no estoque de um produto
	 */
	funcao vazio entrada() {
		inteiro prod, qtd
		
		exibeProdutos()

		escreva("\nQual produto que dar entrada?: ")
		leia(prod)

		escreva("\nQual a quantidade? ")
		leia(qtd)

		quantidade[prod - 1] += qtd
	}

	/**
	 * Função para listar todo o estoque
	 */
	funcao vazio listar() {
		inteiro pos
		para(pos=0; pos<10; pos++) {
			escreva("\n", (pos + 1), "º produto: ", produtos[pos])
			escreva(" - Quantidade: ", quantidade[pos])
		}
		
		ler_tecla()
	}
	
	/**
	 * Função apra exibir uma mensagem na tela
	 */
	funcao vazio mensagem(cadeia texto) {
		escreva("\n ->>>>>>>> ", texto, " <<<<<<<<- ")
	}
	
	
	/**
	 * Esibe o menu e solicita uma opção
	 */
	funcao inteiro exibeMenu() {
		inteiro op
		escreva("\n****************************************")
		escreva("\n*            MENU PRINCIPAL            *")
		escreva("\n****************************************\n")
		escreva("\n1 -> Dar baixa em uma quantidade de um produto")
		escreva("\n2 -> Adicionar novas quantidades de produtos")
		escreva("\n3 -> Listar o estoque de produtos")
		escreva("\n4 -> Sair")

		escreva("\n\nQual sua opção? ")
		leia(op)

		retorne op		
	}
	
	funcao vazio entradaDados() {
		inteiro pos
		para(pos=0; pos<10; pos++) {
			escreva("Digite o ", (pos + 1), "º produto: ")
			leia(produtos[pos])

			escreva("Qual a quantidade em estoque desse produto? ")
			leia(quantidade[pos])
		}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1283; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */