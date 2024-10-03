USE bd_Biblioteca;

-- EXERCICIO 3. Inserir ao menos 3 valores em cada tabela

SELECT * FROM tb_autores;

INSERT INTO tb_autores VALUES
('1', 'Clarice Lins', '1975-10-15'),
('2', 'Joao Carlos', '1957-03-28'),
('3', 'Pedro Augusto', '1999-11-03');

INSERT INTO tb_autores VALUES
('4', 'Lorna Santos', '2001-04-15'),
('5', 'Tiquinho Batista', '1990-03-10'),
('6', 'Mel Silva', '1972-11-23');

SELECT * FROM tb_livros;
-- Inserir dados na tb livros

INSERT INTO tb_livros  VALUES
('1', 'Python', '2005','1'),
('2', 'SQL', '2012','2'),
('3', 'Linguagem R', '2023','3');


INSERT INTO tb_livros  VALUES
('5', 'Python Avançado', '2024','4'),
('6', 'Json', '2020','5'),
('7', 'Storytelin', '2023','6');

SELECT * FROM tb_membros;
INSERT INTO tb_membros VALUES
('1', 'Eliane', '2021'),
('2', 'Pedro', '2022'),
('3', 'Wagner', '2024');


INSERT INTO tb_membros VALUES
('4', 'Marisa', '2022-03-10'),
('5', 'Clodo', '2023-06-20'),
('6', 'Roseli', '2024-02-17');
ALTER TABLE tb_membros
DROP COLUMN data_adesao_nova;

SELECT * FROM tb_emprestimos;

INSERT INTO tb_emprestimos VALUES
('1','1','1','2024-08-10','2024-09-20'),
('2','2','2','2024-09-20','2024-10-01'),
('3','3','3','2024-06-21','2024-07-30');