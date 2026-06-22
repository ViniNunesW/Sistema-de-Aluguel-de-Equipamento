DELIMITER //

CREATE TRIGGER trg_AtualizarEstoqueMunicaoAluguel
AFTER INSERT ON aluguel_arma
FOR EACH ROW
BEGIN
    -- Se o aluguel incluir munições, atualiza o campo correto de estoque
    IF NEW.id_municao IS NOT NULL AND NEW.quantidade_municao > 0 THEN
        UPDATE municao
        SET quantidade_estoque = quantidade_estoque - NEW.quantidade_municao
        WHERE id_municao = NEW.id_municao;
    END IF;
END //

DELIMITER ;
