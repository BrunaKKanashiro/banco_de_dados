CREATE DATABASE sprint1;
USE sprint1; 

-- Criar a tabela chamada Atleta
CREATE TABLE  Atleta (
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int 
);

-- Inserir dados na tabela
INSERT INTO Atleta (idAtleta, nome, modalidade,qtdMedalha)
VALUES (null,'Alanzoka', 'atletismo',6),
		(null,'Bueirinho', 'atletismo',18),
        (null,'Calango', 'natação', 4),
        (null,'Smurfdomuca', 'natação',18),
        (null,'Keiozin','natação',2),
        (null,'SofiaEspanha','basquete',17),
         (null,'Daenerys' , 'basquete',7),
         (null,'Casimito', 'pingpong', 4);

-- Exibir todos os dados da tabela
SELECT * FROM Atleta;

DROP DATABASE sprint1;

-- Atualizar a quantidade de medalhas do atleta com id=1;
UPDATE atleta SET qtdMedalha = 7
 WHERE idAtleta = 1;
 
 -- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
 UPDATE atleta SET qtdMedalha = 9
 WHERE idAtleta = 2;
 
 UPDATE atleta SET qtdMedalha = 18
 WHERE idAtleta = 3;
 
 -- Atualizar o nome do atleta com o id=4
 UPDATE atleta SET nome = 'Kiyumexz'
 WHERE idAtleta = 3;
 
 -- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date
 ALTER TABLE atleta ADD COLUMN dtNasc DATE;
 
 -- Atualizar a data de nascimento de todos os atletas
 UPDATE atleta SET dtNasc = 2002-08-08 WHERE idAtleta = 1;
 UPDATE atleta SET dtNasc = 1997-10-01 WHERE idAtleta = 2;
 UPDATE atleta SET dtNasc = 1987-11-26 WHERE idAtleta = 3;
 UPDATE atleta SET dtNasc = 2001-12-30 WHERE idAtleta = 4;
 UPDATE atleta SET dtNasc = 1997-11-11 WHERE idAtleta = 5;
 UPDATE atleta SET dtNasc = 1900-01-15 WHERE idAtleta = 6;
 UPDATE atleta SET dtNasc = 1890-05-11 WHERE idAtleta = 7;
  UPDATE atleta SET dtNasc = 1999-01-27 WHERE idAtleta = 8;

 
 -- Excluir o atleta com o id=5
 DELETE FROM atleta WHERE idAtleta = 5;
 
 --  Exibir os atletas onde a modalidade é diferente de natação
 SELECT * FROM atleta WHERE modalidade != 'natação';
 
 -- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3
 SELECT * FROM atleta WHERE qtdMedalha >= 3;
 
 -- Modificar o campo modalidade do tamanho 40 para o tamanho 60
  ALTER TABLE atleta MODIFY COLUMN modalidade varchar(60);
  
  --  Descrever os campos da tabela mostrando a atualização do campo modalidade
  DESC atleta;
  
  -- Limpar os dados da tabela
  TRUNCATE TABLE atleta;
  
  -- nova tabela
  
  USE sprint1;
  
  -- Criar a tabela chamada Musica
  
  CREATE TABLE musica (
  idMusica int primary key auto_increment,
  titulo varchar(40),
  artista varchar (40),
  genero varchar (40)
  );
  
  INSERT INTO musica ( titulo, artista , genero)
  VALUES ('pop','nayeon','kpop'),
		('twice','nayeon','funk'),
        ('forever21','twice','rock'),
        ('guns','blackpink','rock'),
        ('meninalinda','sidoka','trap'),
        ('mabare','sidoka','trap'),
        ('infiel','marilia','sertanejo'),
        ('lombrado','matue','sla');
        
        
        -- Exibir todos os dados da tabela.
        SELECT * FROM musica;
        
        -- Adicionar o campo curtidas do tipo int na tabela;
        ALTER TABLE musica ADD COLUMN curtidas INT;
        
        -- Atualizar o campo curtidas de todas as músicas inseridas
        UPDATE atleta SET dtNasc = 9999 WHERE idmusica = 1;
 UPDATE musica SET curtidas = 100 WHERE idmusica = 2;
 UPDATE musica SET curtidas = 64748 WHERE idmusica = 3;
 UPDATE musica SET curtidas = 30000 WHERE idmusica = 4;
 UPDATE musica SET curtidas = 67 WHERE idmusica = 5;
 UPDATE musica SET curtidas = 790 WHERE idmusica = 7;
 UPDATE musica SET curtidas = 20000 WHERE idmusica = 8;
 
 -- Modificar o campo artista do tamanho 40 para o tamanho 80
 ALTER TABLE musica MODIFY artista varchar (80);
 
 -- Atualizar a quantidade de curtidas da música com id=1
