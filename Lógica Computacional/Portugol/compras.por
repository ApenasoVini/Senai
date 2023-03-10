programa {
	
	funcao inicio() {

		compras()

	}

	funcao compras(){
		
		cadeia opcao
		real valorTotal, pagamento
		inteiro senha

		
		escreva("Informe o valor total da compra: ")
		leia(valorTotal)

		escreva("O valor final da compra é: R$ ", valorTotal , " como você deseja pagar? (dinheiro ou cartão)\n")
		leia(opcao)
		
		se (opcao == "Dinheiro") {
			escreva("Pagamento em dinheiro selecionado. Quanto você tem?\n")
			leia(pagamento)
			
			se (pagamento == valorTotal){
				escreva("Pagamento realizado, tenha um bom dia!")
			}
			senao se (pagamento > valorTotal){
				escreva("Pagamento realizado, seu troco é ", pagamento - valorTotal)
			}
			senao {
				escreva("Valor insuficiente, vai ter que lavar o chão kkkk")
			}
		}
		
		senao se (opcao == "Cartão") {
			escreva("Pagamento em cartão selecionado. Digite a senha do cartão:\n")
			leia(senha)
			escreva("Pagamento realizado, tenha um bom dia!")
		
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 849; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */