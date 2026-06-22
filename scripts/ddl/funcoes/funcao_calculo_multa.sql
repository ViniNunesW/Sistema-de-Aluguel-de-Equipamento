DELIMITER //

CREATE FUNCTION fn_CalcularTaxaInstrutor (
    p_id_cliente INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_ativo TINYINT;
    DECLARE v_taxa DECIMAL(10,2) DEFAULT 0.00;

    -- Verifica se o cliente é um membro ativo/filiado do estande
    SELECT ativo INTO v_ativo 
    FROM cliente 
    WHERE id_cliente = p_id_cliente;

    -- Se o cliente não for ativo (visitante sem registro), aplica taxa de instrutor de R$ 100.00
    IF v_ativo = 0 OR v_ativo IS NULL THEN
        SET v_taxa = 100.00;
    END IF;

    RETURN v_taxa;
END //

DELIMITER ;
