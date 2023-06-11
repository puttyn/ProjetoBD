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
        
CREATE TABLE FUNCIONARIO 
    (
        SALARIO DECIMAL(10,2) NOT NULL,
        MATRICULA VARCHAR NOT NULL,
        /* DIFERENCIAR (ATLETA (A), FUNCIONARIO (F), PRESTADOR DE SERVIÇO (P), TECNICO (T), SOCIO (S) E DIREÇÃO (D))*/
        CPF CHAR(11) NOT NULL UNIQUE,
        NOME VARCHAR(15) NOT NULL,
        NOME_DO_MEIO VARCHAR(15),
        ULTIMO_NOME VARCHAR(15) NOT NULL,
        ENDERECO  VARCHAR NOT NULL,
        CIDADE VARCHAR NOT NULL,
        ESTADO VARCHAR(2) NOT NULL,
        CEP INT NOT NULL,
        DATA_DE_NASCIMENTO DATE,
        PRIMARY KEY (MATRICULA),
        FOREIGN KEY (CPF) REFERENCES PESSOA(CPF),
        FOREIGN KEY (NOME) REFERENCES PESSOA (NOME),
        FOREIGN KEY (NOME_DO_MEIO) REFERENCES PESSOA (NOME_DO_MEIO),
        FOREIGN KEY (ULTIMO_NOME) REFERENCES PESSOA (ULTIMO_NOME),
        FOREIGN KEY (ENDERECO) REFERENCES PESSOA (ENDERECO),
        FOREIGN KEY (CIDADE) REFERENCES PESSOA (CIDADE),
        FOREIGN KEY (ESTADO) REFERENCES PESSOA (ESTADO),
        FOREIGN KEY (CEP) REFERENCES PESSOA (CEP),
        FOREIGN KEY (DATA_DE_NASCIMENTO) REFERENCES PESSOA (DATA_DE_NASCIMENTO)

    );
CREATE TABLE ATLETA
    (
        CATEGORIA_DE_ATUACAO VARCHAR NOT NULL,
        SALDO_DE_CESTAS INT NOT NULL,
        SALDO_DE_DERROTA INT NOT NULL,
        SALARIO DECIMAL(10,2) NOT NULL,
        MATRICULA VARCHAR NOT NULL,
        CPF CHAR(11) NOT NULL UNIQUE,
        NOME VARCHAR(15) NOT NULL,
        NOME_DO_MEIO VARCHAR(15),
        ULTIMO_NOME VARCHAR(15) NOT NULL,
        ENDERECO  VARCHAR NOT NULL,
        CIDADE VARCHAR NOT NULL,
        ESTADO VARCHAR(2) NOT NULL,
        CEP INT NOT NULL,
        DATA_DE_NASCIMENTO DATE,
        PRIMARY KEY (MATRICULA),
        FOREIGN KEY (CPF) REFERENCES PESSOA(CPF),
        FOREIGN KEY (NOME) REFERENCES PESSOA (NOME),
        FOREIGN KEY (NOME_DO_MEIO) REFERENCES PESSOA (NOME_DO_MEIO),
        FOREIGN KEY (ULTIMO_NOME) REFERENCES PESSOA (ULTIMO_NOME),
        FOREIGN KEY (ENDERECO) REFERENCES PESSOA (ENDERECO),
        FOREIGN KEY (CIDADE) REFERENCES PESSOA (CIDADE),
        FOREIGN KEY (ESTADO) REFERENCES PESSOA (ESTADO),
        FOREIGN KEY (CEP) REFERENCES PESSOA (CEP),
        FOREIGN KEY (DATA_DE_NASCIMENTO) REFERENCES PESSOA (DATA_DE_NASCIMENTO),
        FOREIGN KEY (SALARIO) REFERENCES FUNCIONARIO (SALARIO),
        FOREIGN KEY (MATRICULA) REFERENCES FUNCIONARIO (MATRICULA)
    );
