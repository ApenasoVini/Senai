function arrays() {

    var familia = []
    var posicao = familia.indexOf("Selma")
    familia.push("Vinícius")
    familia.push("Selma")
    familia.push("Reinaldo")
    alert(familia)

    familia[2] = "Anderson"
    alert(familia)

    familia.splice(posicao, 1)
    alert(familia)
}

arrays()
