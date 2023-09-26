//1
function numeros(num1, num2) {
    alert(num1 + num2);
    alert(num1 - num2);
    alert(num1 * num2);
    alert(num1 / num2);
}
numeros(50, 20);

//2
function triangulos(lado1, lado2, lado3) {
    if (lado1 === lado2 && lado2 === lado3) {
        alert("O triângulo é equilátero");
    }
    else if (lado1 === lado2 && lado2 !== lado3 || lado2 === lado3 && lado3 !== lado1 || lado1 === lado3 && lado3 !== lado2) {
        alert("O triângulo é isósceles");
    }
    else if (lado1 !== lado2 && lado2 !== lado3) {
        alert("O triângulo é escaleno");
    }
}
triangulos(1, 1, 1);
triangulos(1, 1, 2);
triangulos(1, 2, 1);
triangulos(2, 1, 1);
triangulos(1, 2, 3);

//3
function numeros2(base, expoente) {
    alert(base ** expoente)
}
numeros2(2, 3);

//4 
function numeros3(dividendo, divisor) {
    alert(dividendo / divisor);
    alert(dividendo % divisor);
}
numeros3(-13, 5);

//5
function aproximar(num) {
    alert(num.toFixed(2))
}
aproximar(0.30000000000000004);

//6
function imposto(ci, jur, temp) {
    alert(ci * jur * temp);
}
imposto(500, 0.3, 2)

function imposto2(ci, jur, temp) {
    alert(ci * (1 + jur) ** temp);
}
imposto2(500, 0.3, 2)

//7
function bhaskara() {

    let a = prompt("Digite o valor de A:\n");
    let b = prompt("Digite o valor de B:\n");
    let c = prompt("Digite o valor de C:\n");
    let delta = b ** 2 - 4 * a * c

    if (delta < 0) {
        alert("Delta é negativo (não existem raízes reais)");
    }
    else {
        let x1 = (-b + Math.sqrt(delta)) / (2 * a);
        let x2 = (-b + Math.sqrt(delta)) / (2 * a);
        alert("Seus resultados são: " + x1 + " e " + x2);
    }
}
bhaskara();

//8
var pontuacao = [7, 9, 11];
function basquete(ponto) {
    var maiorPontuacao = Math.max(...pontuacao);
    var menorPontuacao = Math.min(...pontuacao);

    if (ponto > maiorPontuacao) {
        alert(`Novo Record: ${ponto}`);
        pontuacao.push(ponto);
    } else if (ponto < menorPontuacao) {
        alert(`Nova Baixa: ${ponto}`);
        pontuacao.push(ponto);
    } else {
        alert(`Record: ${maiorPontuacao}`);
        alert(`Menor Pontuação: ${menorPontuacao}`);
    }
}
basquete(20);
basquete(5);

//9
function escola() {
    var nota = parseInt(prompt("Digite a nota do aluno: "));
    var v = 0;

    if (nota < 38) {
        alert("Aluno reprovado!");
    } else {
        for (var i = nota; i <= nota + 5; i++) {
            if (i % 5 === 0) {
                v = i;
                break;
            }
        }
        if (v - nota < 3) {
            alert(`Aluno aprovado, nota: ${v}`);
        } else {
            alert(`Aluno aprovado, nota: ${nota}`);
        }
    }
}
escola();

//10
function parametro(numero) {
    alert(numero % 3 === 0);
}
parametro(6);
parametro(2);