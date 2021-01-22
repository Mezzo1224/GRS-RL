-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Aug 2017 um 20:08
-- Server-Version: 10.1.21-MariaDB
-- PHP-Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `tesss`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `achievementlist`
--

CREATE TABLE `achievementlist` (
  `ID` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gainXP` int(11) NOT NULL,
  `gainMoney` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `achievementlist`
--

INSERT INTO `achievementlist` (`ID`, `type`, `Name`, `description`, `image`, `gainXP`, `gainMoney`) VALUES
(1, 1, 'Willkommen auf GRS!', 'Registriere dich auf GRS Reallife!', 'welcome.png', 100, 100),
(2, 1, 'Auch mal wieder da ?', 'Logge dich ein.', 'welcome.png', 100, 500),
(3, 1, 'RIP', 'Sterbe einmal.', 'rip.png', 100, 100),
(4, 1, 'Dafuer gibts nix!', 'Töte einen Spieler.', 'sdm.png', 0, 0),
(5, 1, 'Brumm Brumm', 'Kaufe ein Fahrzeug.', 'buyveh.png', 100, 1000),
(6, 2, 'Kameraden!', 'Tritt einer Fraktion bei.', 'faction.png', 100, 100),
(7, 2, 'Erster Erfolg!', 'Werde Co-Leader oder Leader in einer Fraktion.', 'faction.png', 1000, 1000),
(8, 1, 'Willkommen, Sklave.', 'War/Sei ein Teammitglied', 'sklave.png', 0, 0),
(9, 1, 'Geldgeiler Sack !', 'Erwerbe Premium.', 'geldgeil.png', 100, 100),
(10, 3, 'Die Legende lebt!', 'Klicke auf Yoshi oder Mezzo.', 'yoshi.png', 100, 100),
(11, 2, 'Mehr wert als du !', 'Besitze eine Millionnen $', '1mio.png', 1000, 10000),
(12, 2, 'M0n3y B0y', 'Besitze 10 Millionen $', '10mio.png', 5000, 50000),
(13, 1, 'Smoke Weed Everyday', 'Rauche einmal W33D.', 'weed.png', 100, 100),
(14, 1, 'Admin abuse!', 'Nutze deine Rechte aus und bekomme Beschwerden. Willkommmen auf GRS!', 'trollface.png', 0, 0),
(15, 1, 'Login-Nutte', 'Logge dich 100 mal ein.', '100login.png', 500, 1000),
(16, 1, 'Ich lebe Gefaehrlich', 'Du warst 100 mal im Knast.', '100jail.png', 500, 1000),
(17, 1, 'Gangwar B1tch', 'Nehme an 10 Gangwars teil.', '10gw.png', 1000, 1000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `achievements`
--

CREATE TABLE `achievements` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `achievmentID` int(11) NOT NULL,
  `data` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `achievments`
--

CREATE TABLE `achievments` (
  `UID` int(4) NOT NULL,
  `SchlaflosInSA` varchar(50) NOT NULL DEFAULT '0',
  `Waffenschieber` varchar(50) NOT NULL DEFAULT '0',
  `Angler` varchar(50) NOT NULL DEFAULT '0',
  `Lizensen` varchar(50) NOT NULL DEFAULT '0',
  `Fahrzeugwahn` varchar(50) NOT NULL DEFAULT '0',
  `EigeneFuesse` varchar(50) NOT NULL DEFAULT '0',
  `KingOfTheHill` varchar(50) NOT NULL DEFAULT '0',
  `ReallifeWTF` varchar(50) NOT NULL DEFAULT '0',
  `DerSammler` varchar(50) NOT NULL DEFAULT '0',
  `TheTruthIsOutThere` varchar(50) NOT NULL DEFAULT '0',
  `SilentAssasin` varchar(50) NOT NULL DEFAULT '0',
  `HighwayToHell` varchar(50) NOT NULL DEFAULT '0',
  `LookoutsA` varchar(20) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|',
  `Hufeisen` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|',
  `Revolverheld` int(1) NOT NULL DEFAULT '0',
  `ChickenDinner` int(1) NOT NULL DEFAULT '0',
  `NichtGehtMehr` int(1) NOT NULL DEFAULT '0',
  `highscore` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `advertisedPlayers`
--

CREATE TABLE `advertisedPlayers` (
  `werberUID` int(11) NOT NULL,
  `geworbenerUID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ban`
--

CREATE TABLE `ban` (
  `ID` int(11) NOT NULL,
  `UID` int(4) NOT NULL,
  `AdminUID` int(4) NOT NULL,
  `Grund` varchar(50) NOT NULL,
  `Datum` varchar(50) NOT NULL,
  `IP` varchar(50) NOT NULL DEFAULT '0',
  `Serial` varchar(50) NOT NULL,
  `Eintragsdatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `biz`
--

CREATE TABLE `biz` (
  `ID` int(2) NOT NULL,
  `Biz` varchar(50) NOT NULL,
  `UID` int(4) NOT NULL,
  `Kasse` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Preis` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `biz`
--

INSERT INTO `biz` (`ID`, `Biz`, `UID`, `Kasse`, `Name`, `Preis`) VALUES
(5, 'MistysBar', 0, 350, 'Mistys Bar', 350000),
(3, 'Sprunk', 0, 192, 'Sprunk Fabrik', 475000),
(4, 'WellStackedPizza', 0, 0, 'Well Stacked Pizza Co.', 999999999),
(10, 'TankstellePine', 0, 1150, 'Tankstelle Pine', 650000),
(8, 'TankstelleNord', 0, 1376, 'Tankstelle North', 200000),
(6, 'Visage', 0, 0, 'Visage Hotel', 10000000),
(7, 'VankHoff', 0, 0, 'Vank Hoff Hotel', 3000000),
(2, 'PaynSprayJuniper', 0, 10, 'Pay n Spray', 350000),
(9, 'TankstelleSued', 0, 956, 'Tankstelle South', 750000),
(1, 'PaynSprayWangcars', 0, 1320, 'Pay n Spray WC', 350000),
(11, 'PaynSprayLV', 0, 35, 'Pay n Spray LV', 500000),
(12, 'PaynSprayLS', 0, 25, 'Pay n Spray LS', 500000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blacklist`
--

CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL,
  `UID` int(4) NOT NULL,
  `EintraegerUID` int(4) NOT NULL,
  `Fraktion` int(2) NOT NULL,
  `Grund` text NOT NULL,
  `Eintragungsdatum` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blocks`
--

CREATE TABLE `blocks` (
  `UID` int(4) NOT NULL,
  `Punkte` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bonustable`
--

CREATE TABLE `bonustable` (
  `UID` int(4) NOT NULL,
  `Lungenvolumen` varchar(50) NOT NULL,
  `Muskeln` varchar(50) NOT NULL,
  `Kondition` varchar(50) NOT NULL,
  `Boxen` varchar(50) NOT NULL,
  `KungFu` varchar(50) NOT NULL,
  `Streetfighting` varchar(50) NOT NULL,
  `CurStyle` varchar(50) NOT NULL,
  `PistolenSkill` varchar(50) NOT NULL,
  `DeagleSkill` varchar(50) NOT NULL,
  `ShotgunSkill` varchar(50) NOT NULL,
  `AssaultSkill` varchar(50) NOT NULL,
  `Vortex` varchar(50) NOT NULL DEFAULT 'none',
  `MP5Skills` varchar(50) NOT NULL DEFAULT 'none',
  `Quad` varchar(50) NOT NULL DEFAULT 'none',
  `CarslotUpgrades` varchar(50) NOT NULL DEFAULT 'none',
  `PremiumUntilDay` int(50) NOT NULL DEFAULT '0',
  `PremiumUntilYear` varchar(50) NOT NULL DEFAULT '0',
  `BonusSkin1` varchar(50) NOT NULL DEFAULT 'none',
  `CarslotUpdate2` int(11) NOT NULL DEFAULT '0',
  `CarslotUpdate3` int(11) NOT NULL DEFAULT '0',
  `CarslotUpdate4` int(11) NOT NULL DEFAULT '0',
  `CarslotUpdate5` int(11) NOT NULL DEFAULT '0',
  `Skimmer` int(1) NOT NULL DEFAULT '0',
  `Leichenwagen` int(1) NOT NULL DEFAULT '0',
  `Schach` varchar(1) NOT NULL DEFAULT '0',
  `Caddy` varchar(1) NOT NULL DEFAULT '0',
  `fglass` varchar(3) NOT NULL DEFAULT '0',
  `uzi` varchar(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `booster`
--

CREATE TABLE `booster` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `date` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `buyit`
--

CREATE TABLE `buyit` (
  `ID` int(50) NOT NULL,
  `Typ` varchar(50) NOT NULL,
  `AnbieterUID` int(4) NOT NULL,
  `HoechstbietenderUID` int(4) NOT NULL,
  `Hoechstgebot` int(50) NOT NULL,
  `LaeuftBis` int(50) NOT NULL,
  `Beschreibung` varchar(200) NOT NULL DEFAULT '',
  `OptischesDatum` varchar(50) NOT NULL,
  `Anzahl` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carhouses_icons`
--

CREATE TABLE `carhouses_icons` (
  `Name` varchar(50) NOT NULL,
  `ID` int(3) NOT NULL,
  `X` double NOT NULL,
  `Y` double NOT NULL,
  `Z` double NOT NULL,
  `SpawnX` float NOT NULL,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnRX` float NOT NULL,
  `SpawnRY` float NOT NULL,
  `SpawnRZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `carhouses_icons`
--

INSERT INTO `carhouses_icons` (`Name`, `ID`, `X`, `Y`, `Z`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnRX`, `SpawnRY`, `SpawnRZ`) VALUES
('Otto\'s Autos', 3, -1649.9169921875, 1209.8126220703, 7.25, -1637.07, 1208.94, 7.07969, 0, 0, 224),
('Wang Cars', 2, -1966.1179199219, 293.97113037109, 35.46875, -1932.04, 268.793, 41.1455, 0, 0, 180),
('San Fierro\nAirport', 1, -1544.4420166016, -440.82772827148, 6, -1224.29, -7.50679, 15.0342, 0, 0, 0),
('Bayside Boats', 4, -2185.0559082031, 2413.1411132813, 5.15625, -2215.62, 2438.35, 0, 0, 0, 314),
('Las Venturas\nAirport', 5, 1714.8116455078, 1616.1896972656, 10.09, 1346.85, 1341.25, 12.3362, 0, 0, 268),
('$HODY USED\nAUTOS', 6, 1689.0015869141, 1850.7039794922, 11.219537734985, 1692.42, 1865.62, 10.7203, 0, 0, 270),
('Auto Bahn', 7, 2200.86, 1394.32, 10.9, 2200.93, 1386.6, 10.55, 0, 0, 90),
('Bonusfahrzeuge\n( See )', 8, -911.11560058594, 2686.1909179688, 42.817291259766, -962.246, 2671.21, 40.3628, 0, 0, 135),
('Bonusfahrzeuge\n( Land )', 9, -902.84930419922, 2681.6420898438, 42.734336853027, -898.47, 2715.61, 45.9974, 0, 0, 97),
('Auto Bahn', 10, 1948.6752929688, 2068.84, 11.466958999634, 1940.2, 2068.54, 10.8203, 0, 0, 0),
('Kleinstadt-\\nhaendler', 11, -2088.97, -2262.41, 30.32, -2088.42, -2267.6, 30.5, 0, 0, 45);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carhouses_vehicles`
--

CREATE TABLE `carhouses_vehicles` (
  `AutohausID` int(50) NOT NULL,
  `X` double NOT NULL,
  `Y` double NOT NULL,
  `Z` double NOT NULL,
  `RX` double NOT NULL,
  `RY` double NOT NULL,
  `RZ` double NOT NULL,
  `Preis` int(11) NOT NULL,
  `Typ` int(50) NOT NULL,
  `Info` varchar(50) NOT NULL,
  `Comment` varchar(999) NOT NULL DEFAULT '',
  `ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `carhouses_vehicles`
--

INSERT INTO `carhouses_vehicles` (`AutohausID`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`, `Preis`, `Typ`, `Info`, `Comment`, `ID`) VALUES
(1, -1188.5283203125, 32.646484375, 15.034187316895, 0, 0, 0, 129000, 568, 'Helikoper mit\n2 Sitzplaetzen', 'Raindance', 1),
(1, -1187.7210693359, 15.780174255371, 14.24843788147, 0, 0, 16, 31900, 469, 'Helikoper mit\n2 Sitzplaetzen', 'Sparrow', 2),
(1, -1175.3992919922, 29.118057250977, 14.413437843323, 0, 0, 50, 74900, 487, 'Helikoper mit\n4 Sitzplaetzen', 'Maverick', 3),
(2, -1949.3812255859, 263.57504272461, 40.867080688477, 0, 0, 68, 12900, 426, 'Viertuerer', 'Premier', 4),
(2, -1948.7930908203, 272.47186279297, 41.003414154053, 0, 0, 106, 7500, 507, 'Viertuerer', 'Elegant', 5),
(2, -1956.0469970703, 291.77319335938, 40.877082824707, 0, 0, 130, 11500, 404, 'Viertuerer', 'Perennial', 6),
(2, -1959.2907714844, 258.83361816406, 35.168510437012, 0, 0, 18, 1800, 581, 'Motorrad', 'BF-400', 7),
(2, -1949.6003417969, 261.25247192383, 35.330226898193, 0, 0, 26, 1200, 549, 'Billigkarre', 'Tampa', 8),
(2, -1948.7517089844, 270.49761962891, 35.423927307129, 0, 0, 112, 14500, 412, 'Viertuerer', 'Vodoo', 9),
(2, -1956.056640625, 296.3076171875, 35.567386627197, 0, 0, 132, 17800, 579, 'SUV', 'Huntley', 10),
(3, -1660.5234375, 1213.8901367188, 6.9103775024414, 0, 0, 326, 32500, 522, 'Rennmotorad', 'NRG-500', 11),
(3, -1654.2049560547, 1213.8233642578, 13.371874809265, 0, 0, 14, 47900, 541, 'Sportwagen', 'Bullet', 12),
(3, -1660.8762207031, 1216.0104980469, 13.463988304138, 0, 0, 332, 42500, 506, 'Sportwagen', 'Super GT', 13),
(3, -1673.5727539063, 1206.7923583984, 21.005771636963, 0, 0, 248, 48900, 415, 'Sportwagen', 'Cheetah', 14),
(3, -1657, 1211, 7.04, 0, 0, 318, 84900, 411, 'Sportwagen', 'Infernus', 15),
(3, -1650.2810058594, 1208.2152099609, 20.898662567139, 0, 0, 10.25, 54900, 429, 'Sportcabrio', 'Banshee', 16),
(3, -1663.4768066406, 1219.8461914063, 20.966249465942, 0, 0, 250, 39500, 587, 'Sportwagen', 'Euros', 17),
(4, -2213.1484375, 2411.6689453125, 0, 0, 0, 42, 179900, 484, 'Segelyacht\n( Mit Koje )', 'Marquis', 18),
(4, -2223.1516113281, 2400.8994140625, 0, 0, 0, 46, 129900, 454, 'Motoryacht\n( Mit Koje )', 'Tropic', 19),
(4, -2231.357421875, 2390.7587890625, 0, 0, 0, 44, 27900, 446, 'Speedboot', 'Squalo', 20),
(4, -2258.015691406, 2419.2734375, 0, 0, 0, 224, 19900, 452, 'Speedboot', 'Speeder', 21),
(4, -2249.8605957031, 2423.9106445313, 0, 0, 0, 224, 7900, 473, 'Schlauchboot', 'Dinghy', 22),
(4, -2239.6242675781, 2440.6728515625, 0, 0, 0, 226, 42500, 493, 'Speedboot', 'Jetmax', 23),
(5, 1296.4821777344, 1324.9904785156, 11.370494842529, 0, 0, 270, 32500, 593, 'Propeller-\nmaschiene\n(2 Sitzplaetze)', 'Dodo', 24),
(5, 1295.6755371094, 1361.3303222656, 12.271298408508, 12, 0, 270, 54900, 553, 'Alte Propeller-\nmaschiene', 'Nevada', 25),
(5, 1291.8493652344, 1389.7900390625, 11.820384979248, 0, 0, 270, 149900, 519, 'Privatjet', 'Shamal', 26),
(5, 1296.9296875, 1340.884765625, 11.605069160461, 0, 0, 270, 34900, 513, 'Stuntflugzeug', 'Stuntplane', 27),
(5, 1350.5347900391, 1281.189453125, 12.336210250854, 0, 0, 0, 24900, 511, 'Propellerflug-\nzeug ( 2 Sitze )', 'Beagle', 28),
(6, 1728.9261474609, 2019.6724853516, 10.690312385559, 0, 0, 90, 17950, 467, 'Viertuerer', 'Oceanic', 29),
(6, 1728.9013671875, 2009.2183837891, 10.82, 0, 0, 90, 74950, 603, 'Muscle-Car', 'Phoenix', 30),
(6, 1728.9013671875, 2003, 10.72, 0, 0, 90, 21000, 475, 'Muscle-Car', 'Sabre', 31),
(6, 1728.2746582031, 1991.4293212891, 10.96, 0, 0, 90, 84000, 434, 'Hotrod', 'Hotknife', 32),
(6, 1729, 1985.2177734375, 10.75, 0, 0, 90, 49000, 419, 'Lowrider', 'Esperanto', 33),
(6, 1729.08, 1979.41, 10.667, 0, 0, 90, 26000, 424, 'Strandbuggy', 'BF Injection', 34),
(6, 1742.11, 2019.2, 10.49, 0, 0, 0, 490, 462, 'Roller', 'Faggio', 35),
(6, 1744.46, 2013.42, 10.77, 0, 0, 90, 15000, 412, 'Lowrider', 'Voodoo', 36),
(6, 1744, 2006.88, 10.57, 0, 0, 90, 35000, 559, 'Muscle-Car', 'Jester', 37),
(6, 1745.725, 1993.88, 10.6, 0, 0, 90, 54500, 555, 'Cabrio', 'Windsor', 38),
(6, 1746.39, 1985.35, 11.18, 0, 0, 90, 28750, 489, 'Jeep', 'Rancher', 39),
(7, 2148.72, 1397.41, 10.75, 0, 0, 0, 47800, 402, 'Sportwagen', 'Buffalo', 40),
(6, 1745.65, 1972.61, 10.51, 0, 0, 90, 34500, 565, 'Zweituerer', 'Flash', 41),
(7, 2142.47, 1395.71, 10.75, 0, 0, 0, 89500, 409, 'Limousine', 'Stretch', 42),
(7, 2139.501953125, 1396.9553222656, 10.76, 0, 0, 0, 19500, 545, 'Muscle-Car', 'Hustler', 43),
(7, 2132.72, 1396.93, 10.79, 0, 0, 0, 24500, 568, 'Buggy', 'Bandito', 44),
(7, 2126.37, 1397.1, 10.73, 0, 0, 0, 45000, 561, 'SUV', 'Stratum', 45),
(7, 2120.1, 1397.43, 10.61, 0, 0, 0, 43000, 560, 'Viertuerer', 'Sultan', 46),
(7, 2123.05, 1397.17, 10.65, 0, 0, 0, 24950, 535, 'Lowrider', 'Slamvan', 47),
(7, 2113.57, 1397.91, 10.58, 0, 0, 0, 17800, 468, 'Cross\nMotorad', 'Sanchez', 48),
(7, 2148.62, 1409.58, 10.74, 0, 0, 180, 27850, 550, 'Vierteurer', 'Sunrise', 49),
(7, 2139.1, 1410.19, 10.53, 0, 0, 180, 19500, 589, 'Zweituerer', 'Club', 50),
(7, 2132.6291503906, 1409.98, 10.67, 0, 0, 180, 29800, 536, 'Lowrider-\nCabrio', 'Blade', 51),
(7, 2129.5183105, 1411.01, 10.72, 0, 0, 180, 12500, 479, 'SUV', 'Regina', 52),
(8, -942.18560791016, 2648.8591308594, 42.386817932129, 0, 0, 135, 74500, 460, 'Wasserflug-\nzeug', 'Skimmer', 53),
(8, -912.12268066406, 2695.1982421875, 42.017189025879, 0, 0, 135, 45000, 539, 'Hovercraft', 'Vortex', 54),
(9, -887.50402832031, 2697.2333984375, 41.945262908936, 0, 0, 315, 24500, 471, 'Quad', 'Quadbike', 55),
(9, -893.67626953125, 2700.0336914063, 42.320129394531, 0, 0, 315, 39500, 442, 'Leichen-\nwagen', 'Romero', 56),
(9, -902.78149414063, 2699.6669921875, 42.096534729004, 0, 0, 0, 23500, 457, 'Golf-\nwagen', 'Caddy', 57),
(10, 1994.6566162109, 2059.0798339844, 10.62031269, 0, 0, 0, 37500, 533, 'Cabrio', 'Feltzer', 58),
(10, 1991.0211181641, 2058.85, 10.57, 0, 0, 0, 64780, 562, 'Sportwagen', 'Elegy', 59),
(10, 1987.41, 2058.85, 10.72, 0, 0, 0, 24000, 491, 'Zweituerer', 'Virgo', 60),
(10, 1983.7, 2058.7, 10.79, 0, 0, 0, 32700, 567, 'Lowrider', 'Savanna', 61),
(10, 1979.65, 2058.69, 10.52, 0, 0, 0, 80000, 541, 'Sportwagen', 'Bullet', 62),
(10, 1994.71, 2035.77, 10.8, 0, 0, 180, 34500, 445, 'Viertuerer', 'Admiral', 63),
(10, 1990.63, 2035.77, 10.94, 0, 0, 180, 47500, 400, 'Jeep', 'Landstalker', 64),
(10, 1986.39, 2036.29, 10.68, 0, 0, 180, 24000, 401, 'Zweituerer', 'Bravura', 65),
(10, 1982.29, 2035.91, 10.51, 0, 0, 180, 65000, 558, 'Sportwagen', 'Uranus', 66),
(11, -2089.78, -2242.6, 30.82, 359, 359, 45, 11950, 543, 'Pickup', 'Sadler', 67),
(11, -2098.32, -2255, 30.7, 0, 0, 0, 9500, 478, 'Pickup', 'Walton', 68),
(11, -2112.39, -2241.16, 30.4, 0, 0, 0, 19500, 518, 'Zweitruerer', 'Buccaneer', 69),
(11, -2099.4, -2225.87, 30.46, 0, 0, 45, 2900, 542, 'Zweitruerer', 'Clover', 70);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cars_ai`
--

CREATE TABLE `cars_ai` (
  `ID` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `cars_ai`
--

INSERT INTO `cars_ai` (`ID`, `Model`, `Preis`, `Name`) VALUES
(1, 496, 28000, 'Blista Compact'),
(2, 580, 175000, 'Stafford'),
(3, 534, 54500, 'Remington'),
(4, 480, 95000, 'Comet'),
(5, 451, 249500, 'Turismo'),
(6, 558, 124500, 'Uranus'),
(7, 477, 200000, 'ZR-350'),
(8, 521, 79500, 'FCR-900'),
(9, 507, 50000, 'Elegant'),
(10, 531, 149500, 'Tractor'),
(11, 483, 175000, 'Camper');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cars_peds_ai`
--

CREATE TABLE `cars_peds_ai` (
  `ID` int(11) NOT NULL,
  `VehX` float NOT NULL,
  `VehY` float NOT NULL,
  `VehZ` float NOT NULL,
  `VehRX` float NOT NULL,
  `VehRY` float NOT NULL,
  `VehRZ` float NOT NULL,
  `PedX` float NOT NULL,
  `PedY` float NOT NULL,
  `PedZ` float NOT NULL,
  `PedR` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `cars_peds_ai`
--

INSERT INTO `cars_peds_ai` (`ID`, `VehX`, `VehY`, `VehZ`, `VehRX`, `VehRY`, `VehRZ`, `PedX`, `PedY`, `PedZ`, `PedR`) VALUES
(1, -2099.44, -9.94, 35.32, 0, 0, 260, -2099.93, -11.63, 34.32, 190),
(2, -2693.58, 1228.74, 55.56, 0, 0, 0, -2691.69, 1227.19, 54.56, 220),
(3, -2804.4, -252.72, 7.17, 0, 0, 0, -2805.06, -249.59, 6.03, 0),
(4, -1446.24, 920.05, 7.18, 0, 0, 0, -1444.79, 919.6, 6.18, 270),
(5, -1959.31, 1227.51, 31.64, 0, 0, 18, -1958.05, 1227.93, 30.64, 285),
(6, -2706.82, 1304.78, 7.04, 0, 0, 190, -2705.09, 1304.53, 6.05, 240);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `coins`
--

CREATE TABLE `coins` (
  `Name` varchar(255) NOT NULL,
  `Coins` int(15) NOT NULL,
  `txn` text NOT NULL,
  `psc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dailylogins`
--

CREATE TABLE `dailylogins` (
  `UID` int(255) NOT NULL,
  `loginData` int(255) NOT NULL DEFAULT '0',
  `nextLoginBonus` int(255) NOT NULL DEFAULT '0',
  `expiredLoginBonus` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `email`
--

CREATE TABLE `email` (
  `EmpfaengerUID` int(4) NOT NULL,
  `Text` varchar(500) NOT NULL,
  `Yearday` int(11) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `forum_accounts`
--

CREATE TABLE `forum_accounts` (
  `UID` int(11) NOT NULL,
  `ForumID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fraktionen`
--

CREATE TABLE `fraktionen` (
  `Name` varchar(50) NOT NULL,
  `ID` int(2) NOT NULL,
  `FKasse` varchar(50) NOT NULL,
  `DepotGeld` varchar(50) NOT NULL DEFAULT '0',
  `DepotDrogen` varchar(50) NOT NULL DEFAULT '0',
  `DepotMaterials` varchar(50) NOT NULL DEFAULT '0',
  `Notiz` longtext NOT NULL,
  `maxVehs` int(100) NOT NULL DEFAULT '20',
  `level` int(100) NOT NULL DEFAULT '0',
  `swatsets` int(11) NOT NULL,
  `rearms` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `fraktionen`
--

INSERT INTO `fraktionen` (`Name`, `ID`, `FKasse`, `DepotGeld`, `DepotDrogen`, `DepotMaterials`, `Notiz`, `maxVehs`, `level`, `swatsets`, `rearms`) VALUES
('Mafia', 2, '0', '127967', '100', '4160', '\n', 20, 0, 0, 0),
('SFPD', 1, '0', '1573051', '0', '0', 'Binds:\n\nbind 1 m Allgeimeine Verkehrskontrolle! Sofort rechts ran, motor aus & /handsup!\nbind 2 m Letzte Warnung! Sofort rechts ran, motor aus & /handsup!\nbind 3 say Guten Tag, mein Name ist Officer NAME vom SFPD. DÃ¼rfte ich Ihre Papiere sehen?\nbind 4 say Vielen Dank. DÃ¼rfte ich Sie nun durchsuchen?\nbind 5 say Vielen Dank. DÃ¼rfte ich nun ein Alkoholtest bzw. Drogentest durchfÃ¼hren?\nbind 6 say Ich wÃ¼nsche Ihnen einen angenehmen Tag!\n\n', 20, 0, 599, 600),
('Triaden', 3, '0', '588200', '0', '9630', '', 20, 0, 0, 0),
('Terroristen', 4, '0', '72500', '0', '10000', 'Willkommen bei den Terroristen!\n\nRÃ¤nge:\n\n(5)RevolutionsfÃ¼hrer: Bierschiss\n(4)Kommandant: Borow, Coul\n(3)FreiheitskÃ¤mpfer: /\n(2)Bombenleger: Aniqz\n(1)Genosse: //\n(0)Sympathisant: //\n\nFahrzeugrÃ¤nge:\n\nRevolutionsfÃ¼hrer: Alles\nKommandant: Patriot,Mesa,Boxville,Bobcat,Rancher,Cargobob\nFreiheitskÃ¤mpfer: Patriot,Mesa,Boxville,Bobcat\nBombenleger: Bobcat,Mesa,Boxville\nGenosse: Bobcat,Mesa\nSympathisant: Bobcat\n\nRegeln:\n\n1.Immer einen Bomben-/Terroranschlag ankÃ¼ndigen per /ad und niemals ohne Erlaubnis.\n2.Nicht nach RÃ¤ngen betteln!\n3.Kein SDM betreiben!\n4.Nicht ohne Befehl eines Co-/Leader\'s eine Autobombe anbringen am Fahrzeug!\n5.Nicht die Satchel einfach irgendwo anbringen und explodieren lassen!\n6. TS ist Pflicht! IP: 134.255.235.97:9989\n\nSanktionen:\n\nBei Regel 1: Sofortiger Auschluss aus der Fraktion!\nBei Regel 2: Warn\nBei Regel 3: Sofortiger Auschluss aus der Fraktoin!\nBei Regel 4: Warn\nBei Regel 5: Warn\n\nBÃ¼ndnisse:\n\nFrieden:,Mechaniker,SanitÃ¤ter,SAN NEWS\n\n\nKrieg: SFPD,FBI,Army,Triaden,Los Atzecas,Grove,Ballas,Cosa Nostra.AoD\n', 20, 0, 0, 0),
('Reporter', 5, '0', '21030', '0', '0', '', 20, 0, 0, 0),
('FBI', 6, '0', '0', '0', '0', '\n', 20, 0, 0, 0),
('Aztecas', 7, '0', '521650', '0', '7440', 'Willkommen bei den Los Aztecas oder auch kurz den Atzen, Ich der Coul bin euer Leader und auch einziger Leader, neben den beiden Co-Leadern Cody und ...... , es sind einige Fraktionen PlÃ¤tze die ihr euch verdienen kÃ¶nnt! In Zukunft mÃ¶chte ich mit euch eine Starke Fraktion                                       aufbauen und so einige Gang-Wars & co. starten. \n-----------------------------------------------------------------------------------------------------------------------------------\nIch sage jetzt schonmal willkommen bei den Atzen und WÃ¼nsche euch viel spaÃŸ genau so wie auf                                           eine gute Zusammenarbeit ! :) \n--------------------------------------------------------------------------------------------------------------------------------------                                                    Leader : Rang 5 : \n                                                            Coul\n--------------------------------------------------------------------------------------------------------------------------------------                                                  Co-Leader : Rang 4 :\n                                                        Cody  :    /\n--------------------------------------------------------------------------------------------------------------------------------------                                                   KÃ¤mpfer : Rang 3 :\n                                                        Borow     /     /\n--------------------------------------------------------------------------------------------------------------------------------------                                                   Aufsteiger : Rang 4 :\n                                                   /     /     /     /     /\n--------------------------------------------------------------------------------------------------------------------------------------                                                    Neuling : Rang 1 :\n     /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    /    \n-------------------------------------------------------------------------------------------------------------------------------------       --- --- BÃ¼ndnisse : Terroristen --- ---       |     --- --- Ewige rache : AOD - Nosa Costra  --- ---\n--------------------------------------------------------------------------------------------------------------------------------\n           ZukÃ¼nftige Regeln ( noch nicht gÃ¼ltig )  |  Ideen an Leader. bzw Co-Leader :\n                Befehle von dem Leader / der Co-Leader Beachten bzw. ausfÃ¼hren\n                                                  Team-Killing VERBOTEN! \n                                         Habt RESPEKT vor Rang HÃ–HEREN! \n                            Seid freundlich und Nett zu unseren brÃ¼dern bzw. verbÃ¼ndeten \n----------------------------------------------------------------------------------------------------------------------------------\n            ZukÃ¼nftige Binds ( noch nicht gÃ¼ltig )  [ Ideen an Leader. bzw Co-Leader ]\n--------------------------------------------------------------------------------------------------------------------------------\n     /bind 1 s  Du hast dich mit den gefÃ¼rchteten Los aztecas angelegt, das bedeutet Krieg!\n     /bind 2 s  Wir sind die Los aztecas! Das ist ein Ãœberfall gib uns 5k oder du landest am                                                                           Abgrund!\n             /bind 3 s Du bist in die Basis der gefÃ¼hrchteten Los Aztecas eingedrungen,\n                                                    das bedeutet den Tod\n---------------------------------------------------------------------------------------------------------------------------------\n           !!! FRAKTION IM AUFBAU !!! ES KANN NOCH VERÃ„NDERUNGEN GEBEN!!! Danke\n', 20, 0, 0, 0),
('Biker', 9, '0', '34600', '0', '10', 'BÃ¼ndnisse: /\nKrieg: Terroristen\nFrieden: /\n------------------------------------------------------------------------------------\nNachricht an die Leader - von Borow:\n\nHey... ich habe die Fraktion verlassen :/\nEs tut mir leid, es tut mir sehr leid... es liegt nicht an den Mitgliedern der Fraktion. Ich habe nur festgestellt, dass die AoD als Fraktion nicht so meins ist.\nIch wechsel zu den Atzen, da das meine erste Fraktion war vor 2 Jahren war. Da war noch cody Leader und ich habe so viele Erinnerungen und Erfahrung dort gesammelt, dass ich mir diese Chance nicht entgehen lassen kann.\nIch habe das Museum ausgeraubt und die 50K in die Fraktionskasse gelegt. Abgesehen davon habe ich auch noch meine eigenen 70K dort reingelegt (20K wegen des \"Lohns\" und 50K als Entschuldigung auch wenn das nicht viel ist ... ich hoffe ihr akzeptiert es als Entschuldigung!) :/\n\nNochmals ... tut mir echt UNGLAUBLICH Leid! :(\n\n\nP.S. Wow .... das ist VIEL poetischer geworden als ich gedacht habe xD\n\n\nMfG, Borow <3 :c\n', 20, 0, 0, 0),
('Grove', 13, '0', '112200', '0', '9760', '', 20, 0, 0, 0),
('Ballas', 12, '0', '92399', '0', '9760', '', 20, 0, 0, 0),
('MechMedic', 10, '0', '0', '0', '0', '', 20, 0, 0, 0),
('Army', 8, '0', '100000', '0', '0', 'xd\n', 20, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fraktionen_buy_vehicle`
--

CREATE TABLE `fraktionen_buy_vehicle` (
  `ID` int(255) NOT NULL,
  `Modell` int(255) NOT NULL,
  `OwnerID` int(255) NOT NULL,
  `Preis` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `fraktionen_buy_vehicle`
--

INSERT INTO `fraktionen_buy_vehicle` (`ID`, `Modell`, `OwnerID`, `Preis`) VALUES
(14, 413, 13, 200000),
(15, 492, 13, 200000),
(16, 412, 13, 24500),
(17, 487, 13, 65000),
(18, 567, 13, 32700),
(19, 534, 13, 200000),
(20, 475, 13, 14600),
(21, 423, 13, 200000),
(22, 409, 13, 115000),
(23, 482, 13, 18000),
(24, 521, 13, 200000),
(25, 451, 12, 200000),
(26, 412, 12, 24500),
(27, 566, 12, 200000),
(28, 482, 12, 18000),
(29, 487, 12, 65000),
(30, 521, 12, 200000),
(31, 432, 8, 200000),
(32, 520, 8, 1500000),
(33, 425, 8, 200000),
(34, 470, 8, 32000),
(35, 598, 8, 200000),
(36, 433, 8, 200000),
(37, 595, 8, 200000),
(38, 563, 8, 200000),
(39, 548, 8, 200000),
(40, 487, 8, 65000),
(41, 487, 7, 65000),
(42, 567, 7, 32700),
(43, 468, 7, 7500),
(44, 576, 7, 200000),
(45, 492, 7, 200000),
(46, 482, 7, 18000),
(47, 409, 7, 115000),
(48, 451, 7, 200000),
(49, 463, 9, 7950),
(50, 415, 9, 49000),
(51, 413, 9, 200000),
(52, 566, 9, 200000),
(53, 422, 9, 5600),
(54, 487, 9, 65000),
(55, 497, 6, 200000),
(56, 411, 6, 85000),
(57, 415, 6, 49000),
(58, 427, 6, 200000),
(59, 490, 6, 200000),
(60, 601, 6, 200000),
(61, 609, 6, 200000),
(62, 489, 10, 19000),
(63, 416, 10, 200000),
(64, 469, 10, 10000),
(65, 563, 10, 200000),
(66, 487, 10, 65000),
(67, 490, 10, 200000),
(68, 473, 10, 5000),
(69, 593, 10, 20000),
(70, 586, 10, 200000),
(71, 525, 11, 200000),
(72, 440, 11, 200000),
(73, 586, 11, 200000),
(74, 422, 11, 5600),
(75, 417, 11, 260000),
(76, 488, 5, 200000),
(77, 480, 5, 200000),
(78, 582, 5, 200000),
(79, 586, 5, 200000),
(80, 431, 5, 200000),
(81, 409, 5, 115000),
(82, 541, 2, 54500),
(83, 405, 2, 200000),
(84, 426, 2, 16400),
(85, 409, 2, 115000),
(86, 579, 2, 17500),
(87, 460, 2, 65000),
(88, 487, 2, 65000),
(89, 446, 2, 23000),
(90, 484, 2, 135000),
(91, 473, 2, 5000),
(92, 521, 2, 200000),
(93, 551, 2, 200000),
(94, 430, 1, 200000),
(95, 523, 1, 200000),
(96, 497, 1, 200000),
(97, 598, 1, 200000),
(98, 597, 1, 200000),
(99, 599, 1, 200000),
(100, 601, 1, 200000),
(101, 427, 1, 200000),
(102, 596, 1, 200000),
(103, 490, 1, 200000),
(104, 426, 1, 16400),
(105, 500, 4, 36000),
(106, 489, 4, 19000),
(107, 422, 4, 5600),
(108, 498, 4, 200000),
(109, 470, 4, 32000),
(110, 425, 4, 200000),
(111, 548, 4, 200000),
(112, 487, 3, 65000),
(113, 560, 3, 53000),
(114, 409, 3, 115000),
(115, 522, 3, 80000),
(116, 418, 3, 9000),
(117, 480, 3, 200000),
(118, 405, 3, 200000),
(119, 402, 3, 34000),
(120, 560, 7, 53000),
(121, 522, 4, 80000),
(122, 520, 4, 1500000),
(123, 411, 1, 85000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fraktionen_vehicle`
--

CREATE TABLE `fraktionen_vehicle` (
  `ID` int(11) NOT NULL,
  `Modell` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(255) NOT NULL,
  `RX` int(255) NOT NULL,
  `RY` int(255) NOT NULL,
  `RZ` int(255) NOT NULL,
  `Rang` int(255) NOT NULL DEFAULT '0',
  `Aufwertung` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `fraktionen_vehicle`
--

INSERT INTO `fraktionen_vehicle` (`ID`, `Modell`, `OwnerID`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`, `Rang`, `Aufwertung`) VALUES
(1, 413, 13, 2444, -1635, 14, 0, 0, 180, 0, 0),
(2, 413, 13, 2444, -1645, 14, 0, 0, 180, 0, 0),
(3, 492, 13, 2512, -1687, 13, 0, 0, 50, 0, 0),
(4, 492, 13, 2466, -1688, 13, 0, 0, 270, 0, 0),
(5, 492, 13, 2517, -1672, 14, 346, 1, 64, 0, 0),
(6, 412, 13, 2471, -1655, 13, 0, 0, 90, 0, 0),
(7, 487, 13, 2530, -1678, 20, 0, 0, 90, 0, 0),
(8, 567, 13, 2476, -1701, 14, 0, 0, 0, 0, 0),
(9, 567, 13, 2472, -1701, 14, 0, 0, 0, 0, 0),
(10, 567, 13, 2476, -1694, 14, 0, 0, 0, 0, 0),
(11, 567, 13, 2472, -1694, 14, 0, 0, 0, 0, 0),
(12, 534, 13, 2499, -1648, 13, 0, 0, 176, 0, 0),
(13, 534, 13, 2507, -1651, 14, 354, 358, 138, 0, 0),
(14, 475, 13, 2469, -1670, 13, 0, 0, 8, 0, 0),
(15, 423, 13, 2491, -1757, 14, 0, 270, 90, 0, 0),
(16, 409, 13, -2468, -134, 25, 0, 0, 90, 0, 0),
(17, 482, 13, -2463, -138, 26, 0, 0, 0, 0, 0),
(18, 482, 13, -2463, -147, 26, 0, 0, 0, 0, 0),
(19, 482, 13, -2463, -157, 26, 0, 0, 0, 0, 0),
(20, 492, 13, -2456, -146, 26, 0, 0, 360, 0, 0),
(21, 492, 13, -2456, -153, 26, 0, 0, 360, 0, 0),
(22, 492, 13, -2456, -160, 26, 0, 0, 360, 0, 0),
(23, 521, 13, -2456, -133, 26, 0, 0, 92, 0, 0),
(24, 521, 13, -2456, -116, 26, 0, 0, 92, 0, 0),
(25, 521, 13, -2456, -115, 26, 0, 0, 92, 0, 0),
(26, 567, 13, -2467, -110, 26, 0, 0, 180, 0, 0),
(27, 567, 13, -2467, -103, 26, 0, 0, 180, 0, 0),
(28, 567, 13, -2467, -96, 26, 0, 0, 180, 0, 0),
(29, 487, 13, -2479, -146, 34, 0, 0, 90, 0, 0),
(30, 487, 13, -2479, -98, 39, 0, 0, 90, 0, 0),
(31, 451, 12, -2201, 71, 35, 0, 0, 135, 0, 0),
(32, 412, 12, -2201, 65, 35, 0, 0, 135, 0, 0),
(33, 412, 12, -2201, 59, 35, 0, 0, 135, 0, 0),
(34, 566, 12, -2201, 52, 35, 0, 0, 135, 0, 0),
(35, 566, 12, -2200, 47, 35, 0, 0, 135, 0, 0),
(36, 482, 12, -2218, 74, 36, 0, 0, 270, 0, 0),
(37, 482, 12, -2225, 74, 36, 0, 0, 270, 0, 0),
(38, 482, 12, -2231, 74, 36, 0, 0, 270, 0, 0),
(39, 487, 12, -2207, 90, 40, 0, 0, 90, 0, 0),
(40, 521, 12, -2191, 31, 35, 0, 0, 0, 0, 0),
(41, 521, 12, -2193, 31, 35, 0, 0, 0, 0, 0),
(42, 521, 12, -2195, 31, 35, 0, 0, 0, 0, 0),
(43, 432, 8, 274, 1952, 18, 0, 0, 270, 0, 0),
(44, 432, 8, 274, 1960, 18, 0, 0, 270, 0, 0),
(45, 520, 8, 276, 1990, 19, 0, 0, 270, 0, 0),
(46, 520, 8, 276, 2024, 19, 0, 0, 270, 0, 0),
(47, 425, 8, 361, 1981, 21, 0, 0, 90, 0, 0),
(48, 470, 8, 193, 1920, 18, 0, 0, 180, 0, 0),
(49, 470, 8, 202, 1920, 18, 0, 0, 180, 0, 0),
(50, 470, 8, 211, 1920, 18, 0, 0, 180, 0, 0),
(51, 470, 8, 216, 1920, 18, 0, 0, 180, 0, 0),
(52, 598, 8, 149, 1915, 19, 0, 0, 0, 0, 0),
(53, 598, 8, 143, 1915, 19, 0, 0, 0, 0, 0),
(54, 470, 8, 198, 1920, 18, 0, 0, 180, 0, 0),
(55, 470, 8, 207, 1920, 18, 0, 0, 180, 0, 0),
(56, 433, 8, 186, 1929, 18, 0, 0, 180, 0, 0),
(57, 595, 8, -1440, 510, 0, 0, 0, 90, 0, 0),
(58, 595, 8, -1456, 510, 0, 0, 0, 90, 0, 0),
(59, 595, 8, -1451, 492, 0, 0, 0, 90, 0, 0),
(60, 563, 8, -1268, 497, 19, 0, 0, 90, 0, 0),
(61, 563, 8, -1291, 492, 19, 0, 0, 90, 0, 0),
(62, 563, 8, -1418, 493, 19, 0, 0, 90, 0, 0),
(63, 520, 8, -1302, 510, 19, 0, 0, 90, 0, 0),
(64, 470, 8, -1361, 459, 7, 0, 0, 0, 0, 0),
(65, 470, 8, -1355, 459, 7, 0, 0, 0, 0, 0),
(66, 470, 8, -1367, 459, 7, 0, 0, 0, 0, 0),
(67, 470, 8, -1374, 459, 7, 0, 0, 0, 0, 0),
(68, 548, 8, 361, 1948, 22, 0, 0, 90, 0, 0),
(69, 487, 8, 361, 1916, 22, 0, 0, 90, 0, 0),
(70, 433, 8, -1481, 459, 8, 0, 0, 270, 0, 0),
(71, 487, 7, -1357, 2501, 92, 0, 0, 279, 0, 0),
(72, 487, 7, -1354, 2477, 92, 0, 0, 279, 0, 0),
(73, 567, 7, -1344, 2528, 87, 0, 0, 233, 0, 0),
(74, 567, 7, -1341, 2531, 87, 0, 0, 228, 0, 0),
(75, 567, 7, -1338, 2534, 87, 0, 0, 220, 0, 0),
(76, 567, 7, -1334, 2537, 87, 0, 0, 211, 0, 0),
(77, 468, 7, -1311, 2534, 88, 0, 0, 150, 0, 0),
(78, 468, 7, -1308, 2534, 88, 0, 0, 150, 0, 0),
(79, 468, 7, -1306, 2534, 88, 0, 0, 150, 0, 0),
(80, 576, 7, -1294, 2538, 88, 0, 0, 173, 0, 0),
(81, 482, 7, -1336, 2474, 87, 0, 0, 5, 0, 0),
(82, 409, 7, -1304, 2475, 87, 0, 0, 9, 0, 0),
(83, 468, 7, -1351, 2516, 87, 0, 0, 260, 0, 0),
(84, 468, 7, -1352, 2514, 87, 0, 0, 260, 0, 0),
(85, 567, 7, 702, 1947, 5, 0, 0, 0, 0, 0),
(86, 567, 7, 707, 1947, 5, 0, 0, 0, 0, 0),
(87, 567, 7, 712, 1947, 5, 0, 0, 0, 0, 0),
(88, 492, 7, 691, 1947, 5, 0, 0, 0, 0, 0),
(89, 492, 7, 686, 1947, 5, 0, 0, 0, 0, 0),
(90, 492, 7, 681, 1947, 5, 0, 0, 0, 0, 0),
(91, 451, 7, 716, 1947, 5, 0, 0, 0, 0, 0),
(92, 468, 7, 721, 1946, 5, 0, 0, 0, 0, 0),
(93, 468, 7, 727, 1947, 5, 0, 0, 0, 0, 0),
(94, 482, 7, 697, 1946, 6, 0, 0, 0, 0, 0),
(95, 463, 9, -2229, -2330, 30, 0, 0, 280, 0, 0),
(96, 463, 9, -2231, -2329, 30, 0, 0, 280, 0, 0),
(97, 463, 9, -2232, -2328, 30, 0, 0, 280, 0, 0),
(98, 463, 9, -2233, -2327, 30, 0, 0, 280, 0, 0),
(99, 463, 9, -2235, -2325, 30, 0, 0, 280, 0, 0),
(100, 463, 9, -2236, -2325, 30, 0, 0, 280, 0, 0),
(101, 463, 9, -2237, -2323, 30, 0, 0, 280, 0, 0),
(102, 463, 9, -2239, -2322, 30, 0, 0, 280, 0, 0),
(103, 463, 9, -2240, -2321, 30, 0, 0, 280, 0, 0),
(104, 463, 9, -2242, -2320, 30, 0, 0, 280, 0, 0),
(105, 415, 9, -2246, -2312, 30, 0, 0, 229, 0, 0),
(106, 413, 9, -2242, -2309, 31, 0, 0, 229, 0, 0),
(107, 566, 9, -2234, -2310, 31, 0, 0, 229, 0, 0),
(108, 422, 9, -2219, -2314, 31, 0, 0, 180, 0, 0),
(109, 422, 9, -2216, -2317, 31, 0, 0, 180, 0, 0),
(110, 413, 9, 2441, 1570, 11, 0, 0, 270, 0, 0),
(111, 413, 9, 2441, 1567, 11, 0, 0, 270, 0, 0),
(112, 413, 9, 2441, 1574, 11, 0, 0, 270, 0, 0),
(113, 463, 9, 2478, 1545, 10, 0, 0, 301, 0, 0),
(114, 463, 9, 2502, 1524, 10, 0, 0, 297, 0, 0),
(115, 463, 9, 2499, 1525, 10, 0, 0, 297, 0, 0),
(116, 463, 9, 2496, 1526, 10, 0, 0, 297, 0, 0),
(117, 463, 9, 2493, 1528, 10, 0, 0, 297, 0, 0),
(118, 463, 9, 2481, 1536, 10, 0, 0, 301, 0, 0),
(119, 463, 9, 2480, 1539, 10, 0, 0, 301, 0, 0),
(120, 463, 9, 2479, 1542, 10, 0, 0, 301, 0, 0),
(121, 487, 9, 2495, 1507, 19, 0, 0, 0, 0, 0),
(122, 566, 9, 2466, 1599, 11, 0, 0, 180, 0, 0),
(123, 566, 9, 2471, 1599, 11, 0, 0, 180, 0, 0),
(124, 487, 9, -2184, -2331, 35, 0, 0, 232, 0, 0),
(125, 487, 9, -2180, -2320, 36, 0, 0, 232, 0, 0),
(126, 497, 6, -2462, 522, 51, 0, 0, 0, 0, 0),
(127, 497, 6, -2480, 522, 51, 0, 0, 0, 0, 0),
(128, 411, 6, -2441, 500, 30, 0, 0, 26, 0, 0),
(129, 415, 6, -2430, 515, 30, 0, 0, 220, 0, 0),
(130, 415, 6, -2426, 519, 30, 0, 0, 224, 0, 0),
(131, 415, 6, -2445, 523, 30, 0, 0, 0, 0, 0),
(132, 427, 6, -2419, 524, 30, 0, 0, 231, 0, 0),
(133, 490, 6, -2416, 528, 30, 0, 0, 241, 0, 0),
(134, 490, 6, -2415, 532, 30, 0, 0, 249, 0, 0),
(135, 490, 6, -2413, 536, 30, 0, 356, 261, 0, 0),
(136, 490, 6, -2413, 540, 30, 0, 356, 273, 0, 0),
(137, 601, 6, -2422, 521, 30, 0, 0, 225, 0, 0),
(139, 490, 6, 2242, 2447, 4, 0, 0, 90, 0, 0),
(140, 490, 6, 2242, 2457, 4, 0, 0, 90, 0, 0),
(141, 490, 6, 2242, 2466, 4, 0, 0, 90, 0, 0),
(142, 490, 6, 2241, 2471, 4, 0, 0, 90, 0, 0),
(143, 415, 6, 2314, 2461, 3, 0, 0, 90, 0, 0),
(144, 415, 6, 2314, 2465, 3, 0, 0, 90, 0, 0),
(145, 415, 6, 2315, 2470, 3, 0, 0, 90, 0, 0),
(146, 489, 10, -2667, 598, 14, 0, 0, 180, 0, 0),
(147, 489, 10, -2671, 598, 14, 0, 0, 180, 0, 0),
(148, 416, 10, -2667, 615, 15, 0, 0, 0, 0, 0),
(149, 469, 10, -2630, 603, 66, 0, 0, 270, 0, 0),
(150, 563, 10, -2630, 634, 66, 0, 0, 270, 0, 0),
(151, 487, 10, -2630, 618, 66, 0, 0, 270, 0, 0),
(152, 490, 10, -2656, 598, 15, 0, 0, 178, 0, 0),
(153, 490, 10, -2660, 598, 14, 0, 0, 180, 0, 0),
(154, 489, 10, -2664, 598, 14, 0, 0, 180, 0, 0),
(155, 490, 10, -2652, 598, 15, 0, 0, 178, 0, 0),
(156, 416, 10, -2706, 603, 15, 0, 0, 270, 0, 0),
(157, 416, 10, -2706, 593, 15, 0, 0, 270, 0, 0),
(158, 416, 10, -2622, 612, 15, 0, 0, 90, 0, 0),
(159, 416, 10, -2622, 605, 15, 0, 0, 90, 0, 0),
(160, 416, 10, -2681, 605, 15, 0, 0, 90, 0, 0),
(161, 416, 10, -2706, 613, 15, 0, 0, 270, 0, 0),
(162, 489, 10, 2007, -1412, 17, 0, 0, 184, 0, 0),
(163, 489, 10, 2010, -1412, 17, 0, 0, 184, 0, 0),
(164, 489, 10, 2013, -1412, 17, 0, 0, 184, 0, 0),
(165, 416, 10, 2039, -1421, 17, 0, 0, 92, 0, 0),
(166, 416, 10, 2025, -1410, 17, 0, 0, 182, 0, 0),
(167, 416, 10, 2022, -1410, 17, 0, 0, 180, 0, 0),
(168, 487, 10, 2062, -1417, 49, 0, 0, 140, 0, 0),
(169, 487, 10, 2074, -1428, 49, 0, 0, 140, 0, 0),
(170, 416, 10, 2029, -1410, 17, 0, 0, 182, 0, 0),
(171, 416, 10, 2039, -1425, 17, 0, 0, 92, 0, 0),
(172, 416, 10, 2039, -1428, 17, 0, 0, 92, 0, 0),
(173, 473, 10, -2938, 568, 0, 0, 0, 106, 0, 0),
(174, 473, 10, -2946, 566, 0, 0, 0, 106, 0, 0),
(175, 473, 10, -2948, 576, 0, 0, 0, 106, 0, 0),
(176, 473, 10, -2941, 578, 0, 0, 0, 106, 0, 0),
(177, 593, 10, -2729, 680, 67, 0, 0, 270, 0, 0),
(178, 593, 10, -2729, 649, 67, 0, 0, 270, 0, 0),
(179, 563, 10, -2682, 634, 67, 0, 0, 90, 0, 0),
(180, 487, 10, -2682, 618, 66, 0, 0, 90, 0, 0),
(181, 469, 10, -2682, 603, 66, 0, 0, 90, 0, 0),
(182, 586, 10, -2684, 636, 14, 0, 0, 180, 0, 0),
(183, 525, 11, -2393, -154, 35, 0, 0, 269, 0, 0),
(184, 525, 11, -2393, -148, 35, 0, 0, 269, 0, 0),
(185, 525, 11, -2393, -142, 35, 0, 0, 269, 0, 0),
(186, 440, 11, -2393, -137, 36, 0, 0, 269, 0, 0),
(187, 440, 11, -2393, -131, 36, 0, 0, 269, 0, 0),
(188, 586, 11, -2379, -181, 35, 0, 0, 0, 0, 0),
(189, 586, 11, -2380, -181, 35, 0, 0, 0, 0, 0),
(190, 586, 11, -2382, -182, 35, 0, 0, 0, 0, 0),
(191, 422, 11, -2400, -200, 35, 0, 0, 15, 0, 0),
(192, 422, 11, -2403, -201, 35, 0, 0, 15, 0, 0),
(193, 422, 11, -2406, -202, 35, 0, 0, 15, 0, 0),
(194, 417, 11, -2404, -148, 42, 0, 0, 0, 0, 0),
(195, 488, 5, -2522, -648, 148, 0, 0, 0, 0, 0),
(196, 480, 5, -2513, -603, 133, 0, 0, 180, 0, 0),
(197, 582, 5, -2535, -603, 133, 0, 0, 180, 0, 0),
(198, 582, 5, -2531, -603, 133, 0, 0, 180, 0, 0),
(199, 582, 5, -2528, -603, 133, 0, 0, 180, 0, 0),
(200, 582, 5, -2524, -603, 133, 0, 0, 180, 0, 0),
(201, 582, 5, -2520, -603, 133, 0, 0, 180, 0, 0),
(202, 582, 5, -2516, -603, 133, 0, 0, 180, 0, 0),
(203, 586, 5, -2509, -603, 133, 0, 0, 180, 0, 0),
(204, 586, 5, -2506, -603, 133, 0, 0, 180, 0, 0),
(205, 586, 5, -2502, -603, 133, 0, 0, 180, 0, 0),
(206, 586, 5, -2498, -603, 133, 0, 0, 180, 0, 0),
(207, 586, 5, -2494, -603, 133, 0, 0, 180, 0, 0),
(208, 431, 5, -2530, -623, 133, 0, 0, 270, 0, 0),
(209, 409, 5, -2514, -647, 137, 347, 0, 0, 0, 0),
(210, 541, 2, -681, 930, 12, 0, 0, 180, 0, 0),
(211, 405, 2, -675, 930, 12, 0, 0, 180, 0, 0),
(212, 426, 2, -678, 930, 12, 0, 0, 180, 0, 0),
(213, 426, 2, -671, 930, 12, 0, 0, 180, 0, 0),
(214, 409, 2, -690, 957, 12, 0, 0, 90, 0, 0),
(215, 579, 2, -697, 930, 12, 0, 0, 180, 0, 0),
(216, 579, 2, -700, 930, 12, 0, 0, 180, 0, 0),
(217, 579, 2, -703, 930, 13, 0, 0, 180, 0, 0),
(218, 579, 2, -706, 930, 13, 0, 0, 180, 0, 0),
(219, 460, 2, -648, 866, 2, 0, 0, 225, 0, 0),
(220, 487, 2, -687, 966, 20, 0, 0, 90, 0, 0),
(221, 446, 2, -635, 873, 1, 0, 0, 320, 0, 0),
(222, 484, 2, -624, 911, 0, 0, 0, 200, 0, 0),
(223, 473, 2, -661, 875, 0, 0, 0, 225, 0, 0),
(224, 521, 2, -707, 942, 12, 0, 0, 90, 0, 0),
(225, 521, 2, -707, 941, 12, 0, 0, 90, 0, 0),
(226, 521, 2, -708, 939, 12, 0, 0, 90, 0, 0),
(227, 521, 2, -708, 938, 12, 0, 0, 90, 0, 0),
(228, 521, 2, -707, 937, 12, 0, 0, 90, 0, 0),
(229, 487, 2, 2167, 1628, 49, 0, 0, 270, 0, 0),
(230, 409, 2, 2260, 1747, 11, 0, 0, 90, 0, 0),
(231, 551, 2, 2260, 1751, 11, 0, 0, 90, 0, 0),
(232, 551, 2, 2260, 1756, 11, 0, 0, 90, 0, 0),
(233, 521, 2, 2260, 1761, 11, 0, 0, 90, 0, 0),
(234, 521, 2, 2305, 1715, 11, 0, 0, 180, 0, 0),
(235, 521, 2, 2300, 1715, 11, 0, 0, 180, 0, 0),
(236, 579, 2, 2295, 1715, 11, 0, 0, 180, 0, 0),
(237, 579, 2, 2289, 1715, 11, 0, 0, 180, 0, 0),
(238, 521, 2, 2303, 1715, 11, 0, 0, 180, 0, 0),
(239, 430, 1, -1477, 688, 0, 0, 0, 0, 0, 0),
(240, 430, 1, -1477, 700, 0, 0, 0, 0, 0, 0),
(241, 523, 1, -1596, 693, -6, 0, 0, 0, 0, 0),
(242, 523, 1, -1600, 693, -6, 0, 0, 0, 0, 0),
(243, 523, 1, -1604, 693, -6, 0, 0, 0, 0, 0),
(244, 523, 1, -1608, 693, -6, 0, 0, 0, 0, 0),
(245, 523, 1, -1613, 693, -6, 0, 0, 0, 0, 0),
(246, 497, 1, -1680, 706, 31, 0, 0, 0, 0, 0),
(247, 411, 1, -1597, 676, -6, 0, 0, 0, 0, 0),
(248, 411, 1, -1600, 676, -6, 0, 0, 0, 0, 0),
(249, 598, 1, 2286, 2432, 3, 0, 0, 0, 0, 0),
(250, 598, 1, 2290, 2433, 3, 0, 0, 0, 0, 0),
(251, 598, 1, 2295, 2433, 3, 0, 0, 0, 0, 0),
(252, 598, 1, 2304, 2433, 3, 0, 0, 0, 0, 0),
(253, 598, 1, 2308, 2433, 3, 0, 0, 0, 0, 0),
(254, 598, 1, 2264, 2433, 3, 0, 0, 0, 0, 0),
(255, 598, 1, 2256, 2432, 3, 0, 0, 0, 0, 0),
(256, 523, 1, 2277, 2432, 3, 0, 0, 0, 0, 0),
(257, 523, 1, 2272, 2432, 3, 0, 0, 0, 0, 0),
(258, 523, 1, 2269, 2432, 3, 0, 0, 0, 0, 0),
(259, 598, 1, 2281, 2476, 3, 0, 0, 0, 0, 0),
(260, 598, 1, 2273, 2476, 3, 0, 0, 0, 0, 0),
(261, 598, 1, 2277, 2476, 3, 0, 0, 0, 0, 0),
(262, 598, 1, 2264, 2476, 3, 0, 0, 0, 0, 0),
(263, 497, 1, 2275, 2472, 39, 90, 0, 0, 0, 0),
(264, 597, 1, -1573, 706, -5, 0, 0, 90, 0, 0),
(265, 597, 1, -1573, 710, -5, 0, 0, 90, 0, 0),
(266, 597, 1, -1573, 714, -5, 0, 0, 90, 0, 0),
(267, 597, 1, -1573, 718, -5, 0, 0, 90, 0, 0),
(268, 597, 1, -1573, 722, -5, 0, 0, 90, 0, 0),
(269, 597, 1, -1573, 727, -5, 0, 0, 90, 0, 0),
(270, 597, 1, -1573, 731, -5, 0, 0, 90, 0, 0),
(271, 597, 1, -1573, 735, -5, 0, 0, 90, 0, 0),
(272, 597, 1, -1573, 739, -5, 0, 0, 90, 0, 0),
(273, 597, 1, -1573, 743, -5, 0, 0, 90, 0, 0),
(274, 599, 1, -1580, 749, -5, 0, 0, 180, 0, 0),
(275, 599, 1, -1588, 749, -5, 0, 0, 180, 0, 0),
(276, 599, 1, -1596, 749, -5, 0, 0, 180, 0, 0),
(277, 599, 1, -1604, 749, -5, 0, 0, 180, 0, 0),
(278, 601, 1, -1639, 654, -5, 0, 0, 270, 0, 0),
(279, 427, 1, -1639, 662, -5, 0, 0, 270, 0, 0),
(280, 596, 1, 1595, -1711, 6, 0, 0, 0, 0, 0),
(281, 596, 1, 1591, -1711, 6, 0, 0, 0, 0, 0),
(282, 596, 1, 1588, -1711, 6, 0, 0, 0, 0, 0),
(283, 596, 1, 1584, -1711, 6, 0, 0, 0, 0, 0),
(284, 599, 1, 1601, -1696, 6, 0, 0, 270, 0, 0),
(285, 599, 1, 1601, -1700, 6, 0, 0, 270, 0, 0),
(286, 599, 1, 1601, -1692, 6, 0, 0, 270, 0, 0),
(287, 523, 1, 1545, -1676, 6, 0, 0, 270, 0, 0),
(288, 523, 1, 1545, -1684, 6, 0, 0, 270, 0, 0),
(289, 523, 1, 1545, -1681, 6, 0, 0, 270, 0, 0),
(290, 523, 1, 1545, -1672, 6, 0, 0, 270, 0, 0),
(291, 497, 1, 1565, -1698, 29, 0, 0, 270, 0, 0),
(292, 497, 1, 1567, -1654, 29, 0, 0, 270, 0, 0),
(293, 490, 1, -1613, 733, -5, 0, 0, 0, 0, 0),
(294, 426, 1, -1617, 733, -6, 0, 0, 0, 0, 0),
(295, 427, 1, -1638, 666, -5, 0, 0, 270, 0, 0),
(296, 523, 1, -1617, 693, -6, 0, 0, 0, 0, 0),
(297, 523, 1, -1621, 693, -6, 0, 0, 0, 0, 0),
(298, 500, 4, -1992, -1575, 86, 0, 0, 0, 0, 0),
(299, 500, 4, -1995, -1574, 86, 0, 0, 0, 0, 0),
(300, 489, 4, -1994, -1541, 85, 0, 0, 180, 0, 0),
(301, 422, 4, -1991, -1541, 85, 0, 0, 180, 0, 0),
(302, 498, 4, -2001, -1570, 86, 0, 0, 270, 0, 0),
(303, 470, 4, -2002, -1547, 85, 0, 0, 280, 0, 0),
(304, 470, 4, -2002, -1550, 85, 0, 0, 280, 0, 0),
(305, 425, 4, -1993, -1492, 85, 0, 0, 0, 0, 0),
(306, 548, 4, -1999, -1448, 90, 0, 0, 270, 0, 0),
(307, 487, 3, -2164, 668, 83, 0, 0, 90, 0, 0),
(308, 560, 3, -2178, 606, 49, 0, 0, 0, 0, 0),
(309, 560, 3, -2184, 606, 49, 0, 0, 0, 0, 0),
(310, 560, 3, -2189, 606, 49, 0, 0, 0, 0, 0),
(311, 409, 3, -2208, 660, 49, 0, 0, 180, 0, 0),
(312, 522, 3, -2212, 622, 49, 0, 0, 180, 0, 0),
(313, 522, 3, -2215, 622, 49, 0, 0, 180, 0, 0),
(314, 522, 3, -2218, 622, 49, 0, 0, 180, 0, 0),
(315, 418, 3, -2184, 714, 54, 0, 0, 180, 0, 0),
(316, 418, 3, -2179, 714, 54, 0, 0, 180, 0, 0),
(317, 480, 3, -2194, 606, 49, 0, 0, 0, 0, 0),
(318, 405, 3, -2178, 620, 49, 0, 0, 180, 0, 0),
(319, 405, 3, -2183, 620, 49, 0, 0, 180, 0, 0),
(320, 402, 3, -2188, 620, 49, 0, 0, 180, 0, 0),
(321, 402, 3, -2193, 620, 49, 0, 0, 180, 0, 0),
(322, 487, 3, -2227, 588, 52, 0, 0, 180, 0, 0),
(323, 522, 3, -2224, 616, 49, 0, 0, 180, 0, 0),
(324, 522, 3, -2224, 613, 49, 0, 0, 180, 0, 0),
(325, 522, 3, -2224, 609, 49, 0, 0, 180, 0, 0),
(326, 409, 3, 1899, 1004, 11, 0, 0, 180, 0, 0),
(327, 522, 3, 1920, 970, 10, 0, 0, 0, 0, 0),
(328, 522, 3, 1920, 973, 10, 0, 0, 0, 0, 0),
(329, 522, 3, 1920, 977, 10, 0, 0, 0, 0, 0),
(330, 522, 3, 1920, 980, 10, 0, 0, 0, 0, 0),
(331, 560, 3, 1918, 1007, 11, 0, 0, 180, 0, 0),
(332, 560, 3, 1918, 1001, 11, 0, 0, 180, 0, 0),
(333, 560, 3, 1903, 1007, 11, 0, 0, 180, 0, 0),
(334, 487, 3, 2005, 1007, 39, 0, 0, 90, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fraktionen_warns`
--

CREATE TABLE `fraktionen_warns` (
  `ID` int(255) NOT NULL,
  `UID` int(255) NOT NULL,
  `Fraktion` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `ExpirationDate` int(255) NOT NULL,
  `Expiration` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gangs`
--

CREATE TABLE `gangs` (
  `ID` int(2) NOT NULL,
  `X1` varchar(50) NOT NULL,
  `Y1` varchar(50) NOT NULL,
  `X2` varchar(50) NOT NULL,
  `Y2` varchar(50) NOT NULL,
  `X3` varchar(50) NOT NULL,
  `Y3` varchar(50) NOT NULL,
  `Z3` varchar(50) NOT NULL,
  `BesitzerFraktion` int(2) NOT NULL,
  `Einnahmen` int(5) NOT NULL,
  `Name` text NOT NULL,
  `Aktiviert` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `gangs`
--

INSERT INTO `gangs` (`ID`, `X1`, `Y1`, `X2`, `Y2`, `X3`, `Y3`, `Z3`, `BesitzerFraktion`, `Einnahmen`, `Name`, `Aktiviert`) VALUES
(1, '-2758.99', '1310.52', '-2573.75', '1528.54', '-2631.68', '1357.41', '6.75', 2, 10, 'Jizzys', 0),
(2, '743.70001220703', '-1684.5', '862.59997558594', '-1574.4000244141', '786.09997558594', '-1632.4000244141', '13.39999961853', 9, 8, 'Burgershot LS', 1),
(3, '-2201.72', '-280.57', '-2096.76', '-80.93', '-2136.24', '-181.63', '34.96', 9, 1, 'Drogenlabor', 1),
(4, '-2215.40', '-950.06', '-2025', '-700', '-2115.4033203125', '-893.06', '31.67', 7, 7, 'SF Uni', 1),
(5, '-2811.12', '-413.97', '-2634.36', '-261.18', '-2719.86', '-317.43', '7.5', 9, 8, 'Tennisplatz', 1),
(6, '-2293.56', '2226.63', '-2237.42', '2473.87', '-2261.91', '2317.41', '4.46', 7, 4, 'Bayside', 1),
(7, '-87.404563903809', '2420.3674316406', '458.44122314453', '2575.6437988281', '317.39999389648', '2437.6999511719', '16.5', 7, 7, 'Flugzeugfriedhof', 1),
(10, '111.78970', '1336.29541', '287.11746', '1484.41968', '191.09195', '1434.08276', '10.58594', 9, 4, 'Raffinerie', 1),
(11, '974.55304', '948.50726', '1177.29517', '1166.17798', '1087.21240', '1074.30579', '10.83816', 9, 6, 'LV Uni', 1),
(12, '1577.68152', '943.66669', '1756.69226', '1122.69128', '1667.1455078125', '1013.2158203125', '10.8203125', 13, 5, 'Depot', 1),
(13, '1300.3671875', '2102.9736328125', '1397.1962890625', '2198.951171875', '1358.8984375', '2160.513671875', '11.015625', 9, 4, 'Baseballstadion', 1),
(14, '-624.1655273438', '-564.07165527344', '-467.08432006836', '-467.08432006836', '-485.64794921875', '-505.75033569336', '25.517845153809', 7, 4, 'SF Lagerhalle', 1),
(15, '2437.3999023438', '1083.1999511719', '2597.3999023438', '1183.3000488281', '2527.3999023438', '1137.0999755859', '10.699999809265', 2, 9, 'Streets', 0),
(16, '-593.20001220703', '-200.19999694824', '-422.29998779297', '-31.700000762939', '-511.39999389648', '-85.300003051758', '62.200000762939', 9, 10, 'Holzfaeller', 1),
(17, '1860.7937011719', '-1452.2199707031', '1979.2247314453', '-1350.2930908203', '1918.2982177734', '-1400.6328125', '13.5703125', 7, 5, 'Skaterpark', 1),
(18, '807.40002441406', '-1130.0999755859', '952.59997558594', '-1055.5999755859', '862.70001220703', '-1101.9000244141', '24.299999237061', 9, 10, 'Friedhof', 1),
(19, '2371.8000488281', '1783.1999511719', '2497.3999023438', '1963.1999511719', '2420.3000488281', '1925.6999511719', '6', 7, 6, 'Baustelle', 1),
(20, '2497.1999511719', '2617.1000976563', '2749.1999511719', '2857.6000976563', '2554.8999023438', '2753.3000488281', '10.800000190735', 7, 7, 'Pissgebiet', 1),
(21, '2127.1000976563', '-2345', '2267.8000488281', '-2218.8999023438', '2167.1000976563', '-2274.3999023438', '13.39999961853', 2, 6, 'LS Lagerhalle', 0),
(8, '2558.8000488281', '2242.6999511719', '2677.3000488281', '2474.5', '2606', '2302.8999023438', '10.800000190735', 7, 10, 'Rock Hotel', 1),
(9, '2777.1000976563', '833.29998779297', '2895.1000976563', '1023.299987793', '2862.1999511719', '919.09997558594', '10.800000190735', 7, 9, 'Linden Side', 1),
(22, '-2361.49', '-183.31', '-2269.87', '-80.65', '-2308.15', '-123.21', '34.96', 3, 6, 'Burgershot SF', 0),
(23, '-2201.72', '-280.57', '-2096.76', '-80.93', '-2136.24', '-181.63', '34.96', 3, 3, 'Fabrik SF', 0),
(24, '1858.28', '1473.03', '2010.69', '1691', '1908.77', '1518.43', '13.62', 2, 5, 'Piratenschiff', 0),
(25, '-1340.56787', '2464.59717', '-1261.05640', '2564.95508', '-1302.33545', '2512.67139', '87.04205', 3, 5, 'Ruine', 0),
(26, '1046.3127441406', '-1704.1940917969', '1142.6439208984', '-1578.559623828', '1071.7454833984', '-1619.3309326172', '20.458673477173', 3, 4, 'Verona Center', 0),
(27, '-462.16015625', '2169.0122070313', '-339.23330688477', '2290.5751953125', '-404.68014526367', '2233.251953125', '42.4296875', 2, 10, 'Ghosttown', 0),
(28, '1277', '903.09997558594', '1497.4000244141', '1183.5999755859', '1398.4000244141', '1097.1999511719', '10.800000190735', 7, 5, 'LV Lagerhalle', 1),
(29, '1358.9000244141', '-2368.8000488281', '1833.9000244141', '-2204.5', '1682.8000488281', '-2285.1000976563', '13.5', 2, 6, 'LS Airport', 1),
(30, '1856.9000244141', '-1255.8000488281', '2061.8000488281', '-1141', '1969.5999755859', '-1187.5999755859', '25.8', 7, 7, 'Glen Park', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gang_basic`
--

CREATE TABLE `gang_basic` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL DEFAULT 'Gang',
  `LeaderMSG` varchar(50) NOT NULL DEFAULT '',
  `Waffe` int(2) NOT NULL DEFAULT '0',
  `Skin` int(3) NOT NULL DEFAULT '7',
  `HausID` int(4) NOT NULL DEFAULT '0',
  `Rang1` varchar(50) NOT NULL DEFAULT 'Anfaenger',
  `Rang2` varchar(50) NOT NULL DEFAULT 'Mitglied',
  `Rang3` varchar(50) NOT NULL DEFAULT 'Anfuehrer',
  `MaxMembers` int(4) NOT NULL DEFAULT '8',
  `Drugs` int(10) NOT NULL DEFAULT '0',
  `Mats` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gang_members`
--

CREATE TABLE `gang_members` (
  `UID` int(4) NOT NULL,
  `Gang` int(4) NOT NULL DEFAULT '0',
  `Rang` int(2) NOT NULL DEFAULT '1',
  `Founder` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gang_vehicles`
--

CREATE TABLE `gang_vehicles` (
  `GangID` int(4) NOT NULL,
  `Typ` int(3) NOT NULL DEFAULT '500',
  `Tuning` varchar(50) NOT NULL DEFAULT '|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|',
  `Spawnpos_X` double NOT NULL DEFAULT '0',
  `Spawnpos_Y` double NOT NULL DEFAULT '0',
  `Spawnpos_Z` double NOT NULL DEFAULT '0',
  `Spawnrot_X` double NOT NULL DEFAULT '0',
  `Spawnrot_Y` double NOT NULL DEFAULT '0',
  `Spawnrot_Z` double NOT NULL DEFAULT '0',
  `Farbe` varchar(50) NOT NULL DEFAULT '|0|0|0|0|',
  `Paintjob` int(4) NOT NULL DEFAULT '0',
  `Lights` varchar(13) NOT NULL DEFAULT '|255|255|255|'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `houses`
--

CREATE TABLE `houses` (
  `ID` int(11) NOT NULL,
  `SymbolX` double NOT NULL,
  `SymbolY` double NOT NULL,
  `SymbolZ` double NOT NULL,
  `UID` int(4) NOT NULL,
  `Preis` int(11) NOT NULL,
  `CurrentInterior` int(11) NOT NULL,
  `Kasse` int(11) NOT NULL,
  `Miete` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `idcounter`
--

CREATE TABLE `idcounter` (
  `id` int(50) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `idcounter`
--

INSERT INTO `idcounter` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `inventar`
--

CREATE TABLE `inventar` (
  `UID` int(4) NOT NULL,
  `Wuerfel` tinyint(1) NOT NULL DEFAULT '0',
  `Blumensamen` int(11) NOT NULL DEFAULT '0',
  `Lottoschein` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0',
  `Essensslot1` int(2) NOT NULL DEFAULT '0',
  `Essensslot2` int(2) NOT NULL DEFAULT '0',
  `Essensslot3` int(2) NOT NULL DEFAULT '0',
  `Waffenslot1` varchar(50) NOT NULL DEFAULT '0|0',
  `Waffenslot2` varchar(50) NOT NULL DEFAULT '0|0',
  `Waffenslot3` varchar(50) NOT NULL DEFAULT '0|0',
  `Zigaretten` int(5) NOT NULL DEFAULT '0',
  `Materials` int(10) NOT NULL DEFAULT '0',
  `Benzinkanister` int(10) NOT NULL DEFAULT '0',
  `FruitNotebook` tinyint(1) NOT NULL DEFAULT '1',
  `Gameboy` int(1) NOT NULL DEFAULT '0',
  `Objekt` int(10) NOT NULL DEFAULT '0',
  `Chips` int(50) NOT NULL DEFAULT '0',
  `Geschenke` int(50) NOT NULL DEFAULT '0',
  `fishing` varchar(39) NOT NULL DEFAULT '0|0|0|0;0|0;0|0;0',
  `fglass` tinyint(1) NOT NULL DEFAULT '0',
  `Medikit` int(10) NOT NULL DEFAULT '0',
  `Spezial` text NOT NULL,
  `Repairkit` int(10) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `levelsystem`
--

CREATE TABLE `levelsystem` (
  `UID` int(11) NOT NULL,
  `MainLevel` int(11) NOT NULL DEFAULT '1',
  `MainXP` int(11) NOT NULL DEFAULT '0',
  `GWLevel` int(11) NOT NULL DEFAULT '0',
  `GWXP` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `loggedin`
--

CREATE TABLE `loggedin` (
  `UID` int(4) NOT NULL,
  `Serial` varchar(32) NOT NULL DEFAULT 'ABCD1234ABCD1234',
  `IP` varchar(50) NOT NULL DEFAULT '0.0.0.0',
  `Loggedin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logout`
--

CREATE TABLE `logout` (
  `UID` int(4) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Waffen` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logs`
--

CREATE TABLE `logs` (
  `ID` int(11) NOT NULL,
  `Typ` int(200) NOT NULL,
  `Text` varchar(255) NOT NULL,
  `faction` int(11) NOT NULL DEFAULT '0',
  `Timestamp` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lotto`
--

CREATE TABLE `lotto` (
  `id` int(10) NOT NULL,
  `UID` int(4) NOT NULL,
  `z1` int(2) NOT NULL DEFAULT '0',
  `z2` int(2) NOT NULL DEFAULT '0',
  `z3` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marktplatz`
--

CREATE TABLE `marktplatz` (
  `ID` int(10) NOT NULL,
  `seller` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(15) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `objecttyp` varchar(25) NOT NULL,
  `objectID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `object`
--

CREATE TABLE `object` (
  `UID` int(4) NOT NULL,
  `id` int(10) NOT NULL,
  `model` int(6) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `taken` tinyint(1) NOT NULL DEFAULT '0',
  `placer` varchar(50) NOT NULL,
  `deleteTime` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `packages`
--

CREATE TABLE `packages` (
  `UID` int(4) NOT NULL,
  `Paket1` int(11) NOT NULL,
  `Paket2` int(11) NOT NULL,
  `Paket3` int(11) NOT NULL,
  `Paket4` int(11) NOT NULL,
  `Paket5` int(11) NOT NULL,
  `Paket6` int(11) NOT NULL,
  `Paket7` int(11) NOT NULL,
  `Paket8` int(11) NOT NULL,
  `Paket9` int(11) NOT NULL,
  `Paket10` int(11) NOT NULL,
  `Paket11` int(11) NOT NULL,
  `Paket12` int(11) NOT NULL,
  `Paket13` int(11) NOT NULL,
  `Paket14` int(11) NOT NULL,
  `Paket15` int(11) NOT NULL,
  `Paket16` int(11) NOT NULL,
  `Paket17` int(11) NOT NULL,
  `Paket18` int(11) NOT NULL,
  `Paket19` int(11) NOT NULL,
  `Paket20` int(11) NOT NULL,
  `Paket21` int(11) NOT NULL,
  `Paket22` int(11) NOT NULL,
  `Paket23` int(11) NOT NULL,
  `Paket24` int(11) NOT NULL,
  `Paket25` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `players`
--

CREATE TABLE `players` (
  `UID` int(4) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `IP` varchar(50) NOT NULL,
  `Last_login` varchar(50) NOT NULL,
  `Geburtsdatum_Tag` int(11) NOT NULL,
  `Geburtsdatum_Monat` int(11) NOT NULL,
  `Geburtsdatum_Jahr` int(4) NOT NULL,
  `Passwort` text NOT NULL,
  `Geschlecht` int(50) NOT NULL,
  `RegisterDatum` varchar(50) NOT NULL,
  `LastLogin` int(50) NOT NULL DEFAULT '1',
  `Erlaubnis` varchar(1) NOT NULL DEFAULT '0',
  `ts3uid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `playingtime`
--

CREATE TABLE `playingtime` (
  `UID` int(4) NOT NULL,
  `Time` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pm`
--

CREATE TABLE `pm` (
  `Sender` varchar(50) NOT NULL,
  `EmpfaengerUID` int(4) NOT NULL,
  `Text` varchar(500) NOT NULL,
  `Datum` varchar(50) NOT NULL,
  `ids` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `prestige`
--

CREATE TABLE `prestige` (
  `ID` int(10) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Besitzer` varchar(50) NOT NULL,
  `UID` int(11) NOT NULL,
  `Preis` int(7) NOT NULL,
  `Beschreibung` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `prestige`
--

INSERT INTO `prestige` (`ID`, `X`, `Y`, `Z`, `Besitzer`, `UID`, `Preis`, `Beschreibung`) VALUES
(1, -2154.5, 461.22, 34.82, 'none', 0, 250000, 'Glockenturm'),
(2, -1494.54, 920.17, 6.83, 'none', 0, 500000, 'Glockenturm-Geb?ude ( SFPD )'),
(3, -1937.04, 883.32, 38.16, 'none', 0, 100000, 'Statue'),
(4, -1989.04, 1117.92, 54.12, 'none', 0, 250000, 'Kirche'),
(5, -2520.94, -623.43, 132.42, 'none', 0, 175000, 'EWerk'),
(6, -2157.94, -399.43, 34.98, 'none', 0, 75000, 'Football'),
(7, -2594.15, -41.08, 3.97, 'none', 0, 300000, 'Gedenkstaette'),
(8, -2818.16, 1145.8, 20.01, 'none', 0, 250000, 'Park'),
(9, -1503.91, 1373.92, 3.43, 'none', 0, 250000, 'Insel'),
(10, -2533.16, 1221.05, 37.07, 'none', 0, 125000, 'Diner'),
(11, 2490.67, 918.43, 10.67, 'none', 0, 150000, 'Kirche'),
(12, 2000.82, 1523.16, 16.71, 'none', 0, 245000, 'Piratenschiff'),
(13, 2226.35, 1838.65, 10.46, 'none', 0, 150000, 'Clown-Casino'),
(14, -236.84, 2656.15, 62.29, 'none', 0, 75000, 'Riesenhuehnchen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `racing`
--

CREATE TABLE `racing` (
  `UID` int(4) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `MilliSekunden` int(1) NOT NULL,
  `Sekunden` int(2) NOT NULL,
  `Minuten` int(5) NOT NULL,
  `Platz` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `skills`
--

CREATE TABLE `skills` (
  `UID` int(4) NOT NULL,
  `fishing` int(5) NOT NULL DEFAULT '0',
  `repair` int(5) NOT NULL DEFAULT '0',
  `gamble` int(10) NOT NULL DEFAULT '0',
  `cook` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `socialstatelist`
--

CREATE TABLE `socialstatelist` (
  `ID` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `Description` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `socialstates`
--

CREATE TABLE `socialstates` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `socialStateID` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `state_files`
--

CREATE TABLE `state_files` (
  `UID` int(4) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `editor` varchar(50) NOT NULL,
  `faction` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `statistics`
--

CREATE TABLE `statistics` (
  `UID` int(4) NOT NULL,
  `AnzahlEingeknastet` int(11) NOT NULL DEFAULT '0',
  `AnzahlImKnast` int(11) NOT NULL DEFAULT '0',
  `AnzahlGangwars` int(11) NOT NULL DEFAULT '0',
  `AnzahlGangwarsGewonnen` int(11) NOT NULL DEFAULT '0',
  `AnzahlGangwarsVerloren` int(11) NOT NULL DEFAULT '0',
  `Kills` int(11) NOT NULL DEFAULT '0',
  `Tode` int(11) NOT NULL DEFAULT '0',
  `GangwarKills` int(11) NOT NULL DEFAULT '0',
  `GangwarTode` int(11) NOT NULL DEFAULT '0',
  `HaeuserGekauft` int(11) NOT NULL DEFAULT '0',
  `FahrzeugeGekauft` int(11) NOT NULL DEFAULT '0',
  `FahrzeugeVerkauft` int(11) NOT NULL DEFAULT '0',
  `DamageGemacht` int(11) NOT NULL DEFAULT '0',
  `DamageBekommen` int(11) NOT NULL DEFAULT '0',
  `GangwarDamageGemacht` int(11) NOT NULL DEFAULT '0',
  `GangwarDamageBekommen` int(11) NOT NULL DEFAULT '0',
  `FraktionenBetreten` int(11) NOT NULL DEFAULT '0',
  `FraktionenVerlassen` int(11) NOT NULL DEFAULT '0',
  `Eingeloggt` int(11) NOT NULL DEFAULT '0',
  `MontagSpielzeit` int(11) NOT NULL DEFAULT '0',
  `DienstagSpielzeit` int(11) NOT NULL DEFAULT '0',
  `MittwochSpielzeit` int(11) NOT NULL DEFAULT '0',
  `DonnerstagSpielzeit` int(11) NOT NULL DEFAULT '0',
  `FreitagSpielzeit` int(11) NOT NULL DEFAULT '0',
  `SamstagSpielzeit` int(11) NOT NULL DEFAULT '0',
  `SonntagSpielzeit` int(11) NOT NULL DEFAULT '0',
  `LetzteWocheSpielzeit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `support`
--

CREATE TABLE `support` (
  `ID` int(11) NOT NULL,
  `player` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tickets`
--

CREATE TABLE `tickets` (
  `id` int(255) NOT NULL,
  `owner` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` varchar(9999) NOT NULL,
  `type` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tickets_antworten`
--

CREATE TABLE `tickets_antworten` (
  `id` int(255) NOT NULL,
  `ticket_id` int(255) NOT NULL,
  `antwort_id` int(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdata`
--

CREATE TABLE `userdata` (
  `UID` int(4) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `LastLogin` int(255) NOT NULL,
  `alkatime` int(255) NOT NULL,
  `ID` int(11) NOT NULL,
  `Geld` double NOT NULL DEFAULT '15000',
  `Spawnpos_X` varchar(50) NOT NULL DEFAULT '-2458.288085',
  `Spawnpos_Y` varchar(50) NOT NULL DEFAULT '774.354492',
  `Spawnpos_Z` varchar(50) NOT NULL DEFAULT '35.171875',
  `Spawnrot_X` varchar(50) NOT NULL DEFAULT '52.94',
  `SpawnInterior` double NOT NULL DEFAULT '0',
  `SpawnDimension` double NOT NULL DEFAULT '0',
  `Fraktion` double NOT NULL DEFAULT '0',
  `FraktionsRang` double NOT NULL DEFAULT '0',
  `FraktionsWarns` int(100) NOT NULL DEFAULT '0',
  `FraktionsBan` int(2) NOT NULL DEFAULT '0',
  `FraktionsBanReason` varchar(255) DEFAULT NULL,
  `FraktionsBanDate` int(255) NOT NULL,
  `Adminlevel` int(10) NOT NULL DEFAULT '0',
  `Spielzeit` double NOT NULL DEFAULT '180',
  `Hitglocke` int(1) NOT NULL DEFAULT '0',
  `CurrentCars` double NOT NULL DEFAULT '0',
  `MaximumCars` double NOT NULL DEFAULT '5',
  `Knastzeit` double NOT NULL DEFAULT '0',
  `Prison` double NOT NULL DEFAULT '0',
  `Kaution` int(4) NOT NULL DEFAULT '0',
  `Himmelszeit` double NOT NULL DEFAULT '0',
  `Hausschluessel` int(50) NOT NULL DEFAULT '0',
  `Bizschluessel` int(50) NOT NULL DEFAULT '0',
  `Bankgeld` double NOT NULL DEFAULT '1000000',
  `Drogen` double NOT NULL DEFAULT '0',
  `Skinid` int(3) NOT NULL DEFAULT '0',
  `Autofuehrerschein` int(1) NOT NULL DEFAULT '0',
  `Motorradtfuehrerschein` int(1) NOT NULL DEFAULT '0',
  `LKWfuehrerschein` int(1) NOT NULL DEFAULT '0',
  `Helikopterfuehrerschein` int(1) NOT NULL DEFAULT '0',
  `FlugscheinKlasseA` int(1) NOT NULL DEFAULT '0',
  `FlugscheinKlasseB` int(1) NOT NULL DEFAULT '0',
  `Motorbootschein` int(1) NOT NULL DEFAULT '0',
  `Segelschein` int(1) NOT NULL DEFAULT '0',
  `Angelschein` int(1) NOT NULL DEFAULT '0',
  `Wanteds` int(1) NOT NULL DEFAULT '0',
  `StvoPunkte` int(2) NOT NULL DEFAULT '0',
  `Waffenschein` int(1) NOT NULL DEFAULT '0',
  `Perso` int(1) NOT NULL DEFAULT '0',
  `Boni` double NOT NULL DEFAULT '0',
  `PdayIncome` double NOT NULL DEFAULT '0',
  `Telefonnr` int(6) NOT NULL DEFAULT '0',
  `Warns` int(50) NOT NULL DEFAULT '0',
  `Gunbox1` varchar(50) NOT NULL DEFAULT '0|0',
  `Gunbox2` varchar(50) NOT NULL DEFAULT '0|0',
  `Gunbox3` varchar(50) NOT NULL DEFAULT '0|0',
  `Job` varchar(50) NOT NULL DEFAULT 'none',
  `Jobtime` double NOT NULL DEFAULT '0',
  `Club` varchar(50) NOT NULL DEFAULT 'none',
  `FavRadio` varchar(50) NOT NULL DEFAULT '0',
  `Bonuspunkte` int(11) NOT NULL DEFAULT '0',
  `Truckerskill` varchar(50) NOT NULL DEFAULT 'none',
  `AirportLevel` varchar(50) NOT NULL DEFAULT '1',
  `farmerLVL` int(10) NOT NULL DEFAULT '0',
  `bauarbeiterLVL` int(10) NOT NULL DEFAULT '0',
  `Contract` int(7) NOT NULL DEFAULT '0',
  `ArmyPermissions` varchar(50) NOT NULL DEFAULT '|0|0|0|0|0|0|0|0|0|',
  `SocialState` varchar(50) NOT NULL DEFAULT 'Obdachloser',
  `fversicherung` int(11) NOT NULL DEFAULT '0',
  `LastFactionChange` varchar(50) NOT NULL DEFAULT '-',
  `StreetCleanPoints` int(11) NOT NULL DEFAULT '0',
  `Handy` varchar(50) NOT NULL DEFAULT '|1|0|',
  `Rausch` varchar(50) NOT NULL DEFAULT '0|0|0|',
  `Sucht` varchar(50) NOT NULL DEFAULT '0|0|0|',
  `pred` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Ob das Promt-Fenster gelesen wurde',
  `Buslevel` int(11) NOT NULL DEFAULT '0',
  `PremiumPaket` int(255) NOT NULL,
  `PremiumData` int(255) NOT NULL DEFAULT '0',
  `lastSocialChange` int(11) NOT NULL,
  `lastNumberChange` int(11) NOT NULL,
  `lastPremCarGive` int(11) NOT NULL,
  `PremiumCars` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE `vehicles` (
  `UID` int(4) NOT NULL,
  `id` int(11) NOT NULL,
  `Kofferraum` varchar(50) NOT NULL DEFAULT '0|0|0|0|',
  `Typ` int(11) NOT NULL,
  `Tuning` varchar(255) NOT NULL,
  `Spawnpos_X` varchar(50) NOT NULL,
  `Spawnpos_Y` varchar(50) NOT NULL,
  `Spawnpos_Z` varchar(50) NOT NULL,
  `Spawnrot_X` varchar(50) NOT NULL,
  `Spawnrot_Y` varchar(50) NOT NULL,
  `Spawnrot_Z` varchar(50) NOT NULL,
  `Farbe` varchar(50) NOT NULL,
  `Paintjob` varchar(50) NOT NULL DEFAULT '3',
  `Benzin` varchar(50) NOT NULL DEFAULT '100',
  `Slot` float NOT NULL,
  `Special` int(11) NOT NULL DEFAULT '0',
  `Lights` varchar(50) NOT NULL DEFAULT '|255|255|255|',
  `Distance` double NOT NULL DEFAULT '0',
  `STuning` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0|',
  `AuktionsID` int(10) NOT NULL DEFAULT '0',
  `GangVehicle` tinyint(1) NOT NULL DEFAULT '0',
  `rc` int(1) NOT NULL DEFAULT '0',
  `spezcolor` varchar(50) NOT NULL DEFAULT '|0|0|0|0|0|0|',
  `Sportmotor` int(1) NOT NULL DEFAULT '0',
  `Bremse` varchar(1) NOT NULL DEFAULT '0',
  `Antrieb` varchar(10) NOT NULL,
  `plate` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `warns`
--

CREATE TABLE `warns` (
  `UID` int(4) NOT NULL,
  `id` int(11) NOT NULL,
  `adminUID` int(4) NOT NULL,
  `reason` text NOT NULL,
  `time` int(255) NOT NULL DEFAULT '0',
  `date` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `warps`
--

CREATE TABLE `warps` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL,
  `z` varchar(255) NOT NULL,
  `int` varchar(255) NOT NULL,
  `dim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weed`
--

CREATE TABLE `weed` (
  `id` int(11) NOT NULL,
  `x` int(20) NOT NULL,
  `y` int(20) NOT NULL,
  `z` int(20) NOT NULL,
  `time` int(50) NOT NULL,
  `UID` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `achievementlist`
--
ALTER TABLE `achievementlist`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `achievements`
--
ALTER TABLE `achievements`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `achievments`
--
ALTER TABLE `achievments`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `biz`
--
ALTER TABLE `biz`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Biz` (`Biz`);

--
-- Indizes für die Tabelle `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`UID`);

--
-- Indizes für die Tabelle `bonustable`
--
ALTER TABLE `bonustable`
  ADD PRIMARY KEY (`UID`);

--
-- Indizes für die Tabelle `booster`
--
ALTER TABLE `booster`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `carhouses_icons`
--
ALTER TABLE `carhouses_icons`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `carhouses_vehicles`
--
ALTER TABLE `carhouses_vehicles`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `cars_ai`
--
ALTER TABLE `cars_ai`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `cars_peds_ai`
--
ALTER TABLE `cars_peds_ai`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`Name`);

--
-- Indizes für die Tabelle `dailylogins`
--
ALTER TABLE `dailylogins`
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `email`
--
ALTER TABLE `email`
  ADD KEY `Empfaenger` (`EmpfaengerUID`);

--
-- Indizes für die Tabelle `forum_accounts`
--
ALTER TABLE `forum_accounts`
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `fraktionen`
--
ALTER TABLE `fraktionen`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `fraktionen_buy_vehicle`
--
ALTER TABLE `fraktionen_buy_vehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `fraktionen_vehicle`
--
ALTER TABLE `fraktionen_vehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `fraktionen_warns`
--
ALTER TABLE `fraktionen_warns`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `gangs`
--
ALTER TABLE `gangs`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nummer` (`ID`);

--
-- Indizes für die Tabelle `gang_basic`
--
ALTER TABLE `gang_basic`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `gang_members`
--
ALTER TABLE `gang_members`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `gang_vehicles`
--
ALTER TABLE `gang_vehicles`
  ADD PRIMARY KEY (`GangID`),
  ADD UNIQUE KEY `GangID` (`GangID`);

--
-- Indizes für die Tabelle `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `Besitzer` (`UID`);

--
-- Indizes für die Tabelle `idcounter`
--
ALTER TABLE `idcounter`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `inventar`
--
ALTER TABLE `inventar`
  ADD UNIQUE KEY `UID` (`UID`),
  ADD KEY `UID_2` (`UID`);

--
-- Indizes für die Tabelle `levelsystem`
--
ALTER TABLE `levelsystem`
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `loggedin`
--
ALTER TABLE `loggedin`
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `logout`
--
ALTER TABLE `logout`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `lotto`
--
ALTER TABLE `lotto`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `marktplatz`
--
ALTER TABLE `marktplatz`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `id` (`UID`);

--
-- Indizes für die Tabelle `playingtime`
--
ALTER TABLE `playingtime`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `pm`
--
ALTER TABLE `pm`
  ADD PRIMARY KEY (`ids`),
  ADD KEY `Empfaenger` (`EmpfaengerUID`);

--
-- Indizes für die Tabelle `prestige`
--
ALTER TABLE `prestige`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `racing`
--
ALTER TABLE `racing`
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`),
  ADD KEY `id` (`UID`);

--
-- Indizes für die Tabelle `socialstatelist`
--
ALTER TABLE `socialstatelist`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `socialstates`
--
ALTER TABLE `socialstates`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `state_files`
--
ALTER TABLE `state_files`
  ADD PRIMARY KEY (`UID`);

--
-- Indizes für die Tabelle `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `tickets`
--
ALTER TABLE `tickets`
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indizes für die Tabelle `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `warns`
--
ALTER TABLE `warns`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `warps`
--
ALTER TABLE `warps`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `weed`
--
ALTER TABLE `weed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `achievementlist`
--
ALTER TABLE `achievementlist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT für Tabelle `achievements`
--
ALTER TABLE `achievements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ban`
--
ALTER TABLE `ban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `biz`
--
ALTER TABLE `biz`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=667;
--
-- AUTO_INCREMENT für Tabelle `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT für Tabelle `booster`
--
ALTER TABLE `booster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `carhouses_vehicles`
--
ALTER TABLE `carhouses_vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT für Tabelle `fraktionen_buy_vehicle`
--
ALTER TABLE `fraktionen_buy_vehicle`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT für Tabelle `fraktionen_vehicle`
--
ALTER TABLE `fraktionen_vehicle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT für Tabelle `fraktionen_warns`
--
ALTER TABLE `fraktionen_warns`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `gangs`
--
ALTER TABLE `gangs`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT für Tabelle `gang_basic`
--
ALTER TABLE `gang_basic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `houses`
--
ALTER TABLE `houses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `lotto`
--
ALTER TABLE `lotto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `marktplatz`
--
ALTER TABLE `marktplatz`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `object`
--
ALTER TABLE `object`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `pm`
--
ALTER TABLE `pm`
  MODIFY `ids` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `socialstatelist`
--
ALTER TABLE `socialstatelist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `socialstates`
--
ALTER TABLE `socialstates`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `support`
--
ALTER TABLE `support`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `userdata`
--
ALTER TABLE `userdata`
  MODIFY `UID` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `warns`
--
ALTER TABLE `warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT für Tabelle `warps`
--
ALTER TABLE `warps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `weed`
--
ALTER TABLE `weed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
