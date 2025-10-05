SELECT 
    os.idOrdem_Servico,
    (IFNULL(SUM(os_s.valor_total),0) + IFNULL(SUM(os_p.valor_total),0)) AS valor_calculado
FROM 
    Ordem_Servico os
LEFT JOIN 
    Ordem_Servico_has_Servico os_s ON os.idOrdem_Servico = os_s.Ordem_Servico_idOrdem_Servico
LEFT JOIN 
    Ordem_Servico_has_Peça os_p ON os.idOrdem_Servico = os_p.Ordem_Servico_idOrdem_Servico
GROUP BY 
    os.idOrdem_Servico;