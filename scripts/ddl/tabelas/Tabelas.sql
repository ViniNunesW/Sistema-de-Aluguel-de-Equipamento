-- =========================
-- TABELA CLIENTE
-- =========================
CREATE TABLE cliente (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(255),
  data_nascimento DATE,
  telefone VARCHAR(255),
  email VARCHAR(255),
  data_cadastro DATE,
  sexo VARCHAR(255),
  estado_civil VARCHAR(255),
  ativo BOOLEAN,
  endereco VARCHAR(255)
);

-- =========================
-- TABELA PROFISSIONAL
-- =========================
CREATE TABLE profissional (
  id_profissional INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(255),
  telefone VARCHAR(255),
  email VARCHAR(255),
  credencial VARCHAR(255)
);

-- =========================
-- TABELA CATEGORIA_ARMA
-- =========================
CREATE TABLE categoria_arma (
  id_categoria INT PRIMARY KEY AUTO_INCREMENT,
  descricao VARCHAR(255),
  calibre VARCHAR(255)
);

-- =========================
-- TABELA ARMA
-- =========================
CREATE TABLE arma (
  id_arma INT PRIMARY KEY AUTO_INCREMENT,
  numero_serie VARCHAR(255),
  fabricante VARCHAR(255),
  modelo VARCHAR(255),
  id_categoria INT,
  status VARCHAR(255),
  data_aquisicao DATE,
  FOREIGN KEY (id_categoria) REFERENCES categoria_arma(id_categoria)
);

-- =========================
-- TABELA SESSAO_TIRO
-- =========================
CREATE TABLE sessao_tiro (
  id_sessao INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT,
  id_profissional INT,
  data_hora_inicio DATETIME,
  data_hora_fim DATETIME,
  valor_total DECIMAL(10,2),
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
  FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional)
);

-- =========================
-- TABELA ALUGUEL_ARMA
-- =========================
CREATE TABLE aluguel_arma (
  id_aluguel INT PRIMARY KEY AUTO_INCREMENT,
  id_sessao INT,
  id_arma INT,
  tempo_utilizacao INT,
  valor_aluguel DECIMAL(10,2),
  FOREIGN KEY (id_sessao) REFERENCES sessao_tiro(id_sessao),
  FOREIGN KEY (id_arma) REFERENCES arma(id_arma)
);

-- =========================
-- TABELA PAGAMENTO
-- =========================
CREATE TABLE pagamento (
  id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
  id_sessao INT,
  data_pagamento DATE,
  valor DECIMAL(10,2),
  forma_pagamento VARCHAR(255),
  FOREIGN KEY (id_sessao) REFERENCES sessao_tiro(id_sessao)
);

-- =========================
-- TABELA MANUTENCAO
-- =========================
CREATE TABLE manutencao (
  id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
  id_arma INT,
  data_entrada DATE,
  data_saida DATE,
  descricao VARCHAR(255),
  custo DECIMAL(10,2),
  FOREIGN KEY (id_arma) REFERENCES arma(id_arma)
);
