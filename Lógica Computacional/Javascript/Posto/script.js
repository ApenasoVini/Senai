var litrosBomba = 500;

function calcular() {
    var litros = Number(document.getElementById("litros").value);
    var tipo = document.getElementById("tipo").value;
    var preco = 0;

    if (litros > litrosBomba || litros <= 0) {
        alert(`A bomba não possui essa quantidade. Litros: ${litrosBomba}`);
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
    alert(`Litros na bomba: ${litrosBomba}`);
    alert(`Valor: R$${preco.toFixed(2)}`);
}



