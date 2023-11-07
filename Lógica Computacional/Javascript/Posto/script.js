var litrosBomba = 500;

function calcular() {
    var litros = Number(document.getElementById("litros").value);
    var tipo = document.getElementById("tipo").value;
    var preco = 0;

    if (litros > litrosBomba || litros <= 0) {
        document.getElementById("bomba").value = `Erro! ${litrosBomba}L`
        return;
    }

    else {
        if (tipo == "Diessel") {
            preco = litros * 6.10;
        } else if (tipo == "Gasolina") {
            preco = litros * 5.69;
        } else {
            preco = litros * 5.61;
        }
    }

    litrosBomba -= litros;
    document.getElementById("preco").value = `Valor: R$${preco.toFixed(2)}`
    document.getElementById("bomba").value = `Litros: ${litrosBomba}L`
}



