SELECT 
    os.idOrdem_Servico,
    p.nome AS peca,
    os_p.quantidade,
    os_p.valor_total
FROM 
    Ordem_Servico os
JOIN 
    Ordem_Servico_has_Peça os_p 
    ON os.idOrdem_Servico = os_p.Ordem_Servico_idOrdem_Servico
JOIN 
    Peça p ON os_p.Peça_idPeça = p.idPeça
ORDER BY 
    os.idOrdem_Servico, p.nome;