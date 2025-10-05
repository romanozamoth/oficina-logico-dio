SELECT 
    e.nome_equipe,
    m.nome AS mecanico,
    os.idOrdem_Servico
FROM 
    Equipe e
JOIN 
    Equipe_has_Mecanico em ON e.idEquipe = em.Equipe_idEquipe
JOIN 
    Mecanico m ON em.Mecanico_idMecanico = m.idMecanico
LEFT JOIN 
    Equipe_has_Ordem_Servico eos ON e.idEquipe = eos.Equipe_idEquipe
LEFT JOIN 
    Ordem_Servico os ON eos.Ordem_Servico_idOrdem_Servico = os.idOrdem_Servico
ORDER BY 
    e.nome_equipe, m.nome;