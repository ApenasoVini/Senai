function horarios() {
    var input = document.getElementById("input");
    var time = new Date();
    var hours = String(time.getHours()).padStart(2, '0');
    var minutes = String(time.getMinutes()).padStart(2, '0');
    var seconds = String(time.getSeconds()).padStart(2, '0');
    var value = hours + ":" + minutes + ":" + seconds;
    input.value = value;
}
setInterval(horarios, 1000);
horarios();