CREATE TABLE TECNICO
    (
        CATEGORIA_DE_TREINO VARCHAR NOT NULL,
        SALDO_DE_VITORIA INT NOT NULL,
        SALDO_DE_DERROTA INT NOT NULL,
        SALARIO DECIMAL(10,2) NOT NULL,
        MATRICULA VARCHAR NOT NULL,
        CPF CHAR(11) NOT NULL UNIQUE,
        NOME VARCHAR(15) NOT NULL,
        NOME_DO_MEIO VARCHAR(15),
        ULTIMO_NOME VARCHAR(15) NOT NULL,
        ENDERECO  VARCHAR NOT NULL,
        CIDADE VARCHAR NOT NULL,
        ESTADO VARCHAR(2) NOT NULL,
        CEP INT NOT NULL,
        DATA_DE_NASCIMENTO DATE,
        PRIMARY KEY (MATRICULA),
        FOREIGN KEY (CPF) REFERENCES PESSOA(CPF),
        FOREIGN KEY (NOME) REFERENCES PESSOA (NOME),
        FOREIGN KEY (NOME_DO_MEIO) REFERENCES PESSOA (NOME_DO_MEIO),
        FOREIGN KEY (ULTIMO_NOME) REFERENCES PESSOA (ULTIMO_NOME),
        FOREIGN KEY (ENDERECO) REFERENCES PESSOA (ENDERECO),
        FOREIGN KEY (CIDADE) REFERENCES PESSOA (CIDADE),
        FOREIGN KEY (ESTADO) REFERENCES PESSOA (ESTADO),
        FOREIGN KEY (CEP) REFERENCES PESSOA (CEP),
        FOREIGN KEY (DATA_DE_NASCIMENTO) REFERENCES PESSOA (DATA_DE_NASCIMENTO),
        FOREIGN KEY (SALARIO) REFERENCES FUNCIONARIO (SALARIO),
        FOREIGN KEY (MATRICULA) REFERENCES FUNCIONARIO (MATRICULA)
    );
CREATE TABLE SOCIOS 
    (
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

CREATE TABLE PARTIDA 
    (
        ID_DA_PARTIDA VARCHAR(8) UNIQUE NOT NULL,
        CESTAS_RECEBIDAS SMALLINT,
        CESTAS_FEITAS SMALLINT,
        FALTAS SMALLINT,
        TIME_ESCALADO VARCHAR(350) NOT NULL,
        DIA_DA_PARTIDA DATE NOT NULL,
        PRIMARY KEY(ID_DA_PARTIDA)
    );

CREATE TABLE CAMPEONATO
    (
        NOME_DO_CAMPEONATO VARCHAR(30) UNIQUE NOT NULL,
        TIME_TITULAR VARCHAR(350) NOT NULL,
        CESTAS_FEITAS SMALLINT,
        CESTAS_RECEBIDAS TINYINT,
        FALTAS SMALLINT,
        TREINADOR VARCHAR(35) NOT NULL,
        PRIMARY KEY(NOME_DO_CAMPEONATO)
    );
CREATE TABLE DEPARTAMENTOS
    (
        DIRETOR CHAR(15),
        NOME_DE_DEPARTAMENTO VARCHAR(15) NOT NULL,
        NUMERO_FUNCIONARIOS INT,
        ORCAMENTO FLOAT NOT NULL,
        PRIMARY KEY (NOME_DE_DEPARTAMENTO)
    );
CREATE TABLE ATIVIDADES
    (
        LOCAL VARCHAR(15) NOT NULL,   
        ALUNO VARCHAR (15) INT,
        PROFESSOR VARCHAR (15),
        HORA TIME (0) NOT NULL,
        CODIGO CHAR(10) UNIQUE NOT NULL, 
        PRIMARY KEY (CODIGO)
    );
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
      DATA_DE_NASCIMENTO DATE,
      PRIMARY KEY (MATRICULA),
      FOREIGN KEY (MEMBROS) REFERENCES DEPARTAMENTOS (DIRECAO)
    );   
   
