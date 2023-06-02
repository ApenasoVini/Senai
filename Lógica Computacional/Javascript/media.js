function media() {

        do {
            var n = prompt("Quantos números você quer usar na média?")
        } while (n <= 0)
        var resultado, soma = 0

        for (var i = 1; i <= n; i++) {
            soma += Number(prompt("Digite o " + i + "º número:"))
        }
        resultado = soma / n
        alert(resultado)
    }
    
media()