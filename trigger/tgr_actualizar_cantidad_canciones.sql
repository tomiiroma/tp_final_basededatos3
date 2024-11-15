DELIMITER //

CREATE TRIGGER actualizar_total_canciones AFTER INSERT ON cancion FOR EACH ROW BEGIN UPDATE artista SET total_canciones = (SELECT COUNT(*) FROM cancion WHERE fk_artista = NEW.fk_artista) WHERE id_artista = NEW.fk_artista; END //

DELIMITER ;
/*esto lo que hace es actualizar el total de canciones de cada artista*/
/*cuando ingresas una nueva cancion*/

/*primero modifico la tabla agregandole total_canciones*/

INSERT INTO cancion (fk_album, fk_artista, fk_genero, nombre, duracion, descripcion)
VALUES (1, 1, 1, 'Still in the paint', '00:03:30', 'Descripción de la nueva canción');

SELECT 
    nombre, total_canciones
FROM
    artista
WHERE
    id_artista = 1;