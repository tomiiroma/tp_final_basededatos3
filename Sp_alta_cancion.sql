CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_agregar_cancion`(In p_album int,in p_artista int, in p_genero int, in nombre varchar(40), in p_duracion time, in p_descripcion text)
BEGIN

declare v_resultado varchar(70);

DECLARE CONTINUE HANDLER FOR sqlexception
begin

set v_resultado = 'Ocurrio un error';

select v_resultado;

rollback;

end;

start transaction;

	if CHAR_LENGTH(trim(nombre)) > 0 and CHAR_LENGTH(trim(p_descripcion)) > 0 then
	
		if p_duracion > 0 then
    		
			INSERT INTO cancion (fk_album, fk_artista, fk_genero, nombre, duracion, descripcion) values (p_album, p_artista, p_genero, nombre, p_duracion, p_descripcion);
		
			set v_resultado = 'Cancion agregada';
		
        
			commit;
	
		else
		
			set  v_resultado = 'Descripcion invalida';
			
            rollback;
        
		end if;

	else

		SET v_resultado = 'Nombre o descripcion vacios';
		rollback;

	end if;


select v_resultado;


END