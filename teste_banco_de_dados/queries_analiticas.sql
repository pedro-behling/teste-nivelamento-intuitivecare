USE demonstracoes_contabeis;
SELECT dados_contabeis.reg_ans, dados_contabeis.data, relatorio_cadop.razao_social, dados_contabeis.descricao, (SUM(vl_saldo_final)-SUM(vl_saldo_inicial)) AS despesas_ultimo_tri FROM dados_contabeis
INNER JOIN relatorio_cadop ON dados_contabeis.reg_ans = relatorio_cadop.reg_ans
WHERE descricao LIKE '%EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR %'
AND QUARTER(data) = 4 AND YEAR(data) = 2024
GROUP BY reg_ans, data, razao_social, descricao
ORDER BY despesas_ultimo_tri DESC
LIMIT 10;

USE demonstracoes_contabeis;
SELECT dados_contabeis.reg_ans, relatorio_cadop.razao_social, dados_contabeis.descricao, (SUM(vl_saldo_final)-SUM(vl_saldo_inicial)) AS despesas_ultimo_ano FROM dados_contabeis
INNER JOIN relatorio_cadop ON dados_contabeis.reg_ans = relatorio_cadop.reg_ans
WHERE descricao LIKE '%EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR %'
AND YEAR(data) = 2024
GROUP BY reg_ans, razao_social, descricao
ORDER BY despesas_ultimo_ano DESC
LIMIT 10;