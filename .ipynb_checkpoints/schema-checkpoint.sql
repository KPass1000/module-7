public.card_holder
(
    holder_id integer NOT NULL DEFAULT nextval('card_holder_holder_id_seq'::regclass),
    holder_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT card_holder_pkey PRIMARY KEY (holder_id)
)

TABLESPACE pg_default;

public.credit_card
(
    card VARCHAR(20)
    cardholder_id INT NOT NULL
)

TABLESPACE pg_default;

public.merchant
(
    merchant_id INT
    merchant_name VARCHAR(255)
    merchant_category VARCHAR(255)
    CONSTRAINT merchant_pkey PRIMARY KEY (merchant_id)
)

    category_id INT PK
    category_name VARCHAR(255)
    CONSTRAINT merchant_category_pkey PRIMARY KEY (category_id)
    
    transaction_id INT
    date TIMESTAMP
    amount numeric,
    card VARCHAR(20)
    merchant_id INT,
    CONSTRAINT transaction_pkey PRIMARY KEY (transaction_id),
    CONSTRAINT transaction_merchant_id_fkey FOREIGN KEY (merchant_id)
        REFERENCES public.merchant (merchant_id) MATCH SIMPLE
    