CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_artista`(
    IN p_nombre VARCHAR(50),
    IN p_nacionalidad VARCHAR(40),
    IN p_descripcion TEXT
)
BEGIN

declare v_existe int;
declare v_resultado varchar(100);

    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        SET v_resultado = 'Hubo un error al intentar agregar el artista.';

set v_existe = (select count(artista.nombre) from artista where artista.nombre = p_nombre);
  
	if v_existe > 0 then
    
		select "El artista ya se encuentra agregado";
	
    else
    
		INSERT INTO artista (nombre, nacionalidad, descripcion)
		VALUES (p_nombre, p_nacionalidad, p_descripcion);
        
        SELECT 'El artista fue agregado exitosamente.' AS resultado;
	
    end if;

    
END