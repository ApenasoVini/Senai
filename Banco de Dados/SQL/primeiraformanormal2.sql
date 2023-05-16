CREATE TABLE data_de_nascimento (
    dia VARCHAR(2) NOT NULL,
    mes VARCHAR(2) NOT NULL,
    ano VARCHAR(4) NOT NULL
);

CREATE TABLE nome_completo (
    nome VARCHAR(20) NOT NULL,
    sobrenome VARCHAR(40) NOT NULL
);

CREATE TABLE cadastro (
    usuario VARCHAR(20) NOT NULL,
    senha VARCHAR(15) NOT NULL
);



CREATE TABLE numero (
    numero_de_serie VARCHAR(2) NOT NULL,
    quantidade_da_serie VARCHAR(100) NOT NULL
);

CREATE TABLE localizacao (
    biblioteca VARCHAR(25) NOT NULL,
    setor VARCHAR(2) NOT NULL
)
