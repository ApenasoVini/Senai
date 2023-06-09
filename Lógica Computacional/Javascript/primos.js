var numero = 2;
var quantidade = 0;

function primos() {
    var digito = prompt("Digite um número: ");

    while (numero <= digito) {
        var divisor = 0;
        var candidato = 1;

        while (candidato <= numero) {
            if (numero % candidato == 0) {
                divisor++;
            }
            candidato++;
        }

        if (divisor == 2) {
            quantidade++;
        }
        numero++;
    }

    alert("A quantidade de primos é: " + quantidade);
}

primos();
