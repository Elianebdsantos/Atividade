USE bd_Biblioteca;

-- 6. Controle transações usando as instruções TCL:

-- a. Comece uma transação para inserir um novo membro e realizar um empréstimo. Caso ocorra algum erro, a transação deve ser revertida.
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

-- b. Realize uma transação para remover um livro e os respectivos empréstimos associados. Caso algum erro ocorra, a transação deve ser desfeita.
-- DELETE

DELETE FROM tb_livros
WHERE id = 4;
ROLLBACK;