CREATE TABLE estadio (
  cnpj INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  equipe VARCHAR(15)
);

CREATE TABLE setores (
  id_setor INT PRIMARY KEY,
  nome VARCHAR(30) NOT NULL
);

CREATE TABLE funcoes (
  nome VARCHAR(20) PRIMARY KEY,
  horario VARCHAR(100)
);

CREATE TABLE funcionarios (
  id_funcionario INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  carga_horaria INT NOT NULL
);

CREATE TABLE estadio_setores (
  cnpj INT NOT NULL,
  id_setor INT NOT NULL,
  FOREIGN KEY (id_setor) REFERENCES setores (id_setor),
  FOREIGN KEY (cnpj) REFERENCES estadio (cnpj)
);

CREATE TABLE funcoes_funcionarios (
  id_funcionarios INT NOT NULL,
  nome VARCHAR(20) NOT NULL,
  FOREIGN KEY (nome) REFERENCES funcoes (nome),
  FOREIGN KEY (id_funcionarios) REFERENCES funcionarios (id_funcionarios)
);

CREATE TABLE funcionarios_setores (
  id_funcionarios INT NOT NULL,
  id_setor INT NOT NULL,
  FOREIGN KEY (id_setor) REFERENCES setores (id_setor),
  FOREIGN KEY (id_funcionarios) REFERENCES funcionarios (id_funcionarios)
);
