//Par ou Ímpar
function par() {
  var num = prompt("Escolha um número: ");
  if (num % 2 === 0) {
    alert("par");
  } else {
    alert("ímpar");
  }
}
par();

//Fatorial
function fatorial() {
  var num2 = prompt("Escolha um número: ");
  if (num2 == 0) {
    alert(1)
  }
  else {
    for (var i = num2 - 1; i >= 1; i--) {
      num2 *= i;
    }
    alert(num2);
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

  return div == 2 ? alert(num3 + " é primo") : alert(num3 + " não é primo");

}
primos()

// 4- Calcular a sequência de Fibonacci
// 10 = [0,1,1,2,3,5,8,13,21,34]

// 5- Inverter uma string.
// Javascript = “tpircsavaJ”

// 6- Encontre os números pares em um array.
// [1,2,3,4,5,6,7,8] = [2,4,6,8]

// 7- Verificar se uma palavra é um palíndromo.
// ovo true
// uva false

// 8- Contar as vogais em uma palavra.
// maçã = 2
// banana = 3

// 9- Calcular a soma dos números pares em um intervalo de valores.
// (1, 10) = 30

// 10- Uma função que receba dois números inteiros e faça a multiplicação deles sem
// utilizar a multiplicação.
// 5 = 25.