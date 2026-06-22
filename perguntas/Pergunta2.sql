-- =========================
-- 2. Qual o faturamento total do estande em um determinado período?
-- =========================

DROP FUNCTION IF EXISTS faturamento_periodo

DELIMITER //

CREATE FUNCTION faturamento_periodo(
    data_inicio DATE,
    data_fim DATE
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT COALESCE(SUM(valor), 0)
    INTO total
    FROM pagamento
    WHERE data_pagamento BETWEEN data_inicio AND data_fim;

    RETURN total;
END //

DELIMITER ;

SELECT faturamento_periodo('2026-01-01', '2026-12-31') AS faturamento_anual;
