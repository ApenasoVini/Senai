programa
{
	
	funcao inicio()
	{
	
	dados()	

	}
	
	funcao dados(){
	inteiro ano, idade
	cadeia nome

escreva("Digite seu nome:\n")
leia(nome)
escreva("Seu ano de nascimento:\n")
leia(ano)

idade = 2023 - ano
se (idade>=18){
escreva("Bem vindo"+ nome+ "neste ano você completa "+ idade+ ", portanto é maior de idade.")
	}
senao
escreva("Bem vindo " + nome+ ", neste ano você completa "+ idade+ " portanto é menor de idade.")
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 434; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */