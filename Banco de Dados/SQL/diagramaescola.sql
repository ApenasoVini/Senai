CREATE TABLE aluno (
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
turma VARCHAR(10) NOT NULL,
itinerario VARCHAR(100) NOT NULL,
cpf_pk VARCHAR(15) NOT NULL,
PRIMARY KEY(cpf_pk)
);

CREATE TABLE escola (
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    cnpj_pk VARCHAR(20) NOT NULL,
    grau_escolaridade VARCHAR(20) NOT NULL,
    cpf_fk VARCHAR(15) NOT NULL,
    PRIMARY KEY(cnpj_pk),
    FOREIGN KEY(cpf_fk) REFERENCES aluno (cpf_pk) 
);

INSERT INTO aluno (nome, idade, turma, itinerario, cpf_pk) 
VALUES ('Vinícius',16,'2C','tecnico integrado','124.941.699-09')

INSERT INTO escola (nome, endereco, cnpj_pk, grau_escolaridade, cpf_fk) 
VALUES ('escola s','rua: sim', '92463239847','medio','124.941.699-09')

SELECT * FROM aluno
SELECT * FROM escola