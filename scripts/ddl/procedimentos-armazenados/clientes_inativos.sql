DROP PROCEDURE IF EXISTS clientes_inativos;

DELIMITER //

CREATE PROCEDURE clientes_inativos()
BEGIN

    SELECT
        c.id_cliente,
        c.nome,
        c.telefone,
        c.email,
        c.data_cadastro,
        MAX(st.data_hora_inicio) AS ultima_sessao,
        CASE
            WHEN MAX(st.data_hora_inicio) IS NULL
                THEN 'NUNCA PARTICIPOU'
            WHEN MAX(st.data_hora_inicio) < DATE_SUB(NOW(), INTERVAL 3 MONTH)
                THEN 'INATIVO'
            ELSE 'ATIVO RECENTEMENTE'
        END AS status_cliente
    FROM cliente c
    LEFT JOIN sessao_tiro st
        ON c.id_cliente = st.id_cliente
    GROUP BY
        c.id_cliente,
        c.nome,
        c.telefone,
        c.email,
        c.data_cadastro
    ORDER BY
        ultima_sessao ASC;
END //

DELIMITER ;

CALL clientes_inativos();