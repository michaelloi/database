-- Table: public.tbl_transaction

-- DROP TABLE IF EXISTS public.tbl_transaction;

CREATE TABLE IF NOT EXISTS public.tbl_transaction
(
    transactionid character varying(36) COLLATE pg_catalog."default" NOT NULL,
    transactiontype character varying(5) COLLATE pg_catalog."default" NOT NULL,
    transactionfromccy character varying(3) COLLATE pg_catalog."default" NOT NULL,
    transactionfromamount numeric NOT NULL,
    transactiontoccy character varying(3) COLLATE pg_catalog."default" NOT NULL,
    transactiontoamount numeric NOT NULL,
    transactionprice numeric NOT NULL,
    transactiontotalprice numeric NOT NULL,
    transactiondate time without time zone NOT NULL,
    accountno character varying(12) COLLATE pg_catalog."default" NOT NULL,
    issuccess boolean NOT NULL,
    CONSTRAINT tbl_transaction_pkey PRIMARY KEY (transactionid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tbl_transaction
    OWNER to postgres;