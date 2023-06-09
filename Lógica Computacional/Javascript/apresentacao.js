function idadeenome() {
    var nome, ano

    // função para aceitar apenas letras (com acentos);
    function letras(input) {
        return /^\p{L}+$/u.test(input);
    }

    // função para aceitar apenas numeros;
    function numeros(input) {
        return /^\d+$/.test(input);
    }

    do {
        nome = prompt("Qual é o seu nome?");
        ano = prompt("Quando você nasceu?");

        var idade = 2023 - ano;


    } while (!letras(nome) || !numeros(ano) || nome == "" || ano == "");

    if (idade >= 18) {
        alert("Olá " + nome + " Você tem " + idade + " anos, e é maior de idade.");
    }
    else {
        alert("Olá " + nome + " Você tem " + idade + " anos, e é menor de idade.");
    }
}

idadeenome();
letras(input);
numeros(input);

