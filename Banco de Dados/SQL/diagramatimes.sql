CREATE TABLE campeonato (
  grade VARCHAR(500) PRIMARY KEY
);

CREATE TABLE equipes (
  nomes VARCHAR(600) PRIMARY KEY,
  jogadores VARCHAR(200) NOT NULL
);

CREATE TABLE disputas (
  dia DATE PRIMARY KEY,
  horario INT NOT NULL
);

CREATE TABLE disputas_campeonato (
  dia DATE NOT NULL,
  grade VARCHAR(500) NOT NULL,
  FOREIGN KEY (dia) REFERENCES disputas (dia),
  FOREIGN KEY (grade) REFERENCES campeonato (grade)
);
