INSERT INTO suscripcion (nombre, precio_mensual, duracion) VALUES
('Básica', 9.99, 30),
('Premium', 14.99, 30),
('Familiar', 19.99, 30),
('Estudiante', 4.99, 30),
('Anual', 99.99, 365),
('Mensual', 5.99, 30),
('Trial', 0.00, 7),
('Gold', 24.99, 30),
('Silver', 12.99, 30),
('Platinum', 29.99, 30),
('VIP', 49.99, 30),
('Dúo', 15.99, 30),
('Trío', 19.99, 30),
('Estudiante Plus', 7.99, 30),
('Anual Familiar', 119.99, 365),
('Corporate', 199.99, 365),
('Semanal', 2.99, 7),
('Bimestral', 17.99, 60),
('Semestral', 49.99, 180),
('Gratis', 0.00, 30);



INSERT INTO `usuario`(`fk_suscripcion`, `nombre`, `apellido`, `dni`, `telefono`, `correo`, `fecha_registro`) VALUES
(1, 'Juan', 'Pérez', '12345678', '1234567890', 'juan.perez@example.com', '2024-01-15'),  -- Usuario 1
(2, 'María', 'Gómez', '23456789', '2345678901', 'maria.gomez@example.com', '2024-01-16'),  -- Usuario 2
(1, 'Carlos', 'López', '34567890', '3456789012', 'carlos.lopez@example.com', '2024-01-17'),  -- Usuario 3
(3, 'Ana', 'Martínez', '45678901', '4567890123', 'ana.martinez@example.com', '2024-01-18'),  -- Usuario 4
(2, 'Luis', 'Hernández', '56789012', '5678901234', 'luis.hernandez@example.com', '2024-01-19'),  -- Usuario 5
(1, 'Sofía', 'Ramírez', '67890123', '6789012345', 'sofia.ramirez@example.com', '2024-01-20'),  -- Usuario 6
(2, 'Diego', 'Torres', '78901234', '7890123456', 'diego.torres@example.com', '2024-01-21'),  -- Usuario 7
(3, 'Valeria', 'Rojas', '89012345', '8901234567', 'valeria.rojas@example.com', '2024-01-22'),  -- Usuario 8
(1, 'Javier', 'Castillo', '90123456', '9012345678', 'javier.castillo@example.com', '2024-01-23'),  -- Usuario 9
(2, 'Camila', 'Salazar', '01234567', '0123456789', 'camila.salazar@example.com', '2024-01-24'),  -- Usuario 10
(1, 'Fernando', 'Mendoza', '13579246', '1357924680', 'fernando.mendoza@example.com', '2024-01-25'),  -- Usuario 11
(3, 'Lucía', 'Sánchez', '24681357', '2468135790', 'lucia.sanchez@example.com', '2024-01-26'),  -- Usuario 12
(1, 'Andrés', 'Jiménez', '35792468', '3579246801', 'andres.jimenez@example.com', '2024-01-27'),  -- Usuario 13
(2, 'Isabel', 'Paredes', '46813579', '4681357902', 'isabel.paredes@example.com', '2024-01-28'),  -- Usuario 14
(1, 'Pablo', 'Guerrero', '57924680', '5792468013', 'pablo.guerrero@example.com', '2024-01-29'),  -- Usuario 15
(3, 'Gloria', 'Cruz', '68035791', '6803579124', 'gloria.cruz@example.com', '2024-01-30'),  -- Usuario 16
(1, 'Ricardo', 'Fuentes', '79146802', '7914680235', 'ricardo.fuentes@example.com', '2024-01-31'),  -- Usuario 17
(2, 'Laura', 'Villanueva', '80257913', '8025791346', 'laura.villanueva@example.com', '2024-02-01'),  -- Usuario 18
(3, 'Samuel', 'Castañeda', '91368024', '9136802457', 'samuel.castaneda@example.com', '2024-02-02'),  -- Usuario 19
(1, 'Estefanía', 'Olivares', '02479135', '0247913568', 'estefania.olivares@example.com', '2024-02-03');  -- Usuario 20





INSERT INTO genero (nombre) VALUES
('Pop'),
('Rock'),
('Jazz'),
('Hip Hop'),
('Clásica'),
('Reggaeton'),
('Electrónica'),
('Folk'),
('R&B'),
('Metal'),
('Blues'),
('Country'),
('Ska'),
('Reggae'),
('Indie'),
('Funk'),
('Disco'),
('Soul'),
('Alternativo'),
('Latino');




