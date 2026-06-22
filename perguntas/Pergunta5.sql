-- =========================
-- 5. Como garantir o controle automático do estoque de munições e identificar quais tipos possuem maior consumo?
-- =========================

DROP TRIGGER IF EXISTS trg_valida_estoque_municao;

DELIMITER //

CREATE TRIGGER trg_valida_estoque_municao
BEFORE INSERT ON aluguel_arma
FOR EACH ROW
BEGIN
    DECLARE estoque_atual INT;
    SELECT quantidade_estoque
    INTO estoque_atual
    FROM municao
    WHERE id_municao = NEW.id_municao;
    IF estoque_atual < NEW.quantidade_municao THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT =
            'Estoque insuficiente para a munição selecionada';
    END IF;
    UPDATE municao
    SET quantidade_estoque = quantidade_estoque - NEW.quantidade_municao
    WHERE id_municao = NEW.id_municao;
END //

DELIMITER ;

INSERT INTO aluguel_arma (id_sessao, id_arma, id_municao, tempo_utilizacao, quantidade_municao, valor_aluguel)
VALUES (1, 1, 1, 60, 50, 120.00);

SELECT
    m.id_municao,
    m.tipo,
    m.calibre,
    SUM(aa.quantidade_municao) AS total_consumido
FROM municao m
INNER JOIN aluguel_arma aa
    ON m.id_municao = aa.id_municao
GROUP BY
    m.id_municao,
    m.tipo,
    m.calibre
ORDER BY total_consumido DESC;