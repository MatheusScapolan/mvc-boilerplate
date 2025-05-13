-- Removendo as tabelas se existirem
DROP TABLE IF EXISTS matriculas;
DROP TABLE IF EXISTS alunos;
DROP TABLE IF EXISTS cursos;

-- Criando as tabelas principais
CREATE TABLE alunos (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL
);

CREATE TABLE cursos (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL,
  duracao_anos INT NOT NULL
);

CREATE TABLE matriculas (
  id SERIAL PRIMARY KEY,
  aluno_id INT REFERENCES alunos(id) ON DELETE CASCADE,
  curso_id INT REFERENCES cursos(id) ON DELETE CASCADE,
  data_matricula DATE DEFAULT CURRENT_DATE
);

-- Inserindo dados nas tabelas
INSERT INTO alunos (nome) VALUES
  ('Livia'),
  ('Vinicius'),
  ('Matheus Scapolan'),
  ('Arthur'),
  ('Maria Vitoria'),
  ('Christian'),
  ('Gabriel Leon'),
  ('Rodrigo'),
  ('Bruno Souza'),
  ('Fernanda Lima');

INSERT INTO cursos (nome, duracao_anos) VALUES
  ('Administração Tech', 4),
  ('Engenharia de Software', 4),
  ('Engenharia da Computação', 4),
  ('Ciência da Computação', 4);

INSERT INTO matriculas (aluno_id, curso_id) VALUES
  (1, 4),  
  (2, 2),  
  (3, 3),  
  (4, 1),  
  (5, 3),  
  (6, 3),  
  (7, 1), 
  (8, 1), 
  (9, 2),  
  (10, 4); 

-- Selecionando os dados organizados
SELECT 
  a.nome AS aluno, 
  c.nome AS curso, 
  c.duracao_anos AS duracao, 
  m.data_matricula
FROM matriculas m
JOIN alunos a ON m.aluno_id = a.id
JOIN cursos c ON m.curso_id = c.id
ORDER BY a.nome;

