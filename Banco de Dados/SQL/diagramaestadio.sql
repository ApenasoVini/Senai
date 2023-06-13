CREATE TABLE estadio (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
);

CREATE TABLE setores (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
);

CREATE TABLE funcoes (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
);

CREATE TABLE funcionarios (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  setor_id INT REFERENCES setores(id),
  funcao_id INT REFERENCES funcoes(id),
  carga_horaria INT
);

CREATE TABLE horarios_trabalho (
  id SERIAL PRIMARY KEY,
  funcionario_id INT REFERENCES funcionarios(id),
  dia_semana VARCHAR(20) NOT NULL,
  horario_inicio TIME,
  horario_fim TIME
);
