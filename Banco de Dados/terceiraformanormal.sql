CREATE TABLE cliente (
nome_cliente_pk VARCHAR(50) NOT NULL,
PRIMARY KEY (nome_cliente_pk)
);

CREATE TABLE pedido (
id_pedido_pk VARCHAR(20) NOT NULL,
PRIMARY KEY (id_pedido_pk)
);

CREATE TABLE produto (
id_produto_pk VARCHAR(20) NOT NULL,
nome_produto VARCHAR(50) NOT NULL,
categoria_produto VARCHAR(20) NOT NULL,
PRIMARY KEY (id_produto_pk)
);

CREATE TABLE pedido_produto (
id_produto_fk VARCHAR(20) NOT NULL,
id_pedido_fk VARCHAR(20) NOT NULL,
FOREIGN KEY (id_produto_fk) REFERENCES produto (id_produto_pk),
FOREIGN KEY (id_pedido_fk) REFERENCES pedido (id_pedido_pk)
);

CREATE TABLE cliente_pedido (
nome_cliente_fk VARCHAR(50) NOT NULL,
id_pedido_fk VARCHAR(20) NOT NULL,
FOREIGN KEY (nome_cliente_fk) REFERENCES cliente (nome_cliente_pk),
FOREIGN KEY (id_pedido_fk) REFERENCES pedido (id_pedido_pk)
)

INSERT INTO cliente (nome_cliente_pk)
VALUES ('João')

INSERT INTO pedido (id_pedido_pk)
VALUES ('ffjhs43fg55')

INSERT INTO produto (id_produto_pk, nome_produto, categoria_produto)
VALUES ('fgd4trdfv', 'Hambúrguer Simples', 'Produto Alimentício')

INSERT INTO pedido_produto (id_pedido_fk, id_produto_fk)
VALUES ('ffjhs43fg55','fgd4trdfv')

INSERT INTO cliente_pedido (id_pedido_fk, nome_cliente_fk)
VALUES ('ffjhs43fg55', 'João')

SELECT * FROM cliente
SELECT * FROM pedido
SELECT * FROM produto
SELECT * FROM cliente_pedido
SELECT * FROM pedido_produto

-- Esta tabela está na 1ª forma normal pois não apresenta atributos multivalorados ou compostos 
-- e na segunda forma pois os atributos dependem da chave primária