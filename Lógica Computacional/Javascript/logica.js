const inv = -1;
let array = [];

function tests() {
    var num = prompt("Digite um número");
    var res = num * inv;
    alert(res);

    array.push(num, inv, res);
    alert(array);

    alert(res > num);
    alert(res < num);

    const data = {
        number: num,
        negative: inv,
        inverse: res,
        formedArray: array
    }

    console.log(data);

    for (let prop in data) {
        alert("data " + prop + " = " + data[prop]);
    }
}

tests();
