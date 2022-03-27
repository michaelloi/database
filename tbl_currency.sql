-- Table: public.tbl_currency

-- DROP TABLE IF EXISTS public.tbl_currency;

CREATE TABLE IF NOT EXISTS public.tbl_currency
(
    currencyid character varying(36) COLLATE pg_catalog."default" NOT NULL,
    currencycode character varying(3) COLLATE pg_catalog."default" NOT NULL,
    currencyname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    bankbuyprice numeric(10,2) NOT NULL DEFAULT 0,
    banksellprice numeric(10,2) NOT NULL DEFAULT 0,
    limitbuy numeric NOT NULL DEFAULT 0,
    limitsell numeric NOT NULL DEFAULT 0,
    CONSTRAINT tbl_currency_pkey PRIMARY KEY (currencyid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tbl_currency
    OWNER to postgres;