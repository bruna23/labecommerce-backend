-- Active: 1673976321091@@127.0.0.1@3306

CREATE TABLE users( -- criar tabela
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO users(id, email, password)
VALUES ("a001", "bruna.vf23@gmail.com", "brunakvgd25636"),
("a002", "lucas.favaro3@gmail.com", "lucasiBhhs589"),
("a003", "thiago56@gmail.com", "thiagoBga25639");
SELECT * FROM users;

--excluir tabela
DROP TABLE users;


CREATE TABLE products( -- criar tabela de produtos
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL ,
    category TEXT NOT NULL
);

DROP TABLE products;

INSERT INTO products(id, name, price, category)
VALUES ("a001", "computador", 5000, "informatica"),
("a002", "teclado", 1000, "informatica"),
("a003", "monitor", 3500, "informatica"),
("a004", "cadeira gamer", 7500, "informatica"),
("a005", "mouse", 500, "informatica");
SELECT * FROM products;

