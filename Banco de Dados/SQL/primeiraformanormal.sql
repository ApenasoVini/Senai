-- CREATE TABLE livro(
--     isbn_pk VARCHAR(13) NOT NULL,
--     titulo VARCHAR(50) NOT NULL,
--     genero VARCHAR(20) NOT NULL,
--     autor VARCHAR(50) NOT NULL,
--     editora VARCHAR(50),
--     ano_publicacao VARCHAR(4),
--     livraria VARCHAR(100) NOT NULL,
--     PRIMARY KEY (isbn_pk)
-- );

-- CREATE TABLE cliente(
--     id_pk VARCHAR(15) NOT NULL,
--     nome VARCHAR(50) NOT NULL,
--     reserva VARCHAR(100) NOT NULL,
--     data_nascimento VARCHAR(8) NOT NULL,
--     dados_pagamento VARCHAR(100) NOT NULL,
--     email VARCHAR(50) NOT NULL,
--     PRIMARY KEY (id_pk)
-- );

CREATE TABLE livro(
    isbn_pk VARCHAR(13) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    autor VARCHAR(50) NOT NULL,
    editora VARCHAR(50),
    ano_publicacao VARCHAR(4),
    /*Atributo livraria*/
    franquia_livraria VARCHAR(50) NOT NULL,
    secao_livraria VARCHAR(30) NOT NULL,
    prateleira_livraria VARCHAR(30) NOT NULL,
    /**/
    PRIMARY KEY (isbn_pk)
);

CREATE TABLE genero(
    isbn_pk_fk VARCHAR(13) NOT NULL,
    genero_pk VARCHAR(20) NOT NULL,
    FOREIGN KEY (isbn_pk_fk) REFERENCES livro (isbn_pk)
);

CREATE TABLE cliente(
    id_pk VARCHAR(15) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    data_nascimento VARCHAR(8) NOT NULL,
    email VARCHAR(50) NOT NULL,
    /*Atributo dados_pagamento*/
    numero_cartao VARCHAR(16) NOT NULL,
    dono_cartao VARCHAR(30) NOT NULL,
    cpf_dono VARCHAR(15) NOT NULL,
    codigo_seguranca VARCHAR(3) NOT NULL,
    /**/
    PRIMARY KEY (id_pk)
);

CREATE TABLE reserva(
    codigo_reserva_pk VARCHAR(13) NOT NULL,
    id_pk_fk VARCHAR(15) NOT NULL,
    isbn_pk_fk VARCHAR(13) NOT NULL,
    PRIMARY KEY (codigo_reserva_pk),
    FOREIGN KEY (id_pk_fk) REFERENCES cliente (id_pk),
    FOREIGN KEY (isbn_pk_fk) REFERENCES livro (isbn_pk)
);

INSERT INTO livro (isbn_pk, titulo, autor, editora, ano_publicacao, franquia_livraria, secao_livraria, prateleira_livraria)
VALUES ('456789123', 'Os 3 Porquinhos', 'Joseph Jacobs', 'Girassol', '2009', 'Livraria Palhoça', '2', '4')

INSERT INTO genero (isbn_pk_fk, genero_pk)
VALUES ('456789123', 'Infantil')

INSERT INTO cliente (id_pk, nome, data_nascimento, email, numero_cartao, dono_cartao, cpf_dono, codigo_seguranca)
VALUES ('1', 'Maria', '07102017', 'mariajulia@mail.com', '5236667890090965', 'MARIA JÚLIA', '789654120365489', '987')

INSERT INTO reserva (codigo_reserva_pk, id_pk_fk, isbn_pk_fk)
VALUES ('123', '1', '456789123')

SELECT * FROM livro
SELECT * FROM genero
SELECT * FROM cliente
SELECT * FROM reserva