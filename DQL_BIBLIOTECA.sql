USE bd_Biblioteca;

-- EXERCICIO 4. Realize as seguintes consultas:
SELECT * FROM tb_livros;
-- a.	O livro com a data de publicação mais antigo 
SELECT titulo FROM tb_livros ORDER BY ano_publicacao ASC;

-- b.	O livro com a data de publicação mais recente
SELECT titulo FROM tb_livros ORDER BY ano_publicacao DESC;


-- c.	A quantidade de livros cadastrados no banco de dados
SELECT COUNT(*) AS quantidade_livros FROM tb_livros;

-- d.	Consulte apenas os livros que possuam a data de devolução em 18-07-2024
SELECT tb_livros.titulo
FROM tb_livros
JOIN tb_emprestimos ON tb_livros.id_livro = tb_emprestimos.id_livro
WHERE tb_emprestimos.data_devolucao = '2024-07-18';

-- e.	Ordene o nome dos autores em ordem crescente  
SELECT nome FROM tb_autores ORDER BY nome ASC;

-- f.	Ordene o nome dos livros em ordem decrescente 
SELECT titulo FROM tb_livros ORDER BY titulo DESC;