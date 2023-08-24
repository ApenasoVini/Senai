CREATE TABLE cliente (
    nome_cliente VARCHAR(50) PRIMARY KEY,
    -- Referente ao atributo endereço
    estado VARCHAR(30),
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    complemento VARCHAR(50)
);

CREATE TABLE telefone (
    telefone INT PRIMARY KEY,
    nome_cliente VARCHAR(50),
    FOREIGN KEY (nome_cliente) REFERENCES cliente (nome_cliente)
);

CREATE TABLE restaurante (
    cnpj INT PRIMARY KEY,
    nome_restaurante VARCHAR(20) NOT NULL,
    lucro INT NOT NULL,
    funcionarios VARCHAR(700) NOT NULL
);

CREATE TABLE pedido (
id_pedido VARCHAR(20) PRIMARY KEY,
quantidade INT NOT NULL
);

CREATE TABLE delivery (
id_delivery VARCHAR(20) PRIMARY KEY,
quantidade INT NOT NULL,
localizacao VARCHAR (260) NOT NULL
);

CREATE TABLE alimento (
nome_alimento VARCHAR(40) PRIMARY KEY,
preco INT NOT NULL
);

CREATE TABLE pedido_alimento (
id_pedido VARCHAR(20) NOT NULL,
nome_alimento VARCHAR(40) NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
FOREIGN KEY (nome_alimento) REFERENCES alimento (nome_alimento)
);

CREATE TABLE cliente_pedido (
nome_cliente VARCHAR(50) NOT NULL,
nome_alimento VARCHAR(40) NOT NULL,
FOREIGN KEY (nome_cliente) REFERENCES cliente (nome_cliente),
FOREIGN KEY (nome_alimento) REFERENCES alimento (nome_alimento)
);

CREATE TABLE cliente_alimento (
nome_cliente VARCHAR(50) NOT NULL,
nome_alimento VARCHAR(40) NOT NULL,
FOREIGN KEY (nome_cliente) REFERENCES cliente (nome_cliente),
FOREIGN KEY (nome_alimento) REFERENCES alimento (nome_alimento)
);

CREATE TABLE pedido_delivery (
id_pedido VARCHAR(20) NOT NULL,
id_delivery VARCHAR(20) NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
FOREIGN KEY (id_delivery) REFERENCES delivery (id_delivery)
);