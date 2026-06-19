CREATE TABLE cliente (
  id int PRIMARY KEY,
  nome varchar(255),
  telefone varchar(255),
  posse_de_arma bit,
  cpf varchar(255),
  data_nascimento date,
  email varchar(255),
  endereco varchar(255),
  cidade varchar(255),
  estado varchar(255),
  cep varchar(255),
  numero_registro_arma varchar(255)
);

CREATE TABLE funcionario (
  id int PRIMARY KEY,
  nome varchar(255),
  telefone varchar(255),
  endereco varchar(255),
  salario float
);

CREATE TABLE arma (
  numero_de_serie varchar(255) PRIMARY KEY,
  categoria varchar(255),
  nome varchar(255),
  quantidade int,
  valor float
);

CREATE TABLE municao (
  id int PRIMARY KEY,
  tipo varchar(255),
  nome varchar(255),
  quantidade int,
  valor float
);

CREATE TABLE acessorio (
  id int PRIMARY KEY,
  categoria varchar(255),
  nome varchar(255),
  quantidade int,
  cor varchar(255),
  valor float
);

CREATE TABLE venda (
  id int PRIMARY KEY,
  id_cliente int,
  id_funcionario int,
  numero_de_serie varchar(255),
  id_acessorio int,
  quantidade_de_acessorio int,
  id_municao int,
  quantidade_municao int,
  posse_da_arma bit,
  valor float
);

CREATE TABLE aluguel (
  id int PRIMARY KEY,
  id_cliente int,
  id_funcionario int,
  numero_de_serie varchar(255),
  id_acessorio int,
  id_municao int,
  quantidade_municao int,
  tempo datetime,
  valor float
);

CREATE TABLE estoque (
  id int PRIMARY KEY,
  id_produto int,
  tipo_produto varchar(255),
  quantidade int,
  observacoes varchar(255)
);

ALTER TABLE venda ADD FOREIGN KEY (id_cliente) REFERENCES cliente (id);

ALTER TABLE venda ADD FOREIGN KEY (id_funcionario) REFERENCES funcionario (id);

ALTER TABLE venda ADD FOREIGN KEY (numero_de_serie) REFERENCES arma (numero_de_serie);

ALTER TABLE venda ADD FOREIGN KEY (id_acessorio) REFERENCES acessorio (id);

ALTER TABLE venda ADD FOREIGN KEY (id_municao) REFERENCES municao (id);

ALTER TABLE aluguel ADD FOREIGN KEY (id_cliente) REFERENCES cliente (id);

ALTER TABLE aluguel ADD FOREIGN KEY (id_funcionario) REFERENCES funcionario (id);

ALTER TABLE aluguel ADD FOREIGN KEY (numero_de_serie) REFERENCES arma (numero_de_serie);

ALTER TABLE aluguel ADD FOREIGN KEY (id_acessorio) REFERENCES acessorio (id);

ALTER TABLE aluguel ADD FOREIGN KEY (id_municao) REFERENCES municao (id);
