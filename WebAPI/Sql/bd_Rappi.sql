

use master
go

if exists (select * from sys.databases where name = 'bd_Rappi')
	begin
		use master
		drop database bd_Rappi
	end

create database bd_Rappi
go

use bd_Rappi
go

create table Tienda(
	idTienda int identity primary key,
	nomTienda varchar(60),
	direccion varchar(120)
)
go

create table Categoria(
	idCat  int identity primary key,
	idTienda int ,
	nomCat varchar(60),
	imagen varchar(120),
	foreign key(idTienda) references Tienda(idTienda)
)
go

create table Producto(
	idProd int identity primary key,
	idCat int,
	nomProd varchar(60),
	precio decimal(8,2),
	imagen varchar(100),
	foreign key(idCat) references Categoria(idCat) 
)
go

create table Paises(
	idPais int primary key,
	iso char(2),
	nomPais varchar(50)
)
go

create table Banco(
	idbanco int identity primary key,
	nomBanco varchar(50)
)
go

create table Cuenta(
	idCuenta int identity primary key,
	idPais int,
	nombres varchar(60),
	apellidos varchar(60),
	numCelular char(9),
	correo varchar(50),
	contrasennia varchar(60),
	foreign key(idPais) references Paises(idPais) 
)
go


create table AsociarCuenta(
	idAsociarCuenta int identity primary key,
	idCuenta int,
	numeroCuenta varchar(30),
	numeroInterbancario varchar(30),
	domicilioFiscal varchar(100),
	telefono char(11),
	foreign key(idCuenta) references Cuenta(idCuenta) 
)
go

alter table AsociarCuenta add idbanco int
go

alter table AsociarCuenta add foreign key(idBanco) references Banco(idBanco)
go

update AsociarCuenta set idBanco = 1
go
 
