CREATE TABLE cliente (
    id_cliente_pk VARCHAR(20) NOT NULL,
    nome_cliente VARCHAR(50) NOT NULL,
    --  Referente ao atributo endereço
    estado VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    complemento VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_cliente_pk)
);

CREATE TABLE telefone (
    id_cliente_fk VARCHAR(20) NOT NULL,
    telefone_pk INT NOT NULL,
    PRIMARY KEY (telefone_pk),
    FOREIGN KEY (id_cliente_fk) REFERENCES cliente (id_cliente_pk)
);

CREATE TABLE pedido (
id_pedido_pk VARCHAR(20) NOT NULL,
quantidade INT NOT NULL,
data_pedido DATE NOT NULL,
PRIMARY KEY (id_pedido_pk)
);

CREATE TABLE produto (
id_produto_pk VARCHAR(20) NOT NULL,
nome_produto VARCHAR(50) NOT NULL,
categoria VARCHAR(20) NOT NULL,
preco INT NOT NULL,
PRIMARY KEY (id_produto_pk)
);

CREATE TABLE pedido_produto (
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
)

INSERT INTO cliente (id_cliente_pk, nome_cliente, estado, cidade, bairro, rua, complemento)
VALUES ('1', 'João Silva', 'São Paulo', 'São Paulo', 'Centro', 'Rua A', 'Apto 101');
VALUES ('2', 'Maria Santos', 'Rio de Janeiro', 'Rio de Janeiro', 'Copacabana', 'Avenida B', 'Casa 10');

INSERT INTO telefone (id_cliente_fk, telefone_pk)
VALUES ('1', 1234567890);
VALUES ('2', 9876543210);

INSERT INTO pedido (id_pedido_pk, quantidade, data_pedido)
VALUES ('P1', 3, '2023-05-15');
VALUES ('P2', 2, '2023-05-20');

INSERT INTO produto (id_produto_pk, nome_produto, categoria, preco)
VALUES ('PR1', 'Camiseta', 'Roupas', 50);
VALUES ('PR2', 'Calça Jeans', 'Roupas', 100);

INSERT INTO pedido_produto (id_produto_fk, id_pedido_fk)
VALUES ('PR1', 'P1');
VALUES ('PR2', 'P2');

INSERT INTO cliente_pedido (id_cliente_fk, id_pedido_fk)
VALUES ('1', 'P1');
VALUES ('2', 'P2');

SELECT * FROM cliente
SELECT * FROM pedido
SELECT * FROM produto
SELECT * FROM cliente_pedido
SELECT * FROM pedido_produto
SELECT * FROM telefone

-- Primeira Forma Normal (1NF):
-- Não há atributos multivalorados ou compostos (divisão do endereço e separação do telefone)

-- Segunda Forma Normal (2NF):
-- Não há dependências parciais em nenhuma das tabelas, elas estão divididas corretamente e possuem tabelas de relação.

-- Terceira Forma Normal (3NF):
-- Os atributos que não são chave primária dependem apenas da chave primária de suas tabelas e não de outros atributos normais.