CREATE DEFINER=`root`@`localhost` FUNCTION `fn_canciones_por_artista`(artista_id INT) RETURNS int(11)
BEGIN
    DECLARE total_canciones INT;

    SELECT COUNT(*) INTO total_canciones
    FROM canciones
    WHERE artista_id = artista_id;

    RETURN total_canciones;
END