SELECT 
    s.descricao AS servico,
    COUNT(os_s.Servico_idServico) AS total_realizado
FROM 
    Servico s
JOIN 
    Ordem_Servico_has_Servico os_s ON s.idServico = os_s.Servico_idServico
GROUP BY 
    s.idServico, s.descricao
HAVING 
    COUNT(os_s.Servico_idServico) > 1
ORDER BY 
    total_realizado DESC;