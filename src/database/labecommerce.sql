-- Active: 1673976321091@@127.0.0.1@3306

CREATE TABLE users( -- criar tabela
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO users(id, email, password)
VALUES ("001", "bruna.vf23@gmail.com", "brunakvgd25636"),
("002", "lucas.favaro3@gmail.com", "lucasiBhhs589"),
("003", "thiago56@gmail.com", "thiagoBga25639"),
("004", "bianca@live.com", "bianca2415dx5");

SELECT * FROM users;

--excluir tabela
DROP TABLE users;

--retorna os usuários cadastrados
SELECT ('users');

--mocke um termo de busca (email)
SELECT * FROM users
WHERE email;

--mocke uma id
SELECT * FROM users
WHERE id = "003";

--delete a linha baseada no valor mockado
DROP TABLE users
id = 3;




CREATE TABLE products( -- criar tabela de produtos
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL ,
    category TEXT NOT NULL
);

--excluir tabela
DROP TABLE products;

INSERT INTO products(id, name, price, category)
VALUES ("a001", "computador", 5000, "informatica"),
("a002", "teclado", 1000, "informatica"),
("a003", "monitor", 3500, "informatica"),
("a004", "cadeira gamer", 7500, "informatica"),
("a005", "mouse", 500, "informatica");

SELECT * FROM products;

--retorna os produtos cadastrados
SELECT ('products');

--mocke um termo de busca (category)
SELECT * FROM products
WHERE category;

