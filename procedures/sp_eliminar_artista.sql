CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_artista`(
    IN p_id_artista INT
)
BEGIN
    DELETE FROM artista WHERE id_artista = p_id_artista;
END