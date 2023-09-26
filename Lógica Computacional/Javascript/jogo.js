function pedra_papel_tesoura() {
    do {
        var user = prompt('Pedra, papel ou tesoura? ').toLowerCase();
    } while (user !== 'pedra' && user !== 'papel' && user !== 'tesoura');

    var num = Math.floor(Math.random() * 3) + 1;
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var ia = opcoes[num - 1];

    if (ia === user) {
        alert('Empate!');
    } else if (
        (ia === 'pedra' && user === 'tesoura') ||
        (ia === 'papel' && user === 'pedra') ||
        (ia === 'tesoura' && user === 'papel')
    ) {
        alert('IA ganhou!');
    } else {
        alert('Você ganhou!');
    }
    console.log(`IA: ${ia} x Você: ${user}`)
}
pedra_papel_tesoura();