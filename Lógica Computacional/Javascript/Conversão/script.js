function converte() {
    var temperatura = Number(document.getElementById("number").value);
    var tipo = document.getElementById("tipo").value;
    var resultado = 0;
    var resultadoA = 0;

    if (tipo == "Celsius") {
        if (document.getElementById("f").checked) {
            resultado = temperatura * (9 / 5) + 32;
            resultadoA = resultado.toFixed(2)
        }
        else if (document.getElementById("k").checked) {
            resultado = temperatura + 273.15;
            resultadoA = resultado.toFixed(2)
        }
        else {
            resultado = temperatura;
            resultadoA = resultado.toFixed(2)
        }
    }
    else if (tipo == "Fahrenheit") {
        if (document.getElementById("c").checked) {
            resultado = (temperatura - 32) * (5 / 9);
            resultadoA = resultado.toFixed(2)
        }
        else if (document.getElementById("k").checked) {
            resultado = (temperatura - 32) * (5 / 9) + 273.15;
            resultadoA = resultado.toFixed(2)
        }
        else {
            resultado = temperatura;
            resultadoA = resultado.toFixed(2)
        }
    }
    else {
        if (document.getElementById("c").checked) {
            resultado = temperatura - 273.15;
            resultadoA = resultado.toFixed(2)
        }
        else if (document.getElementById("f").checked) {
            resultado = (temperatura - 273.15) * (9 / 5) + 32;
            resultadoA = resultado.toFixed(2)
        }
        else {
            resultado = temperatura;
            resultadoA = resultado.toFixed(2)
        }
    }
    document.getElementById("res").value = resultadoA;
}