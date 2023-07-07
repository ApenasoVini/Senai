const inv = -1;
let array = [];

function tests() {
    var num = prompt("Enter a number");
    var res = num * inv;
    alert(res);

    array.push(num, inv, res);
    alert(array);

    const data = {
        number: num,
        negative: inv,
        inverse: res,
    }

    console.log(data);
}

tests();