UPDATE musica SET curtidas = 100
  WHERE idMusica = 1;
  
  -- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3
  UPDATE musica SET curtidas = 49509
  WHERE idMusica = 2;
  
  UPDATE musica SET curtidas = 3839490
  WHERE idMusica =3;
  
  -- Atualizar o nome da música com o id=5
  UPDATE musica SET artista = 'something '
  WHERE idMusica =5;
  
  -- Excluir a música com o id=4
  DELETE FROM musica WHERE idMusicA =4;
  
  -- Exibir as músicas onde o gênero é diferente de funk
  SELECT * FROM musica WHERE genero != 'funk';
  
  -- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
  SELECT * FROM musica WHERE curtidas >= 20;
  
  -- Descrever os campos da tabela mostrando a atualização do campo artista;
  DESC musica;
  
  -- Limpar os dados da tabela; 
  TRUNCATE TABLE musica;
  
  -- nova tabela
  USE sprint1;
  
   CREATE TABLE filme (
   idFilme int primary key auto_increment,
   titulo varchar(50),
   genero varchar(40),
   diretor varchar (40)
   );
   
   -- inserir dados
   INSERT INTO filme (idFilme, titulo, genero, diretor) 
   VALUES (null,'branca de neve','infantil','disney'),
		(null,'nihil','terror','ghostemane'),
        (null,'asap','kpop','stayc'),
        (null,'noway','terror','ladygaga'),
        (null,'o grito','terror','disney'),
        (null,'one of us','infantil','cartoon'),
        (null,'ouou','comedia','cartoon'),
        (null,'forever21','romance','asaaap');
        
        -- Exibir todos os dados da tabela.
SELECT * FROM filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
ALTER TABLE filme ADD COLUMN protagonista varchar(50);

-- Atualizar o campo protagonista de todas os filmes inseridos
UPDATE filme SET protagonista = 'miley'  WHERE idFilme =1;
UPDATE filme SET protagonista = 'kitty'  WHERE idFilme =2;
UPDATE filme SET protagonista = 'anderson'  WHERE idFilme =3;
UPDATE filme SET protagonista = 'sweetie'  WHERE idFilme =4;
UPDATE filme SET protagonista = 'lenny'  WHERE idFilme=5;
UPDATE filme SET protagonista = 'kiyumexz'  WHERE idFilme =6;
UPDATE filme SET protagonista = 'astaroth'  WHERE idFilme =7;
UPDATE filme SET protagonista = 'linda'  WHERE idFilme =8;   


-- Modificar o campo diretor do tamanho 40 para o tamanho 150; 
	ALTER TABLE filme MODIFY diretor varchar(150);
  
  -- Atualizar o diretor do filme com id=5
   UPDATE filme SET diretor = 'suelen'
  WHERE idFilme=5;
  
  -- Atualizar o diretor dos filmes com id=2 e com o id=7
  UPDATE filme SET diretor = 'mickey mouse'
  WHERE idFilme=2;
  
  UPDATE filme SET diretor = 'mickey mouse'
  WHERE idFilme=7;
  
  -- Atualizar o título do filme com o id=6
  UPDATE filme SET titulo ='os tres patetas'
  WHERE idFilme=6;
  
  -- Excluir o filme com o id=3
  DELETE FROM filme WHERE idFilme=3;
  
  -- Exibir os filmes em que o gênero é diferente de drama
  SELECT * FROM filme WHERE genero <> 'drama';
  
  -- Exibir os dados dos filmes que o gênero é igual ‘suspense’
  SELECT * FROM filme WHERE genero = 'suspense';
  
  -- Descrever os campos da tabela 
  DESC filme;
  
  -- nova tabela
  
  
 
 
 