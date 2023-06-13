CREATE TABLE Porto (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    -- Referente ao atributo endereço
    estado VARCHAR(30),
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    complemento VARCHAR(50)
);

CREATE TABLE Navio (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    rota VARCHAR(200) NOT NULL
);

CREATE TABLE Containers (
    id INT PRIMARY KEY,
    data_entrega DATE,
    origem VARCHAR(100) NOT NULL
);

CREATE TABLE Funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario INT NOT NULL
);
