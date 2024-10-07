CREATE DEFINER=`root`@`localhost` FUNCTION `fn_duracion_promedio_album`(album_id INT) RETURNS decimal(5,2)
BEGIN
    DECLARE duracion_promedio DECIMAL(5, 2);

    SELECT AVG(duracion) INTO duracion_promedio
    FROM canciones
    WHERE album_id = album_id;

    IF duracion_promedio IS NULL THEN
        RETURN 0; -- Si no hay canciones, retorna 0
    END IF;

    RETURN duracion_promedio;
END