use xecommerce;
-- inserção de dados
-- CLIENTES
INSERT INTO clients (Fname, Minit, Lname, CPF, Address) VALUES
('Maria','M','Silva','12346789001','Rua das Rosas 29, RJ'),
('Matheus','O','Pimentel','98765432100','Rua Alameda 289, SP'),
('Ricardo','F','Silva','45678913000','Av. Vinha 1009, BH'),
('Julia','S','França','78912345600','Rua Laranjeiras 861, GO'),
('Roberta','G','Assis','98745631000','Av. Koller 19, RJ'),
('Isabela','M','Cruz','65478912300','Rua Flores 28, SP'),
('Lucas','P','Santos','11223344556','Rua Nova 12, RJ'),
('Fernanda','A','Moraes','22334455667','Av. Central 90, SP'),
('Gabriel','T','Costa','33445566778','Rua Azul 44, MG'),
('Carla','B','Ribeiro','44556677889','Av. Marfim 88, DF');

-- PRODUTOS
INSERT INTO product (Pname, classification_kids, category, avaliacao, size) VALUES
('Fone de ouvido',FALSE,'Eletrônico',4,NULL),
('Barbie Elsa',TRUE,'Brinquedos',3,NULL),
('Body Carters',TRUE,'Vestimenta',5,NULL),
('Microfone Vedo',FALSE,'Eletrônico',4,NULL),
('Sofá retrátil',FALSE,'Móveis',3,'3x57x80'),
('Farinha de arroz',FALSE,'Alimentos',2,NULL),
('Fire Stick Amazon',FALSE,'Eletrônico',5,NULL),
('Camiseta Polo',FALSE,'Vestimenta',4,NULL),
('Carrinho HotWheels',TRUE,'Brinquedos',5,NULL),
('Mesa de Jantar',FALSE,'Móveis',4,'90x150');

-- PEDIDOS
INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) VALUES 
(1,'Confirmado','Compra via app',10,1),
(2,'Em processamento','Compra via site',50,0),
(3,'Confirmado','Compra via site',15,1),
(4,'Cancelado','Compra via app',20,0),
(5,'Em processamento','Compra via app',30,0),
(6,'Confirmado','Compra via site',25,1),
(7,'Confirmado','Compra via app',40,1),
(8,'Em processamento','Compra via site',60,0),
(9,'Confirmado','Compra via app',70,1),
(10,'Cancelado','Compra via site',15,0);

-- RELACIONAMENTO PRODUTO X PEDIDO
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity) VALUES
(1,1,2),(2,1,1),(3,2,1),(4,3,1),(5,4,1),(6,5,2),(7,6,1),(8,7,3),(9,8,2),(10,9,1);

-- ESTOQUE
INSERT INTO productStorage (storageLocation, quantity) VALUES 
('Rio de Janeiro',1000),
('São Paulo',800),
('Belo Horizonte',500),
('Goiânia',400),
('Brasília',300);

-- LOCALIZAÇÃO PRODUTO-ESTOQUE
INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
(1,1,'RJ'),
(2,2,'SP'),
(3,3,'MG'),
(4,4,'GO'),
(5,5,'DF');

-- FORNECEDORES
INSERT INTO supplier (SocialName, CNPJ, contact) VALUES 
('Almeida e Filhos','123456789123456','21985474'),
('Eletrônicos Silva','854519649143457','21985484'),
('Moveis Valma','934567893934695','21975474'),
('Alimentos Top','745698123547859','21965474');

-- PRODUTO X FORNECEDOR
INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
(1,1,500),(1,2,400),(2,4,633),(3,5,10),(4,6,200),(2,7,50);

-- VENDEDORES
INSERT INTO seller (SocialName, AbstName, CNPJ, CPF, location, contact) VALUES 
('Tech Eletronics', NULL, '123456789456321', NULL, 'Rio de Janeiro', '219946287'),
('Boutique Durgas', NULL, NULL, '123456783', 'Rio de Janeiro', '219567895'),
('Kids World', NULL, '456789123654485', NULL, 'São Paulo', '1198657484'),
('Moveis Prime', NULL, '987654321456987', NULL, 'Brasília', '619854721');

-- PRODUTO X VENDEDOR
INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) VALUES 
(1,1,80),(1,7,50),(2,3,100),(3,2,60),(4,5,30),(4,10,15);

