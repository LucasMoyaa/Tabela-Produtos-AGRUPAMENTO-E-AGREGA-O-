CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preço DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    perecível BOOLEAN NOT NULL,
    marca VARCHAR(100),
    nacionalidade VARCHAR(100)
);

INSERT INTO Produtos (id_produto, nome, preço, estoque, perecível, marca, nacionalidade)
VALUES
    (1, 'Produto 1', 10.99, 100, FALSE, 'Marca 1', 'Nacionalidade 1'),
    (2, 'Produto 2', 20.99, 50, TRUE, 'Marca 2', 'Nacionalidade 2'),
    (3, 'Produto 3', 5.99, 200, FALSE, 'Marca 3', 'Nacionalidade 3'),
    (4, 'Produto 4', 15.99, 80, TRUE, 'Marca 4', 'Nacionalidade 4'),
    (5, 'Produto 5', 8.99, 150, FALSE, 'Marca 5', 'Nacionalidade 5');

SELECT COUNT(*) AS total_produtos FROM Produtos;

SELECT AVG(preço) AS preço_médio FROM Produtos;

SELECT perecível, AVG(preço) AS preço_médio FROM Produtos GROUP BY perecível;

SELECT nome, AVG(preço) AS preço_médio FROM Produtos GROUP BY nome;

SELECT AVG(preço) AS preço_médio, SUM(estoque) AS total_estoque FROM Produtos;

SELECT nome, marca, estoque FROM Produtos WHERE preço = (SELECT MAX(preço) FROM Produtos);

SELECT * FROM Produtos WHERE preço > (SELECT AVG(preço) FROM Produtos);

SELECT nacionalidade, COUNT(*) AS quantidade FROM Produtos GROUP BY nacionalidade;