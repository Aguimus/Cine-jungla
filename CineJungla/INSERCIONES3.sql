/* CLIENTES */ 

INSERT INTO clientes (idcliente, nombre, apellido, usuario, contrasena, puntos)

VALUES
('Jacinto', 'Estrada', 'Elpapis58', 'Jaestrada', 125)
, ( 'Anastasio', 'Dominguez', 'Anasdom', 'A5802*', 15)
, ( 'Mariano', 'Guimenez', 'Maguim16', 'Maguim16', 55)
, ( 'Trinidad', 'Mendoza', 'Trinidadmendoza', 'Aguacate18', 45)
, ( 'Juan', 'Aguilar', 'Juanjo', 'referencia', 105)
, ( 'Daniel', 'Valencia', 'Pinturanegra', 'Negra16247', 70)
, ( 'Oscar', 'Rojas', 'Oscar', 'agregainsert', 50)

/*Horarios */
insert into horarios (hora) values (10:00),(12:00),(14:00),(16:00),(18:00),(20:00),(22:00)

/* EMPLEADOS */

INSERT INTO empleados ( nombre, apellido, cedula, fechacontrato, salario, idmultiplex, usuario, contrasena, cargo)

VALUES
( 'Rodolfo', 'Gil', 17178510, '2005-01-23', 3500000, 'TITAN', 'rogil1', 'foil510', 'Director')
, ('Maite', 'Guadalupe', 64161554, '2008-03-16', 1750000, 'TITAN', 'maupe1', 'tepe554', 'Cajero')
, ( 'Severiano', 'Nunez', 35175566, '2007-03-10', 1750000, 'TITAN', 'senez1', 'noez566', 'Despachador')
, ('Rosa', 'Felix', 18149410, '2003-05-02', 1500000, 'TITAN', 'rolix1', 'saix410', 'Encargado')
, ( 'Yolanda', 'Marquez', 55166564, '2006-09-14', 1500000, 'TITAN', 'youez1', 'daez564', 'Encargado')
, ( 'Maribel', 'Guerrero', 82188862, '2009-04-30', 1000000, 'TITAN', 'maero1', 'elro862', 'Aseador')
, ( 'Segismundo', 'Villanueva', 18986890, '2018-11-30', 1000000, 'TITAN', 'seeva1', 'dova890', 'Aseador')

, ( 'Cristian', 'Acosta', 29170540, '2003-03-09', 3500000, 'UNICE', 'crsta1', 'anta540', 'Director')
, ( 'Maria', 'Hierro', 27162562, '2004-12-02', 1750000, 'UNICE', 'marro1', 'iaro562', 'Cajero')
, ( 'Vera', 'Marcelino', 17224176, '2020-04-17', 1750000, 'UNICE', 'veino1', 'rano176', 'Despachador')
, ( 'Ismael', 'Banderas', 61244116, '2015-10-01', 1500000, 'UNICE', 'isras1', 'elas116', 'Encargado')
, ( 'Liberato', 'Juarez', 48193111, '2013-12-31', 1500000, 'UNICE', 'lirez1', 'toez111', 'Encargado')
, ( 'Leire', 'Esperanza', 18170576, '2004-01-22', 1000000, 'UNICE', 'lenza1', 'reza576', 'Aseador')
, ( 'Ramiro', 'Rey', 77181511, '2014-11-21', 1000000, 'UNICE', 'rarey1', 'roey511', 'Aseador')

