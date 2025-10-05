SELECT 
    c.nome AS cliente,
    SUM(os.valor_total) AS total_gasto
FROM 
    Cliente c
JOIN 
    Veiculo v ON c.idCliente = v.Cliente_idCliente
JOIN 
    Ordem_Servico os ON v.idVeiculo = os.Veiculo_idVeiculo
GROUP BY 
    c.idCliente, c.nome
ORDER BY 
    total_gasto DESC;