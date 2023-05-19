programa
{
	
	funcao inicio()

	{
	exercicio1()
	exercicio2()
	}
	funcao exercicio1(){
		inteiro n1, n2, n3 
		
		escreva("Digite o primeiro número:\n")
		leia (n1)
		escreva("Digite o segundo número:\n")
		leia (n2)
		escreva("Digite o terceiro número:\n")
		leia (n3)

		real media = (n1+n2+n3)/3.0

		se (media < 4){
			escreva("E")
		}
		senao se (media < 6){
			escreva("D")
		}
		senao se (media < 7.5){
			escreva("C")
		}
		senao se (media < 9){
			escreva("B")
		}
		senao {
			escreva("A")
		}
	}

          funcao exercicio2(){
		inteiro tempinicio
		real tempfinal
		caracter c
		
		escreva("\nQual conversão você quer fazer?:\n")
		escreva("1: Celsius para Fahrenheit\n")
		escreva("2: Celsius para Kelvin\n")
		escreva("3: Fahrenheit para Celsius\n")
		escreva("4: Fahrenheit para Kelvin\n")
		escreva("5: Kelvin para Celsius\n")
		escreva("6: Kelvin para Fahrenheit\n")
		leia(c)
		escreva("Digite a temperatura\n")
		leia(tempinicio)
    
    se(c == '1'){
	   tempfinal = tempinicio * (9.0 / 5.0) + 32
	   escreva(tempfinal)
		}
		
    senao se(c == '2'){
	   tempfinal = tempinicio + 273.15
	   escreva(tempfinal)
    }
    
    senao se(c == '3'){
	   tempfinal = (tempinicio - 32.0) * (5 / 9)
	   escreva(tempfinal)
    }
    
    senao se(c == '4'){
	   tempfinal = (tempinicio - 32) * (5 / 9) + 273.15
	   escreva(tempfinal)

    }
    senao se(c == '5'){
        tempfinal = tempinicio - 273.15
        escreva(tempfinal)

    }
    senao se(c == '6'){
       tempfinal = (tempinicio - 273.15) * (9 / 5) + 32
       escreva(tempfinal)

    }
    senao {
    	escreva("Opção inválida!")
    }
     
}



}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1562; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */