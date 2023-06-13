CREATE TABLE universidade (
  cnpj INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  funcionarios VARCHAR(800) NOT NULL,
  horarios VARCHAR(100) NOT NULL,
);

CREATE TABLE alunos (
  cpf INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  matricula VARCHAR(20) NOT NULL,
  curso VARCHAR(80) NOT NULL,
);

CREATE TABLE alunos_universidade (
  cpf INT NOT NULL,
  cnpj INT NOT NULL,
  FOREIGN KEY (cpf) REFERENCES alunos (cpf),
  FOREIGN KEY (cnpj) REFERENCES universidade (cnpj)
);
