function arrays() {

    var soares = []
    var posicao = soares.indexOf("Selma")
    soares.push("Vinícius")
    soares.push("Selma")
    soares.push("Reinaldo")
    alert(soares)

    soares[2] = "Anderson"
    alert(soares)

    soares.splice(posicao, 1)
    alert(soares)

}

