-- =========================
-- 4. Quais profissionais geraram maior receita operacional para o estande?
-- =========================

DROP PROCEDURE IF EXISTS desempenho_profissionais;

DELIMITER //

CREATE PROCEDURE desempenho_profissionais()
BEGIN
    SELECT
        p.id_profissional,
        p.nome,
        p.credencial,
        COUNT(DISTINCT st.id_sessao) AS total_atendimentos,
        ROUND(
            SUM(
                TIMESTAMPDIFF(
                    MINUTE,
                    st.data_hora_inicio,
                    st.data_hora_fim
                )
            ),
            0
        ) AS minutos_trabalhados,
        ROUND(
            SUM(
                (a.valor_hora * (aa.tempo_utilizacao / 60))
                +
                (m.valor_unitario * aa.quantidade_municao)
            ),
            2
        ) AS receita_operacional,
        ROUND(
            AVG(
                (a.valor_hora * (aa.tempo_utilizacao / 60))
                +
                (m.valor_unitario * aa.quantidade_municao)
            ),
            2
        ) AS receita_media,
        CASE
            WHEN SUM(
                (a.valor_hora * (aa.tempo_utilizacao / 60))
                +
                (m.valor_unitario * aa.quantidade_municao)
            ) >= 1000 THEN 'EXCELENTE'
            WHEN SUM(
                (a.valor_hora * (aa.tempo_utilizacao / 60))
                +
                (m.valor_unitario * aa.quantidade_municao)
            ) >= 400 THEN 'BOM'
            ELSE 'REGULAR'
        END AS classificacao
    FROM profissional p
    INNER JOIN sessao_tiro st
        ON p.id_profissional = st.id_profissional
    INNER JOIN aluguel_arma aa
        ON st.id_sessao = aa.id_sessao
    INNER JOIN arma a
        ON aa.id_arma = a.id_arma
    INNER JOIN municao m
        ON aa.id_municao = m.id_municao
    GROUP BY
        p.id_profissional,
        p.nome,
        p.credencial
    ORDER BY receita_operacional DESC;
END //

DELIMITER ;

CALL desempenho_profissionais()