-- Active: 1673976321091@@127.0.0.1@3306

CREATE TABLE users( -- criar tabela
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO users(id, email, password)
VALUES ("001", "bruna.vf23@gmail.com", "brunakvgd25636"),
("002", "lucas.favaro3@gmail.com", "lucasiBhhs589"),
("003", "thiago56@gmail.com", "thiagoBga25639");

SELECT * FROM users;

--excluir tabela
DROP TABLE users;

--retorna os usuários cadastrados
SELECT ('users');

--mocke um novo usuário
--insere o item mockado na tabela users
INSERT INTO users(id, email, password)
VALUES
("005", "bgagianca@live.com", "biajhksha2415dx5");

--delete a linha baseada no valor mockado
DROP TABLE users
id = 3;

--mocke uma id
--delete a linha baseada no valor mockado
DELETE FROM users
WHERE id = "002";

--mocke valores para editar um user
--edite a linha baseada nos valores mockados
UPDATE users 
SET email = "emailnovo@gmail.com"
WHERE id = "001";

SELECT * FROM users;

CREATE TABLE products( -- criar tabela de produtos
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL ,
    category TEXT NOT NULL
);

INSERT INTO products(id, name, price, category)
VALUES ("a001", "computador", 5000, "informatica"),
("a002", "teclado", 1000, "informatica"),
("a003", "monitor", 3500, "informatica"),
("a004", "cadeira gamer", 7500, "informatica"),
("a005", "mouse", 500, "informatica");

SELECT * FROM products;

--excluir tabela
DROP TABLE products;

--retorna os produtos cadastrados
SELECT ('products');

--mocke um termo de busca (category)
SELECT * FROM products
WHERE category;

--mocke um termo de busca, por exemplo "monitor"
--retorna o resultado baseado no termo de busca
SELECT * FROM products
WHERE name = "computador";

--mocke uma products
SELECT * FROM products
WHERE id = "a003";

--mocke um novo usuário
--insere o item mockado na tabela users
INSERT INTO products(id, name, price, category)
VALUES
("a006", "luminaria", 800, "informatica");

--mocke uma id
--delete a linha baseada no valor mockado
DELETE FROM products
WHERE id = "a002";

--mocke valores para editar um user
--edite a linha baseada nos valores mockados
UPDATE products 
SET price = 4500
WHERE id = "a001";

SELECT * FROM products;

--retorna o resultado ordenado pela coluna email em ordem crescente
SELECT * FROM users ORDER by email ASC;

--retorna o resultado ordenado pela coluna price em ordem crescente
--limite o resultado em 20 iniciando pelo primeiro item
SELECT * FROM products ORDER by price ASC LIMIT 20;

--mocke um intervalo de preços, por exemplo entre 100.00 e 300.00
--retorna os produtos com preços dentro do intervalo mockado em ordem crescente
SELECT * FROM products 
WHERE price >="500" AND price <="4500" 
ORDER by price ASC ;

DROP TABLE purchases;

SELECT * FROM purchases;

CREATE TABLE purchases(
 id TEXT PRIMARY KEY UNIQUE NOT NULL,
    total_price REAL UNIQUE NOT NULL ,
    paid INTEGER NOT NULL,
    delivered_at TEXT,
    buyer_id TEXT NOT NULL,
     FOREIGN KEY (buyer_id) REFERENCES users (id)
);

INSERT INTO purchases(id, total_price, paid, delivered_at, buyer_id)
VALUES ("pr006", 5000, 0, "", "001"),
("pr007", 1000, 0, "", "002"),
("pr008", 4000, 0,  "", "003"),
("pr009", 3000, 0, "", "001");

UPDATE purchases
SET delivered_at = "DATATIME 18/01/2023"
WHERE id="pr007";

SELECT * FROM purchases
INNER JOIN users
ON purchases.buyer_id=users.id
WHERE users.id= "001";






