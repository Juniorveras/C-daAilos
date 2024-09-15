--Uma empresa registra os atendimentos por assunto e por ano em uma tabela.

--Você precisa escrever um comando select que retorne o assunto, o ano e a quantidade de ocorrências, filtrando apenas assuntos que tenham mais de 3 ocorrências no mesmo ano.

--O comando deve ordenar os registros por ANO e por QUANTIDADE de ocorrências de forma DECRESCENTE.


SELECT 
  assunto,
  ano,
  COUNT(*) AS quantidade
FROM 
  atendimentos
GROUP BY 
  assunto, ano
HAVING 
  COUNT(*) > 3
ORDER BY 
  ano DESC, 
  quantidade DESC;
  
  
  -- ORACLE
CREATE TABLE atendimentos (
 id  RAW(16) DEFAULT SYS_GUID() NOT NULL,
 assunto VARCHAR2(100) NOT NULL,
 ano NUMBER(4)
);

INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
COMMIT;


--Retorno 
Assunto	                     Ano	Quantidade
Reclamacao cadastro	         2022	    8
Reclamacao produto	         2021	    6
Reclamacao atendimento	     2021	    4
