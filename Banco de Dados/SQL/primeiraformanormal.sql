CREATE TABLE clientes (
    id_pk VARCHAR(80) NOT NULL,
    interesses VARCHAR(200) NOT NULL,
    historico VARCHAR(4000) NOT NULL,
    nome_completo VARCHAR(100) NOT NULL,
    data_de_nascimento VARCHAR(10) NOT NULL,
    cadastro VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_pk)
),

CREATE TABLE livros (
    id_pk VARCHAR(80) NOT NULL,
    genero VARCHAR(200) NOT NULL,
    autor VARCHAR(40) NOT NULL,
    numero VARCHAR(200) NOT NULL,
    localizacao VARCHAR(500) NOT NULL,
    editora VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_pk)
),



CREATE TABLE genero (
    id_fk VARCHAR(80) NOT NULL,
    genero_pk VARCHAR(200) NOT NULL,
    PRIMARY KEY (genero_pk),
    FOREIGN KEY (id_fk) REFERENCES livros (id_pk)

),

CREATE TABLE autor (
    id_fk VARCHAR(80) NOT NULL,
    autor_pk VARCHAR(40) NOT NULL,
    PRIMARY KEY (autor_pk),
    FOREIGN KEY (id_fk) REFERENCES livros (id_pk)
),



CREATE TABLE interesses (
    id_fk VARCHAR(80) NOT NULL,
    interesses_pk VARCHAR(200) NOT NULL,
    PRIMARY KEY (interesses_pk),
    FOREIGN KEY (id_fk) REFERENCES clientes (id_pk)
),

CREATE TABLE historico (
    id_fk VARCHAR(80) NOT NULL,
    historico_pk VARCHAR(4000) NOT NULL,
    PRIMARY KEY (historico_pk),
    FOREIGN KEY (id_fk) REFERENCES clientes (id_pk)
)
