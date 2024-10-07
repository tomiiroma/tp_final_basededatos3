CREATE DEFINER=`root`@`localhost` FUNCTION `fn_total_reproduciones_cancion`(cancion_id INT) RETURNS int(11)
BEGIN
    DECLARE total_reproducciones INT;

    SELECT reproducciones INTO total_reproducciones
    FROM canciones
    WHERE id = cancion_id;

    IF total_reproducciones IS NULL THEN
        RETURN 0; -- Si no se encuentra la canción, retorna 0
    END IF;

    RETURN total_reproducciones;
END