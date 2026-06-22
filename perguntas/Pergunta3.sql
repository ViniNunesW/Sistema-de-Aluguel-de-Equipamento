-- =========================
-- 3. Quais armas são mais utilizadas nas sessões de tiro?
-- =========================

DROP PROCEDURE IF EXISTS armas_mais_utilizadas_tempo;

DELIMITER //

CREATE PROCEDURE armas_mais_utilizadas_tempo()
BEGIN
    SELECT
        a.id_arma,
        a.fabricante,
        a.modelo,
        SUM(aa.tempo_utilizacao) AS minutos_utilizados
    FROM arma a
    INNER JOIN aluguel_arma aa
        ON a.id_arma = aa.id_arma
    GROUP BY
        a.id_arma,
        a.fabricante,
        a.modelo
    ORDER BY minutos_utilizados DESC;
END //

DELIMITER ;

CALL armas_mais_utilizadas_tempo