CREATE TABLE PRESTADOR_DE_SERVICO
    (   
      SERVICO_PRESTADO VARCHAR NOT NULL,
      DATA_DA_PARTIDA VARCHAR(15) NOT NULL,
      CODIGO VARCHAR NOT NULL,
      CPF CHAR(11) NOT NULL UNIQUE,
      PRESTA_SERVICO VARCHAR NOT NULL
    );  
    
    INSERT INTO PESSOA (CPF,NOME,NOME_DO_MEIO,ULTIMO_NOME,ENDERECO,CIDADE,ESTADO,CEP,DATA_DE_NASCIMENTO)
    VALUES 
    ('12345678910','JOHN','J.','SIMPSON','AV. SUBURBANA 5474','RIO DEJANEIRO','RJ','20771004','11/12/1923'), 
    ('21436587109','KATARINA','V.','ROSTOVA','AV. DAS AMERCAS 500','RIO DEJANEIRO','RJ','22640100','15/12/1973'), 
    ('1082439576','STEPHAN','B.','SALVATORI','AV. LUCIO COSTA 3460','RIO DEJANEIRO','RJ','22630010','01/09/1997'),
    ('54310921687','ITAN','G.','BRIANT','AV. BRASIL 19001','RIO DEJANEIRO','RJ','21530000','13/10/1981'),
    ('111111118910','BOB','J.','SIMTH','AV. SUBURBANA 5404','RIO DEJANEIRO','RJ','20771004','12/01/2003'),
    ('22222722109','JACK','V.','PARKER','AV. DAS AMERCAS 250','RIO DEJANEIRO','RJ','22640100','22/02/1990'), 
    ('12321165576','MIKE','B.','JORDAN','AV. LUCIO COSTA 3000','RIO DEJANEIRO','RJ','22630010','31/10/2005'),
    ('13210987654','JAMES','K.', 'JUNIOR','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','16/11/2010'),
    ('10192345678','WILLIAM','B.', 'CURRY','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','10/11/2010'),
    ('10192345678','WILL','H.', 'HORN','AV. FRANCISCO MATARAZZO 1500','SÃO PAULO','SP','05033070','10/11/1951'),
    ('10662345678','WANESSA','M.', 'ZIP','AV. FRANCISCO MATARAZZO 1701','SÃO PAULO','SP','05033070','10/11/1973'),
    ('10195345678','KATRINA','Y.', 'GATES','AV. FRANCISCO MATARAZZO 2000','SÃO PAULO','SP','05033070','10/11/1966'),
    ('65437721687','GWEN','G.','MORALES','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','17/10/1999');
INSERT INTO FUNCIONARIO (SALARIO, MATRICULA,CPF,NOME,NOME_DO_MEIO,ULTIMO_NOME,ENDERECO,CIDADE,ESTADO,CEP,DATA_DE_NASCIMENTO)
    VALUES 
    ('19000,00','F0004','12345678910','JOHN','J.','SIMPSON','AV. SUBURBANA 5474','RIO DEJANEIRO','RJ','20771004','11/12/1923'),
    ('200000,00','F0003', '21436587109','KATARINA','V.','ROSTOVA','AV. DAS AMERCAS 500','RIO DEJANEIRO','RJ','22640100','15/12/1973'),
    ('250000,00','A0001','1082439576','STEPHAN','B.','SALVATORI','AV. LUCIO COSTA 3460','RIO DEJANEIRO','RJ','22630010','01/09/1997'),
    ('220000,00','F0002','54310921687','ITAN','G.','BRIANT','AV. BRASIL 19001','RIO DEJANEIRO','RJ','21530000','13/10/1981'),
    ('100000,00','A0002','111111118910','BOB','J.','SIMTH','AV. SUBURBANA 5404','RIO DEJANEIRO','RJ','20771004','12/01/2003'),
    ('15000,00','F0008','22222722109','JACK','V.','PARKER','AV. DAS AMERCAS 250','RIO DEJANEIRO','RJ','22640100','22/02/1990'),
    ('10000,00','A006','12321165576','MIKE','B.','JORDAN','AV. LUCIO COSTA 3000','RIO DEJANEIRO','RJ','22630010','31/10/2005'),
    ('150000,00','A0003','65437721687','GWEN','G.','MORALES','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','17/10/1999'),
    ('5000,00','A0005','13210987654','JAMES','K.', 'JUNIOR','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','16/11/2010'),
    ('5000,00','A0004','10192345678','WILLIAM','B.', 'CURRY','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','10/11/2010');


