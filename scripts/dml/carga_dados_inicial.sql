-- 1. POPULANDO CLIENTES
INSERT INTO cliente (id_cliente, nome, cpf, data_nascimento, telefone, email, data_cadastro, sexo, estado_civil, ativo, endereco) VALUES
(1, 'Alice Silva', '11111111111', '1990-05-12', '119711100', 'alice@email.com', '2026-01-10', 'Feminino', 'Solteiro', 1, 'Rua A'),
(2, 'Bob Santos', '22222222222', '1985-08-20', '119722200', 'bob@email.com', '2026-01-15', 'Masculino', 'Casado', 0, 'Rua B'),
(3, 'Candice Lima', '33333333333', '1993-11-02', '119733300', 'candice@email.com', '2026-02-01', 'Feminino', 'Solteiro', 1, 'Rua C'),
(4, 'David Rocha', '44444444444', '1978-01-15', '119744400', 'david@email.com', '2026-02-10', 'Masculino', 'Divorciado', 0, 'Rua D'),
(5, 'Eduardo Costa', '55555555555', '1982-03-30', '119755500', 'edu@email.com', '2026-03-01', 'Masculino', 'Casado', 1, 'Rua E'),
(6, 'Fabiana Dias', '66666666666', '1995-07-18', '119766600', 'fabi@email.com', '2026-03-12', 'Feminino', 'Solteiro', 0, 'Rua F'),
(7, 'Gabriel Melo', '77777777777', '1988-09-22', '119777700', 'gabi@email.com', '2026-04-05', 'Masculino', 'Solteiro', 1, 'Rua G'),
(8, 'Helena Gomes', '88888888888', '1991-04-05', '119788800', 'helena@email.com', '2026-04-20', 'Feminino', 'Casado', 0, 'Rua H'),
(9, 'Igor Antunes', '99999999999', '1975-12-25', '119799900', 'igor@email.com', '2026-05-02', 'Masculino', 'Viúvo', 1, 'Rua I'),
(10, 'Julia Ribeiro', '00000000000', '1997-02-10', '119700000', 'julia@email.com', '2026-05-18', 'Feminino', 'Solteiro', 1, 'Rua J');

-- 2. POPULANDO PROFISSIONAIS
INSERT INTO profissional (id_profissional, nome, cpf, telefone, email, credencial) VALUES
(1, 'Lucas Instrutor', '12312312311', '11922222222', 'lucas@estande.com', 'INSTRUTOR-01'),
(2, 'Bruno Instrutor', '12312312322', '11977777777', 'bruno@estande.com', 'INSTRUTOR-02'),
(3, 'Ricardo Armeiro', '12312312333', '11999999999', 'ricardo@estande.com', 'ARMEIRO-01'),
(4, 'Marcos Atendente', '12312312344', '11911111111', 'marcos@estande.com', 'ATENDENTE-01'),
(5, 'Ana Gerente', '12312312355', '11944444444', 'ana@estande.com', 'GERENTE-01'),
(6, 'Carlos Seguranca', '12312312366', '11955555555', 'carlos@estande.com', 'SEG-01'),
(7, 'Juliana Caixa', '12312312377', '11966666666', 'juliana@estande.com', 'CAIXA-01'),
(8, 'Fernanda Recepcao', '12312312388', '11988888888', 'fernanda@estande.com', 'REC-01'),
(9, 'Sofia Fiscal', '12312312399', '11900000000', 'sofia@estande.com', 'FISCAL-01'),
(10, 'Roberto Supervisor', '12312312300', '11912345678', 'roberto@estande.com', 'SUPER-01');

-- 3. POPULANDO CATEGORIAS DE ARMA
INSERT INTO categoria_arma (id_categoria, descricao, calibre) VALUES
(1, 'Pistola Semi-Automática', '9mm Luger'),
(2, 'Revólver Tradicional', '.38 SPL'),
(3, 'Pistola de Alta Performance', '.40 S&W'),
(4, 'Pistola Histórica', '.45 ACP'),
(5, 'Espingarda de Defesa', '12GA'),
(6, 'Rife de Precisão', '.22 LR'),
(7, 'Revólver Magnum', '.357 Magnum'),
(8, 'Carabina de Ação por Alavanca', '.38 SPL'),
(9, 'Submetralhadora / CTT', '.40 S&W'),
(10, 'Fuzil de Plataforma', '5.56mm');

