CREATE TABLE tb_user
(
    id UUID NOT NULL,
    username   VARCHAR(255),
    displayName VARCHAR (255),
    password  VARCHAR (255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_category
(
    id  UUID NOT NULL,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_account
(
    id  UUID NOT NULL,
    bank VARCHAR(255),
    bank_branch VARCHAR(255),
    code VARCHAR(255),
    type INT,
    user_id UUID,
    PRIMARY KEY (id)
);

CREATE TABLE tb_movimentation
(
    id UUID NOT NULL,
    description VARCHAR(255),
    due_date  DATE,
    paid_value REAL,
    payment_date DATE,
    type INTEGER,
    value REAL,
    account_id UUID,
    category_id UUID,
    PRIMARY KEY (id)
);

ALTER TABLE tb_account
    ADD CONSTRAINT fk_user_acc FOREIGN KEY (user_id) REFERENCES tb_user;

ALTER TABLE tb_movimentation
    ADD CONSTRAINT fk_movimentation_category FOREIGN KEY (category_id) REFERENCES tb_category;

ALTER TABLE tb_movimentation
    ADD CONSTRAINT fk_movimentation_acc FOREIGN KEY (account_id) REFERENCES tb_account;