CREATE TABLE DIRECAO
    ( 

      MATRICULA VARCHAR NOT NULL,
      
      PRESIDENTE VARCHAR(15) NOT NULL,
      
      MANDATO VARCHAR(15) NOT NULL,
      
      DATA_DE_MANDATO VARCHAR(15) NOT NULL,
      
      MEMBROS VARCHAR   NOT NULL,
      
      CPF CHAR(11) NOT NULL UNIQUE,
      
      NOME VARCHAR(15) NOT NULL,
      
      NOME_DO_MEIO VARCHAR(15),
      
      ULTIMO_NOME VARCHAR(15) NOT NULL,
      
      ENDERECO  VARCHAR NOT NULL,
      
      CIDADE VARCHAR NOT NULL,
      
      ESTADO VARCHAR(2) NOT NULL,
      
      CEP INT NOT NULL,
      
      DATA_DE_NASCIMENTO DATE
    );   
   
CREATE TABLE PRESTADOR_DE_SERVICO
    (   
    
      SERVICO_PRESTADO VARCHAR NOT NULL,
      
      DATA_DA_PARTIDA VARCHAR(15) NOT NULL,
      
      CODIGO VARCHAR NOT NULL,
      
      CPF CHAR(11) NOT NULL UNIQUE,
      
      PRESTA_SERVICO VARCHAR NOT NULL
    );  
      
      
      
    
      
      
    
    
      