INSERT INTO artista (nombre, nacionalidad, descripcion) VALUES
('Led Zeppelin', 'Reino Unido', 'Una de las bandas más influyentes en la historia del rock.'),
('Queen', 'Reino Unido', 'Banda icónica liderada por Freddie Mercury, conocida por sus impresionantes actuaciones en vivo.'),
('Nirvana', 'Estados Unidos', 'Banda de grunge que definió una generación con su álbum "Nevermind".'),
('Metallica', 'Estados Unidos', 'Grupo pionero del metal, conocido por su energía en el escenario y sus letras profundas.'),
('Oasis', 'Reino Unido', 'Banda de Britpop famosa por su álbum "(What\'s the Story) Morning Glory?".'),
('AC/DC', 'Australia', 'Banda australiana de rock, conocida por su sonido potente y sus himnos atemporales.'),
('Guns N\' Roses', 'Estados Unidos', 'Banda de hard rock que alcanzó la fama mundial con su álbum "Appetite for Destruction".'),
('Red Hot Chili Peppers', 'Estados Unidos', 'Banda conocida por su fusión de rock, funk y punk, con letras introspectivas.'),
('The Rolling Stones', 'Reino Unido', 'Banda de rock clásica con una carrera que abarca más de cinco décadas.'),
('Foo Fighters', 'Estados Unidos', 'Formada por el ex-baterista de Nirvana, Dave Grohl, con un sonido alternativo potente.'),
('Arctic Monkeys', 'Reino Unido', 'Banda de indie rock reconocida mundialmente.'),
('Coldplay', 'Reino Unido', 'Banda famosa por su estilo melódico y lírico.'),
('The Beatles', 'Reino Unido', 'La banda más icónica en la historia de la música moderna.'),
('Pink Floyd', 'Reino Unido', 'Banda de rock progresivo famosa por sus complejos álbumes conceptuales.'),
('Radiohead', 'Reino Unido', 'Banda de rock alternativo con un estilo único e influyente.'),
('The Strokes', 'Estados Unidos', 'Banda pionera del revival del garage rock de los 2000.'),
('The Killers', 'Estados Unidos', 'Banda de rock alternativo famosa por su álbum "Hot Fuss".'),
('Linkin Park', 'Estados Unidos', 'Banda conocida por fusionar rock con elementos electrónicos y rap.'),
('Green Day', 'Estados Unidos', 'Banda de punk rock con gran influencia en la década de los 90.'),
('Muse', 'Reino Unido', 'Banda conocida por su sonido épico y progresivo.');




INSERT INTO album (fk_artista, nombre, fecha_lanzamiento, descripcion) VALUES
(1, 'Led Zeppelin IV', '1971-11-08', 'Álbum icónico que incluye "Stairway to Heaven".'),
(2, 'A Night at the Opera', '1975-11-21', 'Considerado uno de los mejores álbumes de rock de todos los tiempos.'),
(3, 'Nevermind', '1991-09-24', 'Álbum que catapultó a Nirvana a la fama mundial.'),
(4, 'Metallica', '1991-08-12', 'Conocido como el "Álbum Negro", incluye varios clásicos del metal.'),
(5, '(What\'s the Story) Morning Glory?', '1995-10-30', 'Álbum que incluye los éxitos "Wonderwall" y "Don\'t Look Back in Anger".'),
(1, 'Houses of the Holy', '1973-03-28', 'Álbum que mezcla diversos estilos musicales, incluyendo reggae y funk.'),
(2, 'News of the World', '1977-10-28', 'Con éxitos como "We Will Rock You" y "We Are the Champions".'),
(3, 'In Utero', '1993-09-21', 'El tercer y último álbum de estudio de Nirvana, con un sonido más crudo.'),
(4, 'Load', '1996-06-04', 'Álbum que presenta un cambio en el sonido de Metallica.'),
(5, 'Dig Out Your Soul', '2008-10-06', 'El último álbum de estudio de Oasis, que explora nuevos sonidos.'),
(6, 'Highway to Hell', '1979-07-27', 'Uno de los álbumes más importantes de AC/DC.'),
(7, 'Appetite for Destruction', '1987-07-21', 'Álbum debut que llevó a Guns N\' Roses a la fama.'),
(8, 'Californication', '1999-06-08', 'Álbum que marcó el renacimiento de los Red Hot Chili Peppers.'),
(9, 'Sticky Fingers', '1971-04-23', 'Uno de los álbumes más influyentes de The Rolling Stones.'),
(10, 'The Colour and the Shape', '1997-05-20', 'Álbum que consolidó a Foo Fighters como una de las bandas más grandes del rock.'),
(11, 'AM', '2013-09-09', 'Álbum que lanzó a Arctic Monkeys al estrellato mundial.'),
(12, 'A Rush of Blood to the Head', '2002-08-26', 'Uno de los álbumes más aclamados de Coldplay.'),
(13, 'Abbey Road', '1969-09-26', 'El último álbum grabado por The Beatles.'),
(14, 'The Dark Side of the Moon', '1973-03-01', 'Álbum conceptual que define la carrera de Pink Floyd.'),
(15, 'OK Computer', '1997-05-21', 'Álbum que consolidó a Radiohead como una de las bandas más influyentes.'),
(16, 'Is This It', '2001-07-30', 'El álbum debut de The Strokes, una pieza clave en el resurgimiento del garage rock.'),
(17, 'Hot Fuss', '2004-06-07', 'El álbum debut de The Killers que incluye éxitos como "Mr. Brightside" y "Somebody Told Me".'),
(18, 'Hybrid Theory', '2000-10-24', 'El álbum debut de Linkin Park que mezcló rock, metal y rap, catapultándolos a la fama.'),
(19, 'American Idiot', '2004-09-21', 'Álbum conceptual de Green Day que narra una crítica política y social.'),
(20, 'Black Holes and Revelations', '2006-07-03', 'Álbum de Muse que mezcla rock, electrónica y temas épicos.'); 




