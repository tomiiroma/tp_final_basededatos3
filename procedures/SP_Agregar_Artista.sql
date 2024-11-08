CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_artista`(
    IN p_nombre VARCHAR(50),
    IN p_nacionalidad VARCHAR(40),
    IN p_descripcion TEXT
)
BEGIN


declare v_existe int;
declare v_resultado varchar(100);




   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
	BEGIN
    SET v_resultado = 'Hubo un error al intentar agregar el artista.';
    ROLLBACK;
    SELECT v_resultado AS resultado;
	END;
    
    START TRANSACTION;

    Select COUNT(*) into v_existe from artista where trim(nombre) = trim(p_nombre);


  
	if v_existe > 0 then /* Verifica que el artista no se encuentre repetido en la base de datos */
    
		select "El artista ya se encuentra agregado";
		rollback;
    else
	    
			if not p_nombre REGEXP '^[A-Za-z ]+$' THEN /* Verifica que el nombre del artista no se pueda ingresar numeros o carácteres especiales */
        
			Select 'El nombre no puede contener numeros o carácteres especiales';
		
			Rollback;

			else
        
					if Length(trim(p_nacionalidad)) > 0 and length(trim(p_nombre)) > 0 then /* Verifica que no se pueda ingresar cadenas vacias en el nombre y en la nacionalidad */
			
					Insert into artista (nombre, nacionalidad, descripcion) values (trim(p_nombre), trim(p_nacionalidad), p_descripcion);
			
					commit;
        
					Select 'El artista fue agregado exitosamente.' AS resultado;
	
					else 
	
								rollback;
         
								if Length(trim(p_nacionalidad)) = 0 then
					
								Select 'No se ha ingresado ninguna nacionalidad';
								
                                else
            
								select 'No se ha ingresado ningun nombre';
            
								end if;
		
		
					end if;
		
			end if;
    
    end if;

    
END