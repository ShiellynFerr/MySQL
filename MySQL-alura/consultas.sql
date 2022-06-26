SELECT * FROM tb_cliente;

SELECT * FROM tb_cliente WHERE IDADE = 22;

SELECT * FROM tb_cliente WHERE IDADE <= 22;

SELECT * FROM tb_cliente WHERE IDADE <> 22;

SELECT * FROM tb_cliente WHERE NOME > 'Fernando Cavalcante';

SELECT * FROM tb_cliente WHERE CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins';

SELECT * FROM tb_cliente WHERE (IDADE >= 22 AND IDADE <= 22  AND SEXO = 'M')
 OR (CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins');


SELECT * FROM tb_produto WHERE PRECO_LISTA  = 16.008;


SELECT * FROM tb_vendedor WHERE PERCENTUAL_COMISSAO > 10;