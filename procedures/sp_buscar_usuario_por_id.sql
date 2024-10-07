CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_buscar_cliente_por_id`(
	IN p_id INT)
BEGIN
    SELECT * FROM clientes WHERE id = p_id;
END