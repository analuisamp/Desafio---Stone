CREATE DATABASE DESAFIO;

USE DESAFIO;

CREATE TABLE PESSOA(
	IDPESSOA INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	IDADE INT(3),	
	SEXO VARCHAR(10) NOT NULL
);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	PAIS VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_PESSOA INT UNIQUE,
	
	FOREIGN KEY (ID_PESSOA)
	REFERENCES PESSOA(IDPESSOA)
);
--Popular seu banco de dados com o registro das seguintes pessoas:
	INSERT INTO PESSOA VALUES(NULL,'Alberto', 20, 'masculino');
	INSERT INTO PESSOA VALUES(NULL,'Rafaela', 33, 'feminino');
	INSERT INTO PESSOA VALUES(NULL,'Rafaella', 53, 'feminino');
	INSERT INTO PESSOA VALUES(NULL,'Antonio', 73, 'masculino');
	INSERT INTO PESSOA VALUES(NULL,'José', 60, 'masculino');
	INSERT INTO PESSOA VALUES(NULL,'Gilberto', 45, 'asculino');
	INSERT INTO PESSOA VALUES(NULL,'Regina', 32, 'feminino');
	INSERT INTO PESSOA VALUES(NULL,'Carol', 21, 'feminino');
	INSERT INTO PESSOA VALUES(NULL,'Leticia', 18, 'feminino');

	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'São Paulo', 'SP', 1);
	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'Rio de Janeiro', 'RJ',2);
	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'São Paulo', 'SP',3);
	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'São Paulo', 'SP',4);
	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'Rio de Janeiro', 'RJ',5);
	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'Rio de Janeiro', 'RJ',6);
	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'Santos', 'SP',7);
	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'São Bernardo do Campo', 'SP',8);
	INSERT INTO ENDERECO VALUES(NULL,'Brasil', 'Mesquita', 'RJ',9);

--Realizar query de todas as pessoas que tem mais de 50 anos que moram em São Paulo.

	SELECT NOME, IDADE, CIDADE	
	FROM PESSOA
	INNER JOIN ENDERECO
	ON IDPESSOA = ID_PESSOA
	WHERE IDADE > 50
	AND CIDADE = 'São Paulo';
	
--Realizar query da contagem de todas pessoas que têm menos de 50 anos agrupando por Estado.
	
	SELECT ESTADO, COUNT(*) AS "QUANTIDADE DE REGISTROS COM MENOS DE 50 ANOS" 
	FROM PESSOA
	INNER JOIN ENDERECO
	ON IDPESSOA = ID_PESSOA
	WHERE IDADE < 50
	GROUP BY ESTADO;