INSERT INTO paises VALUES(1, 'AF', 'Afganist?n');
INSERT INTO paises VALUES(2, 'AX', 'Islas Gland');
INSERT INTO paises VALUES(3, 'AL', 'Albania');
INSERT INTO paises VALUES(4, 'DE', 'Alemania');
INSERT INTO paises VALUES(5, 'AD', 'Andorra');
INSERT INTO paises VALUES(6, 'AO', 'Angola');
INSERT INTO paises VALUES(7, 'AI', 'Anguilla');
INSERT INTO paises VALUES(8, 'AQ', 'Ant?rtida');
INSERT INTO paises VALUES(9, 'AG', 'Antigua y Barbuda');
INSERT INTO paises VALUES(10, 'AN', 'Antillas Holandesas');
INSERT INTO paises VALUES(11, 'SA', 'Arabia Saud?');
INSERT INTO paises VALUES(12, 'DZ', 'Argelia');
INSERT INTO paises VALUES(13, 'AR', 'Argentina');
INSERT INTO paises VALUES(14, 'AM', 'Armenia');
INSERT INTO paises VALUES(15, 'AW', 'Aruba');
INSERT INTO paises VALUES(16, 'AU', 'Australia');
INSERT INTO paises VALUES(17, 'AT', 'Austria');
INSERT INTO paises VALUES(18, 'AZ', 'Azerbaiy?n');
INSERT INTO paises VALUES(19, 'BS', 'Bahamas');
INSERT INTO paises VALUES(20, 'BH', 'Bahr?in');
INSERT INTO paises VALUES(21, 'BD', 'Bangladesh');
INSERT INTO paises VALUES(22, 'BB', 'Barbados');
INSERT INTO paises VALUES(23, 'BY', 'Bielorrusia');
INSERT INTO paises VALUES(24, 'BE', 'B?lgica');
INSERT INTO paises VALUES(25, 'BZ', 'Belice');
INSERT INTO paises VALUES(26, 'BJ', 'Benin');
INSERT INTO paises VALUES(27, 'BM', 'Bermudas');
INSERT INTO paises VALUES(28, 'BT', 'Bhut?n');
INSERT INTO paises VALUES(29, 'BO', 'Bolivia');
INSERT INTO paises VALUES(30, 'BA', 'Bosnia y Herzegovina');
INSERT INTO paises VALUES(31, 'BW', 'Botsuana');
INSERT INTO paises VALUES(32, 'BV', 'Isla Bouvet');
INSERT INTO paises VALUES(33, 'BR', 'Brasil');
INSERT INTO paises VALUES(34, 'BN', 'Brun?i');
INSERT INTO paises VALUES(35, 'BG', 'Bulgaria');
INSERT INTO paises VALUES(36, 'BF', 'Burkina Faso');
INSERT INTO paises VALUES(37, 'BI', 'Burundi');
INSERT INTO paises VALUES(38, 'CV', 'Cabo Verde');
INSERT INTO paises VALUES(39, 'KY', 'Islas Caim?n');
INSERT INTO paises VALUES(40, 'KH', 'Camboya');
INSERT INTO paises VALUES(41, 'CM', 'Camer?n');
INSERT INTO paises VALUES(42, 'CA', 'Canad?');
INSERT INTO paises VALUES(43, 'CF', 'Rep?blica Centroafricana');
INSERT INTO paises VALUES(44, 'TD', 'Chad');
INSERT INTO paises VALUES(45, 'CZ', 'Rep?blica Checa');
INSERT INTO paises VALUES(46, 'CL', 'Chile');
INSERT INTO paises VALUES(47, 'CN', 'China');
INSERT INTO paises VALUES(48, 'CY', 'Chipre');
INSERT INTO paises VALUES(49, 'CX', 'Isla de Navidad');
INSERT INTO paises VALUES(50, 'VA', 'Ciudad del Vaticano');
INSERT INTO paises VALUES(51, 'CC', 'Islas Cocos');
INSERT INTO paises VALUES(52, 'CO', 'Colombia');
INSERT INTO paises VALUES(53, 'KM', 'Comoras');
INSERT INTO paises VALUES(54, 'CD', 'Rep?blica Democr?tica del Congo');
INSERT INTO paises VALUES(55, 'CG', 'Congo');
INSERT INTO paises VALUES(56, 'CK', 'Islas Cook');
INSERT INTO paises VALUES(57, 'KP', 'Corea del Norte');
INSERT INTO paises VALUES(58, 'KR', 'Corea del Sur');
INSERT INTO paises VALUES(59, 'CI', 'Costa de Marfil');
INSERT INTO paises VALUES(60, 'CR', 'Costa Rica');
INSERT INTO paises VALUES(61, 'HR', 'Croacia');
INSERT INTO paises VALUES(62, 'CU', 'Cuba');
INSERT INTO paises VALUES(63, 'DK', 'Dinamarca');
INSERT INTO paises VALUES(64, 'DM', 'Dominica');
INSERT INTO paises VALUES(65, 'DO', 'Rep?blica Dominicana');
INSERT INTO paises VALUES(66, 'EC', 'Ecuador');
INSERT INTO paises VALUES(67, 'EG', 'Egipto');
INSERT INTO paises VALUES(68, 'SV', 'El Salvador');
INSERT INTO paises VALUES(69, 'AE', 'Emiratos ?rabes Unidos');
INSERT INTO paises VALUES(70, 'ER', 'Eritrea');
INSERT INTO paises VALUES(71, 'SK', 'Eslovaquia');
INSERT INTO paises VALUES(72, 'SI', 'Eslovenia');
INSERT INTO paises VALUES(73, 'ES', 'Espa?a');
INSERT INTO paises VALUES(74, 'UM', 'Islas ultramarinas de Estados Unidos');
INSERT INTO paises VALUES(75, 'US', 'Estados Unidos');
INSERT INTO paises VALUES(76, 'EE', 'Estonia');
INSERT INTO paises VALUES(77, 'ET', 'Etiop?a');
INSERT INTO paises VALUES(78, 'FO', 'Islas Feroe');
INSERT INTO paises VALUES(79, 'PH', 'Filipinas');
INSERT INTO paises VALUES(80, 'FI', 'Finlandia');
INSERT INTO paises VALUES(81, 'FJ', 'Fiyi');
INSERT INTO paises VALUES(82, 'FR', 'Francia');
INSERT INTO paises VALUES(83, 'GA', 'Gab?n');
INSERT INTO paises VALUES(84, 'GM', 'Gambia');
INSERT INTO paises VALUES(85, 'GE', 'Georgia');
INSERT INTO paises VALUES(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur');
INSERT INTO paises VALUES(87, 'GH', 'Ghana');
INSERT INTO paises VALUES(88, 'GI', 'Gibraltar');
INSERT INTO paises VALUES(89, 'GD', 'Granada');
INSERT INTO paises VALUES(90, 'GR', 'Grecia');
INSERT INTO paises VALUES(91, 'GL', 'Groenlandia');
INSERT INTO paises VALUES(92, 'GP', 'Guadalupe');
INSERT INTO paises VALUES(93, 'GU', 'Guam');
INSERT INTO paises VALUES(94, 'GT', 'Guatemala');
INSERT INTO paises VALUES(95, 'GF', 'Guayana Francesa');
INSERT INTO paises VALUES(96, 'GN', 'Guinea');
INSERT INTO paises VALUES(97, 'GQ', 'Guinea Ecuatorial');
INSERT INTO paises VALUES(98, 'GW', 'Guinea-Bissau');
INSERT INTO paises VALUES(99, 'GY', 'Guyana');
INSERT INTO paises VALUES(100, 'HT', 'Hait?');
INSERT INTO paises VALUES(101, 'HM', 'Islas Heard y McDonald');
INSERT INTO paises VALUES(102, 'HN', 'Honduras');
INSERT INTO paises VALUES(103, 'HK', 'Hong Kong');
INSERT INTO paises VALUES(104, 'HU', 'Hungr?a');
INSERT INTO paises VALUES(105, 'IN', 'India');
INSERT INTO paises VALUES(106, 'ID', 'Indonesia');
INSERT INTO paises VALUES(107, 'IR', 'Ir?n');
INSERT INTO paises VALUES(108, 'IQ', 'Iraq');
INSERT INTO paises VALUES(109, 'IE', 'Irlanda');
INSERT INTO paises VALUES(110, 'IS', 'Islandia');
INSERT INTO paises VALUES(111, 'IL', 'Israel');
INSERT INTO paises VALUES(112, 'IT', 'Italia');
INSERT INTO paises VALUES(113, 'JM', 'Jamaica');
INSERT INTO paises VALUES(114, 'JP', 'Jap?n');
INSERT INTO paises VALUES(115, 'JO', 'Jordania');
INSERT INTO paises VALUES(116, 'KZ', 'Kazajst?n');
INSERT INTO paises VALUES(117, 'KE', 'Kenia');
INSERT INTO paises VALUES(118, 'KG', 'Kirguist?n');
INSERT INTO paises VALUES(119, 'KI', 'Kiribati');
INSERT INTO paises VALUES(120, 'KW', 'Kuwait');
INSERT INTO paises VALUES(121, 'LA', 'Laos');
INSERT INTO paises VALUES(122, 'LS', 'Lesotho');
INSERT INTO paises VALUES(123, 'LV', 'Letonia');
INSERT INTO paises VALUES(124, 'LB', 'L?bano');
INSERT INTO paises VALUES(125, 'LR', 'Liberia');
INSERT INTO paises VALUES(126, 'LY', 'Libia');
INSERT INTO paises VALUES(127, 'LI', 'Liechtenstein');
INSERT INTO paises VALUES(128, 'LT', 'Lituania');
INSERT INTO paises VALUES(129, 'LU', 'Luxemburgo');
INSERT INTO paises VALUES(130, 'MO', 'Macao');
INSERT INTO paises VALUES(131, 'MK', 'ARY Macedonia');
INSERT INTO paises VALUES(132, 'MG', 'Madagascar');
INSERT INTO paises VALUES(133, 'MY', 'Malasia');
INSERT INTO paises VALUES(134, 'MW', 'Malawi');
INSERT INTO paises VALUES(135, 'MV', 'Maldivas');
INSERT INTO paises VALUES(136, 'ML', 'Mal?');
INSERT INTO paises VALUES(137, 'MT', 'Malta');
INSERT INTO paises VALUES(138, 'FK', 'Islas Malvinas');
INSERT INTO paises VALUES(139, 'MP', 'Islas Marianas del Norte');
INSERT INTO paises VALUES(140, 'MA', 'Marruecos');
INSERT INTO paises VALUES(141, 'MH', 'Islas Marshall');
INSERT INTO paises VALUES(142, 'MQ', 'Martinica');
INSERT INTO paises VALUES(143, 'MU', 'Mauricio');
INSERT INTO paises VALUES(144, 'MR', 'Mauritania');
INSERT INTO paises VALUES(145, 'YT', 'Mayotte');
INSERT INTO paises VALUES(146, 'MX', 'M?xico');
INSERT INTO paises VALUES(147, 'FM', 'Micronesia');
INSERT INTO paises VALUES(148, 'MD', 'Moldavia');
INSERT INTO paises VALUES(149, 'MC', 'M?naco');
INSERT INTO paises VALUES(150, 'MN', 'Mongolia');
INSERT INTO paises VALUES(151, 'MS', 'Montserrat');
INSERT INTO paises VALUES(152, 'MZ', 'Mozambique');
INSERT INTO paises VALUES(153, 'MM', 'Myanmar');
INSERT INTO paises VALUES(154, 'NA', 'Namibia');
INSERT INTO paises VALUES(155, 'NR', 'Nauru');
INSERT INTO paises VALUES(156, 'NP', 'Nepal');
INSERT INTO paises VALUES(157, 'NI', 'Nicaragua');
INSERT INTO paises VALUES(158, 'NE', 'N?ger');
INSERT INTO paises VALUES(159, 'NG', 'Nigeria');
INSERT INTO paises VALUES(160, 'NU', 'Niue');
INSERT INTO paises VALUES(161, 'NF', 'Isla Norfolk');
INSERT INTO paises VALUES(162, 'NO', 'Noruega');
INSERT INTO paises VALUES(163, 'NC', 'Nueva Caledonia');
INSERT INTO paises VALUES(164, 'NZ', 'Nueva Zelanda');
INSERT INTO paises VALUES(165, 'OM', 'Om?n');
INSERT INTO paises VALUES(166, 'NL', 'Pa?ses Bajos');
INSERT INTO paises VALUES(167, 'PK', 'Pakist?n');
INSERT INTO paises VALUES(168, 'PW', 'Palau');
INSERT INTO paises VALUES(169, 'PS', 'Palestina');
INSERT INTO paises VALUES(170, 'PA', 'Panam?');
INSERT INTO paises VALUES(171, 'PG', 'Pap?a Nueva Guinea');
INSERT INTO paises VALUES(172, 'PY', 'Paraguay');
INSERT INTO paises VALUES(173, 'PE', 'Per?');
INSERT INTO paises VALUES(174, 'PN', 'Islas Pitcairn');
INSERT INTO paises VALUES(175, 'PF', 'Polinesia Francesa');
INSERT INTO paises VALUES(176, 'PL', 'Polonia');
INSERT INTO paises VALUES(177, 'PT', 'Portugal');
INSERT INTO paises VALUES(178, 'PR', 'Puerto Rico');
INSERT INTO paises VALUES(179, 'QA', 'Qatar');
INSERT INTO paises VALUES(180, 'GB', 'Reino Unido');
INSERT INTO paises VALUES(181, 'RE', 'Reuni?n');
INSERT INTO paises VALUES(182, 'RW', 'Ruanda');
INSERT INTO paises VALUES(183, 'RO', 'Rumania');
INSERT INTO paises VALUES(184, 'RU', 'Rusia');
INSERT INTO paises VALUES(185, 'EH', 'Sahara Occidental');
INSERT INTO paises VALUES(186, 'SB', 'Islas Salom?n');
INSERT INTO paises VALUES(187, 'WS', 'Samoa');
INSERT INTO paises VALUES(188, 'AS', 'Samoa Americana');
INSERT INTO paises VALUES(189, 'KN', 'San Crist?bal y Nevis');
INSERT INTO paises VALUES(190, 'SM', 'San Marino');
INSERT INTO paises VALUES(191, 'PM', 'San Pedro y Miquel?n');
INSERT INTO paises VALUES(192, 'VC', 'San Vicente y las Granadinas');
INSERT INTO paises VALUES(193, 'SH', 'Santa Helena');
INSERT INTO paises VALUES(194, 'LC', 'Santa Luc?a');
INSERT INTO paises VALUES(195, 'ST', 'Santo Tom? y Pr?ncipe');
INSERT INTO paises VALUES(196, 'SN', 'Senegal');
INSERT INTO paises VALUES(197, 'CS', 'Serbia y Montenegro');
INSERT INTO paises VALUES(198, 'SC', 'Seychelles');
INSERT INTO paises VALUES(199, 'SL', 'Sierra Leona');
INSERT INTO paises VALUES(200, 'SG', 'Singapur');
INSERT INTO paises VALUES(201, 'SY', 'Siria');
INSERT INTO paises VALUES(202, 'SO', 'Somalia');
INSERT INTO paises VALUES(203, 'LK', 'Sri Lanka');
INSERT INTO paises VALUES(204, 'SZ', 'Suazilandia');
INSERT INTO paises VALUES(205, 'ZA', 'Sud?frica');
INSERT INTO paises VALUES(206, 'SD', 'Sud?n');
INSERT INTO paises VALUES(207, 'SE', 'Suecia');
INSERT INTO paises VALUES(208, 'CH', 'Suiza');
INSERT INTO paises VALUES(209, 'SR', 'Surinam');
INSERT INTO paises VALUES(210, 'SJ', 'Svalbard y Jan Mayen');
INSERT INTO paises VALUES(211, 'TH', 'Tailandia');
INSERT INTO paises VALUES(212, 'TW', 'Taiw?n');
INSERT INTO paises VALUES(213, 'TZ', 'Tanzania');
INSERT INTO paises VALUES(214, 'TJ', 'Tayikist?n');
INSERT INTO paises VALUES(215, 'IO', 'Territorio Brit?nico del Oc?ano ?ndico');
INSERT INTO paises VALUES(216, 'TF', 'Territorios Australes Franceses');
INSERT INTO paises VALUES(217, 'TL', 'Timor Oriental');
INSERT INTO paises VALUES(218, 'TG', 'Togo');
INSERT INTO paises VALUES(219, 'TK', 'Tokelau');
INSERT INTO paises VALUES(220, 'TO', 'Tonga');
INSERT INTO paises VALUES(221, 'TT', 'Trinidad y Tobago');
INSERT INTO paises VALUES(222, 'TN', 'T?nez');
INSERT INTO paises VALUES(223, 'TC', 'Islas Turcas y Caicos');
INSERT INTO paises VALUES(224, 'TM', 'Turkmenist?n');
INSERT INTO paises VALUES(225, 'TR', 'Turqu?a');
INSERT INTO paises VALUES(226, 'TV', 'Tuvalu');
INSERT INTO paises VALUES(227, 'UA', 'Ucrania');
INSERT INTO paises VALUES(228, 'UG', 'Uganda');
INSERT INTO paises VALUES(229, 'UY', 'Uruguay');
INSERT INTO paises VALUES(230, 'UZ', 'Uzbekist?n');
INSERT INTO paises VALUES(231, 'VU', 'Vanuatu');
INSERT INTO paises VALUES(232, 'VE', 'Venezuela');
INSERT INTO paises VALUES(233, 'VN', 'Vietnam');
INSERT INTO paises VALUES(234, 'VG', 'Islas V?rgenes Brit?nicas');
INSERT INTO paises VALUES(235, 'VI', 'Islas V?rgenes de los Estados Unidos');
INSERT INTO paises VALUES(236, 'WF', 'Wallis y Futuna');
INSERT INTO paises VALUES(237, 'YE', 'Yemen');
INSERT INTO paises VALUES(238, 'DJ', 'Yibuti');
INSERT INTO paises VALUES(239, 'ZM', 'Zambia');
INSERT INTO paises VALUES(240, 'ZW', 'Zimbabue');

INSERT INTO Banco VALUES('MIBANCO');
INSERT INTO Banco VALUES('BANCO DE CREDITO DEL PER?');
INSERT INTO Banco VALUES('SCOTIABANK PER?');
INSERT INTO Banco VALUES('BCP PER?');
INSERT INTO Banco VALUES('BANCO DE COMERCIO');
INSERT INTO Banco VALUES('BBVA');
INSERT INTO Banco VALUES('MIBANCO');
INSERT INTO Banco VALUES('INTERBANCK');
INSERT INTO Banco VALUES('MIBANCO');
INSERT INTO Banco VALUES('PICHINCHA');

insert into Tienda values('Tienda Mass' , 'MZ. H3 LOTES 12, Chorrillos 15058')
insert into Tienda values('PRODISUF' , 'Av.cordillera Vilcabamba a MZ H 18, Chorrillos 15057')
insert into Tienda values('Tienda Chorrillos' , 'Av. Alameda Los Cedros 363, Chorrillos 15067')


insert into Categoria values(1 , 'Restaurantes' , 'restaurants-1617916506.webp')
insert into Categoria values(1 , 'Supermercado' , 'cpgs-1617916528.webp')
insert into Categoria values(1 , 'Farmacia' , 'pharmacy-1617916569.webp')
insert into Categoria values(1 , 'Licores' , 'spirits-1617916616.webp')
insert into Categoria values(1 , 'Alquilab' , 'alquilab-1597705818.webp')
insert into Categoria values(1 , 'Rappi Travel' , 'store_type_1624482580671.webp')

insert into Categoria values(2 , 'Farmacia' , 'pharmacy-1617916569.webp')
insert into Categoria values(2 , 'Licores' , 'spirits-1617916616.webp')
insert into Categoria values(2 , 'Alquilab' , 'alquilab-1597705818.webp')
insert into Categoria values(2 , 'Rappi Travel' , 'store_type_1624482580671.webp')

insert into Categoria values(3 , 'Alquilab' , 'alquilab-1597705818.webp')
insert into Categoria values(3 , 'Rappi Travel' , 'store_type_1624482580671.webp')


insert into Producto values( 1 ,'Brioche 22', 7.99 , '365326-1601493552356.webp')
insert into Producto values( 1 ,'Combo Mambo 10', 19.99 , '796078-1617658553554.webp')
insert into Producto values( 3 ,'Electrolight Granadilla', 1.56 , '175257-1578009334980.webp')

select * from Categoria

select * from Categoria
select * from Producto
select * from Cuenta
select * from AsociarCuenta
select * from banco

