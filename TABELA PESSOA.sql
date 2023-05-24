CREATE TABLE PESSOA
        (
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
        