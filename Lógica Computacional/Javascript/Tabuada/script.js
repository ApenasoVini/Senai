function cores() {
    var one = parseInt(document.getElementById("inputNumberOne").value);
    var two = parseInt(document.getElementById("inputNumberTwo").value);
    var divRes = document.getElementById("res");
    var resposta = one * two;
    let cores = [4, 6, 11, 7, 9];
    let validos = []

    for (i = 0; i < cores.length; i++) {
        if (resposta % cores[i] === 0) {
            validos.push([i])
        }
    }

    for (x = 0; x < validos.length; x++) {
        if (x === 4) {
            var red = document.createElement('div');
            red.style.width = "20vw";
            red.style.height = "20vh";
            red.style.backgroundColor = "red";
            divRes.appendChild("red");
        }
        else if (x === 6) {
            var green = document.createElement('div');
            green.style.width = "20%";
            green.style.backgroundColor = "green"
            divRes.appendChild("green");
        }
        else if (x === 11) {
            var yellow = document.createElement('div');
            yellow.style.width = "20%";
            yellow.style.backgroundColor = "yellow"
            divRes.appendChild("yellow");
        }
        else if (x === 7) {
            var blue = document.createElement('div');
            blue.style.width = "20%";
            blue.style.backgroundColor = "blue"
            divRes.appendChild("blue");
        }
        else {
            var purple = document.createElement('div');
            purple.style.width = "20%";
            purple.style.backgroundColor = "purple"
            divRes.appendChild("purple");
        }
    }
}