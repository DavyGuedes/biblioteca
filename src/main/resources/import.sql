-- Table: public."usuario"

CREATE TABLE public."usuario"
(
    id serial NOT NULL,
    nome character varying COLLATE pg_catalog."default" NOT NULL,
    login character varying COLLATE pg_catalog."default" NOT NULL,
    senha character varying COLLATE pg_catalog."default" NOT NULL,
    "tipo_usuario" character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "usuario_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."usuario"
    OWNER to postgres;

-- Insert data:
INSERT INTO usuario(id, nome, login, senha, tipo_usuario) values (1, 'administrador', 'admin', 'admin', 'ADMIN');
INSERT INTO usuario(id, nome, login, senha, tipo_usuario) values (2, 'discente', 'aluno', 'aluno', 'ALUNO');


-- Table: public.categoria

CREATE TABLE public.categoria
(
    id serial NOT NULL,
    nome character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT categoria_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.categoria
    OWNER to postgres;

-- Table: public.livro


CREATE TABLE public.livro
(
    id serial NOT NULL,
    titulo character varying COLLATE pg_catalog."default" NOT NULL,
    autor character varying COLLATE pg_catalog."default",
    volume bigint,
    ano character varying COLLATE pg_catalog."default",
    qtd_exemplares bigint,
    status_livro character varying COLLATE pg_catalog."default",
    categoria_id bigint,
    descricao character varying COLLATE pg_catalog."default",
    CONSTRAINT livro_pkey PRIMARY KEY (id),
    CONSTRAINT categoria_id_fk FOREIGN KEY (categoria_id)
        REFERENCES public.categoria (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.livro
    OWNER to postgres;

-- Table: public.locacao

CREATE TABLE locacao
(
  id serial NOT NULL,
  usuario_id bigint NOT NULL,
  livro_id bigint NOT NULL,
  data_inicio date NOT NULL,
  data_termino date NOT NULL,
  status character varying(255) NOT NULL,
  CONSTRAINT locacao_pkey PRIMARY KEY (id),
  CONSTRAINT locacao_livro_id_fkey FOREIGN KEY (livro_id)
      REFERENCES livro (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT locacao_usuario_id_fkey FOREIGN KEY (usuario_id)
      REFERENCES usuario (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE locacao
  OWNER TO postgres;