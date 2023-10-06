//Par ou Ímpar
function par() {
  var num = prompt("Escolha um número: ");
  return num % 2 === 0 ? console.log("Par") : console.log("Ímpar")
}
par();

//Fatorial
function fatorial() {
  var num2 = prompt("Escolha um número: ");
  if (num2 == 0) {
    console.log(`1`)
  }
  else {
    for (var i = num2 - 1; i >= 1; i--) {
      num2 *= i;
    }
    console.log(num2);
  }
}
fatorial();

//Primos
function primos() {
  var num3 = prompt("Digite um número: ");
  var div = 0

  for (var i = 0; i <= num3; i++) {
    if (num3 % i == 0) {
      div++;
    }
  }
  return div == 2 ? console.log(num3 + " é primo") : console.log(num3 + " não é primo");
}
primos()

//Fibonacci
function fibonacci() {
  const seq = [1, 1];
  var num4 = prompt("Digite a quantidade de números na sequência: ");

  if (num4 == 1) {
    console.log("Sequência: " + seq.splice(1));
  } else if (num4 == 2) {
    console.log("Sequência: " + seq);
  } else {
    for (var i = 2; i < num4; i++) {
      seq.push(seq[i - 1] + seq[i - 2]);
    }
    console.log("Sequência: " + seq);
  }
}
fibonacci();

//String invertida
function invertString() {
  var str = prompt("Esreva algo: ")
  console.log(str.split("").reverse().join(""));
}
invertString()

//Números pares em array.
function arrayPar() {
  var nums = prompt("Digite os números separados por vírgula: ");
  var numArray = nums.split(",");
  let numPares = [];

  for (var i = 0; i < numArray.length; i++) {
    var num = parseInt(numArray[i]);
    if (num % 2 === 0) {
      numPares.push(num);
    }
  }
  console.log("Números pares:", numPares);
}
arrayPar();

//Palíndromo.
function palindromo() {
  var palavraInicial = prompt("Esreva algo: ")
  var palavra = palavraInicial.toLowerCase()
  var palavraInv = palavra.split("").reverse().join("");

  if (palavra === palavraInv) {
    console.log(palavraInicial + " é um palíndromo")
  }
  else {
    console.log(palavraInicial + " não é um palíndromo")
  }
}
palindromo()

//Vogais
function vogais() {
  var palavra = prompt("Digite uma palavra: ");
  var letras = palavra.split("");
  let vogal = [];

  for (var i = 0; i < letras.length; i++) {
    if (letras[i] === "a" || letras[i] === "e" || letras[i] === "i" || letras[i] === "o" || letras[i] === "u") {
      vogal.push(letras[i]);
    }
  }
  console.log(vogal);
}
vogais();

//Soma dos pares.
function SomaPares() {
  var inicio = parseInt(prompt("Digite o primeiro número: "));
  var fim = parseInt(prompt("Digite o último número: "));
  var soma = 0;
  for (var i = inicio; i <= fim; i++) {
    if (i % 2 == 0) {
      soma += i;
    }
  }
  console.log(soma);
}
SomaPares();

//Multiplicação
function multiplicacao() {
  var numero = parseInt(prompt("Digite o número: "));
  var vezes = parseInt(prompt("Digite a quantidade de vezes: "));
  var resultado = 0;
  for (var i = 0; i < vezes; i++) {
    resultado += numero;
  }
  console.log(resultado);
}
multiplicacao();