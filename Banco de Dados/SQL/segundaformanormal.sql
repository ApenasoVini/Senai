CREATE TABLE empresa (
    id_empresa_pk VARCHAR(20) NOT NULL,
    cep INT NOT NULL,
    complemento_endereco VARCHAR(40),
    PRIMARY KEY (id_empresa_pk)
);

CREATE TABLE empregado (
    id_empregado_pk VARCHAR(10) NOT NULL,
    nome_empregado VARCHAR(25) NOT NULL,
    horas_semanais VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_empregado_pk)
);

CREATE TABLE empresa_empregado (
    id_empresa_fk VARCHAR(20) NOT NULL,
    id_empregado_fk VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_empresa_fk) REFERENCES empresa (id_empresa_pk),
    FOREIGN KEY (id_empregado_fk) REFERENCES empregado (id_empregado_pk)
)

INSERT INTO empresa (id_empresa_pk, cep, complemento_endereco)
VALUES ('1323dgd4', 8882342, 'Em frente à biblioteca')

INSERT INTO empregado (id_empregado_pk, nome_empregado, horas_semanais)
VALUES ('ddfr4fvb', 'Jonas', '30 horas semanais')

SELECT * FROM empresa
SELECT * FROM empregado