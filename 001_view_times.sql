SELECT 
    t.id AS id_time,
    t.time,
    t.pais,
    j.nome AS jogador,
    j.posicao,
    tp.descricao AS tipo,
    e.descricao AS etapa
FROM tbl_times t
JOIN tbl_tipos tp 
    ON t.id_tipo = tp.id
JOIN tbl_etapas e 
    ON t.id_etapa = e.id
JOIN tbl_jogadores j 
    ON j.id_time = t.id;