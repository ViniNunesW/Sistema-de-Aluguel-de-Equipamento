-- =========================
-- 1. Quais são os 10 clientes que mais frequentam o estande de tiro?
-- =========================

DROP PROCEDURE IF EXISTS top_10_clientes_frequentes

DELIMITER //

CREATE PROCEDURE top_10_clientes_frequentes()
BEGIN
    SELECT
        c.id_cliente,
        c.nome,
        COUNT(st.id_sessao) AS total_sessoes
    FROM cliente c
    INNER JOIN sessao_tiro st
        ON c.id_cliente = st.id_cliente
    GROUP BY c.id_cliente, c.nome
    ORDER BY total_sessoes DESC
    LIMIT 10;
END //

DELIMITER ;

CALL top_10_clientes_frequentes