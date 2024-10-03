USE bd_Biblioteca;

-- 6. Controle transa��es usando as instru��es TCL:

-- a. Comece uma transa��o para inserir um novo membro e realizar um empr�stimo. Caso ocorra algum erro, a transa��o deve ser revertida.
SELECT * FROM tb_emprestimos;

START TRANSACTION;
INSERT INTO tb_emprestimos VALUES (
'4',
'1',
'3',
'2024-09-22',
'2024-09-26'
);
COMMIT; 

SELECT * FROM tb_livros;

START TRANSACTION;
INSERT INTO tb_livros VALUES (
'4',
'HTML',
'2024',
'1'
);
COMMIT; 

-- b. Realize uma transa��o para remover um livro e os respectivos empr�stimos associados. Caso algum erro ocorra, a transa��o deve ser desfeita.
-- DELETE

DELETE FROM tb_livros
WHERE id = 4;
ROLLBACK;