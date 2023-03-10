programa
{
	
	funcao inicio()
	{
		numerosPares()
	}

	funcao numerosPares()
	{
		inteiro numero, pares = 0
		
		escreva("Digite um número: ")
		leia(numero)
		
		para (inteiro i = 0; i <= numero; i++) {
			se (i % 2 == 0) {
				pares++
			}
		}
		
		escreva("A quantidade de pares é ", pares)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */