-- Criar tabela de Alunos
CREATE TABLE alunos (
    aluno_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento DATE,
    sexo TEXT CHECK(sexo IN ('M', 'F')) NOT NULL,
    endereco TEXT,
    telefone TEXT
);

-- Criar tabela de Professores
CREATE TABLE professores (
    professor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento DATE,
    sexo TEXT CHECK(sexo IN ('M', 'F')) NOT NULL,
    especialidade TEXT
);

-- Criar tabela de Cursos
CREATE TABLE cursos (
    curso_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_curso TEXT NOT NULL,
    descricao TEXT,
    duracao INTEGER -- duração em meses
);

-- Criar tabela de Matrículas
CREATE TABLE matriculas (
    matricula_id INTEGER PRIMARY KEY AUTOINCREMENT,
    aluno_id INTEGER,
    curso_id INTEGER,
    data_matricula DATE,
    FOREIGN KEY (aluno_id) REFERENCES alunos(aluno_id),
    FOREIGN KEY (curso_id) REFERENCES cursos(curso_id)
);

-- Criar tabela de Notas
CREATE TABLE notas (
    nota_id INTEGER PRIMARY KEY AUTOINCREMENT,
    matricula_id INTEGER,
    nota REAL,
    data_avaliacao DATE,
    FOREIGN KEY (matricula_id) REFERENCES matriculas(matricula_id)
);
