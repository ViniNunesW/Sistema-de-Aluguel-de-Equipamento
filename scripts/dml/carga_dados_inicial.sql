-- =========================
-- CLIENTE
-- =========================
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, email, data_cadastro, sexo, estado_civil, ativo, endereco)
VALUES
('João Silva', '11111111111', '2000-05-10', '48999990001', 'joao@email.com', '2026-01-01', 'Masculino', 'Solteiro', 1, 'Rua A'),
('Maria Souza', '22222222222', '1998-09-20', '48999990002', 'maria@email.com', '2026-01-02', 'Feminino', 'Casada', 1, 'Rua B'),
('Carlos Lima', '33333333333', '1995-03-15', '48999990003', 'carlos@email.com', '2026-01-03', 'Masculino', 'Solteiro', 1, 'Rua C'),
('Ana Pereira', '44444444444', '2001-12-01', '48999990004', 'ana@email.com', '2026-01-04', 'Feminino', 'Solteira', 1, 'Rua D'),
('Bruno Alves', '55555555555', '1993-07-22', '48999990005', 'bruno@email.com', '2026-01-05', 'Masculino', 'Casado', 1, 'Rua E'),
('Juliana Rocha', '66666666666', '1999-11-11', '48999990006', 'juliana@email.com', '2026-01-06', 'Feminino', 'Solteira', 1, 'Rua F'),
('Pedro Santos', '77777777777', '1997-04-08', '48999990007', 'pedro@email.com', '2026-01-07', 'Masculino', 'Solteiro', 1, 'Rua G'),
('Fernanda Costa', '88888888888', '2002-06-30', '48999990008', 'fernanda@email.com', '2026-01-08', 'Feminino', 'Solteira', 1, 'Rua H'),
('Lucas Mendes', '99999999999', '1994-10-10', '48999990009', 'lucas@email.com', '2026-01-09', 'Masculino', 'Casado', 1, 'Rua I'),
('Camila Oliveira', '10101010101', '2000-02-25', '48999990010', 'camila@email.com', '2026-01-10', 'Feminino', 'Solteira', 1, 'Rua J');

-- =========================
-- PROFISSIONAL
-- =========================
INSERT INTO profissional (nome, cpf, telefone, email, credencial)
VALUES
('Carlos Mendes', '12121212121', '48988880001', 'carlos@estande.com', 'PROF001'),
('Ana Souza', '13131313131', '48988880002', 'ana@estande.com', 'PROF002'),
('Rafael Lima', '14141414141', '48988880003', 'rafael@estande.com', 'PROF003'),
('Beatriz Alves', '15151515151', '48988880004', 'beatriz@estande.com', 'PROF004'),
('Marcos Silva', '16161616161', '48988880005', 'marcos@estande.com', 'PROF005'),
('Julia Costa', '17171717171', '48988880006', 'julia@estande.com', 'PROF006'),
('Felipe Rocha', '18181818181', '48988880007', 'felipe@estande.com', 'PROF007'),
('Larissa Mendes', '19191919191', '48988880008', 'larissa@estande.com', 'PROF008'),
('Diego Pereira', '20202020202', '48988880009', 'diego@estande.com', 'PROF009'),
('Paula Santos', '21212121221', '48988880010', 'paula@estande.com', 'PROF010');

-- =========================
-- CATEGORIA_ARMA
-- =========================
INSERT INTO categoria_arma (descricao, calibre)
VALUES
('Pistola Semiautomática', '9mm'),
('Rifle de Assalto', '5.56'),
('Carabina Esportiva', '.22'),
('Revólver', '.38'),
('Espingarda', '12'),
('Sniper', '7.62'),
('Arma de Treinamento', '6mm'),
('Airsoft', '6mm'),
('Uso Recreativo', '0.68'),
('Alta Precisão', '9mm');

-- =========================
-- ARMA
-- =========================
INSERT INTO arma (numero_serie, fabricante, modelo, id_categoria, status, data_aquisicao, valor_hora)
VALUES
('A001', 'Glock', '17', 1, 'Disponível', '2025-01-10', 80.00),
('A002', 'Beretta', 'M9', 1, 'Disponível', '2025-01-11', 75.00),
('A003', 'Colt', 'AR-15', 2, 'Disponível', '2025-01-12', 150.00),
('A004', 'CBC', '7022', 3, 'Disponível', '2025-01-13', 60.00),
('A005', 'Taurus', 'RT85', 4, 'Disponível', '2025-01-14', 70.00),
('A006', 'Remington', '870', 5, 'Disponível', '2025-01-15', 120.00),
('A007', 'Barrett', 'M82', 6, 'Disponível', '2025-01-16', 200.00),
('A008', 'Cybergun', 'M4', 7, 'Disponível', '2025-01-17', 40.00),
('A009', 'Tippmann', '98 Custom', 8, 'Disponível', '2025-01-18', 50.00),
('A010', 'Sig Sauer', 'P320', 1, 'Disponível', '2025-01-19', 85.00);

