-- Table: public.tbl_account

-- DROP TABLE IF EXISTS public.tbl_account;

CREATE TABLE IF NOT EXISTS public.tbl_account
(
    accountid character varying(36) COLLATE pg_catalog."default" NOT NULL,
    accountno character varying(12) COLLATE pg_catalog."default" NOT NULL,
    accountccy character varying(3) COLLATE pg_catalog."default" NOT NULL,
    accountbalance numeric NOT NULL,
    userid character varying(36) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tbl_account_pkey PRIMARY KEY (accountid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tbl_account
    OWNER to postgres;