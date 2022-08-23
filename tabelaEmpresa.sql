 USE faculdade;
 
 -- criar tabela empresa
 CREATE TABLE empresa (
 id int primary key auto_increment,
 nome varchar(45),
 responsavel varchar(45),
 dtInaugura DATETIME,
 tipo varchar(20), constraint chkTipo 
	check (tipo in ('filial','matriz'))
 );
 desc empresa;
 
 -- inserir dados na tabela empresa
 INSERT INTO empresa (nome,responsavel, dtInaugura, Tipo)
	VALUES ('SPTech', 'Petry', '2016-01-01 08:00:00', 'Matriz');
    
SELECT * FROM empresa;
 -- inserir dados na tabela empresa
 INSERT INTO empresa (nome,responsavel, dtInaugura, Tipo)
	VALUES ('FLoTech', 'Vivian', '2022-08-01 08:00:00', 'Loja');
    
    -- error code : 3819. Check constraint 'chkTipo' is violated
    
    -- inserir dados na tabela empresa
 INSERT INTO empresa (nome,responsavel, dtInaugura, Tipo)
	VALUES ('accenture','Ariel', '2002-08-01 08:00:00','Matriz'),
     ('C6Bank','Rosana','2022-08-01 08:00:00','Matriz');
    
    
    INSERT INTO empresa VALUES
    (null, 'Safra','Rafael','21-09-30','Filial');
    
    -- exibir as empresas onde a penúltima letra é r
SELECT nome FROM empresa WHERE nome Like '%r_';

-- exibir as empresas onde a segunda letra é 6
SELECT nome FROM empresa WHERE nome lIKE '_6%';

ALTER TABLE empresa drop constraint chkTipo;

 ALTER TABLE empresa ADD constraint chkTipo 
	check (tipo in ('Matriz','Filial','Loja'));

-- inserir dados na tabela empresa
 INSERT INTO empresa (nome,responsavel, dtInaugura, Tipo)
	VALUES ('SPTech', 'Petry', '2016-01-01 08:00:00', 'Matriz');
    
    SELECT * FROM empresa;
    
    INSERT INTO empresa 
	VALUES (null ,'RafasPlace', 'Rafael', '2016-01-10 ', 'Filial');
    
    -- excluir a tabela empresa;
   -- Drop table empresa;
   Drop table empresa;
   -- excluir um registro
   DELETE FROM empresa WHERE id = 22;
   
   INSERT INTO empresa 
	VALUES (null ,'RafasPlace', 'Rafael', '2016-01-10 ', 'Filial');
    
    SELECT * FROM empresa;
    
     -- limpar a tabela 
     TRUNCATE TABLE empresa;
     
      INSERT INTO empresa 
	VALUES (null ,'RafasPlace', 'Rafael', '2016-01-10 ', 'Filial');
    
    SELECT * FROM empresa;
  
  DESC empresa;
  CREATE TABLE empresa (
  id int primary key auto_increment,
  nome varchar(45) NOT NULL,
  responsavel varchar(45) DEFAULT 'Alguém',
  dtInaugura DATETIME default current_timestamp,
  tipo varchar(20), constraint chkTipo
	check ( tipo in ('Filial','Matriz'))
    )auto_increment = 200;
    
    INSERT INTO empresa (nome, tipo) 
    VALUES ('SPTech','Matriz');
     
     SELECT * FROM empresa;
   
    
    
 
 