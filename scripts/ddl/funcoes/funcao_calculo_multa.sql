DELIMITER //

CREATE FUNCTION fn_CalcularTaxaInstrutor (
    p_id_cliente INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_posse BOOLEAN;
    DECLARE v_taxa DECIMAL(10,2) DEFAULT 0.00;

    -- Busca se o cliente tem posse de arma (true/1 ou false/0)
    SELECT posse_de_arma INTO v_posse 
    FROM cliente 
    WHERE id = p_id_cliente;

    -- Se não tiver a posse, cobra uma taxa de instrutor de R$ 100,00
    IF v_posse = FALSE THEN
        SET v_taxa = 100.00;
    END IF;

    RETURN v_taxa;
END //

DELIMITER ;
