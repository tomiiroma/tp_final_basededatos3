CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_agregar_nuevo_tipo_suscripcion`(
    IN p_nombre VARCHAR(30),
    IN p_precio_mensual FLOAT,
    IN p_duracion int
)
BEGIN
    DECLARE v_resultado VARCHAR(70);
    DECLARE v_error INT DEFAULT 0;

    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        SET v_error = 1;
        ROLLBACK;
    END;

    START TRANSACTION;

   
    if CHAR_LENGTH(TRIM(p_nombre)) = 0 then /* Verifica que no se ingresen caracteres vacios, ejemplo ("         ") */
        set v_error = 1;
        set v_resultado = 'El nombre de la suscripción no puede estar vacío';
    elseif p_precio_mensual <= 0 then               /* Si se ingresa un valor negativo */
        set v_error = 1;
        set v_resultado = 'El precio mensual debe ser mayor a 0';
    elseif p_duracion <= 0 then /* Verifica que la cantidad de dias de la suscripcion sea mayor 0. */
        set v_error = 1;
        set v_resultado = 'La duración debe ser mayor que 0 días';
    end if;

    
    if v_error = 0 then
        insert into suscripcion (nombre, precio_mensual, duracion)
        values (p_nombre, p_precio_mensual, p_duracion);

        if v_error = 0 then
            commit;
            set v_resultado = 'Suscripción agregada exitosamente';
        else
            set v_resultado = 'Ocurrió un error y se realizó un rollback';
        end if;
    else
        rollback;
    end if;

    select v_resultado;

end