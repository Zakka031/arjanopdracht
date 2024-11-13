-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 13 nov 2024 om 10:46
-- Serverversie: 8.3.0
-- PHP-versie: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jamin_b`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `allergeen`
--

DROP TABLE IF EXISTS `allergeen`;
CREATE TABLE IF NOT EXISTS `allergeen` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Naam` varchar(50) DEFAULT NULL,
  `Omschrijving` text,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `allergeen`
--

INSERT INTO `allergeen` (`Id`, `Naam`, `Omschrijving`) VALUES
(1, 'Gluten', 'Dit product bevat gluten'),
(2, 'Gelatine', 'Dit product bevat gelatine'),
(3, 'AZO-Kleurstof', 'Dit product bevat AZO-kleurstoffen'),
(4, 'Lactose', 'Dit product bevat lactose'),
(5, 'Soja', 'Dit product bevat soja'),
(6, 'Gluten', 'Dit product bevat gluten'),
(7, 'Gelatine', 'Dit product bevat gelatine'),
(8, 'AZO-Kleurstof', 'Dit product bevat AZO-kleurstoffen'),
(9, 'Lactose', 'Dit product bevat lactose'),
(10, 'Soja', 'Dit product bevat soja');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `landen`
--

DROP TABLE IF EXISTS `landen`;
CREATE TABLE IF NOT EXISTS `landen` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Naam` varchar(100) DEFAULT NULL,
  `LandCode` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `landen`
--

INSERT INTO `landen` (`Id`, `Naam`, `LandCode`) VALUES
(1, 'Nederland', 'NL'),
(2, 'België', 'BE'),
(3, 'Duitsland', 'DE'),
(4, 'Frankrijk', 'FR'),
(5, 'Spanje', 'ES'),
(6, 'Nederland', 'NL'),
(7, 'België', 'BE'),
(8, 'Duitsland', 'DE'),
(9, 'Frankrijk', 'FR'),
(10, 'Spanje', 'ES'),
(11, 'Nederland', 'NL'),
(12, 'België', 'BE'),
(13, 'Duitsland', 'DE'),
(14, 'Frankrijk', 'FR'),
(15, 'Spanje', 'ES'),
(16, 'Nederland', 'NL'),
(17, 'België', 'BE'),
(18, 'Duitsland', 'DE'),
(19, 'Frankrijk', 'FR'),
(20, 'Spanje', 'ES');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leverancier`
--

