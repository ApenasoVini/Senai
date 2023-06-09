function numerosPares() {
	var pares = 0;
	var numero = prompt("Digite um número: ");

	for (let i = 0; i <= numero; i++) {
		if (i % 2 == 0) {
			pares++
		}
	}

	alert("A quantidade de pares é " + pares)
}

numerosPares()