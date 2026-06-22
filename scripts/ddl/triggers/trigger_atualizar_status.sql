DELIMITER //

CREATE TRIGGER trg_AtualizarEstoqueMunicaoAluguel
AFTER INSERT ON aluguel
FOR EACH ROW
BEGIN
    -- Se o aluguel tiver uma munição associada, diminui a quantidade do estoque dela
    IF NEW.id_municao IS NOT NULL AND NEW.quantidade_municao > 0 THEN
        UPDATE municao
        SET quantidade = quantidade - NEW.quantidade_municao
        WHERE id = NEW.id_municao;
    END IF;
END //

DELIMITER ;
