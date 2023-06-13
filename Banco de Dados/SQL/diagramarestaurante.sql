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
    funcionarios VARCHAR(700) NOT NULL,
);

CREATE TABLE pedido (
id_pedido VARCHAR(20) PRIMARY KEY,
quantidade INT NOT NULL,
);

CREATE TABLE delivery (
id_delivery VARCHAR(20) PRIMARY KEY,
quantidade INT NOT NULL,
localizacao VARCHAR (260) NOT NULL,
);

CREATE TABLE alimento (
nome_alimento VARCHAR(40) PRIMARY KEY,
preco INT NOT NULL
);

CREATE TABLE pedido_alimento (
id_produto_fk VARCHAR(20) NOT NULL,
id_pedido_fk VARCHAR(20) NOT NULL,
FOREIGN KEY (id_produto_fk) REFERENCES produto (id_produto_pk),
FOREIGN KEY (id_pedido_fk) REFERENCES pedido (id_pedido_pk)
);

CREATE TABLE cliente_pedido (
id_cliente_fk VARCHAR(50) NOT NULL,
id_pedido_fk VARCHAR(20) NOT NULL,
FOREIGN KEY (id_cliente_fk) REFERENCES cliente (id_cliente_pk),
FOREIGN KEY (id_pedido_fk) REFERENCES pedido (id_pedido_pk)
);

CREATE TABLE cliente_alimento (
id_produto_fk VARCHAR(20) NOT NULL,
id_pedido_fk VARCHAR(20) NOT NULL,
FOREIGN KEY (id_produto_fk) REFERENCES produto (id_produto_pk),
FOREIGN KEY (id_pedido_fk) REFERENCES pedido (id_pedido_pk)
);

CREATE TABLE pedido_delivery (
id_produto_fk VARCHAR(20) NOT NULL,
id_pedido_fk VARCHAR(20) NOT NULL,
FOREIGN KEY (id_produto_fk) REFERENCES produto (id_produto_pk),
FOREIGN KEY (id_pedido_fk) REFERENCES pedido (id_pedido_pk)
);