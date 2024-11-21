CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_artista`(
    IN p_nombre VARCHAR(50),
    IN p_nacionalidad VARCHAR(40),
    IN p_descripcion TEXT
)
BEGIN
    declare v_resultado varchar(100);

    declare continue handler for sqlexception
    begin
        set v_resultado = 'Hubo un error al intentar agregar el artista.';
        rollback;
        select v_resultado as resultado;
    end;

 
    start transaction;

    /* Valida que el nombre no tiene caracteres especiales y numeros */
    
    if not p_nombre REGEXP '^[A-Za-z ]+$' then
        set v_resultado = 'El nombre no puede contener números o caracteres especiales.';
        rollback;
        select v_resultado as resultado;

    else
   
        if LENGTH(TRIM(p_nacionalidad)) > 0 and LENGTH(TRIM(p_nombre)) > 0 then

            insert into artista (nombre, nacionalidad, descripcion)
            values (TRIM(p_nombre), TRIM(p_nacionalidad), p_descripcion);

            commit;
            set v_resultado = 'El artista fue agregado exitosamente.';
            select v_resultado AS resultado;

        else
            rollback;
            
            /* Verifica que la cadena sea mayor a 0 y no contengan espacios "     ", ya que trim se los saca */
            
            if LENGTH(TRIM(p_nacionalidad)) = 0 then
                set v_resultado = 'No se ha ingresado ninguna nacionalidad.';
            else
                set v_resultado = 'No se ha ingresado ningún nombre.';
            end if;
            select v_resultado as resultado;
        end if;
    end if;
    
end