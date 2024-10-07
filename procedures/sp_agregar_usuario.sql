CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_usuario`(    
	IN p_fk_suscripcion INT,
    IN p_nombre VARCHAR(100),
    IN p_apellido VARCHAR(100),
    IN p_dni VARCHAR(20),
    IN p_telefono VARCHAR(15),
    IN p_correo VARCHAR(100),
    IN p_fecha_registro DATE)
BEGIN
	INSERT INTO usuario (fk_suscripcion, nombre, apellido, dni, telefono, correo, fecha_registro)
    VALUES (p_fk_suscripcion, p_nombre, p_apellido, p_dni, p_telefono, p_correo, p_fecha_registro);
END