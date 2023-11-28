function cores() {
    var resposta = parseInt(document.getElementById("inputNumberOne").value) * parseInt(document.getElementById("inputNumberTwo").value);
    var valorFinal = document.getElementById("valorFinal");
    valorFinal.value = resposta;
    var cx1 = document.getElementById("cx1");
    var cx2 = document.getElementById("cx2");
    var cx3 = document.getElementById("cx3");
    var cx4 = document.getElementById("cx4");
    var cx5 = document.getElementById("cx5");
    cx1.style.backgroundColor = "black";
    cx2.style.backgroundColor = "black";
    cx3.style.backgroundColor = "black";
    cx4.style.backgroundColor = "black";
    cx5.style.backgroundColor = "black";
    let cores = [4, 6, 11, 7, 9];
    let validos = [];

    for (i = 0; i < cores.length; i++) {
        if (resposta % cores[i] === 0) {
            validos.push(cores[i])
        }
    }

    for (x = 0; x < validos.length; x++) {
        if (validos[x] === 4) {
            cx1.style.backgroundColor = "red"
        }

        else if (validos[x] === 6) {
            cx2.style.backgroundColor = "green"
        }

        else if (validos[x] === 11) {
            cx3.style.backgroundColor = "yellow"
        }

        else if (validos[x] === 7) {
            cx4.style.backgroundColor = "blue"
        }

        else {
            cx5.style.backgroundColor = "purple"
        }
    }

}