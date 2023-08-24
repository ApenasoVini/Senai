CREATE TABLE hospital (
  cnpj INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  lucro INT NOT NULL,
  funcionarios VARCHAR(800) NOT NULL
);

CREATE TABLE paciente (
  cpf INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  entrada DATE NOT NULL,
  saida DATE NOT NULL,
  estado_saude VARCHAR(30)
);

CREATE TABLE hospital_paciente (
  cpf INT NOT NULL,
  cnpj INT NOT NULL,
  FOREIGN KEY (cpf) REFERENCES paciente (cpf),
  FOREIGN KEY (cnpj) REFERENCES hospital (cnpj),
);