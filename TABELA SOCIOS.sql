CREATE TABLE SOCIOS (
  MATRICULA VARCHAR(10) UNIQUE NOT NULL, 
  NOME VARCHAR(15) NOT NULL, 
  NOME_DO_MEIO VARCHAR(15), 
  ULTIMO_NOME VARCHAR(15) NOT NULL, 
  CPF VARCHAR(11) UNIQUE NOT NULL,
  ENDERECO VARCHAR(45), 
  DATA_DE_NASC DATE, 
  ATIVIDADES_MATRICULADO VARCHAR(100),
  PRIMARY KEY(MATRICULA),
  FOREIGN KEY(CPF, NOME, NOME_DO_MEIO, ULTIMO_NOME, DATA_DE_NASC, ENDERECO) REFERENCES PESSOA(CPF, NOME, NOME_DO_MEIO, ULTIMO_NOME, DATA_DE_NASC, ENDERECO)
);

CREATE TABLE PARTIDA (
      ID_DA_PARTIDA VARCHAR(8) UNIQUE NOT NULL,
      CESTAS_RECEBIDAS SMALLINT,
      CESTAS_FEITAS SMALLINT,
  	  FALTAS SMALLINT,
      TIME_ESCALADO VARCHAR(350) NOT NULL,
      DIA_DA_PARTIDA DATE NOT NULL,
      PRIMARY KEY(ID_DA_PARTIDA)
);

CREATE TABLE CAMPEONATO(
      NOME_DO_CAMPEONATO VARCHAR(30) UNIQUE NOT NULL,
      TIME_TITULAR VARCHAR(350) NOT NULL,
      CESTAS_FEITAS SMALLINT,
      CESTAS_RECEBIDAS TINYINT,
      FALTAS SMALLINT,
      TREINADOR VARCHAR(35) NOT NULL,
      PRIMARY KEY(NOME_DO_CAMPEONATO)
);