-- 4. POPULANDO ARMAS
INSERT INTO arma (id_arma, numero_serie, fabricante, modelo, id_categoria, status, data_aquisicao, valor_hora) VALUES
(1, 'G17LV990', 'Glock', 'G17 Gen5', 1, 'Disponível', '2025-01-10', 80.00),
(2, 'TS9BR122', 'Taurus', 'TS9', 1, 'Disponível', '2025-02-15', 70.00),
(3, 'RT82M443', 'Taurus', 'RT82', 2, 'Disponível', '2024-11-20', 60.00),
(4, 'MD2IM321', 'Imbel', 'GC MD2', 3, 'Disponível', '2025-03-05', 90.00),
(5, 'C1911US1', 'Colt', '1911 Classic', 4, 'Disponível', '2023-08-12', 120.00),
(6, 'MIL12GA8', 'CBC', 'Military 3.0', 5, 'Disponível', '2025-05-18', 100.00),
(7, 'SW22LR09', 'Smith & Wesson', 'M&P15-22', 6, 'Disponível', '2025-04-22', 85.00),
(8, 'TR357SW7', 'Taurus', 'Tracker 627', 7, 'Em Manutenção', '2024-06-30', 95.00),
(9, 'PUMA38R2', 'Rossi', 'Puma Classic', 8, 'Disponível', '2024-01-15', 75.00),
(10, 'CTT40BR5', 'Taurus', 'CTT40', 9, 'Disponível', '2025-02-28', 110.00);

-- 5. POPULANDO MUNICOES
INSERT INTO municao (id_municao, tipo, calibre, fabricante, valor_unitario, quantidade_estoque) VALUES
(1, 'Treino ETOG', '9mm Luger', 'CBC', 4.50, 5000),
(2, 'Chumbo Ogival', '.38 SPL', 'CBC', 5.00, 3000),
(3, 'Treino ETOG', '.40 S&W', 'CBC', 5.50, 2500),
(4, 'Operacional', '.45 ACP', 'Magtech', 7.00, 1500),
(5, 'Chumbo 7½', '12GA', 'CBC', 8.00, 1000),
(6, 'Target Alvo', '.22 LR', 'CBC', 1.20, 10000),
(7, 'Semi-Jaquetada', '.357 Magnum', 'CBC', 7.50, 1200),
(8, 'Subsônica', '9mm Luger', 'CBC', 6.00, 2000),
(9, 'Treino Auto', '.380 ACP', 'CBC', 4.00, 4000),
(10, 'Comum Comum', '5.56mm', 'CBC', 9.50, 1500);

-- 6. POPULANDO SESSÕES DE TIRO
INSERT INTO sessao_tiro (id_sessao, id_cliente, id_profissional, data_hora_inicio, data_hora_fim, valor_total) VALUES
(1, 1, 1, '2026-06-22 14:00:00', '2026-06-22 15:00:00', 305.00),
(2, 2, 1, '2026-06-22 14:30:00', '2026-06-22 15:30:00', 320.00),
(3, 3, 2, '2026-06-22 15:00:00', '2026-06-22 16:00:00', 160.00),
(4, 4, 2, '2026-06-22 15:30:00', '2026-06-22 16:30:00', 465.00),
(5, 5, 1, '2026-06-22 16:00:00', '2026-06-22 17:00:00', 670.00),
(6, 6, 2, '2026-06-22 16:30:00', '2026-06-22 17:30:00', 280.00),
(7, 7, 1, '2026-06-22 17:00:00', '2026-06-22 18:00:00', 265.00),
(8, 8, 2, '2026-06-22 17:30:00', '2026-06-22 18:30:00', 405.00),
(9, 9, 1, '2026-06-22 18:00:00', '2026-06-22 19:00:00', 282.50),
(10, 10, 2, '2026-06-22 18:30:00', '2026-06-22 19:30:00', 445.00);

-- 7. POPULANDO ALUGUEL ARMA
INSERT INTO aluguel_arma (id_aluguel, id_sessao, id_arma, id_municao, tempo_utilizacao, quantidade_municao, valor_aluguel) VALUES
(1, 1, 1, 1, 60, 50, 305.00),
(2, 2, 2, 1, 60, 50, 220.00),
(3, 3, 3, 2, 60, 20, 160.00),
(4, 4, 4, 3, 60, 50, 365.00),
(5, 5, 10, 3, 60, 100, 670.00),
(6, 6, 6, 5, 60, 10, 180.00),
(7, 7, 7, 6, 60, 150, 265.00),
(8, 8, 1, 1, 60, 50, 225.00),
(9, 9, 8, 7, 60, 25, 282.50),
(10, 10, 5, 4, 60, 30, 330.00);
