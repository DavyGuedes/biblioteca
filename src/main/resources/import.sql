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
INSERT INTO usuario(id, nome, login, senha, tipo_usuario) values(1, 'administrador', 'admin', 'admin', 'ADMIN');


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
    ano bit varying,
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