function campo() {
    
    var goleiro = prompt("Digite o nome do goleiro")
    var zagueiro1 = prompt("Digite o nome do primeiro zagueiro")
    var zagueiro2 = prompt("Digite o nome do segundo zagueiro")
    var latdireito = prompt("Digite o nome do lateral direito")
    var latesquerdo = prompt("Digite o nome do lateral esquerdo")
    var volante = prompt("Digite o nome do volante")
    var meia1 = prompt("Digite o nome do primeiro meia")
    var meia2 = prompt("Digite o nome do segundo meia")
    var pontaE = prompt("Digite o nome do ponta esquerda")
    var pontaD = prompt("Digite o nome do ponta direita")
    var centroAvante = prompt("Digite o nome do centroavante")
    
    var escalacao = [goleiro, +"\n"+ zagueiro1, +"\n"+ zagueiro2, +"\n"+ latdireito, +"\n"+ latesquerdo, +"\n"+ volante, +"\n"+ meia1, +"\n"+ meia2, +"\n"+ pontaD, +"\n"+ pontaE, +"\n"+ centroAvante]
    
    time.innerHTML = escalacao

}