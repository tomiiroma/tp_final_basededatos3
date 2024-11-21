
DELIMITER //

-- Trigger para actualizar seguidores de los artistas

CREATE TRIGGER ActualizarSeguidoresDespuesDeAgregar
AFTER INSERT ON seguidor
FOR EACH ROW
BEGIN
    UPDATE artista
    SET cantidad_seguidores = cantidad_seguidores + 1
    WHERE id_artista = NEW.fk_artista;
END //

DELIMITER ;