INSERT INTO cancion (fk_album, fk_artista, fk_genero, nombre, duracion, descripcion) VALUES
(1, 1, 1, 'Stairway to Heaven', '8:02', 'Considerada una de las mejores canciones de rock de todos los tiempos.'),
(1, 1, 1, 'Black Dog', '4:55', 'Una de las canciones más populares de Led Zeppelin, con un riff icónico.'),
(2, 2, 1, 'Bohemian Rhapsody', '5:55', 'Una obra maestra de Queen, conocida por su compleja estructura.'),
(2, 2, 1, 'You’re My Best Friend', '2:52', 'Una canción pop rock escrita por el bajista de Queen, John Deacon.'),
(3, 3, 2, 'Smells Like Teen Spirit', '5:01', 'El himno de la generación grunge de los 90.'),
(3, 3, 2, 'Come as You Are', '3:39', 'Un éxito de Nirvana con un sonido más melódico.'),
(4, 4, 3, 'Enter Sandman', '5:31', 'Uno de los mayores éxitos de Metallica, con una introducción legendaria.'),
(4, 4, 3, 'The Unforgiven', '6:26', 'Una balada pesada de Metallica, con un tema introspectivo.'),
(5, 5, 4, 'Wonderwall', '4:18', 'La canción más famosa de Oasis y un himno del Britpop.'),
(5, 5, 4, 'Don’t Look Back in Anger', '4:48', 'Otra de las canciones más emblemáticas de Oasis, cantada por Noel Gallagher.'),
(6, 1, 1, 'The Ocean', '4:31', 'Un clásico de Led Zeppelin, con un ritmo pegadizo y cambios de tempo.'),
(7, 2, 1, 'We Will Rock You', '2:02', 'Una de las canciones más reconocibles de Queen, con su ritmo icónico de palmas y pisadas.'),
(7, 2, 1, 'We Are the Champions', '2:59', 'Un himno inmortal de victoria y superación, utilizado en eventos deportivos en todo el mundo.'),
(8, 3, 2, 'Heart-Shaped Box', '4:41', 'Una de las canciones más oscuras y populares de Nirvana.'),
(9, 4, 3, 'Until It Sleeps', '4:30', 'Una de las canciones de Metallica que marcó su cambio de estilo en el álbum "Load".'),
(10, 5, 4, 'The Shock of the Lightning', '5:02', 'Uno de los sencillos más potentes de Oasis en su último álbum.'),
(11, 6, 1, 'Highway to Hell', '3:28', 'El himno de AC/DC que definió su carrera y el rock en general.'),
(12, 7, 1, 'Sweet Child O\' Mine', '5:56', 'Uno de los éxitos más grandes de Guns N\' Roses, con un riff de guitarra icónico.'),
(13, 8, 5, 'Californication', '5:29', 'Una de las canciones más famosas de los Red Hot Chili Peppers, con un mensaje introspectivo sobre la cultura de California.'),
(1, 1, 1, 'Rock and Roll', '3:40', 'Una celebración del rock and roll, famosa por su energía y ritmo contagioso.');



