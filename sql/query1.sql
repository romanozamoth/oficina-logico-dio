SELECT 
    c.nome AS cliente,
    COUNT(os.idOrdem_Servico) AS total_ordens
FROM 
    Cliente c
JOIN 
    Veiculo v ON c.idCliente = v.Cliente_idCliente
JOIN 
    Ordem_Servico os ON v.idVeiculo = os.Veiculo_idVeiculo
GROUP BY 
    c.idCliente, c.nome
ORDER BY 
    total_ordens DESC;