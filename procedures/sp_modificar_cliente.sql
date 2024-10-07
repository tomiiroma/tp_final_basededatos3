CREATE PROCEDURE `sp_modificar_cliente` (
	IN p_id INT,
    IN p_nombre VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_telefono VARCHAR(20))
    
BEGIN
    UPDATE clientes
    SET nombre = p_nombre, email = p_email, telefono = p_telefono
    WHERE id = p_id;
END