-- =========================
-- MUNICAO
-- =========================
INSERT INTO municao (tipo, calibre, fabricante, valor_unitario, quantidade_estoque)
VALUES
('FMJ', '9mm', 'CBC', 2.50, 1000),
('Hollow Point', '9mm', 'Federal', 3.00, 800),
('Treino', '.22', 'CBC', 1.20, 1500),
('Alta Pressão', '12', 'Winchester', 4.50, 600),
('Sniper', '7.62', 'Hornady', 5.00, 400),
('Airsoft BB', '6mm', 'Elite Force', 0.10, 5000),
('Paintball', '0.68', 'Tippmann', 0.20, 3000),
('Revolver', '.38', 'Taurus', 2.80, 900),
('Uso Geral', '5.56', 'Remington', 3.20, 700),
('Tática', '9mm', 'Glock', 2.70, 1000);

-- =========================
-- SESSAO_TIRO
-- =========================
INSERT INTO sessao_tiro (id_cliente, id_profissional, data_hora_inicio, data_hora_fim, valor_total)
VALUES
(1,1,'2026-01-10 10:00:00','2026-01-10 11:00:00',120.00),
(2,2,'2026-01-11 10:00:00','2026-01-11 10:30:00',80.00),
(3,3,'2026-01-12 14:00:00','2026-01-12 14:45:00',100.00),
(4,4,'2026-01-13 15:00:00','2026-01-13 16:30:00',180.00),
(5,5,'2026-01-14 09:00:00','2026-01-14 10:00:00',150.00),
(6,6,'2026-01-15 11:00:00','2026-01-15 11:30:00',70.00),
(7,7,'2026-01-16 13:00:00','2026-01-16 15:00:00',250.00),
(8,8,'2026-01-17 16:00:00','2026-01-17 17:00:00',130.00),
(9,9,'2026-01-18 18:00:00','2026-01-18 18:45:00',110.00),
(10,10,'2026-01-19 19:00:00','2026-01-19 19:30:00',90.00);

-- =========================
-- ALUGUEL_ARMA
-- =========================
INSERT INTO aluguel_arma (id_sessao, id_arma, id_municao, tempo_utilizacao, quantidade_municao, valor_aluguel)
VALUES
(1,1,1,60,50,100.00),
(2,2,2,30,30,80.00),
(3,3,3,45,40,120.00),
(4,4,4,90,80,180.00),
(5,5,5,60,60,150.00),
(6,6,6,30,20,70.00),
(7,7,7,120,100,250.00),
(8,8,8,60,50,130.00),
(9,9,9,45,40,110.00),
(10,10,10,30,25,90.00);

-- =========================
-- PAGAMENTO
-- =========================
INSERT INTO pagamento (id_sessao, data_pagamento, valor, forma_pagamento)
VALUES
(1,'2026-01-10',120.00,'Cartão'),
(2,'2026-01-11',80.00,'Pix'),
(3,'2026-01-12',100.00,'Dinheiro'),
(4,'2026-01-13',180.00,'Cartão'),
(5,'2026-01-14',150.00,'Pix'),
(6,'2026-01-15',70.00,'Dinheiro'),
(7,'2026-01-16',250.00,'Cartão'),
(8,'2026-01-17',130.00,'Pix'),
(9,'2026-01-18',110.00,'Cartão'),
(10,'2026-01-19',90.00,'Dinheiro');

-- =========================
-- MANUTENCAO
-- =========================
INSERT INTO manutencao (id_arma, data_entrada, data_saida, descricao, custo)
VALUES
(1,'2026-01-05','2026-01-06','Limpeza geral',50.00),
(2,'2026-01-06','2026-01-07','Revisão mecânica',80.00),
(3,'2026-01-07','2026-01-08','Troca de peças',120.00),
(4,'2026-01-08','2026-01-09','Lubrificação',40.00),
(5,'2026-01-09','2026-01-10','Ajuste técnico',60.00),
(6,'2026-01-10','2026-01-11','Inspeção',70.00),
(7,'2026-01-11','2026-01-12','Calibração',150.00),
(8,'2026-01-12','2026-01-13','Limpeza básica',30.00),
(9,'2026-01-13','2026-01-14','Revisão completa',200.00),
(10,'2026-01-14','2026-01-15','Teste funcional',90.00);