DROP TABLE IF EXISTS `leverancier`;
CREATE TABLE IF NOT EXISTS `leverancier` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Naam` varchar(50) DEFAULT NULL,
  `ContactPersoon` varchar(50) DEFAULT NULL,
  `LeverancierNummer` varchar(20) DEFAULT NULL,
  `Mobiel` varchar(15) DEFAULT NULL,
  `LandId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `LandId` (`LandId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `leverancier`
--

INSERT INTO `leverancier` (`Id`, `Naam`, `ContactPersoon`, `LeverancierNummer`, `Mobiel`, `LandId`) VALUES
(1, 'Venco', 'Bert van Linge', 'L1029384719', '0612345678', 1),
(2, 'Astra Sweets', 'Jasper del Monte', 'L1029284315', '0628493827', 2),
(3, 'Haribo', 'Sven Stalman', 'L1029324748', '0639398734', 3),
(4, 'Basset', 'Joyce Stelterberg', 'L1023845773', '0624383291', 4),
(5, 'De Bron', 'Remco Veenstra', 'L1023857736', '0648293823', 5),
(6, 'Venco', 'Bert van Linge', 'L1029384719', '0612345678', 1),
(7, 'Astra Sweets', 'Jasper del Monte', 'L1029284315', '0628493827', 2),
(8, 'Haribo', 'Sven Stalman', 'L1029324748', '0639398734', 3),
(9, 'Basset', 'Joyce Stelterberg', 'L1023845773', '0624383291', 4),
(10, 'De Bron', 'Remco Veenstra', 'L1023857736', '0648293823', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `magazijn`
--

DROP TABLE IF EXISTS `magazijn`;
CREATE TABLE IF NOT EXISTS `magazijn` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ProductId` int DEFAULT NULL,
  `VerpakkingsEenheid` decimal(4,2) DEFAULT NULL,
  `AantalAanwezig` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ProductId` (`ProductId`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `magazijn`
--

INSERT INTO `magazijn` (`Id`, `ProductId`, `VerpakkingsEenheid`, `AantalAanwezig`) VALUES
(1, 1, 1.00, 100),
(2, 2, 0.50, 200),
(3, 3, 0.25, 150),
(4, 4, 1.50, 120),
(5, 5, 1.00, 80),
(6, 6, 0.75, 130),
(7, 7, 1.00, 90),
(8, 8, 2.00, 60),
(9, 9, 1.25, 110),
(10, 10, 0.50, 140),
(11, 11, 1.00, 95),
(12, 12, 1.00, 105),
(13, 13, 1.50, 85),
(14, 1, 1.00, 100),
(15, 2, 0.50, 200),
(16, 3, 0.25, 150),
(17, 4, 1.50, 120),
(18, 5, 1.00, 80),
(19, 6, 0.75, 130),
(20, 7, 1.00, 90),
(21, 8, 2.00, 60),
(22, 9, 1.25, 110),
(23, 10, 0.50, 140),
(24, 11, 1.00, 95),
(25, 12, 1.00, 105),
(26, 13, 1.50, 85);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Naam` varchar(50) DEFAULT NULL,
  `Barcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`Id`, `Naam`, `Barcode`) VALUES
(1, 'Mintnopjes', '8719587231278'),
(2, 'Schoolkrijt', '8719587326713'),
(3, 'Honingdrop', '8719587327836'),
(4, 'Zure Beren', '8719587321441'),
(5, 'Cola Flesjes', '8719587321237'),
(6, 'Turtles', '8719587322245'),
(7, 'Witte Muizen', '8719587328256'),
(8, 'Reuzen Slangen', '8719587325641'),
(9, 'Zoute Rijen', '8719587322739'),
(10, 'Winegums', '8719587327527'),
(11, 'Drop Munten', '8719587322345'),
(12, 'Kruis Drop', '8719587322265'),
(13, 'Zoute Ruitjes', '8719587323256'),
(14, 'Mintnopjes', '8719587231278'),
(15, 'Schoolkrijt', '8719587326713'),
(16, 'Honingdrop', '8719587327836'),
(17, 'Zure Beren', '8719587321441'),
(18, 'Cola Flesjes', '8719587321237'),
(19, 'Turtles', '8719587322245'),
(20, 'Witte Muizen', '8719587328256'),
(21, 'Reuzen Slangen', '8719587325641'),
(22, 'Zoute Rijen', '8719587322739'),
(23, 'Winegums', '8719587327527'),
(24, 'Drop Munten', '8719587322345'),
(25, 'Kruis Drop', '8719587322265'),
(26, 'Zoute Ruitjes', '8719587323256');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `productperallergeen`
--

DROP TABLE IF EXISTS `productperallergeen`;
CREATE TABLE IF NOT EXISTS `productperallergeen` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ProductId` int DEFAULT NULL,
  `AllergeenId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ProductId` (`ProductId`),
  KEY `AllergeenId` (`AllergeenId`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `productperallergeen`
--

INSERT INTO `productperallergeen` (`Id`, `ProductId`, `AllergeenId`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 3),
(4, 3, 4),
(5, 4, 5),
(6, 5, 1),
(7, 6, 2),
(8, 7, 3),
(9, 8, 4),
(10, 9, 5),
(11, 10, 1),
(12, 11, 2),
(13, 12, 3),
(14, 13, 4),
(15, 1, 2),
(16, 1, 1),
(17, 2, 3),
(18, 3, 4),
(19, 4, 5),
(20, 5, 1),
(21, 6, 2),
(22, 7, 3),
(23, 8, 4),
(24, 9, 5),
(25, 10, 1),
(26, 11, 2),
(27, 12, 3),
(28, 13, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `productperleverancier`
--

DROP TABLE IF EXISTS `productperleverancier`;
CREATE TABLE IF NOT EXISTS `productperleverancier` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `LeverancierId` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  `DatumLevering` date DEFAULT NULL,
  `Aantal` int DEFAULT NULL,
  `DatumEerstVolgendeLevering` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `LeverancierId` (`LeverancierId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `productperleverancier`
--

INSERT INTO `productperleverancier` (`Id`, `LeverancierId`, `ProductId`, `DatumLevering`, `Aantal`, `DatumEerstVolgendeLevering`) VALUES
(1, 1, 1, '2024-10-09', 23, '2024-10-16'),
(2, 1, 1, '2024-10-18', 21, '2024-10-25'),
(3, 1, 2, '2024-10-09', 12, '2024-10-16'),
(4, 1, 3, '2024-10-10', 11, '2024-10-17'),
(5, 2, 4, '2024-10-14', 16, '2024-10-21'),
(6, 2, 4, '2024-10-21', 23, '2024-10-28'),
(7, 2, 5, '2024-10-14', 45, '2024-10-21'),
(8, 2, 6, '2024-10-14', 30, '2024-10-21'),
(9, 3, 7, '2024-10-12', 12, '2024-10-19'),
(10, 3, 7, '2024-10-19', 23, '2024-10-26'),
(11, 3, 8, '2024-10-10', 12, '2024-10-17'),
(12, 3, 9, '2024-10-11', 1, '2024-10-18'),
(13, 4, 10, '2024-10-16', 24, '2024-10-30'),
(14, 5, 11, '2024-10-10', 47, '2024-10-17'),
(15, 5, 11, '2024-10-19', 60, '2024-10-26'),
(16, 5, 12, '2024-10-11', 45, NULL),
(17, 5, 13, '2024-10-12', 23, NULL),
(18, 1, 1, '2024-10-09', 23, '2024-10-16'),
(19, 1, 1, '2024-10-18', 21, '2024-10-25'),
(20, 1, 2, '2024-10-09', 12, '2024-10-16'),
(21, 1, 3, '2024-10-10', 11, '2024-10-17'),
(22, 2, 4, '2024-10-14', 16, '2024-10-21'),
(23, 2, 4, '2024-10-21', 23, '2024-10-28'),
(24, 2, 5, '2024-10-14', 45, '2024-10-21'),
(25, 2, 6, '2024-10-14', 30, '2024-10-21'),
(26, 3, 7, '2024-10-12', 12, '2024-10-19'),
(27, 3, 7, '2024-10-19', 23, '2024-10-26'),
(28, 3, 8, '2024-10-10', 12, '2024-10-17'),
(29, 3, 9, '2024-10-11', 1, '2024-10-18'),
(30, 4, 10, '2024-10-16', 24, '2024-10-30'),
(31, 5, 11, '2024-10-10', 47, '2024-10-17'),
(32, 5, 11, '2024-10-19', 60, '2024-10-26'),
(33, 5, 12, '2024-10-11', 45, NULL),
(34, 5, 13, '2024-10-12', 23, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
