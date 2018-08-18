-- Table: public."Usuario"

CREATE TABLE public."Usuario"
(
    id bigint NOT NULL,
    nome character varying COLLATE pg_catalog."default" NOT NULL,
    senha character varying COLLATE pg_catalog."default" NOT NULL,
    "tipoUsuario" character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Usuario_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Usuario"
    OWNER to postgres;

-- Insert data:
INSERT INTO Usuario(id, nome, senha, tipoUsuario) values(1, "administrador", "admin", "ADMIN");


-- Table: public.categoria

CREATE TABLE public.categoria
(
    id bigint NOT NULL,
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
    id bigint NOT NULL,
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