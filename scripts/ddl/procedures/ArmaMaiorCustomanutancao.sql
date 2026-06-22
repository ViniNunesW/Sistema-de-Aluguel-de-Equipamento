-- =========================
-- 6. Qual arma gerou o maior custo de manutenção?
-- Objetivo: Identificar as armas que apresentam maiores gastos com manutenção, 
-- auxiliando na avaliação da vida útil dos equipamentos e na decisão de substituição ou reparo.
-- =========================

DELIMITER //

CREATE PROCEDURE arma_maior_custo_manutencao()
BEGIN
    SELECT
        a.id_arma,
        a.modelo,
        a.fabricante,
        SUM(m.custo) AS custo_total
    FROM arma a
    JOIN manutencao m
        ON a.id_arma = m.id_arma
    GROUP BY a.id_arma, a.modelo, a.fabricante
    ORDER BY custo_total DESC
    LIMIT 1;
END;

DELIMITER;