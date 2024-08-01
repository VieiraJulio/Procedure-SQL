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


CREATE OR ALTER PROCEDURE prListarClientes(@gen = 'M' VARCHAR(MAX), @ano INT)
AS
BEGIN
	SELECT
		*
	FROM dCliente
	WHERE genero = @gen AND YEAR(data_de_nascimento) = @ano
END 

EXECUTE prListarClientes 'M'