INSERT INTO ATLETA (CATEGORIA_DE_ATUACAO,SALDO_DE_CESTAS,SALDO_DE_DERROTA,SALARIO, MATRICULA,CPF,NOME,NOME_DO_MEIO,ULTIMO_NOME,ENDERECO,CIDADE,ESTADO,CEP,DATA_DE_NASCIMENTO)
    VALUES 
    ('PROFISSIONAL','40','20','250.000,00','A0001','1082439576','STEPHAN','B.','SALVATORI','AV. LUCIO COSTA 3460','RIO DEJANEIRO','RJ','22630010','01/09/1997'),
    ('PROFISSIONAL','20','30','100.000,00','A0002','111111118910','BOB','J.','SIMTH','AV. SUBURBANA 5404','RIO DEJANEIRO','RJ','20771004','12/01/2003'),
    ('SUB-20','30','40','10.000,00','A006','12321165576','MIKE','B.','JORDAN','AV. LUCIO COSTA 3000','RIO DEJANEIRO','RJ','22630010','31/10/2005'),
    ('PROFISSIONAL','37','25','150.000,00','A0003','65437721687','GWEN','G.','MORALES','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','17/10/1999'),
    ('SUB-15','15','20','5.000,00','A0005','13210987654','JAMES','K.', 'JUNIOR','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','16/11/2010'),
    ('SUB-15','10','20','5.000,00','A0004','10192345678','WILLIAM','B.', 'CURRY','AV. BRASIL 19000','RIO DEJANEIRO','RJ','21530000','10/11/2010');

INSERT INTO TECNICO (CATEGORIA_DE_TREINO,SALDO_DE_VITORIA,SALDO_DE_DERROTA,SALARIO, MATRICULA,CPF,NOME,NOME_DO_MEIO,ULTIMO_NOME,ENDERECO,CIDADE,ESTADO,CEP,DATA_DE_NASCIMENTO)
    VALUES 
    ('MEDICO','0','0','19000,00','F0004','12345678910','JOHN','J.','SIMPSON','AV. SUBURBANA 5474','RIO DEJANEIRO','RJ','20771004','11/12/1923'),
    ('AUXILIAR-TECNICO','60','10','200.000,00','F0003', '21436587109','KATARINA','V.','ROSTOVA','AV. DAS AMERCAS 500','RIO DEJANEIRO','RJ','22640100','15/12/1973'),
    ('TECNICO','60','10','220.000,00','F0002','54310921687','ITAN','G.','BRIANT','AV. BRASIL 19001','RIO DEJANEIRO','RJ','21530000','13/10/1981'),
    ('AUXILIAR-MEDICO','0','0','15.000,00','F0008','22222722109','JACK','V.','PARKER','AV. DAS AMERCAS 250','RIO DEJANEIRO','RJ','22640100','22/02/1990');
INSERT INTO SOCIOS (ATIVIDADES_MATRICULADO,MATRICULA,CPF,NOME,NOME_DO_MEIO,ULTIMO_NOME,ENDERECO,CIDADE,ESTADO,CEP,DATA_DE_NASCIMENTO)
    VALUES 
    ('HIDROGINATICA','S0002','10192345678','WILL','H.', 'HORN','AV. FRANCISCO MATARAZZO 1500','SÃO PAULO','SP','05033070','10/11/1951'),
    ('POLE-DANCE','S0001','10662345678','WANESSA','M.', 'ZIP','AV. FRANCISCO MATARAZZO 1701','SÃO PAULO','SP','05033070','10/11/1973'),
    ('ZUMBA','S0003','10195345678','KATRINA','Y.', 'GATES','AV. FRANCISCO MATARAZZO 2000','SÃO PAULO','SP','05033070','10/11/1966');

