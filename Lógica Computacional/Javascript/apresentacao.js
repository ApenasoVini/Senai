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

idadeenome()

