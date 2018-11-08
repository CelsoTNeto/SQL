CREATE TABLE tb_Produtos (

cdProduto INT PRIMARY KEY IDENTITY (1,1),
nmProduto VARCHAR ( 50 ) NOT NULL ,
vlProduto DECIMAL ( 6 , 2 ) NOT NULL

);

CREATE TABLE tb_Clientes(

cdCliente INT PRIMARY KEY IDENTITY (1,1),
nmCliente VARCHAR (50) NOT NULL ,
dtNascimento DATE,
inSexo VARCHAR (1) NOT NULL,
nmEndereço VARCHAR (50),
nmCidade VARCHAR (50),
nmEstado VARCHAR (30),
nmTelefone1 VARCHAR (15),
nmTelefone2 VARCHAR (15) 

);

CREATE TABLE tb_Vendas (

cdVendas INT PRIMARY KEY IDENTITY (1,1),
cdProduto INT NOT NULL,
vlProduto DECIMAL (6,2) NOT NULL,

);

ALTER TABLE tb_Vendas
ADD CONSTRAINT FK_Produtos_Vendas
FOREIGN KEY (cdProduto)
REFERENCES tb_Produtos (cdProduto) 