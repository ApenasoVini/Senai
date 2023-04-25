CREATE TABLE usuario (
    nome VARCHAR(70)NOT NULL,
    email VARCHAR(100)NOT NULL,
    id_pk VARCHAR(36) NOT NULL,
    lista VARCHAR(50000) NOT NULL,
    PRIMARY KEY (id_pk)
)

CREATE TABLE aplicativo_de_onibus (
    nome_pk VARCHAR(40) NOT NULL,
    configuracoes VARCHAR(1000) NOT NULL,
    tabela_horarios_fk VARCHAR(4000) NOT NULL,
    cnpj_fk INT NOT NULL,
    id_fk VARCHAR(36) NOT NULL,
    tabela_linhas_fk VARCHAR(50000) NOT NULL,
    PRIMARY KEY (nome_pk),
    FOREIGN KEY (tabela_horarios_fk) REFERENCES horarios (tabela_horarios_pk),
    FOREIGN KEY (tabela_linhas_fk) REFERENCES linhas (tabela_linhas_pk),
    FOREIGN KEY (id_fk) REFERENCES usuario (id_pk),
    FOREIGN KEY (cnpj_fk) REFERENCES empresas (cnpj_pk)
)

CREATE TABLE empresas (
    nome VARCHAR(60) NOT NULL,
    funcionarios VARCHAR(4000) NOT NULL,
    cnpj_pk INT NOT NULL,
    placa_fk VARCHAR(7) NOT NULL,
    PRIMARY KEY (cnpj_pk),
    FOREIGN KEY (placa_fk) REFERENCES onibus (placa_pk)
)

CREATE TABLE onibus (
    motorista VARCHAR(30) NOT NULL,
    cobrador VARCHAR(30) NOT NULL,
    estrutura VARCHAR(2000) NOT NULL,
    localizacao VARCHAR(7000) NOT NULL,
    placa_pk VARCHAR(7) NOT NULL,
    tabela_linhas_fk VARCHAR(50000) NOT NULL,
    tabela_horarios_fk VARCHAR(4000) NOT NULL,
    PRIMARY KEY (placa_pk),
    FOREIGN KEY (tabela_horarios_fk) REFERENCES horarios (tabela_horarios_pk),
    FOREIGN KEY (tabela_linhas_fk) REFERENCES linhas (tabela_linhas_pk)
)

CREATE TABLE linhas (
    tabela_linhas_pk VARCHAR(50000) NOT NULL,
    pontos VARCHAR(600),
    ruas VARCHAR(10000) NOT NULL,
    cidades VARCHAR(2000) NOT NULL,
    PRIMARY KEY (tabela_linhas_pk)
)

CREATE TABLE horarios (
    tabela_horarios_pk VARCHAR(4000) NOT NULL,
    manha VARCHAR(100),
    tarde VARCHAR(100) NOT NULL,
    noite VARCHAR(100) NOT NULL,
    PRIMARY KEY (tabela_horarios_pk)
)

INSERT INTO usuario(nome, email, id_pk, lista) 
VALUES ('Vini','viniciusicmsc@gmail.com','1234rg74tt74623','ponto 1 e ponto 2 das 11:20-14:40');

INSERT INTO aplicativo_de_onibus(nome_pk, configuracoes, tabela_horarios_fk, cnpj_fk, id_fk, tabela_linhas_fk) 
VALUES ('newbus','padrão','08:00 - 22:00',832000123,'1234rg74tt74623','linha transversal Belo Horizonte - rodoviária municipal de Belo Horizonte');

INSERT INTO empresas(nome, funcionarios, cnpj_pk, placa_fk) 
VALUES ('Alexandre Turismo','Jonas João Matias Ana Eduarda...',832000123,'abdr434');

INSERT INTO onibus(motorista, cobrador, estrutura, localizacao, placa_pk, tabela_horarios_fk, tabela_linhas_fk) 
VALUES ('Cleiton', 'Ana', 'Completa', 'Rua dos Berços','abdr434','08:00 - 22:00','linha transversal Belo Horizonte - rodoviária municipal de Belo Horizonte');

INSERT INTO linhas(tabela_linhas_pk, pontos, ruas, cidades) 
VALUES ('linha transversal Belo Horizonte - rodoviária municipal de Belo Horizonte', 'ponto 2, ponto 45, ponto 4, ponto final', 'rua das aves, ruas do jacaré...', 'Bela Horizonte');

INSERT INTO horarios(tabela_horarios_pk, manha, tarde, noite) 
VALUES ('08:00 - 22:00', '08:00 - 11:30', '13:45 - 18:30', '19:00 - 22:00');

SELECT * FROM usuario
SELECT * FROM aplicativo_de_onibus 
SELECT * FROM empresas
SELECT * FROM onibus
SELECT * FROM linhas
SELECT * FROM horarios