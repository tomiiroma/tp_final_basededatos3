CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cursor_listar_artistas_canciones`()
BEGIN
    DECLARE finished INT DEFAULT 0;
    DECLARE artista_id INT;
    DECLARE nombre_artista VARCHAR(255);
    DECLARE total_canciones INT;

    -- Declarar el cursor
    DECLARE artista_cursor CURSOR FOR 
        SELECT id_artista, nombre FROM artista;

    -- Declarar un manejador para el fin del cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

    -- Crear una tabla temporal para almacenar los resultados
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_resultados (
        Artista VARCHAR(255),
        Numero_de_Canciones INT
    );

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
        FROM cancion
        WHERE cancion.fk_artista = artista_id;

        -- Insertar los resultados en la tabla temporal
        INSERT INTO temp_resultados (Artista, Numero_de_Canciones)
        VALUES (nombre_artista, total_canciones);
    END LOOP;

    -- Cerrar el cursor
    CLOSE artista_cursor;

    -- Mostrar todos los resultados
    SELECT * FROM temp_resultados;
END