INSERT INTO playlist (fk_usuario, nombre, fecha_creacion, descripcion) VALUES
(1, 'Rock Clásico', '2023-01-15', 'Las mejores canciones del rock clásico de los años 60 y 70.'),
(2, 'Workout Mix', '2023-02-20', 'Playlist energizante para entrenamientos intensos.'),
(3, 'Chill Vibes', '2023-03-05', 'Canciones relajadas para un ambiente tranquilo.'),
(4, 'Indie Hits', '2023-03-18', 'Los mejores éxitos del indie rock y pop.'),
(5, 'Grunge Revival', '2023-04-02', 'Revive el sonido del grunge de los 90.'),
(6, 'Metal Anthems', '2023-04-12', 'Himnos del metal para liberar adrenalina.'),
(1, 'Acoustic Mornings', '2023-05-08', 'Canciones acústicas perfectas para empezar el día.'),
(2, 'Road Trip', '2023-05-24', 'La playlist definitiva para un viaje en carretera.'),
(3, 'Love Songs', '2023-06-01', 'Baladas románticas para momentos especiales.'),
(4, '80s Party', '2023-06-14', 'Clásicos de los 80 para una fiesta inolvidable.'),
(5, 'Summer Vibes', '2023-06-22', 'Canciones frescas para disfrutar del verano.'),
(6, 'Alternative Rock', '2023-07-07', 'Una colección de los mejores temas de rock alternativo.'),
(1, 'Relax & Unwind', '2023-07-20', 'Playlist para relajarse después de un largo día.'),
(2, 'Pop Hits', '2023-08-03', 'Las canciones más populares de las listas de éxitos.'),
(3, 'Throwback Jams', '2023-08-12', 'Canciones clásicas que siempre te harán recordar viejos tiempos.'),
(4, 'Festival Anthems', '2023-08-26', 'Las mejores canciones que hacen vibrar los festivales.'),
(5, 'Hard Rock Heroes', '2023-09-10', 'Los héroes del hard rock en una sola playlist.'),
(6, 'Piano & Chill', '2023-09-23', 'Melodías suaves y relajantes al piano.'),
(1, '90s Rock', '2023-10-01', 'Los mejores hits del rock de los 90.'),
(2, 'Driving Beats', '2023-10-03', 'Beats potentes para esos viajes largos en coche.');



INSERT INTO seguidor (fk_usuario, fk_artista) VALUES
(1, 1),  -- Usuario 1 sigue al artista 1: Led Zeppelin
(1, 2),  -- Usuario 1 sigue al artista 2: Queen
(1, 3),  -- Usuario 1 sigue al artista 3: Nirvana
(2, 1),  -- Usuario 2 sigue al artista 1: Led Zeppelin
(2, 4),  -- Usuario 2 sigue al artista 4: Metallica
(2, 5),  -- Usuario 2 sigue al artista 5: Oasis
(3, 2),  -- Usuario 3 sigue al artista 2: Queen
(3, 6),  -- Usuario 3 sigue al artista 6: AC/DC
(3, 7),  -- Usuario 3 sigue al artista 7: Guns N' Roses
(4, 4),  -- Usuario 4 sigue al artista 4: Metallica
(4, 8),  -- Usuario 4 sigue al artista 8: Red Hot Chili Peppers
(5, 5),  -- Usuario 5 sigue al artista 5: Oasis
(5, 9),  -- Usuario 5 sigue al artista 9: Muse
(1, 6),  -- Usuario 1 sigue al artista 6: AC/DC
(2, 7),  -- Usuario 2 sigue al artista 7: Guns N' Roses
(3, 8),  -- Usuario 3 sigue al artista 8: Red Hot Chili Peppers
(4, 9),  -- Usuario 4 sigue al artista 9: Muse
(5, 1),  -- Usuario 5 sigue al artista 1: Led Zeppelin
(1, 4),  -- Usuario 1 sigue al artista 4: Metallica
(2, 3);  -- Usuario 2 sigue al artista 3: Nirvana




