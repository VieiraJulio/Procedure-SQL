-- PROCEDURE
/*
CREATE PROCEDURE prOrderGerente
AS
BEGIN
	SELECT
		*
	FROM
		dGerente
	ORDER BY salario DESC
END

EXECUTE prOrderGerente

--


CREATE OR ALTER PROCEDURE prListarClientes(@gen VARCHAR(MAX) = 'M', @ano INT)
AS
BEGIN
	SELECT
		*
	FROM dCliente
	WHERE genero = @gen AND YEAR(data_de_nascimento) = @ano
END 

EXECUTE prListarClientes @ano = 1989



CREATE OR ALTER PROCEDURE prRegistraContrato(@gerente VARCHAR(MAX), @cliente VARCHAR(MAX), @valor FLOAT)
AS
BEGIN
	DECLARE 
		@vIDgerente INT, 
		@vIDcliente INT
		
	SELECT
		@vIDgerente = id_gerente
	FROM
		dGerente
	WHERE nome_gerente = @gerente

	SELECT 
		@vIDcliente = id_cliente
	FROM
		dCliente
	WHERE nome_cliente = @cliente

	INSERT INTO fContratos(data_assinatura, id_cliente, id_gerente , valor_contrato)
	VALUES
		(GETDATE(), @vIDcliente, @vIDgerente, @valor)
		
	PRINT 'PROCEDURE EXECUTADA COM SUCESSO '


END


EXECUTE prRegistraContrato @gerente = 'Lucas Sampaio', @cliente =  'Gustavo Barbosa' , @valor = 5000

SELECT 
	*
FROM
	fContratos




USE ContosoRetailDW

CREATE OR ALTER PROCEDURE prMarca(@marca VARCHAR(MAX))
AS
BEGIN

	SELECT 
		BrandName,
		COUNT(*) AS 'Quantidade Produtos por Marca'
	FROM DimProduct	
	WHERE BrandName = @marca
	GROUP BY BrandName 

END

EXECUTE prMarca 'Contoso'

*/

CREATE OR ALTER PROCEDURE prTopN(@topn INT)
AS
BEGIN
	SELECT
		TOP (@topn)
		FirstName, 
		DateFirstPurchase	
	FROM
		DimCustomer
	WHERE CustomerType = 'Person'
	ORDER BY DateFirstPurchase
END 


EXECUTE prTopN 100