, ( 'Artemio', 'Medina', 24180511, '2017-05-19', 3500000, 'PLCEN', 'arina1', 'iona511', 'Director')
, ( 'Maria', 'Espinosa', 47174589, '2015-01-17', 1750000, 'PLCEN', 'maosa1', 'iasa589', 'Cajero')
, ( 'Justino', 'Blanco', 49176909, '2012-04-19', 1750000, 'PLCEN', 'junco1', 'noco909', 'Despachador')
, ( 'Mariana', 'Maldonado', 71183276, '2014-05-02', 1500000, 'PLCEN', 'maado1', 'nado276', 'Encargado')
, ( 'Jose', 'Caro', 63172581, '2018-06-19', 1500000, 'PLCEN', 'joaro1', 'sero581', 'Encargado')
, ( 'Yenifer', 'Gallo', 57161588, '2004-04-17', 1000000, 'PLCEN', 'yello1', 'erlo588', 'Aseador')
, ('Adolfo', 'Hitler', 53187693, '2008-09-27', 1000000, 'PLCEN', 'adras1', 'foas693', 'Aseador')

, ('DIG01', 'Valero', 'Gallego', 73182691, '2008-11-05', 3500000, 'GREST', 'vaego1', 'rogo691', 'Director')
, ('CAG01', 'Anastasio', 'Sandoval', 23174584, '2009-03-14', 1750000, 'GREST', 'anval1', 'ioal584', 'Cajero')
, ('DCG01', 'Ruperto', 'Santiago', 11146410, '2010-12-07', 1750000, 'GREST', 'ruago1', 'togo410', 'Despachador')
, ('ESG01', 'Ildefonso', 'Ramirez', 12133448, '2010-01-07', 1500000, 'GREST', 'ilrez1', 'soez448', 'Encargado')
, ('ESG02', 'Maria', 'Noelia', 50156569, '2021-05-03', 1500000, 'GREST', 'malia1', 'iaia569', 'Encargado')
, ('ASG01', 'Apolinar', 'Villa', 41175695, '2000-04-05', 1000000, 'GREST', 'aplla1', 'arla695', 'Aseador')
, ('ASG02', 'Porfirio', 'Rojas', 72172577, '2019-05-17', 1000000, 'GREST', 'pojas1', 'ioas577', 'Aseador')

, ('DIE01', 'Jenifer', 'Cipriano', 14167586, '2007-11-09', 3500000, 'EMBAJ', 'jeano1', 'erno586', 'Director')
, ('CAE01', 'Santos', 'Caballero', 65173145, '2006-08-19', 1750000, 'EMBAJ', 'saero1', 'osro145', 'Cajero')
, ('DCE01', 'Jaime', 'Diaz', 11165925, '2010-10-06', 1750000, 'EMBAJ', 'jaiaz1', 'meaz925', 'Despachador')
, ('ESE01', 'Marcelino', 'Maradona', 52179191, '2019-03-28', 1500000, 'EMBAJ', 'maona1', 'nona191', 'Encargado')
, ('ESE02', 'Carmen', 'Tapia', 38818882, '2018-06-16', 1500000, 'EMBAJ', 'capia1', 'enia882', 'Encargado')
, ('ASE01', 'Filomena', 'Torres', 12157372, '2009-10-05', 1000000, 'EMBAJ', 'fires1', 'naes372', 'Aseador')
, ('ASE02', 'Teresa', 'Azucena', 26161108, '2016-03-10', 1000000, 'EMBAJ', 'teena1', 'sana108', 'Aseador')

, ('DIA01', 'Miguel', 'Feijoo', 20122016, '2019-07-18', 3500000, 'AMERI', 'mijoo1', 'eloo016', 'Director')
, ('CAA01', 'Pelayo', 'Carrasco', 54163176, '2017-06-18', 1750000, 'AMERI', 'maosa1', 'iasa589', 'Cajero')
, ('DCA01', 'Ligia', 'Asis', 34159162, '2007-04-15', 1750000, 'AMERI', 'lisis1', 'iais162', 'Despachador')
, ('ESA01', 'Marciano', 'Paredes', 61183996, '2011-01-28', 1500000, 'AMERI', 'mades1', 'noes996', 'Encargado')
, ('ESA02', 'Octavia', 'Jordana', 29010872, '2019-07-24', 1500000, 'AMERI', 'ocana1', 'iana872', 'Encargado')
, ('ASA01', 'Roxana', 'Antunez', 55175591, '2006-07-08', 1000000, 'AMERI', 'ronez1', 'naez591', 'Aseador')
, ('ASA02', 'Ingrid', 'Cabrera', 28921187, '2020-03-12', 1000000, 'AMERI', 'inera1', 'idra187', 'Aseador');

