
CREATE TABLE IF NOT EXISTS Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    NomeLivro VARCHAR(200) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

SELECT * FROM Clientes;

SELECT 
    c.nomeCliente,
    p.NomeLivro
FROM Clientes c
INNER JOIN Compras p ON c.ID = p.ClienteID
ORDER BY c.nomeCliente;
