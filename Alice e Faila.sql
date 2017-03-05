CREATE TABLE CLIENTE (
  cpf INTEGER  NOT NULL  ,
  rg INTEGER  NOT NULL  ,
  nome INTEGER  NOT NULL  ,
  endereco INTEGER  NOT NULL  ,
  numero_cnh INTEGER  NOT NULL  ,
  data_nascimento INTEGER  NOT NULL    ,
PRIMARY KEY(cpf));



CREATE TABLE CATEGORIA (
  codigo INTEGER  NOT NULL  ,
  nome INTEGER    ,
  preco_diaria INTEGER    ,
  descricao INTEGER      ,
PRIMARY KEY(codigo));



CREATE TABLE CARROS (
  codigo INTEGER  NOT NULL  ,
  CATEGORIA_codigo INTEGER  NOT NULL  ,
  chassi INTEGER  NOT NULL  ,
  numero_placa INTEGER  NOT NULL  ,
  marca INTEGER  NOT NULL  ,
  modelo INTEGER  NOT NULL  ,
  ano_modelo INTEGER  NOT NULL  ,
  ano_fabricacao INTEGER  NOT NULL  ,
  cor_predominante INTEGER  NOT NULL    ,
PRIMARY KEY(codigo)  ,
  FOREIGN KEY(CATEGORIA_codigo)
    REFERENCES CATEGORIA(codigo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX CARROS_FKIndex1 ON CARROS (CATEGORIA_codigo);



CREATE TABLE CLIENTE_has_CARROS (
  CLIENTE_cpf INTEGER  NOT NULL  ,
  CARROS_codigo INTEGER  NOT NULL    ,
PRIMARY KEY(CLIENTE_cpf, CARROS_codigo)    ,
  FOREIGN KEY(CLIENTE_cpf)
    REFERENCES CLIENTE(cpf)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(CARROS_codigo)
    REFERENCES CARROS(codigo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX CLIENTE_has_CARROS_FKIndex1 ON CLIENTE_has_CARROS (CLIENTE_cpf);
CREATE INDEX CLIENTE_has_CARROS_FKIndex2 ON CLIENTE_has_CARROS (CARROS_codigo);



CREATE TABLE HISTORICO (
  data_manutencao INTEGER  NOT NULL  ,
  CARROS_codigo INTEGER  NOT NULL  ,
  valor_pago INTEGER  NOT NULL  ,
  descricao_servico INTEGER  NOT NULL  ,
  nome_oficina INTEGER  NOT NULL    ,
PRIMARY KEY(data_manutencao)  ,
  FOREIGN KEY(CARROS_codigo)
    REFERENCES CARROS(codigo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX HISTORICO_FKIndex1 ON HISTORICO (CARROS_codigo);




