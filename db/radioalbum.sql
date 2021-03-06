-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-05-2019 a las 00:31:44
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `radioalbum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estaticas`
--

CREATE TABLE `estaticas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `cuerpo` text NOT NULL,
  `opciones` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estaticas`
--

INSERT INTO `estaticas` (`id`, `titulo`, `cuerpo`, `opciones`) VALUES
(1, 'Nosotros', '<p><br></p><p><br></p><p><br></p><strong></strong><p>RadioAlbum&nbsp;&nbsp;&nbsp; Hacela tuya</p><p><br></p><p>Conectate a las colecciones de discos completos en</p><p><br></p><p><a data-cke-saved-href=\"http://www.radioalbum.com.ar/\" href=\"http://www.radioalbum.com.ar/\">www.radioalbum.com.ar</a></p><p><br></p><p>Explorando y recorriendo los canales día a día renovados</p><p><br></p><p>RadioAlbum un universo musical en expansión!!!</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', 'ninguna en particular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `cuerpo` text,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `cuerpo`, `fecha`) VALUES
(54, 'Nuevos discos', '<p>GOGOL BORDELLO balc&aacute;nicos y rockeros en el canal ROCK</p>\r\n', '2015-03-20'),
(55, 'JAZZ ', '<p>Lee Morgan The cooker sonando&nbsp;</p>\r\n', '2015-03-20'),
(56, 'Radio Fantasma', '<p>El canal para el indie en espa&ntilde;ol de Radio Album&nbsp;</p>\r\n', '2015-03-20'),
(57, 'Los elegidos de Patti Smith', '<p>Doce canciones en la versi&oacute;n de Patti Smith, de Hendrix a Nirvana. En el canal Rock de la radio</p>\r\n', '2015-03-24'),
(58, 'Nacional e independiente', '<p>Bandas argentinas de producci&oacute;n independiente sonando en Radio Fantasma.&nbsp;</p>\r\n', '2015-03-24'),
(59, 'Canal NOVEDADES', '<p>Escuch&aacute; en el canal novedades una selecci&oacute;n de los discos m&aacute;s recientes del cat&aacute;logo&nbsp;</p>\r\n', '2015-04-08'),
(60, 'Reggae Dub', '<p>Explor&aacute; el canal Reggae de Radioalbum y disfrut&aacute; de la mejor selecci&oacute;n de discos</p>\r\n', '2015-04-09'),
(61, 'Jazz', '<p>Desde Billie Holiday a Ornette Coleman, grandes discos del jazz de todos los tiempos en Radioalbum</p>\r\n', '2015-04-09'),
(62, 'Daniel Johnston', '<p>Un compilado para conocer el&nbsp;enigmatico mundo de Daniel Johnston y sus canciones de cassette</p>\r\n\r\n<p>En el canal INDIE de RadioAlbum</p>\r\n', '2015-04-10'),
(63, 'Explosión de garaje salvaje', '<p>Los Peyotes, banda salvaje por esencia suena en Radio Fantasma, nuestro canal para las bandas independientes&nbsp;</p>\r\n', '2015-04-13'),
(64, 'Radio Fantasma', '<p>Es nuestro canal para las banda independientes que cantan en espa&ntilde;ol.</p>\r\n\r\n<p>Bandas de Argentina Espa&ntilde;a y otros rincones de ibaroam&eacute;rica&nbsp;</p>\r\n\r\n<p>Encontrala en RadioAlbum</p>\r\n', '2015-04-13'),
(65, 'Canal Rock', '<p>Nuevos discos se suman todos los d&iacute;as en nuestro canal Rock</p>\r\n\r\n<p>Hoy Fugazi, Beck, Eddie Vedder y m&aacute;s</p>\r\n', '2015-04-14'),
(66, 'Indie indie', '<p>Nuevos discos en el canal Indie de RadioAlbum hoy se suman The Futureheads, Ride y m&aacute;s</p>\r\n\r\n<p>Descubrilos con el selector de canales</p>\r\n', '2015-04-15'),
(67, 'Desde España', '<p>En el canal&nbsp;Radio Fantasma podes encontrar discos de&nbsp;bandas independientes espa&ntilde;olas&nbsp;</p>\r\n\r\n<p>Descubrilos en RadioAlbum</p>\r\n', '2015-04-16'),
(68, 'MIngus', '<p>Trep&aacute; al Mingus Tree en el canal Jazz de</p>\r\n\r\n<p>RadioAlbum</p>\r\n', '2015-04-16'),
(69, 'REGGAE', '<p>En nuestro canal Reggae podes escuchar los mejores discos.. Explorala en RadioAlbum</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-04-20'),
(70, 'Punk rock en RadioAlbum', '<p>En el canal Rock podes escuchar The Clash Joy Division The Stranglers y mucho m&aacute;s.</p>\r\n', '2015-04-21'),
(71, 'Nuevos discos todos los días!!!', '<p>Nuevos discos en el canal Indie y lo mejor del indie en espa&ntilde;ol en el canal Radio Fantasma</p>\r\n\r\n<p>Descubrilos en RadioAlbum</p>\r\n\r\n<p>HACELA TUYA!!!!</p>\r\n', '2015-04-23'),
(72, 'Rock + Punk + Alternativo', '<p>En el canal Rock de RadioAlbum podes escuchar discos de Pixies, Johnny Thunders, Joe Strummer y muchos m&aacute;s..</p>\r\n\r\n<p>Descubrilos en RadioAlbum</p>\r\n', '2015-04-27'),
(73, 'Canal INDIE', '<p>En el canal Indie podes escuchar The Vaselines, The Coral, Wavves y muchos discos m&aacute;s</p>\r\n\r\n<p>DESCUBRILOS EN RadioAlbum!!!!!</p>\r\n', '2015-04-28'),
(74, 'Bowie and Pixies', '<p>En el canal Rock de RadioAlbum podes escuchar Heathen de David Bowie, el disco en el que toca un cover de Pixies.</p>\r\n\r\n<p>Descubrilo en RadioAlbum</p>\r\n', '2015-04-30'),
(75, 'Siempre creciendo ', '<h2>Todos los d&iacute;as nuevos discos...hoy en el canal Rock: Patti Smith, New York Dolls, Pavement y mucho m&aacute;s.</h2>\r\n\r\n<h2>DESCUBRILOS EN RadioAlbum!!!!!</h2>\r\n', '2015-05-04'),
(76, 'Indie en RadioAlbum', '<h2>En la radio podes encontrar una selecci&oacute;n de discos completos renovados todos los d&iacute;as.</h2>\r\n\r\n<h1>RadioAlbum &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Hacela Tuya!!!</h1>\r\n', '2015-05-06'),
(77, 'Clásicos en RadioAlbum', '<p>En nuestros canales podes escuchar Talking Heads (77), Meat Puppets (Too high to die), y mucho m&aacute;s..</p>\r\n\r\n<p>Descubrilos en el canal Rock de RadioAlbum</p>\r\n\r\n<p>HACELA TUYA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>\r\n', '2015-05-11'),
(78, 'Nina Simone', '<p>En el canal Jazz podes escuchar a Nina Simone, Fela Kuti, Charles Mingus y mucho m&aacute;s</p>\r\n\r\n<p>RadioAlbum Hacela Tuya!!!!!!</p>\r\n', '2015-05-12'),
(79, 'Nuevos en el canal Rock', '<p>Encontr&aacute; a The Jam, Patti Smith. The Hives y mucho m&aacute;s en RadioAlbum</p>\r\n', '2015-05-16'),
(80, 'Reggae celta', '<p>Escuch&aacute; en el canal Reggae de RadioAlbum el disco completo de The Trojans y su Ska con gaitas</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-05-20'),
(81, 'Sonidos independientes', '<h1>Nuevos discos de bandas independientes argentinas suenan en RadioAlbum</h1>\r\n\r\n<h1>HacelaTuya!!!&nbsp;</h1>\r\n', '2015-05-21'),
(82, 'Canal Indie en RadioAlbum', '<p>En el canal indie se suman discos todos los dias, hoy King Khan, Citizen y Vetiver</p>\r\n\r\n<p>Descubrilos en RadioAlbum</p>\r\n', '2015-05-26'),
(83, 'Canal ROCK de RadioAlbum', '<h1>Jon Spencer Blues Explosion , Dream Syndicate - Morrissey Kula Shaker y otros discos se suman a nuestro canal ROCK hoy</h1>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-05-27'),
(84, 'Nuevos nuevos', '<h2>Nuevos discos en RadioAlbum This is The Sonics y Sonics Highways de Foo Fighters&nbsp;</h2>\r\n', '2015-06-01'),
(85, 'Dub sideral', '<h2>U-Roy y King Tubby en nuestro canal REGGAE&nbsp;</h2>\r\n\r\n<h1>Disfrutalos en RadioAlbum!!!</h1>\r\n', '2015-06-05'),
(86, 'Más indie en RadioAlbum', '<h1>Veronica Falls - The Dodos - Thee Oh Sees y mucho m&aacute;s en el gran canal INDIE de RadioAlbum</h1>\r\n\r\n<h1>HACELA TUYA!!!!</h1>\r\n', '2015-06-08'),
(87, 'Recién salidos ', '<h1>Noel Gallagher y Paul Weller suenan en el canal ROCK de</h1>\r\n\r\n<h1>RadioAlbum</h1>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-06-09'),
(88, 'Siempre nuevos discos', '<h1>Yo La Tengo - Stiv Bators - Teenage Fanclub y m&aacute;s discos se sumaron a</h1>\r\n\r\n<h1>RadioAlbum</h1>\r\n', '2015-06-15'),
(89, 'Dr Feelgood y el Jetty', '<h1>Dr Feelgood y su primer disco Down by the jetty suena en RadioAlbum</h1>\r\n\r\n<h2>Encontralo en el canal Rock y en Novedades</h2>\r\n', '2015-06-18'),
(90, 'Todos los días nuevos discos', '<h1>Strokes , Radio Birdman, Byron Lee y mucho m&aacute;s en los variados canales de RadioAlbum</h1>\r\n', '2015-06-19'),
(91, ' Nuevos discos en el canal ROCK', '<h1>The Animals - Violent Femmes - The Ventures - Los Natas y m&aacute;s se sumaron hoy a las selecciones de RadioAlbum</h1>\r\n', '2015-06-22'),
(92, 'Bandas independientes en RadioAlbum', '<h1>Bandas argentinas independientes en RadioAlbum</h1>\r\n\r\n<h1>Aguas T&oacute;nicas - Los Nuevos Monstruos - Riel - Kill West y m&aacute;s</h1>\r\n', '2015-06-30'),
(93, 'Clásicos del jazz', '<h1>Algunos incunables del jazz suenan en RadioAlbum</h1>\r\n\r\n<h1>Mingus Ah Um</h1>\r\n\r\n<h1>Dave Brubeck Time out</h1>\r\n\r\n<h1>y m&aacute;s</h1>\r\n', '2015-07-07'),
(94, 'Novedades desde España', '<h1>Univers y Novedades Carminha dos bandas de Barcelona que suenan en la radio fantasma de RadioAlbum</h1>\r\n', '2015-07-11'),
(95, 'Jazz , Rock, reggae y mucho más', '<h1>Descubr&iacute; los canales de RadioAlbum y su diversidad</h1>\r\n', '2015-07-20'),
(96, 'Nuevos discos y nuevas bandas', '<h1>Nuevas bandas en RadioAlbum</h1>\r\n\r\n<h1>The Duppies - The Bluebeaters - Los Accidentes y m&aacute;s&nbsp;</h1>\r\n', '2015-07-27'),
(97, 'Joyas argentinas - Discos recuperados', '<h1>- Los Pillos y su sonido Joy Division volviendo desde los ochenta</h1>\r\n\r\n<h1>- Historia del crimen y su rockabilly de alta gama</h1>\r\n\r\n<h1>Todo suena en RadioAlbum</h1>\r\n', '2015-08-03'),
(98, 'CLÁSICOS ', '<h1>L.A Woman (The Doors) - Closer (Joy Division) - Travel with your mind (The Seeds)</h1>\r\n\r\n<h1>y otros bellos discos en RadioAlbum</h1>\r\n', '2015-08-26'),
(99, 'SUPER REGGAE DUB', '<h1>EN EL CANAL REGGAE ENCONTR&Aacute; UNA SELECCI&Oacute;N DE DISCOS CL&Aacute;SICOS DE REGGAE SKA Y DUB</h1>\r\n', '2015-09-08'),
(100, 'DISCOS INDISPENSABLES ', '<h1>ENCONTR&Aacute; EN LAS BATEAS DE RADIOALBUM ESOS DISCOS A LOS QUE SIEMPRE SE VUELVE....</h1>\r\n', '2015-09-14'),
(101, 'RADIOALBUM HACELA TUYA!!', '<h2>Encontr&aacute; en nuestros canales la selecci&oacute;n de discos para musicalizar tu d&iacute;a.</h2>\r\n', '2015-10-12'),
(102, 'Siempre creciendo', '<h1>Nuestra selecci&oacute;n de discos crece todos los d&iacute;as, descubrilos navegando nuestros canales.</h1>\r\n', '2015-12-09'),
(103, 'REGGAE Y DUB EN RADIOALBUM', '<h1>CLIMA IDEAL PARA UNA TARDE DE REGGAE Y UNA NOCHE DE DUB ESPACIAL. DESCUBR&Iacute; LA MAGIA DE LAS MAQUINAS DE KING TUBBY EN NUESTRO CANAL REGGAE</h1>\r\n', '2015-12-16'),
(104, 'Bandas independientes en RadioAlbum', '<h1>Ok Piramides - Valle de Mu&ntilde;ecas - Los Freneticos - Rayos Laser y otras bandas independientes argentinas suenan en RadioAlbum</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Hacela Tuya!!</h1>\r\n', '2015-12-21'),
(105, 'Novedades en Enero', '<h1>Siempre sumando discos a nuestro cat&aacute;logo.</h1>\r\n\r\n<h1>Ramones - End of the century</h1>\r\n\r\n<h1>Luna - Romantica</h1>\r\n\r\n<h1>Soul Syndicate - Dub Classics&nbsp;</h1>\r\n\r\n<h1>Boom Pam - Boom Pam</h1>\r\n\r\n<h1>The Bristol Reggae Explosion 1978-1983</h1>\r\n', '2016-01-05'),
(106, 'Comienza el año con música', '<h1>Este 2016 seguimos creciendo con un catalogo de discos completos y libres para musicalizar cada instante del a&ntilde;o</h1>\r\n\r\n<h2>radioalbum&nbsp;</h2>\r\n', '2016-01-20'),
(107, 'Los discos de enero', '<h1>Algunos de los discos que incorporamos en el mes de enero:</h1>\r\n\r\n<h1>Nirvana - &nbsp;Incesticide</h1>\r\n\r\n<h1>The Pastels - Slow Summits</h1>\r\n\r\n<h1>The Heptones - Party Time</h1>\r\n\r\n<h1>The Beta Band - The Beta Band</h1>\r\n\r\n<h1>The Charlatans Modern Nature</h1>\r\n\r\n<h1>Rita Marley - Greatest Hits&nbsp;</h1>\r\n\r\n<h1>The Strokes - First Impressions Of Earth</h1>\r\n\r\n<h1>Gorillaz-Demon Days</h1>\r\n\r\n<h1>Albert Pla - La diferencia</h1>\r\n\r\n<h1>Elvis Presley - Elvis at Sun</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Para m&aacute;s discos revis&aacute; nuestros canales en&nbsp;</h1>\r\n\r\n<h1>www.radioalbum.com.ar</h1>\r\n', '2016-02-01'),
(108, 'Estrenos y clásicos', '<h1>Lo nuevo de Iggy Pop suena en RadioAlbum junto a The Stranglers y Dinosaur Jr</h1>\r\n\r\n<h1>Escuchalos en el canal Rock de la radio&nbsp;</h1>\r\n', '2016-02-17'),
(109, 'Los discos de febrero', '<h1>Estos son algunos de los discos que pusimos a girar en febrero en los canales de RadioAlbum</h1>\r\n\r\n<h1>The Libertines - Anthems For Doomed Youth</h1>\r\n\r\n<h1>NEU ! - NEU !</h1>\r\n\r\n<h1>Mudhoney - Piece of Cake</h1>\r\n\r\n<h1>Ra Ra Riot - Need Your Light</h1>\r\n\r\n<h1>Nina Simone - Return Home</h1>\r\n\r\n<h1>Sigur Ros &ndash; Takk</h1>\r\n\r\n<h1>Pixies &ndash; B Sides</h1>\r\n\r\n<h1>Iggy Pop - Post Pop Depression</h1>\r\n\r\n<h1>Dinosaur Jr &ndash; Beyond</h1>\r\n\r\n<h1>Desmond Dekker and The Aces - Shanty Town Original</h1>\r\n\r\n<h1>Toots and The Maytals -&nbsp; In The Dark</h1>\r\n\r\n<h1>Tobog&aacute;n Andaluz - Luz Satelital</h1>\r\n\r\n<h1>Adrian Paoletti - Los mandos no responden, aumentar la potencia al maximo</h1>\r\n\r\n<h1>Spinetta &ndash; Kamikaze</h1>\r\n\r\n<h1>Belle &amp; Sebastian - Write About Love</h1>\r\n\r\n<h1>Dead Boys - Young, Loud, and Snotty</h1>\r\n\r\n<h1>The Heptones - Party Time</h1>\r\n\r\n<h1>The Charlatans - Modern Nature</h1>\r\n', '2016-03-01'),
(111, 'Nuevos discos de marzo', '<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Los Surfing Maradonas - Mal augurio</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Sub Pop 200</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Meat Puppets - Meat Puppets II</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Link Wray</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Linval Thompson - Ride On Dreadlocks 1975-77</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Van Morrison - Greatest Hits</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Eels - Beautiful Freak</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>The Skatalites - Ska-Boo-Da-Ba</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>PJ Harvey - Rid on me</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Jefferson Airplane Surrealistic Pillow</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Garbage</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Quemacoches - Puro veneno</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>Thee Mighty Caesars -1rst LP</h4>\r\n</div>\r\n\r\n<div style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">\r\n<h4>The Coral - Distance Inbetween</h4>\r\n</div>\r\n', '2016-03-23'),
(112, 'Discos en abril', '<h1>Pj Harvey Uh Huh Her</h1>\r\n\r\n<h1>Los Planetas - Una semana en el motor de un autobus</h1>\r\n\r\n<h1>Gories - I Know You Fine, But How You Doin&#39;</h1>\r\n\r\n<h1>REM - Out of time</h1>\r\n\r\n<h1>Tindersticks-The Something Rain</h1>\r\n\r\n<h1>Wau y Los Arrrghs - !!Viven!!</h1>\r\n\r\n<h1>Bo Diddley - The London Sessions</h1>\r\n\r\n<h1>Jaime Sin Tierra -&nbsp;Lo que va a Encandilar es el D&iacute;a</h1>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-04-07'),
(113, 'Discos en mayo', '<h1>Algunos de los discos que empezaron a girar este mes en RadioAlbum</h1>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Rolling Stones - Between The Buttons&nbsp;<br />\r\nTegan And Sara - Heartthrob<br />\r\nWilco - Yankee Hotel Foxtrot<br />\r\nEagles Of Death Metal - Zipper Down<br />\r\nDrive-By Truckers - English Oceans&nbsp;<br />\r\nJohnny Marr - Adrenalin Baby&nbsp;<br />\r\nFuzz - Fuzz&nbsp;<br />\r\nQuestion Mark And The Mysterians - The Best Of&nbsp;<br />\r\nModern Baseball - Holy Ghost<br />\r\nThe Future Primitives - Songs We Taught Ourselves<br />\r\nKing Tuff - Black Moon Spell&nbsp;<br />\r\nJulio y Agosto - La niebla y la autopista<br />\r\nThe Dream Syndicate - It&#39;s Too Late To Stop Now<br />\r\n<br />\r\n</h2>\r\n', '2016-05-23'),
(114, 'Estrenos en RAdioAlbum', '<h1>Estrenamos en nuevo EP de The Strokes en nuestro canal de Novedades</h1>\r\n', '2016-06-02'),
(115, 'Todos los días más discos', '<h2>Pixies - Acoustic Live in Newport</h2>\r\n\r\n<h2>El Perrodiablo - Orgia Politicamente Correcta</h2>\r\n\r\n<h2>Peces y Pajaros - A los futuros habitantes de la luna</h2>\r\n\r\n<h2>Boas Teitas - Valga la redundancia EP&nbsp;</h2>\r\n\r\n<h2>Eric&#39;s Trip - Love Tara</h2>\r\n\r\n<h2>Of Monsters And Men - Beneath The Skin</h2>\r\n\r\n<h2>The Strokes - Future Present Past&nbsp;</h2>\r\n\r\n<h2>Autolux - Pussys Dead&nbsp;</h2>\r\n\r\n<h2>Radiohead - A Moon Shaped Pool</h2>\r\n\r\n<h2>Garbage - Strange Little Birds&nbsp;</h2>\r\n\r\n<h2>Fela Ransome Kuti &amp; the Africa &#39;70 - Afrodisiac&nbsp;</h2>\r\n\r\n<h2>The Raveonettes - Raven In The Grave</h2>\r\n\r\n<h2>y m&aacute;s&nbsp;</h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-07-11'),
(116, 'Últimos discos agregados', '<h2>&Uacute;ltimos discos girando en RadioAlbum</h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Dinosaur Jr. - Give A Glimpse Of What Yer Not (2016)</h2>\r\n\r\n<h2>Cosmo - Fundiendo los colores en el ruido</h2>\r\n\r\n<h2>Black Beach - Play Loud, Die Vol. 1</h2>\r\n\r\n<h2>Marc Ribot - The Prosthetic Cubans</h2>\r\n\r\n<h2>Bob Dylan - Highway 61 Revisited</h2>\r\n\r\n<h2>Radiohead &ndash; Hail to the thief</h2>\r\n\r\n<h2>Massive Attack &ndash; Mezzanine</h2>\r\n\r\n<h2>Thurston Moore - Demolished Thoughts</h2>\r\n\r\n<h2>The Pastels - Up for a bit with the pastels</h2>\r\n\r\n<h2>The Jimi Hendrix Experience - Electric Ladyland</h2>\r\n\r\n<h2>The Brian Jonestown Massacre &ndash; Revelation</h2>\r\n\r\n<h2>Joe Strummer-I Fought The Law-Rarities</h2>\r\n\r\n<h2>Gang of Four - Solid gold</h2>\r\n\r\n<h2>The Kills - Ash &amp; Ice</h2>\r\n\r\n<h2>High Tone &ndash; Ekphron</h2>\r\n\r\n<h2>Twin Peaks - Down in Heaven</h2>\r\n\r\n<h2>The Dandy Warhols - Distortland (2016)</h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Y mucho m&aacute;s</h2>\r\n', '2016-08-11'),
(117, 'Discos nuevos en Septiembre', '<h1><strong><span style=\"font-family:courier new,courier,monospace\">Algunos de los discos agregados estas semanas</span></strong></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Ska Madness! 20 Reggae Classics Which Inspired the Two Tone Revolution</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Nick Cave &amp; The Bad Seeds - Skeleton Tree</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">The Meteors - The Best Of</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">FUZZ - II (2015)</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Songs Of Leonard Cohen</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">The Cramps - A Date with Elvis</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Eagles of Death Metal - Peace Love Death Metal</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Trojan - Rocksteady Rarities Box Set</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Daniel Johnston - Hi How Are You</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Tape Waves - Here To Fade</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Ken Boothe - The Ken Boothe Collection</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Parquet Courts - Human Performance</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">The Posies - Frosting on the Beater</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">El Lado Oscuro de la Broca &ndash; Beta</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Atr&aacute;s Hay Truenos &ndash; Bronce</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">The Heptones - Peace &amp; Harmony</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">B-Movie - Climate of Fear</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Radar Eyes - Radiant Remains</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">pasadoverde - Fuego y Flora</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Sketch Jets - Sketch Jets</span></h1>\r\n\r\n<h1><span style=\"font-family:courier new,courier,monospace\">Four Eyes - Welcome to Earth</span></h1>\r\n\r\n<h1>&nbsp;</h1>\r\n', '2016-09-23'),
(118, 'Nuevos discos de Octubre', '<p>Estos son algunos de los discos que se agregaron a los canales de RadioAlbum en estos d&iacute;as:</p>\r\n\r\n<p>Allah-Las - Calico Review&nbsp;</p>\r\n\r\n<p>Beck-Odelay</p>\r\n\r\n<p>Pixies Head Carrier&nbsp;</p>\r\n\r\n<p>Magdalena Records - Ciclo Magdalena</p>\r\n\r\n<p>Mi Nave &ndash; Tristeza</p>\r\n\r\n<p>Joe Strummer - Rock Art And the X-Ray Style</p>\r\n\r\n<p>Mick Harvey - delirium tremens</p>\r\n\r\n<p>Tonicos &ndash; Incinerador</p>\r\n\r\n<p>Yuck &ndash; Yuck</p>\r\n\r\n<p>Srta. Trueno Negro - Sonido Donosti</p>\r\n\r\n<p>Peces Raros - No gracias</p>\r\n\r\n<p>LE MANS &ndash; Entresemana</p>\r\n\r\n<p>Felix &ndash; Felix</p>\r\n\r\n<p>Dance Macabre &ndash; Dance Macabre</p>\r\n\r\n<p>Joe Strummer And The Mescaleros - Streetcore&nbsp;</p>\r\n', '2016-10-14'),
(119, 'Nuevos discos todos los días!!!', '<p>ALGUNOS DE LOS DISCOS AGREGADOS A LA BANDEJA DE RADIOALBUM</p>\r\n\r\n<p>Son and The Holy Ghosts<br />\r\nFrisbees &ndash; Frisbees<br />\r\nKing Automatic - The Not Essential King Automatic<br />\r\nThe Mystery Lights - The Mystery Lights<br />\r\nCiudad Lineal - El nuevo hombre<br />\r\nMac DeMarco - Another One<br />\r\nBlur - Think Tank&nbsp;<br />\r\nMorrissey - Swords&nbsp;<br />\r\nBoom Boom Kid - Okey Dokey<br />\r\nThe Best of Jimmy Smith- The Blue Note Years<br />\r\nThe Strokes - Is This It<br />\r\nArt Brut - Vs. Satan&nbsp;<br />\r\nJuanita y Los Feos - Pesadilla adulta<br />\r\nMiles Davis - Bitches Brew&nbsp;<br />\r\nL&ecirc; Almeida - Mantra Happening<br />\r\nMan...or Astro-Man_ - Astro Analog Series 1 through 3<br />\r\nThe Joe Strummer Foundation - Strummerville A Go-Go #002<br />\r\nThe Wave Pictures - Bamboo Diner In The Rain<br />\r\nSpencer Davis Group-The Best Of<br />\r\nLaurel Aitken - Pioneer Of Jamaican Music<br />\r\nLos Super Dementes -3<br />\r\nBlue Note Box Set<br />\r\nJ Mascis + The Fog - More Light<br />\r\nPerro &ndash; Alhabama<br />\r\nRon Carter, Herbie Hancock, Tony Williams - Third Plane<br />\r\nBlues Magoos - Psychedelic Lollipop<br />\r\nThe Cramps - File Under Sacred Music [Early Singles 1978-1981]<br />\r\nThe Mullet Moster Mafia - Power Surf Orchestra<br />\r\nNuggets - Original Artyfacts from the First Psychedelic Era, 1965-1968&nbsp;<br />\r\nThe Detroit Cobras - The Original Recordings</p>\r\n', '2016-11-29'),
(120, 'Descubrí música en RadioAlbum', '<h1>DESPU&Eacute;S DE ALGUNOS INCOVENIENTES AJENOS A RADIOALBUM</h1>\r\n\r\n<h1>ESTAMOS FUNCIONANDO NUEVAMENTE</h1>\r\n\r\n<h1>DESCUBR&Iacute; M&Uacute;SICA EN&nbsp;</h1>\r\n\r\n<h1>www.radioalbum.com.ar</h1>\r\n', '2017-01-05'),
(121, 'Las novedades de RadioAlbum', '<h2>ESTOS SON ALGUNOS DE LOS DISCOS QUE EMPEZARON A GIRAR EN LA RADIO&nbsp;</h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Sub Pop 9</h2>\r\n\r\n<h2>Nero&#39;s Rome - Togetherly&nbsp;</h2>\r\n\r\n<h2>Cloud Nothings - Life Without Sound (2017)</h2>\r\n\r\n<h2>King Sporty - Deep Reggae Roots&nbsp;</h2>\r\n\r\n<h2>The Black Furs - Doomed Blues</h2>\r\n\r\n<h2>NO SABE NO CONTESTA - Viaje Psicofonico</h2>\r\n\r\n<h2>Los planeta rojo - P&agrave;nico en Detroit</h2>\r\n\r\n<h2>Salvia - Una fuente inagotable</h2>\r\n\r\n<h2>Grandaddy - Last Place</h2>\r\n\r\n<h2>Peter Doherty - Hamburg Demonstrations</h2>\r\n\r\n<h2>Lee Morgan - 1956 Introducing&nbsp;</h2>\r\n\r\n<h2>Damon Albarn -&nbsp; Acoustic Compilation</h2>\r\n\r\n<h2>Los de afuera - Vivo 2016</h2>\r\n\r\n<h2>Moretons &ndash; Moretons</h2>\r\n\r\n<h2>Nick Cave and The Bad Seeds - Let Love In</h2>\r\n\r\n<h2>Boss Hog - Boss Hog</h2>\r\n\r\n<h2>The Spinto Band - Nice and Nicely Done</h2>\r\n\r\n<h2>Amor en la isla - Playa Crocante</h2>\r\n\r\n<h2>Captains of Sea and War &ndash; Remote</h2>\r\n\r\n<h2>Crocodiles &ndash; Dreamless</h2>\r\n\r\n<h2>Thee Oh Sees-Carrion Crawler_The Dream</h2>\r\n\r\n<h2>Mimi Maura &amp; Los Aggrotones - Stormy, 60&#39;s soul tunes inna reggae style</h2>\r\n\r\n<h2>Rata Negra - O&iacute;do absoluto</h2>\r\n\r\n<h2>Treepeople - Guilt, Regret and Embarrassment</h2>\r\n\r\n<h2>Calvin Johnson - Before The Dream Faded...</h2>\r\n\r\n<h2>The Shivas - Freezing To Death</h2>\r\n\r\n<h2>Circa Survive - Violent Waves</h2>\r\n', '2017-03-02'),
(122, 'Novedades en RadioAlbum', '<h2>Estos son algunos de los disco agragados a la radio en estos d&iacute;as</h2>\r\n\r\n<h2>Calvin Johnson - Before The Dream Faded...</h2>\r\n\r\n<h2>The Shivas - Freezing To Death</h2>\r\n\r\n<h2>Circa Survive - Violent Waves</h2>\r\n\r\n<h2>Cake - Fashion nugget</h2>\r\n\r\n<h2>Francine &ndash; Classics</h2>\r\n\r\n<h2>Guided by voices &ndash; Cool planet</h2>\r\n\r\n<h2>&nbsp;Manganzoides - En La Ciudad Del Horror</h2>\r\n\r\n<h2>Amazonas de Vulkania - UNICORNIO MALO</h2>\r\n\r\n<h2>Esquizofrenicos &ndash; Esquizofrenia</h2>\r\n\r\n<h2>Los Peligros - Contra El Sentido Comun</h2>\r\n\r\n<h2>Los Punsetes - &iexcl;Viva! (2017)</h2>\r\n\r\n<h2>Lo inadvertido</h2>\r\n\r\n<h2>Jeff The Brotherhood &ndash; Zone</h2>\r\n\r\n<h2>La Venganza de Cheetara &ndash; Valles</h2>\r\n\r\n<h2>Pyramides - Vacios y Variables</h2>\r\n\r\n<h2>Megaherzios - Las primeras canciones de Megaherzios</h2>\r\n\r\n<h2>The Madcaps - Hot Sauce</h2>\r\n\r\n<h2>The Soft Moon - The Soft Moon</h2>\r\n\r\n<h2>Hefner - The Best Of Hefner</h2>\r\n\r\n<h2>James Skelly &amp; The Intenders - Love Undercover</h2>\r\n\r\n<h2>The Mountain Goats - Transcendental Youth</h2>\r\n\r\n<h2>Bad Sleep - E.P</h2>\r\n\r\n<h2>Abobinable - Piedra con piedra</h2>\r\n\r\n<h2>Duck Duck Grey Duck - Here come</h2>\r\n\r\n<h2>The Clang Group &ndash; Practice</h2>\r\n\r\n<h2>Woods - City Sun Eater In The River Of Light</h2>\r\n\r\n<h2>The White Stripes - De Stijl</h2>\r\n\r\n<h2>The Verve - Urban Hymns</h2>\r\n\r\n<h2>The Vaselines - The Way of the Vaselines- A Complete History</h2>\r\n\r\n<h2>Lee Morgan - The Sixth Sense</h2>\r\n\r\n<h2>Los Planetas - Zona Temporalmente Autonoma (2017)</h2>\r\n\r\n<h2>Skatalites In Dub - Skatalites Meet King Tubby</h2>\r\n\r\n<h2>Mar&iacute;a Rosa M&iacute;stica - Mar&iacute;a Rosa M&iacute;stica</h2>\r\n\r\n<h2>Guachass - Paladar Negro</h2>\r\n\r\n<h2>El mato a un policia motorizado &ndash; El mato a un polocia motorizado</h2>\r\n\r\n<h2>The Jesus and Mary Chain - Damage and Joy (2017)</h2>\r\n\r\n<h2>Los Campesinos! - No Blues</h2>\r\n', '2017-04-07'),
(123, 'Novedades en RadioAlbum', '<h2>Estos son algunos de los discos recientemente subidos en nuestros canales&nbsp;</h2>\r\n\r\n<h2>Le Butcherettes - Sin Sin Sin</h2>\r\n\r\n<h2>Alucinaciones en familia - Alucinaciones en familia</h2>\r\n\r\n<h2>Rolling Stones &ndash; Some girls</h2>\r\n\r\n<h2>THE NEIGHBOURHOOD - Wiped Out</h2>\r\n\r\n<h2>U-Roy - Dread in a Babylon</h2>\r\n\r\n<h2>The Horrors - Primary Colours</h2>\r\n\r\n<h2>Slowdive &ndash; Souvlaki</h2>\r\n\r\n<h2>Cat Power &ndash; Jukebox</h2>\r\n\r\n<h2>Cage The Elephant - Tell Me I&#39;m Pretty</h2>\r\n\r\n<h2>Beach Boys - &nbsp;Beach Boys&rsquo; Party!</h2>\r\n\r\n<h2>Frankie Cosmos - Next Thing</h2>\r\n\r\n<h2>Kokoshca - Hay Una Luz</h2>\r\n\r\n<h2>LUMA &ndash; AIRWALK</h2>\r\n\r\n<h2>PALS - In-between</h2>\r\n\r\n<h2>The Del Shapiros - Sangre con Tomate</h2>\r\n\r\n<h2>The Gl&uuml;cks - Youth On Stuff</h2>\r\n\r\n<h2>La Teor&iexcl;a del Caos - Temporada de Huracanes</h2>\r\n\r\n<h2>The Saurs - Magic Shape</h2>\r\n\r\n<h2>Prietto viaja al cosmos con mariano - EP</h2>\r\n\r\n<h2>Royal Blood - Royal Blood</h2>\r\n\r\n<h2>WYLDLIFE &ndash; Wyldlife</h2>\r\n\r\n<h2>The Madcaps - Slow Down</h2>\r\n\r\n<h2>MAYO 2017</h2>\r\n\r\n<h2>El Sur - La Muerte del Verano</h2>\r\n\r\n<h2>Las Kellies - Friends And Lovers</h2>\r\n\r\n<h2>Riel - Sue&ntilde;o El&eacute;ctrico</h2>\r\n\r\n<h2>Las Aspiradoras - Mil pu&ntilde;aladas</h2>\r\n\r\n<h2>Nogal - Memorias del Nogal (y otros contextos)</h2>\r\n\r\n<h2>All Them Witches - Sleeping Through The War</h2>\r\n\r\n<h2>Los zapping - La costa del Pac&iacute;fico</h2>\r\n\r\n<h2>Rozwell Kid &ndash; Unmacho</h2>\r\n\r\n<h2>Fraidycat - Other Better Places</h2>\r\n\r\n<h2>The Moaners &ndash; Nocturnal</h2>\r\n\r\n<h2>All Them Witches - Our Mother Electricity</h2>\r\n\r\n<h2>Clash &ndash; Combat Rock</h2>\r\n\r\n<h2>Tenpole Tudor - The Stiff Records Singles Collection</h2>\r\n\r\n<h2>Cat Power - &nbsp;The Covers Record</h2>\r\n\r\n<h2>Neutral Milk Hotel - On Avery Island - 320kbps</h2>\r\n\r\n<h2>The Drums - &nbsp;Encyclopedia</h2>\r\n\r\n<h2>Allo Darlin&#39; - Allo Darlin&#39;</h2>\r\n\r\n<h2>Fer Pylo - Tributo a Fernando Cabrera</h2>\r\n\r\n<h2>THE FALCONS - EL NUEVO ESTILO</h2>\r\n', '2017-05-25'),
(124, 'Novedades en invierno', '<h2>Algunos de los discos que giran en nuestras bandejas desde estos d&iacute;as</h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Chromatics - Kill For Love</h2>\r\n\r\n<h2>Badly Drawn Boy - Have You Fed the Fish</h2>\r\n\r\n<h2>VA- Battle Hymns</h2>\r\n\r\n<h2>Belly &ndash; The best of</h2>\r\n\r\n<h2>Los Jambos &ndash; EP</h2>\r\n\r\n<h2>The Specials &ndash; BBC Sessions</h2>\r\n\r\n<h2>Thee Headcoats - In Tweed We Trust</h2>\r\n\r\n<h2>Ringo Deathstarr &ndash; Mauve</h2>\r\n\r\n<h2>The warlocks - The Phoenix Album</h2>\r\n\r\n<h2>Black Lips - 200 Million Thousand</h2>\r\n\r\n<h2>Biznaga - Centro Dram&aacute;tico Nacional</h2>\r\n\r\n<h2>CHEATAHS &ndash; Cheatahs</h2>\r\n\r\n<h2>No Joy - Wait To Pleasure</h2>\r\n\r\n<h2>Crystal Stilts - In Love With Oblivion</h2>\r\n\r\n<h2>Fungi Girls - Seafaring Pyramids</h2>\r\n\r\n<h2>The Pains of Being Pure at Heart - Days of Abandon</h2>\r\n\r\n<h2>Las Olas - Psicodelia Neanderthal Vol. 1</h2>\r\n\r\n<h2>V.A. &#39;&#39;A Hangman Sampler&#39;&#39;</h2>\r\n\r\n<h2>The Sex Organs - Intergalactic Sex Tourists</h2>\r\n\r\n<h2>Gliss - Pale Reflections</h2>\r\n\r\n<h2>Juana Molina &ndash; Halo</h2>\r\n\r\n<h2>Panda Riot - Infinity Maps</h2>\r\n\r\n<h2>Cool American - Infinite Hiatus</h2>\r\n\r\n<h2>Temples - Sun Structures</h2>\r\n\r\n<h2>BMX Bandits -&nbsp; Star Wars</h2>\r\n\r\n<h2>The Buttertones &ndash; Gravedigging</h2>\r\n\r\n<h2>The Benturas - Monta &amp; Roll</h2>\r\n\r\n<h2>Camera Obscura - Underachievers Please Try Harder</h2>\r\n\r\n<h2>Fela Kuti &ndash; Shakara</h2>\r\n\r\n<h2>Dead Elvis &amp; His One Man Grave - Monster Masquerade</h2>\r\n\r\n<h2>Sonic Youth &ndash; Goo</h2>\r\n', '2017-07-10'),
(125, 'Nuevos discos todos los días!!!', '<h2>Estos son algunos de los &uacute;ltimos discos agregados a RadioAlbum</h2>\r\n\r\n<h2>Los Tiki Phantoms - Y El Misterio Del Talism&aacute;n</h2>\r\n\r\n<h2>The Fall &ndash; Grotesque</h2>\r\n\r\n<h2>Lee Ranaldo - Between The Times And The Tides</h2>\r\n\r\n<h2>Le Butcherettes - A Raw Youth</h2>\r\n\r\n<h2>Sierra Leona - L.A.R.R.A.</h2>\r\n\r\n<h2>The Breeders &ndash; Pod</h2>\r\n\r\n<h2>PEREZ &ndash; Caraca</h2>\r\n\r\n<h2>Rude &amp; Nude - The Best Of Iggy Pop</h2>\r\n\r\n<h2>Dandy Warhols - Dandys Rule OK</h2>\r\n\r\n<h2>Gang of Four - What Happens Next</h2>\r\n\r\n<h2>The Meteors - Psychobilly Rules! - The Collection</h2>\r\n\r\n<h2>Gorillaz &ndash; Humanz</h2>\r\n\r\n<h2>Wire -&nbsp; Nocturnal Koreans</h2>\r\n\r\n<h2>Lush &ndash; Spooky</h2>\r\n\r\n<h2>The Hive Dwellers - Hewn from the Wilderness</h2>\r\n\r\n<h2>Yo La Tengo &ndash; Fade</h2>\r\n\r\n<h2>American Football - American Football</h2>\r\n\r\n<h2>Motorama &ndash; Bear</h2>\r\n\r\n<h2>VVAA - Pebbles vol 01</h2>\r\n\r\n<h2>Deaf Radio &ndash; Alarm</h2>\r\n\r\n<h2>Heaters &ndash; Baptistina</h2>\r\n\r\n<h2>Goat - World Music</h2>\r\n\r\n<h2>Los Acidos &ndash; LP</h2>\r\n\r\n<h2>Sea Ghost &ndash; SG</h2>\r\n\r\n<h2>Amberes &ndash; Amberes</h2>\r\n\r\n<h2>Los Culos - Los Culos</h2>\r\n\r\n<h2>Los Seitans - Mayhem Sessions</h2>\r\n\r\n<h2>BOBKAT&#39;65 - This Lonely Road</h2>\r\n\r\n<h2>Las Kasettes - Bajo el sol</h2>\r\n\r\n<h2>The Baron Four &ndash; Silvaticus</h2>\r\n', '2017-08-09'),
(126, 'Novedades en Septiembre. Estrenos y clásicos', '<h1>&Uacute;LTIMOS DISCOS SUMADOS A RADIOALBUM</h1>\r\n\r\n<h1>The Black Keys &ndash; Brothers<br />\r\nThe Radio Dept - Clinging To A Scheme<br />\r\nLos Planeta Rojo-Los Planeta Rojo<br />\r\n<span style=\"font-family:inherit\">Pixies - Surfer Rosa - Come On Pilgrim<br />\r\nSibyl Vane - Mermelada de tomate<br />\r\nAkal&eacute; Wub&eacute; - Akal&eacute; Wub&eacute;<br />\r\nThe Cynics - Spinning Wheel Motel<br />\r\nThe Vampires &ndash; Garfish<br />\r\nTom Waits &ndash; Bad as me<br />\r\nTinariwen &ndash; Emmaar<br />\r\nBelle and Sebastian - If You&#39;re Feeling Sinister<br />\r\nBlack Uhuru &ndash; Brutal Dub<br />\r\nNight Beats - Sonic Bloom<br />\r\nThe Growlers - Chinese Fountain<br />\r\nThe Shivas - Better off dead<br />\r\nLoquero - Fabulosos Creadores De Paranoia<br />\r\nHeavy Trash - Going Way Out With Heavy Trash<br />\r\nThe Dealers - Serendipic Breakfast<br />\r\nQueens of the Stone Age &ndash; Villains<br />\r\nKing Gizzard &amp; The Lizard Wizard - I&#39;m In Your Mind Fuzz<br />\r\nGuantanamo Baywatch - Desert Center<br />\r\nThe Stargazer Lilies - We are the Dreamers<br />\r\nRolling Stones &ndash; Aftermath<br />\r\nSmashing Pumpkins - Mellon Collie and the Infinite Sadness<br />\r\nShaman y Los Hombres en Llamas - En el mundo de fuego<br />\r\nSiouxsie And The Banshees &ndash; Juju<br />\r\nStephen Malkmus -Stephen Malkmus<br />\r\nPearl Jam - MTV Unplugged<br />\r\nTalking Heads - More Songs About Buildings And Food<br />\r\nVelvet Underground - Singles 1966-69<br />\r\nSyd Barret &ndash; Barret<br />\r\nMogwai - Every Country&#39;s Sun<br />\r\nMesser Chups - The Incredible Crocotiger<br />\r\nMorrissey - Bona Drag<br />\r\nTakeshi Terauchi - Nippon Guitars</span></h1>\r\n', '2017-09-11'),
(127, 'Nuevos discos todos los días!!!', '<h2>Algunos de los discos agragados estas semanas a la bandeja de RadioAlbum</h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Los Edificios - Barricada en la manifestacion de amor</h2>\r\n\r\n<h2>The Exbats - A Guide to the Health Issues Affecting Rescue Hens</h2>\r\n\r\n<h2>Los Perceptibles - Guerrilla Global</h2>\r\n\r\n<h2>Superpiba &ndash; Superpiba</h2>\r\n\r\n<h2>H&uuml;sker D&uuml; -&nbsp; New Day Rising (1985)</h2>\r\n\r\n<h2>Pearl Jam &ndash; Ten</h2>\r\n\r\n<h2>Posies -&nbsp; Amazing Disgrace</h2>\r\n\r\n<h2>Motorhead &ndash; UnderCover</h2>\r\n\r\n<h2>Oh Sees &ndash; Orc</h2>\r\n\r\n<h2>Totorro - Come To Mexico</h2>\r\n\r\n<h2>Doctor Explision - El Loco Mundo De Los Jovenes</h2>\r\n\r\n<h2>U Roy - The Lost Album - Right Time Rockers</h2>\r\n\r\n<h2>El Perrodiablo - La otra dimension</h2>\r\n\r\n<h2>Futuro Terror - Su nombre real es otro</h2>\r\n\r\n<h2>Los Conjunto - Experimentum Crucis</h2>\r\n\r\n<h2>Shake Some Action! - Crash Through Or Crash</h2>\r\n\r\n<h2>The Black Angels - Death Song</h2>\r\n\r\n<h2>Television &ndash; Adventure</h2>\r\n\r\n<h2>Kinks - Kinda Kinks</h2>\r\n\r\n<h2>Shonen Knife - Osaka Ramones (Tribute To The Ramones)</h2>\r\n\r\n<h2>Nirvana - BBC Sessions 1989-1991</h2>\r\n\r\n<h2>Beaches - Second Of Spring</h2>\r\n\r\n<h2>The Black Heart Death Cult - Black Rainbow &ndash; EP</h2>\r\n\r\n<h2>The Pretty Things - Get The Picture</h2>\r\n\r\n<h2>Cigarettes After Sex - Cigarettes After Sex</h2>\r\n\r\n<h2>Violent Femmes-2 Mics and The Truth Unplugged and Unhinged In America</h2>\r\n\r\n<h2>WEAVES - Wide Open</h2>\r\n\r\n<h2>El Estrellero - Los Magos</h2>\r\n\r\n<h2>Girl Ray - Earl Grey</h2>\r\n\r\n<h2>Los Incendios - Los Incendios</h2>\r\n\r\n<h2>Panda Riot - Northern Automatic Music</h2>\r\n\r\n<h2>Peru - Across Blue Skies</h2>\r\n\r\n<h2>Pia Fraus - Field Ceremony</h2>\r\n\r\n<h2>Eagulls-Eagulls</h2>\r\n\r\n<h2>Exnovios &ndash; Exnovios</h2>\r\n\r\n<h2>The Sunshine Underground - The Sunshine Underground</h2>\r\n\r\n<h2>La Luz - It&#39;s Alive</h2>\r\n\r\n<h2>Peter Perrett - How The West Was Won</h2>\r\n\r\n<h2>Beck - Colors (2017)</h2>\r\n\r\n<h2>Ceremony - The L-Shaped Man</h2>\r\n\r\n<h2>Bully &ndash; Losing</h2>\r\n\r\n<h2>James Brown - Live At The Apollo</h2>\r\n', '2017-11-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `id` int(11) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `verificado` tinyint(1) NOT NULL,
  `codigo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`id`, `mail`, `nombre`, `tipo`, `verificado`, `codigo`) VALUES
(28, 'maikndawer@gmail.com', 'laion diaz', 'semanal', 1, '8981a92bca36bbedabb30cc07a3a9cf8'),
(29, 'albertogagetti@gmail.com', 'Alberto Gagetti', 'semanal', 0, 'faaf8c0a04f1661393e07774d0b373b3'),
(30, 'leonardomnavarro@gmail.com', 'leonardo', 'mensual', 0, 'a2575732bc9e43a86c6dd13b0abc187a');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estaticas`
--
ALTER TABLE `estaticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estaticas`
--
ALTER TABLE `estaticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
