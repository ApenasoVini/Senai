function cor() {
    var body = document.body
    var btn = document.getElementById("btn");
    var inputB = document.getElementById("inputB");
    var inputC = document.getElementById("inputC");
    body.style.backgroundColor = inputB.value;
    body.style.color = inputC.value;
    btn.style.color = inputC.value;
    btn.style.borderColor = inputC.value;
}
