USE bd_Biblioteca;

-- 1. INNER JOIN

-- Exercício 1: Liste os nomes dos membros que pegaram livros emprestados e o título dos livros que eles emprestaram.
SELECT * FROM tb_membros

SELECT tb_membros.nome, tb_livros.titulo FROM tb_Emprestimos
JOIN tb_membros ON tb_Emprestimos.id_membro = tb_membros.id_membro
JOIN tb_livros ON tb_Emprestimos.id_livro = tb_livros.id_livro;

-- Exercício 2: Liste os autores e os livros que foram emprestados.
SELECT tb_autores.nome, tb_livros.titulo FROM tb_Emprestimos
JOIN tb_livros ON tb_Emprestimos.id_livro = tb_livros.id_livro
JOIN tb_autores ON tb_livros.id_autor = tb_autores.id_autor;

SELECT * FROM tb_autores;
---2. RIGHT JOIN/ LEFT JOIN
-- Exercício 1: Liste todos os membros que não realizaram nenhum empréstimo.
SELECT tb_membros.nome FROM tb_membros
LEFT JOIN tb_Emprestimos ON tb_membros.id_membro = tb_Emprestimos.id_membro
WHERE tb_Emprestimos.id_membro IS NULL;

--Exercício 2: Liste todos os autores e seus livros que não foram emprestados.
-- 3. UNION
SELECT tb_autores.nome, tb_livros.titulo FROM tb_autores
LEFT JOIN tb_livros ON tb_autores.id_autor = tb_autores.id_autor
LEFT JOIN tb_Emprestimos ON tb_livros.id_livro = tb_Emprestimos.id_livro
WHERE tb_Emprestimos.id_livro IS NULL

SELECT * FROM tb_livros;

-- Exercício 1: Liste todos os livros e seus autores, incluindo livros que não têm autores associados e autores que não têm livros cadastrados.
SELECT tb_livros.titulo, tb_autores.nome FROM tb_livros
LEFT JOIN tb_autores ON tb_livros.id_autor = tb_autores.id_autor
UNION
SELECT NULL, tb_autores.nome FROM tb_autores
LEFT JOIN tb_livros ON tb_autores.id_autor = tb_livros.id_autor
WHERE tb_livros.id_autor IS NULL;


--Exercício 2: Liste todos os membros e livros emprestados, incluindo membros que não pegaram livros e livros que não foram emprestados.
SELECT tb_membros.nome, tb_livros.titulo FROM tb_membros
LEFT JOIN tb_Emprestimos ON tb_membros.id_membro = tb_Emprestimos.id_membro
LEFT JOIN tb_livros ON tb_Emprestimos.id_livro = tb_livros.id_livro
UNION
SELECT tb_membros.nome, NULL FROM tb_membros
LEFT JOIN tb_Emprestimos ON tb_membros.id_membro = tb_Emprestimos.id_membro
WHERE tb_Emprestimos.id_membro IS NULL
UNION
SELECT NULL, tb_livros.titulo FROM tb_livros