/* MULTIPLEX */

INSERT INTO multiplex(idmultiplex, nombre, ingresos)

VALUES
('TITAN', 'Titan Plaza', 0)
, ('UNICE', 'Unicentro', 0)
, ('PLCEN', 'Plaza Central', 0)
, ('GREST', 'Gran Estacion', 0)
, ('EMBAJ', 'Embajador', 0)
, ('AMERI', 'Las Americas', 0);

/* PELICULA */

INSERT INTO pelicula(idpelicula, titulo, categoria, sinopsis, restriccion)

VALUES
('S3001', 'Spencer', 'Drama', 'Diana deja su matrimonio con el principe Carlos', '12+')
, ('B1001', 'Batman', 'Accion', 'Batman investiga a un asesino llamado Enigma', '12+')
, ('U1001', 'Uncharted', 'Accion', 'Nathan Drake en su busqueda por tesoros', '12+')
, ('A1001', 'Ambulancia', 'Accion', 'Un robo ocasiona el secuestro de una ambulancia', '15+')
, ('T2001', 'Los Tipos Malos', 'Animado', 'Una banda de animales enfrentan su mayor desafio', '7+')
, ('J1001', 'El Justiciero', 'Accion', 'Markus debe regresar al frente de batalla', '12+')
, ('B3001', 'Belfast', 'Drama', 'La vida de un niño a finales de los 60s', '7+')
, ('M4001', 'La Medium', 'Terror', 'Una posesion que desafiara cualquier creencia', '15+')
, ('P2001', 'Princesa x Accidente', 'Animado', 'Pil hace creer a todos que es de la familia real', 'TP')
, ('C5001', 'C de Almas Perdidas', 'Thriller', 'Trabajador puede manipular a la gente con su habla', '12+');

/* SALA */

INSERT INTO sala(idsala, idmultiplex, idpelicula)

VALUES
('T0001', 'TITAN', 'S3001')
, ('T0002', 'TITAN', 'B1001')
, ('T0003', 'TITAN', 'U1001')
, ('T0004', 'TITAN', 'A1001')
, ('T0005', 'TITAN', 'T2001')

, ('U0001', 'UNICE', 'S3001')
, ('U0002', 'UNICE', 'B1001')
, ('U0003', 'UNICE', 'A1001')
, ('U0004', 'UNICE', 'P2001')
, ('U0005', 'UNICE', 'C5001')

, ('P0001', 'PLCEN', 'S3001')
, ('P0002', 'PLCEN', 'B1001')
, ('P0003', 'PLCEN', 'T2001')
, ('P0004', 'PLCEN', 'J1001')
, ('P0005', 'PLCEN', 'B3001')

, ('G0001', 'GREST', 'S3001')
, ('G0002', 'GREST', 'B1001')
, ('G0003', 'GREST', 'A1001')
, ('G0004', 'GREST', 'M4001')
, ('G0005', 'GREST', 'P2001')

, ('E0001', 'EMBAJ', 'S3001')
, ('E0002', 'EMBAJ', 'B1001')
, ('E0003', 'EMBAJ', 'A1001')
, ('E0004', 'EMBAJ', 'M4001')
, ('E0005', 'EMBAJ', 'C5001')

, ('A0001', 'AMERI', 'S3001')
, ('A0002', 'AMERI', 'B1001')
, ('A0003', 'AMERI', 'B1001')
, ('A0004', 'AMERI', 'A1001')
, ('A0005', 'AMERI', 'T2001');

/* TIPOSILLAS*/

INSERT INTO tiposillas(idtiposilla, desctiposilla, precio)

VALUES
('GENER', 'General', 11000)
, ('PREFE', 'Preferencial', 15000);

