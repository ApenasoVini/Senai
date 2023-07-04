CREATE TABLE prisao (
    cnpj INT PRIMARY KEY,
    estado VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(30),
    rua VARCHAR(50) NOT NULL,
    complemento VARCHAR(50),
    nome VARCHAR(30) NOT NULL,
    funcionarios INT NOT NULL,
    prisioneiros INT NOT NULL
);

CREATE TABLE criminoso (
    id INT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL,
    cela INT NOT NULL
);

CREATE TABLE acusacao (
    tipo VARCHAR(60) PRIMARY KEY,
    gravidade VARCHAR(30),
    vitima VARCHAR(30) NOT NULL,
    data_crime DATE NOT NULL
);

CREATE TABLE punicao (
    pena VARCHAR(60) PRIMARY KEY,
    tempo VARCHAR(60),
    multa INT,
    data_prisao DATE NOT NULL
);

CREATE TABLE criminoso_prisao (
    cnpj INT NOT NULL,
    id INT NOT NULL,
    FOREIGN KEY (cnpj) REFERENCES prisao (cnpj),
    FOREIGN KEY (id) REFERENCES criminoso (id)
);

CREATE TABLE criminoso_acusacao (
    id INT NOT NULL,
    tipo VARCHAR(60) NOT NULL,
    FOREIGN KEY (id) REFERENCES criminoso (id),
    FOREIGN KEY (tipo) REFERENCES acusacao (tipo)
);

CREATE TABLE criminoso_punicao (
    id INT NOT NULL,
    pena VARCHAR(60) NOT NULL,
    FOREIGN KEY (id) REFERENCES criminoso (id),
    FOREIGN KEY (pena) REFERENCES punicao (pena)
);

INSERT INTO prisao (cnpj, estado, cidade, bairro, rua, complemento, nome, funcionarios, prisioneiros)
VALUES (123456, 'São Paulo', 'São Paulo', 'Centro', 'Rua 78', null, 'Prisão Central', 50, 100);

INSERT INTO criminoso (id, nome, idade, cela)
VALUES (1, 'Júlio', 30, 10);

INSERT INTO acusacao (tipo, gravidade, vitima, data_crime)
VALUES ('Roubo', 'Média', 'Marcos', '2023-07-04');

INSERT INTO punicao (pena, tempo, multa, data_prisao)
VALUES ('Regime fechado', '1 ano', 5000, '2023-07-12');

INSERT INTO criminoso_prisao (cnpj, id)
VALUES (123456, 1);

INSERT INTO criminoso_acusacao (id, tipo)
VALUES (1, 'Roubo');

INSERT INTO criminoso_punicao (id, pena)
VALUES (1, 'Regime fechado');

SELECT * FROM prisao;
SELECT * FROM criminoso;
SELECT * FROM acusacao;
SELECT * FROM punicao;
SELECT * FROM criminoso_prisao;
SELECT * FROM criminoso_acusacao;
SELECT * FROM criminoso_punicao;