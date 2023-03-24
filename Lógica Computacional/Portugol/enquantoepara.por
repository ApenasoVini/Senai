programa
{
	
	funcao inicio()
	{
		media()
		
	}
	funcao media()
	{
	real soma = 0, resultado
	inteiro n, novonumero, i = 0

faca {
escreva("Quantos números você deseja para ser feita a média:\n")
	leia(n)
}enquanto(n <= 0)

	para(i = 1; i <= n; i++){
	escreva("Digite um número:\n")
	leia(novonumero)
	soma = soma + novonumero
	}
	resultado = soma/n
	escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 230; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */