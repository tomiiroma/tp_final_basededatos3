CREATE DEFINER=`root`@`localhost` PROCEDURE `fn_cursor_listar_artistas_canciones`()
BEGIN
    DECLARE finished INT DEFAULT 0;
    DECLARE artista_id INT;
    DECLARE nombre_artista VARCHAR(255);
    DECLARE total_canciones INT;

    -- Declarar el cursor
    DECLARE artista_cursor CURSOR FOR 
        SELECT id, nombre FROM artistas;

    -- Declarar un manejador para el fin del cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

    -- Abrir el cursor
    OPEN artista_cursor;

    -- Recorrer el cursor
    read_loop: LOOP
        FETCH artista_cursor INTO artista_id, nombre_artista;

        IF finished THEN
            LEAVE read_loop;
        END IF;

        -- Contar las canciones de cada artista
        SELECT COUNT(*) INTO total_canciones 
        FROM canciones 
        WHERE artista_id = artista_id;

        -- Mostrar los resultados
        SELECT nombre_artista AS 'Artista', total_canciones AS 'Número de Canciones';
    END LOOP;

    -- Cerrar el cursor
    CLOSE artista_cursor;
END