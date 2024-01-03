var numGerado;
var input = document.getElementById("inputNumero");
const divisores = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

function gerar() {
    let num1 = 0, num2 = 0;
    while (num1 === 0 || num2 === 0) {
        num1 = Math.floor(Math.random() * divisores.length);
        num2 = Math.floor(Math.random() * divisores.length);
    }
    numGerado = num1 * num2;
    input.value = numGerado;
}

function jogo() {
    let tabuadas = [];
    for (let i = 0; i < divisores.length; i++) {
        if (numGerado % divisores[i] === 0) {
            tabuadas.push(divisores[i]);
        }
    }
    let valoresEscolhidos = [];
    for (let i = 1; i <= 10; i++) {
        var checkbox = document.getElementById("cx" + i);
        if (checkbox.checked) {
            valoresEscolhidos.push(parseInt(checkbox.value));
        }
    }
    if (tabuadas.toString() === valoresEscolhidos.toString()) {
        alert("Você acertou!")
    }
    else {
        alert("Você errou!");
    }
    for (let i = 1; i <= 10; i++) {
        var checkbox = document.getElementById("cx" + i);
        checkbox.checked = false;
    }
    input.value = "";
}