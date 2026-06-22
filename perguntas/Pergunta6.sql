-- =========================
-- 6. Quais armas apresentam o maior custo operacional de manutenção e qual o impacto desse custo em relação à sua utilização?
-- =========================

DROP PROCEDURE IF EXISTS custo_operacional_armas;

DELIMITER //

CREATE PROCEDURE custo_operacional_armas()
BEGIN
    SELECT
        a.id_arma,
        a.fabricante,
        a.modelo,
        COUNT(DISTINCT m.id_manutencao) AS total_manutencoes,
        ROUND(
            COALESCE(SUM(m.custo), 0),
            2
        ) AS custo_total_manutencao,
        COUNT(DISTINCT aa.id_aluguel) AS total_utilizacoes,
        ROUND(
            COALESCE(SUM(m.custo), 0) /
            NULLIF(COUNT(DISTINCT aa.id_aluguel), 0),
            2
        ) AS custo_por_utilizacao,
        CASE
            WHEN COALESCE(SUM(m.custo), 0) >= 500
                THEN 'ALTO CUSTO'
            WHEN COALESCE(SUM(m.custo), 0) >= 200
                THEN 'CUSTO MODERADO'
            ELSE 'BAIXO CUSTO'
        END AS classificacao
    FROM arma a
    LEFT JOIN manutencao m
        ON a.id_arma = m.id_arma
    LEFT JOIN aluguel_arma aa
        ON a.id_arma = aa.id_arma
    GROUP BY
        a.id_arma,
        a.fabricante,
        a.modelo
    ORDER BY
        custo_total_manutencao DESC;
END //

DELIMITER ;

CALL custo_operacional_armas