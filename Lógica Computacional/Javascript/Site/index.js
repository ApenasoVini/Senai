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

    function idadeenome() {

        do {
            var nome = prompt("Qual é o seu nome?")
            var ano = prompt("Quando você nasceu?")

        } while (nome == "" || ano == "")

        idade = 2023 - ano

        if (idade >= 18) {
            alert("Olá " + nome + " Você tem " + idade + " anos, e é maior de idade.")
        }
        else {
            alert("Olá " + nome + " Você tem " + idade + " anos, e é menor de idade.")
        }
    }
