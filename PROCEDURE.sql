-- PROCEDURE

--
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


CREATE OR ALTER PROCEDURE prListarClientes(@gen VARCHAR(MAX))
AS
BEGIN
	SELECT
		*
	FROM dCliente
	WHERE genero = @gen
END 

EXECUTE prListarClientes 'M'