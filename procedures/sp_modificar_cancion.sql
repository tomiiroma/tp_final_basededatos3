CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_cancion`(
    IN p_id_cancion INT,
    IN p_nombre VARCHAR(100),
    IN p_duracion VARCHAR(10),
    IN p_descripcion TEXT)
BEGIN
    UPDATE cancion
    SET nombre = p_nombre,
        duracion = p_duracion,
        descripcion = p_descripcion
    WHERE id_cancion = p_id_cancion;
END