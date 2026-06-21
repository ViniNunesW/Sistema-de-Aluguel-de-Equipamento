-- 1. POPULANDO ARMAS
INSERT INTO arma (numero_de_serie, categoria, nome, quantidade, valor) VALUES
('G17LV990', 'Pistola', 'Glock G17 9mm', 5, 8500.00),
('TS9BR122', 'Pistola', 'Taurus TS9 9mm', 8, 4200.00),
('RT82M443', 'Revolver', 'Taurus RT82 .38 SPL', 4, 3800.00),
('MD2IM321', 'Pistola', 'Imbel GC MD2 .40', 3, 6500.00),
('C1911US1', 'Pistola', 'Colt 1911 .45 ACP', 2, 14000.00),
('CTT40BR5', 'Submetralhadora', 'Taurus CTT40 .40', 3, 9800.00),
('PUMA38R2', 'Carabina', 'Rossi Puma .38 SPL', 4, 5200.00),
('MIL12GA8', 'Espingarda', 'Military 3.0 12GA', 6, 6100.00),
('SW22LR09', 'Rifle', 'Smith & Wesson M&P15', 3, 7500.00),
('TR357SW7', 'Revolver', 'Taurus Tracker .357', 3, 5900.00);

-- 2. POPULANDO MUNICAO
INSERT INTO municao (id, tipo, nome, quantidade, valor) VALUES
(1, '9mm', 'Magtech CBC 9mm Treino', 5000, 4.50),
(2, '.38 SPL', 'CBC .38 SPL CHOG', 3000, 5.00),
(3, '.40 S&W', 'CBC .40 S&W Etog', 2500, 5.50),
(4, '.45 ACP', 'Magtech .45 ACP', 1500, 7.00),
(5, '12GA', 'CBC 1270 Target', 1000, 8.00),
(6, '.22 LR', 'CBC .22 LR Target', 10000, 1.20),
(7, '.357 Mag', 'CBC .357 Magnum ETOG', 1200, 7.50),
(8, '9mm Sub', 'CBC 9mm Subsonica', 2000, 6.00),
(9, '.380 ACP', 'CBC .380 Auto ETOG', 4000, 4.00),
(10, '5.56mm', 'CBC 5.56mm Comum', 1500, 9.50);

-- 3. POPULANDO FUNCIONARIO
INSERT INTO funcionario (id, nome, telefone, endereco, salario) VALUES
(1, 'Marcos Atendente', '11911111111', 'Av Central 10', 2200.00),
(2, 'Lucas Instrutor', '11922222222', 'Rua das Pistas 40', 3500.00),
(3, 'Roberto Armeiro', '11933333333', 'Rua do Cofre 5', 4000.00),
(4, 'Ana Gerente', '11944444444', 'Av Principal 100', 5500.00),
(5, 'Carlos Seguranca', '11955555555', 'Rua de Tras 12', 2800.00),
(6, 'Juliana Caixa', '11966666666', 'Rua Direita 88', 2400.00),
(7, 'Bruno Instrutor 2', '11977777777', 'Av das Nacoes 33', 3500.00),
(8, 'Fernanda Recepcao', '11988888888', 'Rua de Cima 4', 2100.00),
(9, 'Ricardo Instrutor 3', '11999999999', 'Rua Nova 15', 3500.00),
(10, 'Sofia Tiros', '11900000000', 'Av Brasil 50', 2200.00);

-- 4. POPULANDO CLIENTE (1 = Tem Posse / 0 = Não tem Posse)
INSERT INTO cliente (id, nome, telefone, posse_de_arma, cpf, data_nascimento, email, endereco, cidade, estado, cep, numero_registro_arma) VALUES
(1, 'Alice Silva', '119711100', 1, '11111111111', '1990-05-12', 'alice@email.com', 'Rua A', 'São Paulo', 'SP', '01000-000', 'SIGMA12345'),
(2, 'Bob Santos', '119722200', 0, '22222222222', '1985-08-20', 'bob@email.com', 'Rua B', 'São Paulo', 'SP', '02000-000', NULL),
(3, 'Candice Lima', '119733300', 0, '33333333333', '1993-11-02', 'candice@email.com', 'Rua C', 'Campinas', 'SP', '13000-000', NULL),
(4, 'David Rocha', '119744400', 1, '44444444444', '1978-01-15', 'david@email.com', 'Rua D', 'Santos', 'SP', '11000-000', 'SIGMA67890'),
(5, 'Eduardo Costa', '119755500', 1, '55555555555', '1982-03-30', 'edu@email.com', 'Rua E', 'São Paulo', 'SP', '03000-000', 'SINARM9988'),
(6, 'Fabiana Dias', '119766600', 0, '66666666666', '1995-07-18', 'fabi@email.com', 'Rua F', 'São Bernardo', 'SP', '09000-000', NULL),
(7, 'Gabriel Melo', '119777700', 1, '77777777777', '1988-09-22', 'gabi@email.com', 'Rua G', 'São Paulo', 'SP', '04000-000', 'SIGMA55443'),
(8, 'Helena Gomes', '119788800', 0, '88888888888', '1991-04-05', 'helena@email.com', 'Rua H', 'Osasco', 'SP', '06000-000', NULL),
(9, 'Igor Antunes', '119799900', 1, '99999999999', '1975-12-25', 'igor@email.com', 'Rua I', 'Guarulhos', 'SP', '07000-000', 'SINARM7766'),
(10, 'Julia Ribeiro', '119700000', 0, '00000000000', '1997-02-10', 'julia@email.com', 'Rua J', 'São Paulo', 'SP', '05000-000', NULL);

-- 5. POPULANDO ALUGUEL
INSERT INTO aluguel (id, id_cliente, id_funcionario, numero_de_serie, id_acessorio, id_municao, quantidade_municao, tempo, valor) VALUES
(1, 1, 2, 'G17LV990', NULL, 1, 50, '2026-06-20 14:00:00', 250.00),
(2, 2, 2, 'TS9BR122', NULL, 1, 30, '2026-06-20 14:30:00', 180.00),
(3, 3, 7, 'RT82M443', NULL, 2, 20, '2026-06-20 15:00:00', 150.00),
(4, 4, 7, 'MD2IM321', NULL, 3, 50, '2026-06-20 15:30:00', 300.00),
(5, 5, 9, 'CTT40BR5', NULL, 3, 100, '2026-06-20 16:00:00', 500.00),
(6, 6, 9, 'MIL12GA8', NULL, 5, 10, '2026-06-20 16:30:00', 220.00),
(7, 7, 2, 'SW22LR09', NULL, 6, 150, '2026-06-20 17:00:00', 320.00),
(8, 8, 2, 'G17LV990', NULL, 1, 50, '2026-06-20 17:30:00', 250.00),
(9, 9, 7, 'TR357SW7', NULL, 7, 25, '2026-06-20 18:00:00', 280.00),
(10, 10, 7, 'PUMA38R2', NULL, 2, 30, '2026-06-20 18:30:00', 190.00);
