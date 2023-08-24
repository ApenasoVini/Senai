CREATE TABLE porto (
    id_porto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    -- Referente ao atributo endereço
    estado VARCHAR(30),
    cidade VARCHAR(30) NOT NULL,
    complemento VARCHAR(50)
);

CREATE TABLE navio (
    id_navio INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    rota VARCHAR(200) NOT NULL
);

CREATE TABLE containers (
    id_containers INT PRIMARY KEY,
    data_entrega DATE,
    origem VARCHAR(100) NOT NULL
);

CREATE TABLE funcionarios (
    id_funcionarios INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario INT NOT NULL
);

CREATE TABLE navio_porto (
id_navio INT NOT NULL,
id_porto INT NOT NULL,
FOREIGN KEY (id_navio) REFERENCES navio (id_navio),
FOREIGN KEY (id_porto) REFERENCES porto (id_porto)
);

CREATE TABLE navio_containers (
id_navio INT NOT NULL,
id_containers INT NOT NULL,
FOREIGN KEY (id_navio) REFERENCES navio (id_navio),
FOREIGN KEY (id_containers) REFERENCES containers (id_containers)
);

CREATE TABLE funcionarios_porto (
id_funcionarios INT NOT NULL,
id_porto INT NOT NULL,
FOREIGN KEY (id_porto) REFERENCES porto (id_porto),
FOREIGN KEY (id_funcionarios) REFERENCES funcionarios (id_funcionarios)
);