INSERT INTO playlist_cancion (fk_playlist, fk_cancion) VALUES
(1, 1),  -- Playlist 1 incluye la canción 1: "Stairway to Heaven"
(1, 2),  -- Playlist 1 incluye la canción 2: "Black Dog"
(1, 3),  -- Playlist 1 incluye la canción 3: "Bohemian Rhapsody"
(2, 4),  -- Playlist 2 incluye la canción 4: "Smells Like Teen Spirit"
(2, 5),  -- Playlist 2 incluye la canción 5: "Come as You Are"
(2, 6),  -- Playlist 2 incluye la canción 6: "Enter Sandman"
(3, 7),  -- Playlist 3 incluye la canción 7: "Wonderwall"
(3, 8),  -- Playlist 3 incluye la canción 8: "Don't Look Back in Anger"
(3, 9),  -- Playlist 3 incluye la canción 9: "The Ocean"
(4, 10), -- Playlist 4 incluye la canción 10: "The Unforgiven"
(4, 11), -- Playlist 4 incluye la canción 11: "Until It Sleeps"
(4, 12), -- Playlist 4 incluye la canción 12: "Heart-Shaped Box"
(5, 13), -- Playlist 5 incluye la canción 13: "The Shock of the Lightning"
(5, 14), -- Playlist 5 incluye la canción 14: "Highway to Hell"
(5, 15), -- Playlist 5 incluye la canción 15: "Sweet Child O' Mine"
(6, 16), -- Playlist 6 incluye la canción 16: "Californication"
(6, 17), -- Playlist 6 incluye la canción 17: "Stairway to Heaven" (de nuevo)
(6, 18), -- Playlist 6 incluye la canción 18: "We Will Rock You"
(7, 1),  -- Playlist 7 incluye la canción 1: "Stairway to Heaven" (de nuevo)
(7, 4),  -- Playlist 7 incluye la canción 4: "Smells Like Teen Spirit"
(7, 8);  -- Playlist 7 incluye la canción 8: "Don't Look Back in Anger"





INSERT INTO reproduccion (fk_usuario, fk_cancion, fecha_hora) VALUES
(1, 1, '2024-10-01 10:00:00'),  -- Usuario 1 reproduce "Stairway to Heaven"
(2, 3, '2024-10-01 10:05:00'),  -- Usuario 2 reproduce "Bohemian Rhapsody"
(1, 5, '2024-10-01 10:10:00'),  -- Usuario 1 reproduce "Smells Like Teen Spirit"
(3, 4, '2024-10-01 10:15:00'),  -- Usuario 3 reproduce "You’re My Best Friend"
(2, 7, '2024-10-01 10:20:00'),  -- Usuario 2 reproduce "Enter Sandman"
(3, 6, '2024-10-01 10:25:00'),  -- Usuario 3 reproduce "Come as You Are"
(1, 8, '2024-10-01 10:30:00'),  -- Usuario 1 reproduce "The Unforgiven"
(2, 9, '2024-10-01 10:35:00'),  -- Usuario 2 reproduce "Wonderwall"
(4, 10, '2024-10-01 10:40:00'), -- Usuario 4 reproduce "Don't Look Back in Anger"
(5, 11, '2024-10-01 10:45:00'), -- Usuario 5 reproduce "The Ocean"
(4, 12, '2024-10-01 10:50:00'), -- Usuario 4 reproduce "We Will Rock You"
(1, 13, '2024-10-01 10:55:00'), -- Usuario 1 reproduce "We Are the Champions"
(5, 14, '2024-10-01 11:00:00'), -- Usuario 5 reproduce "Heart-Shaped Box"
(2, 15, '2024-10-01 11:05:00'), -- Usuario 2 reproduce "Until It Sleeps"
(3, 16, '2024-10-01 11:10:00'), -- Usuario 3 reproduce "The Shock of the Lightning"
(4, 17, '2024-10-01 11:15:00'), -- Usuario 4 reproduce "Highway to Hell"
(5, 18, '2024-10-01 11:20:00'), -- Usuario 5 reproduce "Sweet Child O' Mine"
(1, 19, '2024-10-01 11:25:00'), -- Usuario 1 reproduce "Californication"
(3, 3, '2024-10-01 11:35:00'),  -- Usuario 3 reproduce "Bohemian Rhapsody"
(4, 5, '2024-10-01 11:40:00');  -- Usuario 4 reproduce "Smells Like Teen Spirit"


