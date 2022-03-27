-- Table: public.tbl_user

-- DROP TABLE IF EXISTS public.tbl_user;

CREATE TABLE IF NOT EXISTS public.tbl_user
(
    userid character varying(36) COLLATE pg_catalog."default" NOT NULL,
    username character varying(12) COLLATE pg_catalog."default" NOT NULL,
    usernickname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    userfullname character varying(255) COLLATE pg_catalog."default" NOT NULL,
    userdateofbirth date NOT NULL,
    lastlogin timestamp without time zone NOT NULL,
    sessionid character varying(100) COLLATE pg_catalog."default" NOT NULL,
    isactive boolean NOT NULL,
    password character varying(12) COLLATE pg_catalog."default",
    CONSTRAINT tbl_user_pkey PRIMARY KEY (userid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tbl_user
    OWNER to postgres;