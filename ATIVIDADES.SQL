CREATE TABLE ATIVIDADES(

        LOCAL VARCHAR(15) NOT NULL,
        
        ALUNO VARCHAR (15) INT,
        
        PROFESSOR VARCHAR (15),
        
        HORA TIME (0) NOT NULL,

        CODIGO CHAR(10) UNIQUE NOT NULL,
        
        PRIMARY KEY (CODIGO)
    
        );
        
