-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2016 at 12:53 AM
-- Server version: 5.5.50-0+deb7u2
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_testserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievments`
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

--
-- Dumping data for table `achievments`
--

INSERT INTO `achievments` (`UID`, `SchlaflosInSA`, `Waffenschieber`, `Angler`, `Lizensen`, `Fahrzeugwahn`, `EigeneFuesse`, `KingOfTheHill`, `ReallifeWTF`, `DerSammler`, `TheTruthIsOutThere`, `SilentAssasin`, `HighwayToHell`, `LookoutsA`, `Hufeisen`, `Revolverheld`, `ChickenDinner`, `NichtGehtMehr`, `highscore`) VALUES
(1, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0|0|0|0|0|0|0|0|0|0|', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|', 0, 0, 0, 0),
(6, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0|0|0|0|0|0|0|0|0|0|', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|', 0, 0, 0, 0),
(4, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0|0|0|0|0|0|0|0|0|0|', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `adminPermissons`
--

CREATE TABLE `adminPermissons` (
  `permName` varchar(255) NOT NULL,
  `permLevel` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adminPermissons`
--

INSERT INTO `adminPermissons` (`permName`, `permLevel`) VALUES
('achat', 2),
('check', 2),
('gethere', 2),
('goto', 2),
('gotomark', 2),
('intdim', 2),
('listWarps', 2),
('mark', 2),
('move', 2),
('moveVehAway', 2),
('ochat', 2),
('respawn', 2),
('rkick', 2),
('spec', 2),
('warp', 2),
('cleartext', 3),
('frezze', 3),
('pwchange', 4),
('rban', 4),
('tban', 4),
('makeleader', 6),
('nickchange', 6),
('setrank', 6),
('shutdown', 6),
('tuneCar', 6),
('gmx', 7),
('newWarp', 7),
('setadmin', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE `ban` (
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
-- Table structure for table `biz`
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
-- Dumping data for table `biz`
--

INSERT INTO `biz` (`ID`, `Biz`, `UID`, `Kasse`, `Name`, `Preis`) VALUES
(5, 'MistysBar', 0, 0, 'Mistys Bar', 350000),
(3, 'Sprunk', 0, 15, 'Sprunk Fabrik', 475000),
(4, 'WellStackedPizza', 0, 0, 'Well Stacked Pizza Co.', 999999999),
(10, 'TankstellePine', 0, 0, 'Tankstelle Pine', 650000),
(8, 'TankstelleNord', 0, 0, 'Tankstelle North', 200000),
(6, 'Visage', 0, 0, 'Visage Hotel', 10000000),
(7, 'VankHoff', 0, 0, 'Vank Hoff Hotel', 3000000),
(2, 'PaynSprayJuniper', 0, 0, 'Pay n Spray', 350000),
(9, 'TankstelleSued', 0, 0, 'Tankstelle South', 750000),
(1, 'PaynSprayWangcars', 0, 0, 'Pay n Spray WC', 350000),
(11, 'PaynSprayLV', 0, 0, 'Pay n Spray LV', 500000),
(12, 'PaynSprayLS', 0, 0, 'Pay n Spray LS', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
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
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `UID` int(4) NOT NULL,
  `Punkte` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bonustable`
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

--
-- Dumping data for table `bonustable`
--

INSERT INTO `bonustable` (`UID`, `Lungenvolumen`, `Muskeln`, `Kondition`, `Boxen`, `KungFu`, `Streetfighting`, `CurStyle`, `PistolenSkill`, `DeagleSkill`, `ShotgunSkill`, `AssaultSkill`, `Vortex`, `MP5Skills`, `Quad`, `CarslotUpgrades`, `PremiumUntilDay`, `PremiumUntilYear`, `BonusSkin1`, `CarslotUpdate2`, `CarslotUpdate3`, `CarslotUpdate4`, `CarslotUpdate5`, `Skimmer`, `Leichenwagen`, `Schach`, `Caddy`, `fglass`, `uzi`) VALUES
(1, 'none', 'none', 'none', 'none', 'none', 'none', '4', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 0, '0', 'none', 0, 0, 0, 0, 0, 0, '0', '0', '0', '0'),
(6, 'none', 'none', 'none', 'none', 'none', 'none', '4', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 0, '0', 'none', 0, 0, 0, 0, 0, 0, '0', '0', '0', '0'),
(4, 'none', 'none', 'none', 'none', 'none', 'none', '4', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 0, '0', 'none', 0, 0, 0, 0, 0, 0, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `buyit`
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
-- Table structure for table `carhouses_icons`
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
-- Dumping data for table `carhouses_icons`
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
-- Table structure for table `carhouses_vehicles`
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
-- Dumping data for table `carhouses_vehicles`
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
-- Table structure for table `cars_ai`
--

CREATE TABLE `cars_ai` (
  `ID` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars_ai`
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
-- Table structure for table `cars_peds_ai`
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
-- Dumping data for table `cars_peds_ai`
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
-- Table structure for table `changelog`
--

CREATE TABLE `changelog` (
  `ID` int(11) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `msg` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `changelog`
--

INSERT INTO `changelog` (`ID`, `Date`, `msg`) VALUES
(1, '15.08.2015 03:16:30', 'Dies ist ein Test'),
(2, '15.08.2015 03:18:00', 'Noch ein Test');

-- --------------------------------------------------------

--
-- Table structure for table `cp_bank`
--

CREATE TABLE `cp_bank` (
  `ID` int(11) NOT NULL,
  `absender` varchar(255) NOT NULL,
  `empfanger` varchar(255) NOT NULL,
  `betrag` double NOT NULL,
  `betreff` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_ticket`
--

CREATE TABLE `cp_ticket` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `isclosed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_ticket_ans`
--

CREATE TABLE `cp_ticket_ans` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `ticket_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `EmpfaengerUID` int(4) NOT NULL,
  `Text` varchar(500) NOT NULL,
  `Yearday` int(11) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_accounts`
--

CREATE TABLE `forum_accounts` (
  `UID` int(11) NOT NULL,
  `ForumID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forum_accounts`
--

INSERT INTO `forum_accounts` (`UID`, `ForumID`) VALUES
(1, '3');

-- --------------------------------------------------------

--
-- Table structure for table `fraktionen`
--

CREATE TABLE `fraktionen` (
  `Name` varchar(50) NOT NULL,
  `ID` int(2) NOT NULL,
  `FKasse` varchar(50) NOT NULL,
  `DepotGeld` varchar(50) NOT NULL DEFAULT '0',
  `DepotDrogen` varchar(50) NOT NULL DEFAULT '0',
  `DepotMaterials` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fraktionen`
--

INSERT INTO `fraktionen` (`Name`, `ID`, `FKasse`, `DepotGeld`, `DepotDrogen`, `DepotMaterials`) VALUES
('Mafia', 2, '0', '0', '0', '10000'),
('SFPD', 1, '0', '0', '0', '0'),
('Triaden', 3, '0', '0', '0', '10000'),
('Terroristen', 4, '0', '0', '0', '10000'),
('Reporter', 5, '0', '20000', '0', '0'),
('FBI', 6, '0', '0', '0', '0'),
('Aztecas', 7, '0', '0', '0', '10000'),
('Biker', 9, '0', '0', '0', '10000'),
('Grove', 13, '0', '0', '0', '10000'),
('Ballas', 12, '0', '0', '0', '10000'),
('MechMedic', 10, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
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
-- Dumping data for table `gangs`
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
-- Table structure for table `gang_basic`
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
-- Table structure for table `gang_members`
--

CREATE TABLE `gang_members` (
  `UID` int(4) NOT NULL,
  `Gang` int(4) NOT NULL DEFAULT '0',
  `Rang` int(2) NOT NULL DEFAULT '1',
  `Founder` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gang_vehicles`
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
-- Table structure for table `houses`
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

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`ID`, `SymbolX`, `SymbolY`, `SymbolZ`, `UID`, `Preis`, `CurrentInterior`, `Kasse`, `Miete`) VALUES
(109, -2172.4609375, 642.9287109375, 49.4375, 0, 20000, 5, 0, 0),
(108, -2178.2060546875, -2307.9951171875, 30.625, 0, 20000, 5, 0, 0),
(107, -1351.5322265625, 2499.5732421875, 87.849250793457, 0, 20000, 5, 0, 0),
(106, -1347.75390625, 2475.0517578125, 87.849250793457, 0, 20000, 5, 0, 0),
(105, -621.90795898438, 962.34161376953, 10.748706817627, 0, 20000, 5, 0, 0),
(104, -758.9267578125, 907.416015625, 12.822581291199, 0, 20000, 5, 0, 0),
(103, -2071.8571777344, 1414.4110107422, 7.7489624023438, 0, 250000, 11, 0, 0),
(102, -2075.4743652344, 1377.5810546875, 7.5927696228027, 0, 250000, 11, 0, 0),
(101, -2173.5791015625, 992.8349609375, 80, 0, 120000, 9, 0, 0),
(100, -2634.9091796875, 239.568359375, 4.5588436126709, 0, 120000, 9, 0, 0),
(99, -2689, 197.8330078125, 7.203125, 0, 120000, 9, 0, 0),
(98, -2623.4306640625, -99.3818359375, 7.203125, 0, 120000, 9, 0, 0),
(97, -2687.9052734375, 137.1318359375, 4.3425788879395, 0, 120000, 9, 0, 0),
(96, -2723.2578125, -17.2978515625, 7.203125, 0, 120000, 9, 0, 0),
(95, -2688.3876953125, -89.4287109375, 4.3359375, 0, 120000, 9, 0, 0),
(94, -2725.7470703125, -92.5595703125, 7.203125, 0, 120000, 9, 0, 0),
(93, -2686.828125, -188.076171875, 7.203125, 0, 120000, 9, 0, 0),
(92, -2724.6630859375, -191.30078125, 4.3359375, 0, 120000, 9, 0, 0),
(91, -2791.6103515625, 218.583984375, 7.859375, 0, 100000, 9, 0, 0),
(90, -2789.1845703125, 183.6083984375, 10.0625, 0, 100000, 9, 0, 0),
(89, -2791.71875, 143.244140625, 10.0546875, 0, 100000, 9, 0, 0),
(88, -2790.2470703125, 126.935546875, 7.2019538879395, 0, 100000, 9, 0, 0),
(87, -2791.5849609375, 92.1005859375, 7.859375, 0, 100000, 9, 0, 0),
(86, -2790.26171875, 7.2080078125, 7.1953125, 0, 100000, 9, 0, 0),
(85, -2791.5849609375, -17.693359375, 7.859375, 0, 100000, 9, 0, 0),
(84, -2791.583984375, -145.9228515625, 7.859375, 0, 100000, 9, 0, 0),
(83, -2790.279296875, -111.08984375, 7.2019538879395, 0, 100000, 9, 0, 0),
(82, -2790.2626953125, -82.5576171875, 7.1953125, 0, 100000, 9, 0, 0),
(81, -2790.2578125, 69.748046875, 7.1953125, 0, 120000, 9, 0, 0),
(80, -2789.17578125, -52.7041015625, 10.0625, 0, 120000, 9, 0, 0),
(79, -2789.1787109375, -181.392578125, 10.0625, 0, 120000, 9, 0, 0),
(78, -2662.0693359375, 876.33203125, 79.773796081543, 0, 300000, 30, 0, 0),
(77, -2573.90625, 1152.1513671875, 55.7265625, 0, 90000, 4, 0, 0),
(76, -2548.9267578125, 1145.7041015625, 55.7265625, 0, 90000, 4, 0, 0),
(75, -2517, 1142.41796875, 55.7265625, 0, 90000, 4, 0, 0),
(74, -2478.8564453125, 1141.986328125, 55.7265625, 0, 90000, 4, 0, 0),
(73, -2451.08203125, 1141.7626953125, 55.733276367188, 0, 90000, 4, 0, 0),
(72, -2413.53125, 1137.4755859375, 55.7265625, 0, 90000, 4, 0, 0),
(71, -2383.8046875, 1128.1474609375, 55.7265625, 0, 90000, 4, 0, 0),
(70, -2358.92578125, 1118.0869140625, 55.7265625, 0, 90000, 4, 0, 0),
(69, -2737.5546875, 866.3173828125, 64.6328125, 0, 50000, 4, 0, 0),
(68, -2737.8427734375, 836.84765625, 56.25394821167, 0, 50000, 4, 0, 0),
(67, -2738.314453125, 801.615234375, 53.0625, 0, 50000, 4, 0, 0),
(66, -2738.3154296875, 789.0146484375, 54.3828125, 0, 50000, 4, 0, 0),
(65, -2738.3134765625, 771.544921875, 54.3828125, 0, 50000, 4, 0, 0),
(64, -2738.3232421875, 758.6748046875, 54.3828125, 0, 50000, 4, 0, 0),
(63, -2738.3154296875, 746.31640625, 49.187034606934, 0, 50000, 4, 0, 0),
(62, -2731.5361328125, 723.703125, 41.2734375, 0, 50000, 4, 0, 0),
(61, -2706.7939453125, 722.857421875, 37.5390625, 0, 50000, 4, 0, 0),
(60, -2677.94921875, 722.25390625, 28.595994949341, 0, 50000, 4, 0, 0),
(59, -2661.5029296875, 722.2529296875, 27.962381362915, 0, 50000, 4, 0, 0),
(58, -2640.294921875, 730.84765625, 30.075717926025, 0, 75000, 4, 0, 0),
(57, -2397.634765625, -28.208984375, 35.984142303467, 0, 200000, 7, 0, 0),
(56, -2625.48046875, 733.2900390625, 28.010688781738, 0, 60000, 4, 0, 0),
(55, -2622.521484375, 749.744140625, 31.421875, 0, 50000, 4, 0, 0),
(54, -2622.521484375, 766.3291015625, 36.8359375, 0, 50000, 4, 0, 0),
(53, -2622.51953125, 782.626953125, 44.859375, 0, 50000, 4, 0, 0),
(52, -2621.677734375, 802.9755859375, 49.984375, 0, 50000, 4, 0, 0),
(51, -2657.3779296875, 848.6103515625, 64.0078125, 0, 160000, 3, 0, 0),
(50, -2620.01953125, 874.8076171875, 58.921875, 0, 50000, 4, 0, 0),
(49, -2619.7373046875, 845.3515625, 50.598487854004, 0, 50000, 4, 0, 0),
(48, -2586.0087890625, 794.1748046875, 49.423362731934, 0, 50000, 4, 0, 0),
(47, -2550.8408203125, 794.1748046875, 49.423389434814, 0, 50000, 4, 0, 0),
(46, -2548.59765625, 819.794921875, 49.984375, 0, 50000, 4, 0, 0),
(45, -2559.255859375, 819.7998046875, 49.984375, 0, 60000, 4, 0, 0),
(44, -2565.87109375, 819.7958984375, 49.991027832031, 0, 60000, 4, 0, 0),
(43, -2590.966796875, 819.791015625, 49.991027832031, 0, 50000, 4, 0, 0),
(42, -2673.9111328125, 830.1787109375, 49.984375, 0, 75000, 4, 0, 0),
(41, -2666.7490234375, 820.31640625, 49.984375, 0, 60000, 4, 0, 0),
(40, -2700.33203125, 820.8623046875, 49.984375, 0, 60000, 4, 0, 0),
(39, -2737.322265625, 822.9921875, 53.730987548828, 0, 60000, 4, 0, 0),
(38, -2709.8447265625, 803.0810546875, 49.9765625, 0, 60000, 4, 0, 0),
(37, -2677.23828125, 803.080078125, 49.9765625, 0, 60000, 4, 0, 0),
(36, -2670.6923828125, 803.083984375, 49.9765625, 0, 60000, 4, 0, 0),
(35, -2645.5693359375, 803.08984375, 49.9765625, 0, 60000, 4, 0, 0),
(34, -2641.9873046875, 820.314453125, 49.984375, 0, 75000, 4, 0, 0),
(33, -2618.7509765625, 831.078125, 49.984375, 0, 75000, 4, 0, 0),
(32, -2592.8115234375, 832.8203125, 52.09375, 0, 60000, 4, 0, 0),
(31, -2592.736328125, 855.0263671875, 53.594135284424, 0, 50000, 4, 0, 0),
(30, -2593.208984375, 883.0546875, 63.25, 0, 50000, 4, 0, 0),
(29, -2580.962890625, 920.375, 64.984375, 0, 50000, 4, 0, 0),
(28, -2961.6103515625, 476.7529296875, 4.9097900390625, 0, 400000, 12, 0, 0),
(27, -2569.8173828125, 920.3779296875, 64.984375, 0, 60000, 4, 0, 0),
(26, -2562.3212890625, 920.3798828125, 64.984375, 0, 60000, 4, 0, 0),
(25, -2543.576171875, 922.2333984375, 67.09375, 0, 60000, 4, 0, 0),
(24, -2340.037109375, 820.0361328125, 41.982936859131, 0, 50000, 4, 0, 0),
(23, -2303.3173828125, 820.0361328125, 48.700397491455, 0, 50000, 4, 0, 0),
(22, -2321.8115234375, 796.7578125, 45.344985961914, 0, 50000, 4, 0, 0),
(21, -2358.642578125, 796.755859375, 38.323360443115, 0, 50000, 4, 0, 0),
(20, -2320.1611328125, 580.0361328125, 31.070611953735, 0, 50000, 4, 0, 0),
(19, -2356.8037109375, 580.0322265625, 24.890625, 0, 50000, 4, 0, 0),
(18, -2372.5263671875, 614.0927734375, 30.936983108521, 0, 50000, 4, 0, 0),
(17, -2372.5263671875, 643.98828125, 35.171875, 0, 50000, 4, 0, 0),
(16, -2368.818359375, 763.5537109375, 35.151725769043, 0, 70000, 4, 0, 0),
(15, -2504.5029296875, 821.306640625, 45.987236022949, 0, 50000, 4, 0, 0),
(14, -2583.681640625, 896.2568359375, 64.984375, 0, 50000, 4, 0, 0),
(13, -2566.5712890625, 896.6416015625, 64.984375, 0, 50000, 4, 0, 0),
(12, -2541.58984375, 896.638671875, 64.984375, 0, 60000, 4, 0, 0),
(11, -2540.099609375, 883.1826171875, 63.25, 0, 50000, 4, 0, 0),
(10, -2540.6826171875, 855.1171875, 53.1796875, 0, 50000, 4, 0, 0),
(9, -2538.73046875, 830.083984375, 49.984375, 0, 50000, 4, 0, 0),
(8, -2513.505859375, 885.755859375, 62.778087615967, 0, 50000, 4, 0, 0),
(7, -2513.50390625, 867.521484375, 57.7421875, 0, 50000, 4, 0, 0),
(6, -2513.5078125, 830.822265625, 49.998344421387, 0, 50000, 4, 0, 0),
(5, -2594.1875, 785.0849609375, 46.221897125244, 0, 50000, 4, 0, 0),
(4, -2594.1904296875, 750.8564453125, 33.700843811035, 0, 50000, 4, 0, 0),
(3, -2368.8193359375, 740.6796875, 35.151634216309, 0, 70000, 4, 0, 0),
(2, -2372.529296875, 784.1201171875, 35.114852905273, 0, 50000, 4, 0, 0),
(1, -2372.67578125, 692.650390625, 35.1640625, 0, 50000, 4, 0, 0),
(110, -2034.89453125, 148.5302734375, 28.8359375, 0, 2000000, 20, 0, 0),
(111, 1298.5087890625, -797.9853515625, 84.140625, 0, 2000000, 20, 0, 0),
(112, -2390.938232, -45.126759, 37.204144, 0, 75000, 3, 0, 0),
(113, -2391.184326, -21.314453, 37.204144, 0, 75000, 3, 0, 0),
(114, -2390.60791, -0.113867, 37.204144, 0, 75000, 3, 0, 0),
(115, -2390.89502, 24.048828, 37.204144, 0, 75000, 3, 0, 0),
(116, -2127.009766, 443.791016, 35.171875, 0, 250000, 10, 0, 0),
(117, -2107.111328, 463.871094, 35.171875, 0, 250000, 10, 0, 0),
(118, -2087.014648, 483.78418, 35.171875, 0, 250000, 10, 0, 0),
(119, -2027.850586, -40.604492, 38.804688, 0, 90000, 3, 0, 0),
(120, -1051.389648, 1549.77832, 33.437611, 0, 35000, 1, 0, 0),
(121, -2904.347656, 1178.96582, 13.664062, 0, 55000, 9, 0, 0),
(122, -2905.169922, 1164.814453, 13.664062, 0, 55000, 9, 0, 0),
(123, -2904.697266, 1118.751953, 27.070312, 0, 55000, 9, 0, 0),
(124, -2904.47168, 1101.116211, 27.070312, 0, 55000, 9, 0, 0),
(125, -2900.716797, 1080.936523, 32.132812, 0, 55000, 9, 0, 0),
(126, -2900.712891, 1066.890625, 32.132812, 0, 55000, 9, 0, 0),
(127, -2900.455078, 1056.894531, 32.132812, 0, 55000, 9, 0, 0),
(128, -2901.662109, 1033.612305, 36.828125, 0, 55000, 9, 0, 0),
(129, -2895.5625, 1016.867188, 36.828125, 0, 55000, 9, 0, 0),
(130, -2899.106445, 1026.84375, 36.828125, 0, 55000, 9, 0, 0),
(131, -2888.036133, 1001.768555, 40.71875, 0, 55000, 9, 0, 0),
(132, -2881.033203, 989.631836, 40.71875, 0, 55000, 9, 0, 0),
(133, -2875.985352, 980.888672, 40.72596, 0, 55000, 9, 0, 0),
(134, -2860.537109, 963.823242, 44.054688, 0, 55000, 9, 0, 0),
(135, -2857.637695, 956.966797, 44.054688, 0, 55000, 9, 0, 0),
(136, -2853.197266, 947.452148, 44.054688, 0, 55000, 9, 0, 0),
(137, -2845.308594, 928.443359, 44.054688, 0, 55000, 9, 0, 0),
(138, -2844.089844, 914.423828, 44.054688, 0, 55000, 9, 0, 0),
(139, -2843.214844, 904.429688, 44.054688, 0, 55000, 9, 0, 0),
(140, -2840.227539, 884.605469, 44.054688, 0, 55000, 9, 0, 0),
(141, -2840.223633, 866.917969, 44.054688, 0, 55000, 9, 0, 0),
(142, -2856.664062, 841.943359, 39.649616, 0, 55000, 9, 0, 0),
(143, -2863.667969, 829.803711, 39.53997, 0, 55000, 9, 0, 0),
(144, -2868.735352, 821.013672, 39.460468, 0, 55000, 9, 0, 0),
(145, -2880.266602, 797.630859, 35.29818, 0, 55000, 9, 0, 0),
(146, -2882.260742, 779.995117, 35.089928, 0, 55000, 9, 0, 0),
(147, -2884.796875, 750.744141, 29.201218, 0, 55000, 9, 0, 0),
(148, -2884.168945, 743.575195, 29.217739, 0, 55000, 9, 0, 0),
(149, -2883.579102, 736.842773, 29.211348, 0, 55000, 9, 0, 0),
(150, -2882.349609, 726.676758, 29.196587, 0, 55000, 9, 0, 0),
(151, -2872.40625, 697.395508, 23.462742, 0, 55000, 9, 0, 0),
(152, -2869.395508, 690.944336, 23.4617, 0, 55000, 9, 0, 0),
(153, -2864.962891, 681.462891, 23.460388, 0, 55000, 9, 0, 0),
(155, -1440.779297, -948.81427, 201.371246, 0, 100000, 3, 0, 0),
(156, -1429.484741, -936.557129, 202.388275, 0, 100000, 3, 0, 0),
(157, -1430.284668, -959.369629, 201.440735, 0, 100000, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `idcounter`
--

CREATE TABLE `idcounter` (
  `id` int(50) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idcounter`
--

INSERT INTO `idcounter` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `inventar`
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

--
-- Dumping data for table `inventar`
--

INSERT INTO `inventar` (`UID`, `Wuerfel`, `Blumensamen`, `Lottoschein`, `Essensslot1`, `Essensslot2`, `Essensslot3`, `Waffenslot1`, `Waffenslot2`, `Waffenslot3`, `Zigaretten`, `Materials`, `Benzinkanister`, `FruitNotebook`, `Gameboy`, `Objekt`, `Chips`, `Geschenke`, `fishing`, `fglass`, `Medikit`, `Spezial`, `Repairkit`) VALUES
(1, 0, 37, '0|0|0|0|0|0', 0, 0, 0, '0|0', '0|0', '0|0', 0, 0, 0, 1, 0, 0, 0, 0, '0|0|0|0;0|0;0|0;0', 0, 0, '', 0),
(6, 0, 0, '0|0|0|0|0|0', 0, 0, 0, '0|0', '0|0', '0|0', 0, 0, 0, 1, 0, 0, 0, 0, '0|0|0|0;0|0;0|0;0', 0, 0, '', 0),
(4, 0, 0, '0|0|0|0|0|0', 0, 0, 0, '0|0', '0|0', '0|0', 0, 0, 0, 1, 0, 0, 0, 0, '0|0|0|0;0|0;0|0;0', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loggedin`
--

CREATE TABLE `loggedin` (
  `UID` int(4) NOT NULL,
  `Serial` varchar(32) NOT NULL DEFAULT 'ABCD1234ABCD1234',
  `IP` varchar(50) NOT NULL DEFAULT '0.0.0.0',
  `Loggedin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logout`
--

CREATE TABLE `logout` (
  `UID` int(4) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Waffen` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `ID` int(11) NOT NULL,
  `Typ` int(2) NOT NULL,
  `Text` varchar(255) NOT NULL,
  `Timestamp` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`ID`, `Typ`, `Text`, `Timestamp`) VALUES
(1, 12, '[20-03-2016 03:43:32]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441811),
(2, 12, '[20-03-2016 03:43:33]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441812),
(3, 12, '[20-03-2016 03:43:34]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441813),
(4, 12, '[20-03-2016 03:43:34]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441813),
(5, 12, '[20-03-2016 03:43:35]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441814),
(6, 12, '[20-03-2016 03:43:35]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441814),
(7, 12, '[20-03-2016 03:43:35]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441814),
(8, 12, '[20-03-2016 03:43:36]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441815),
(9, 12, '[20-03-2016 03:43:36]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441815),
(10, 12, '[20-03-2016 03:43:36]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441815),
(11, 12, '[20-03-2016 03:43:37]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441816),
(12, 12, '[20-03-2016 03:43:37]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441816),
(13, 12, '[20-03-2016 03:43:38]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441817),
(14, 12, '[20-03-2016 03:43:38]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441817),
(15, 12, '[20-03-2016 03:43:38]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441817),
(16, 12, '[20-03-2016 03:43:39]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441818),
(17, 12, '[20-03-2016 03:43:40]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441819),
(18, 12, '[20-03-2016 03:43:40]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441819),
(19, 12, '[20-03-2016 03:43:45]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458441824),
(20, 19, '[20-03-2016 03:43:45]: g3rry wurde von JConis getÃ¶tet ( Waffe: 0 )', 1458441824),
(21, 5, '[20-03-2016 03:46:11]: g3rry sagt: wd g3rr g3rr', 1458441970),
(22, 2, '[20-03-2016 03:47:24]: g3rry hat sich zu JConis teleportiert!', 1458442043),
(23, 5, '[20-03-2016 03:47:46]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442065),
(24, 5, '[20-03-2016 03:47:46]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442065),
(25, 5, '[20-03-2016 03:47:46]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442065),
(26, 5, '[20-03-2016 03:47:47]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442066),
(27, 5, '[20-03-2016 03:47:47]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442066),
(28, 5, '[20-03-2016 03:47:48]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442067),
(29, 5, '[20-03-2016 03:47:48]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442067),
(30, 5, '[20-03-2016 03:48:03]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442082),
(31, 5, '[20-03-2016 03:48:04]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442083),
(32, 5, '[20-03-2016 03:48:04]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442083),
(33, 5, '[20-03-2016 03:48:04]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442083),
(34, 5, '[20-03-2016 03:48:05]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442084),
(35, 5, '[20-03-2016 03:48:05]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442084),
(36, 5, '[20-03-2016 03:48:06]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442085),
(37, 5, '[20-03-2016 03:48:06]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442085),
(38, 5, '[20-03-2016 03:48:06]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442085),
(39, 5, '[20-03-2016 03:48:07]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442086),
(40, 5, '[20-03-2016 03:48:07]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442086),
(41, 5, '[20-03-2016 03:48:07]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442086),
(42, 5, '[20-03-2016 03:48:08]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442087),
(43, 5, '[20-03-2016 03:48:08]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442087),
(44, 5, '[20-03-2016 03:48:09]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442088),
(45, 5, '[20-03-2016 03:48:09]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442088),
(46, 5, '[20-03-2016 03:48:09]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442088),
(47, 5, '[20-03-2016 03:48:10]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442089),
(48, 5, '[20-03-2016 03:48:10]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442089),
(49, 5, '[20-03-2016 03:48:10]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442089),
(50, 5, '[20-03-2016 03:48:11]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442090),
(51, 5, '[20-03-2016 03:48:11]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442090),
(52, 5, '[20-03-2016 03:48:12]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442091),
(53, 5, '[20-03-2016 03:48:12]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442091),
(54, 5, '[20-03-2016 03:48:12]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442091),
(55, 5, '[20-03-2016 03:48:13]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442092),
(56, 5, '[20-03-2016 03:48:13]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442092),
(57, 5, '[20-03-2016 03:48:14]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442093),
(58, 5, '[20-03-2016 03:48:14]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442093),
(59, 5, '[20-03-2016 03:48:14]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442093),
(60, 5, '[20-03-2016 03:48:15]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442094),
(61, 5, '[20-03-2016 03:48:15]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442094),
(62, 5, '[20-03-2016 03:48:15]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442094),
(63, 5, '[20-03-2016 03:48:16]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442095),
(64, 5, '[20-03-2016 03:48:16]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442095),
(65, 5, '[20-03-2016 03:48:17]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442096),
(66, 5, '[20-03-2016 03:48:17]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442096),
(67, 5, '[20-03-2016 03:48:17]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442096),
(68, 5, '[20-03-2016 03:48:18]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442097),
(69, 5, '[20-03-2016 03:48:18]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442097),
(70, 5, '[20-03-2016 03:48:18]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442097),
(71, 5, '[20-03-2016 03:48:19]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442098),
(72, 5, '[20-03-2016 03:48:19]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442098),
(73, 5, '[20-03-2016 03:48:20]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442099),
(74, 5, '[20-03-2016 03:48:20]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442099),
(75, 5, '[20-03-2016 03:48:20]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442099),
(76, 5, '[20-03-2016 03:48:21]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442100),
(77, 5, '[20-03-2016 03:48:21]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442100),
(78, 5, '[20-03-2016 03:48:21]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442100),
(79, 5, '[20-03-2016 03:48:22]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442101),
(80, 5, '[20-03-2016 03:48:22]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442101),
(81, 5, '[20-03-2016 03:48:22]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442101),
(82, 5, '[20-03-2016 03:48:23]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442102),
(83, 5, '[20-03-2016 03:48:23]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442102),
(84, 5, '[20-03-2016 03:48:24]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442103),
(85, 5, '[20-03-2016 03:48:24]: JConis schreit: Du stehst auf der Blacklist, du wirst jetzt sterben!!!!', 1458442103),
(86, 5, '[20-03-2016 03:48:24]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442103),
(87, 5, '[20-03-2016 03:48:25]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442104),
(88, 5, '[20-03-2016 03:48:25]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442104),
(89, 5, '[20-03-2016 03:48:25]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442104),
(90, 5, '[20-03-2016 03:48:26]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442105),
(91, 5, '[20-03-2016 03:48:26]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442105),
(92, 5, '[20-03-2016 03:48:26]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442105),
(93, 5, '[20-03-2016 03:48:27]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442106),
(94, 5, '[20-03-2016 03:48:27]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442106),
(95, 5, '[20-03-2016 03:48:27]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442106),
(96, 5, '[20-03-2016 03:48:28]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442107),
(97, 5, '[20-03-2016 03:48:28]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442107),
(98, 5, '[20-03-2016 03:48:28]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442107),
(99, 5, '[20-03-2016 03:48:29]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442108),
(100, 5, '[20-03-2016 03:48:29]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442108),
(101, 5, '[20-03-2016 03:48:29]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442108),
(102, 5, '[20-03-2016 03:48:30]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442109),
(103, 2, '[20-03-2016 03:48:33]: g3rry hat sich zu JConis teleportiert!', 1458442112),
(104, 12, '[20-03-2016 03:48:34]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458442113),
(105, 5, '[20-03-2016 03:48:36]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442115),
(106, 5, '[20-03-2016 03:48:36]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442115),
(107, 5, '[20-03-2016 03:48:36]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442115),
(108, 5, '[20-03-2016 03:48:37]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442116),
(109, 5, '[20-03-2016 03:48:37]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442116),
(110, 5, '[20-03-2016 03:48:37]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442116),
(111, 5, '[20-03-2016 03:48:38]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442117),
(112, 5, '[20-03-2016 03:48:38]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442117),
(113, 5, '[20-03-2016 03:48:38]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442117),
(114, 5, '[20-03-2016 03:48:39]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442118),
(115, 5, '[20-03-2016 03:48:39]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442118),
(116, 5, '[20-03-2016 03:48:40]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442119),
(117, 5, '[20-03-2016 03:48:40]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442119),
(118, 5, '[20-03-2016 03:48:41]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442120),
(119, 5, '[20-03-2016 03:48:41]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442120),
(120, 5, '[20-03-2016 03:48:41]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442120),
(121, 5, '[20-03-2016 03:48:42]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442121),
(122, 5, '[20-03-2016 03:48:42]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442121),
(123, 5, '[20-03-2016 03:48:42]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442121),
(124, 5, '[20-03-2016 03:48:43]: JConis schreit: Ãœberfall! Gib sofort 5000 Dollar her oder dein KÃ¶rper liegt auf der StraÃŸe!!!!', 1458442122),
(125, 5, '[20-03-2016 03:48:43]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442122),
(126, 5, '[20-03-2016 03:48:44]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442123),
(127, 5, '[20-03-2016 03:48:44]: JConis schreit: Leg dich nicht mit den Front Yard Ballas an!!!', 1458442123),
(128, 5, '[20-03-2016 03:48:44]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442123),
(129, 5, '[20-03-2016 03:48:45]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442124),
(130, 5, '[20-03-2016 03:48:45]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442124),
(131, 5, '[20-03-2016 03:48:46]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442125),
(132, 5, '[20-03-2016 03:48:46]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442125),
(133, 5, '[20-03-2016 03:48:47]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442126),
(134, 5, '[20-03-2016 03:48:48]: JConis schreit: Geiselnahme! Steig sofort in das Auto oder du liegst bei den andern Leichen!!!!', 1458442127),
(135, 21, '[20-03-2016 03:49:24]: g3rry hat ein Auto gekauft ( Infernus )', 1458442163),
(136, 2, '[20-03-2016 03:49:48]: g3rry hat das Auto von g3rry FFT gemacht!', 1458442187),
(137, 2, '[20-03-2016 03:50:25]: g3rry hat JConis zum Banger der Ballas ernannt!', 1458442224),
(138, 2, '[20-03-2016 03:50:31]: g3rry hat JConis zum Sweet der Grove ernannt!', 1458442230),
(139, 2, '[20-03-2016 03:50:51]: g3rry hat JConis zum Banger der Ballas ernannt!', 1458442250),
(140, 2, '[20-03-2016 03:50:58]: g3rry hat JConis zum Chef der Mechaniker ernannt!', 1458442257),
(141, 5, '[20-03-2016 03:52:48]: g3rry sagt: auto werkstat lol', 1458442367),
(142, 5, '[20-03-2016 03:54:27]: meCMDg3rry steckt JConis ein paar Scheine zu...', 1458442466),
(143, 5, '[20-03-2016 03:55:46]: meCMDg3rry steckt JConis ein paar Scheine zu...', 1458442545),
(144, 11, '[20-03-2016 04:02:25]: g3rry ist gestorben. Grund: 54', 1458442944),
(145, 2, '[20-03-2016 04:15:42]: g3rry hat g3rry zum Triadenboss ernannt!', 1458443741),
(146, 2, '[20-03-2016 04:16:19]: g3rry hat JConis zu sich teleportiert.', 1458443778),
(147, 2, '[20-03-2016 04:16:29]: g3rry hat JConis zum Zivilisten gemacht.', 1458443788),
(148, 11, '[20-03-2016 04:56:30]: JConis ist gestorben.', 1458446189),
(149, 21, '[20-03-2016 11:23:02]: [90x]Egor99 hat ein Auto gekauft ( Berkley\'s RC Van )', 1458469381),
(150, 11, '[22-03-2016 22:31:09]: g3rry ist gestorben.', 1458682268),
(151, 5, '[22-03-2016 22:43:21]: g3rry schreit: !!!', 1458683000),
(152, 12, '[22-03-2016 23:11:14]: JConis hat JConis mit Waffe 51 an Part 3 getroffen, Schaden: 1', 1458684673),
(153, 2, '[22-03-2016 23:20:01]: g3rry hat JConis zu sich teleportiert.', 1458685200),
(154, 2, '[22-03-2016 23:21:07]: g3rry hat den Slot 1 von g3rry zu sich geportet.', 1458685266),
(155, 14, '[22-03-2016 23:23:04]: Fahrzeug von g3rry ( 1 ) wurde zerstoert. | Modell: 411 |', 1458685383),
(156, 12, '[22-03-2016 23:23:04]: g3rry hat g3rry mit Waffe 51 an Part 3 getroffen, Schaden: 1', 1458685383),
(157, 12, '[22-03-2016 23:23:04]: g3rry hat JConis mit Waffe 51 an Part 3 getroffen, Schaden: 1', 1458685383),
(158, 12, '[22-03-2016 23:23:04]: g3rry hat g3rry mit Waffe 51 an Part 3 getroffen, Schaden: 1', 1458685383),
(159, 12, '[22-03-2016 23:23:09]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458685388),
(160, 12, '[22-03-2016 23:23:09]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458685388),
(161, 12, '[22-03-2016 23:23:09]: JConis hat g3rry mit Waffe 0 an Part 3 getroffen, Schaden: 5', 1458685388),
(162, 11, '[22-03-2016 23:25:16]: JConis ist gestorben.', 1458685515),
(163, 11, '[23-03-2016 00:13:44]: JConis ist gestorben.', 1458688423),
(164, 11, '[23-03-2016 00:54:35]: JConis ist gestorben.', 1458690874),
(165, 11, '[23-03-2016 01:35:26]: JConis ist gestorben.', 1458693325),
(166, 11, '[23-03-2016 02:16:17]: JConis ist gestorben.', 1458695776),
(167, 5, '[09-04-2016 00:26:57]: g3rry sagt: wd', 1460154416),
(168, 11, '[09-04-2016 01:49:13]: g3rry ist gestorben.', 1460159352),
(169, 5, '[09-04-2016 02:06:40]: g3rry sagt: wd', 1460160399),
(170, 12, '[09-04-2016 03:04:52]: g3rry hat g3rry mit Waffe 51 an Part 3 getroffen, Schaden: 1', 1460163891),
(171, 2, '[29-05-2016 20:37:31]: g3rry hat das Passwort von JCoins geÃ¤ndert!', 1464547050),
(172, 2, '[29-05-2016 20:38:08]: g3rry hat JConis in Frezzer umbenannt.', 1464547087),
(173, 2, '[29-05-2016 20:41:11]: g3rry hat Frezzer in lol12 umbenannt.', 1464547270),
(174, 2, '[29-05-2016 20:41:26]: g3rry hat lol12 in FreZzer umbenannt.', 1464547285),
(175, 2, '[29-05-2016 20:41:36]: g3rry hat das Passwort von FreZzer geÃ¤ndert!', 1464547295),
(176, 21, '[29-05-2016 20:51:42]: Blvck-F16 hat ein Auto gekauft ( Tampa )', 1464547901),
(177, 2, '[26-06-2016 18:45:21]: g3rry hat g3rry zum Polizeichief ernannt!', 1466959520),
(178, 5, '[08-07-2016 13:19:32]: g3rry schreit: !!!', 1467976771),
(179, 5, '[14-08-2016 18:40:03]: g3rry sagt: lo', 1471192802),
(180, 5, '[14-08-2016 18:43:27]: g3rry sagt: l', 1471193006),
(181, 5, '[14-08-2016 18:47:17]: g3rry sagt: e', 1471193236),
(182, 11, '[14-08-2016 23:11:05]: g3rry ist gestorben.', 1471209064),
(183, 11, '[15-08-2016 03:33:59]: g3rry ist gestorben.', 1471224838);

-- --------------------------------------------------------

--
-- Table structure for table `lotto`
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
-- Table structure for table `object`
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
-- Table structure for table `packages`
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

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`UID`, `Paket1`, `Paket2`, `Paket3`, `Paket4`, `Paket5`, `Paket6`, `Paket7`, `Paket8`, `Paket9`, `Paket10`, `Paket11`, `Paket12`, `Paket13`, `Paket14`, `Paket15`, `Paket16`, `Paket17`, `Paket18`, `Paket19`, `Paket20`, `Paket21`, `Paket22`, `Paket23`, `Paket24`, `Paket25`) VALUES
(1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `UID` int(4) NOT NULL,
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
  `Erlaubnis` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`UID`, `Name`, `Serial`, `IP`, `Last_login`, `Geburtsdatum_Tag`, `Geburtsdatum_Monat`, `Geburtsdatum_Jahr`, `Passwort`, `Geschlecht`, `RegisterDatum`, `LastLogin`, `Erlaubnis`) VALUES
(1, 'g3rry', '01D9C87D492ED103CC7ADA9107CB05F2', '88.69.121.103', '15.8.2016, 1:41', 9, 3, 1999, 'e51510c5afdb083d22c8692efff3c8cd9d030c29f34cd9678ec79f9bfee0b9fb952f27fcfa000d154f2517b96ed4fa6034693a1055f567863c66ea91eec3aba1', 0, '20.3.2016, 3:39', 61296581, '1'),
(6, 'Frezzer', '7676C1AE366E0DD577AB882B00A22EA1', '95.88.37.214', '29.5.2016, 19:52', 21, 6, 1999, 'bcd2212a893321c2e53dce2953238de4e134c7b8410facea7cf12a288ebdca0ba1062159beed461797902bcfcdbc675b1b4c1f37a70a31390c9888fa927070f5', 0, '29.5.2016, 19:52', 61185352, '0'),
(4, 'Blvck-F16', '89B895E5C1AD4C2D214FB92753062434', '46.5.18.66', '1.6.2016, 18:44', 7, 6, 1998, 'eb0579e31e993ae3535f96dee8b916a6588949762917d7187f1b97e9d00641b77d6fcd4b050da884f975dc060c0a34beb69789bcf8395914cf0e85ee557a73d2', 0, '29.5.2016, 20:36', 61189604, '0');

-- --------------------------------------------------------

--
-- Table structure for table `playingtime`
--

CREATE TABLE `playingtime` (
  `UID` int(4) NOT NULL,
  `Time` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playingtime`
--

INSERT INTO `playingtime` (`UID`, `Time`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pm`
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
-- Table structure for table `preRegister`
--

CREATE TABLE `preRegister` (
  `Name` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `preRegister`
--

INSERT INTO `preRegister` (`Name`) VALUES
('loliger');

-- --------------------------------------------------------

--
-- Table structure for table `prestige`
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
-- Dumping data for table `prestige`
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
-- Table structure for table `racing`
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
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `UID` int(4) NOT NULL,
  `fishing` int(5) NOT NULL DEFAULT '0',
  `repair` int(5) NOT NULL DEFAULT '0',
  `gamble` int(10) NOT NULL DEFAULT '0',
  `cook` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`UID`, `fishing`, `repair`, `gamble`, `cook`) VALUES
(1, 0, 0, 0, 0),
(6, 0, 0, 0, 0),
(4, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `state_files`
--

CREATE TABLE `state_files` (
  `UID` int(4) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `editor` varchar(50) NOT NULL,
  `faction` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
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

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`UID`, `AnzahlEingeknastet`, `AnzahlImKnast`, `AnzahlGangwars`, `AnzahlGangwarsGewonnen`, `AnzahlGangwarsVerloren`, `Kills`, `Tode`, `GangwarKills`, `GangwarTode`, `HaeuserGekauft`, `FahrzeugeGekauft`, `FahrzeugeVerkauft`, `DamageGemacht`, `DamageBekommen`, `GangwarDamageGemacht`, `GangwarDamageBekommen`, `FraktionenBetreten`, `FraktionenVerlassen`, `Eingeloggt`, `MontagSpielzeit`, `DienstagSpielzeit`, `MittwochSpielzeit`, `DonnerstagSpielzeit`, `FreitagSpielzeit`, `SamstagSpielzeit`, `SonntagSpielzeit`, `LetzteWocheSpielzeit`) VALUES
(1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 100, 0, 0, 0, 0, 40, 24449352, 25, 9, 0, 0, 0, 21, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 4, 25, 0, 0, 1, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticketsystem`
--

CREATE TABLE `ticketsystem` (
  `id` int(11) NOT NULL,
  `UID` int(4) NOT NULL,
  `reason` text NOT NULL,
  `text` text NOT NULL,
  `date` text NOT NULL,
  `category` text NOT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_answeres`
--

CREATE TABLE `ticket_answeres` (
  `id` int(11) NOT NULL,
  `UID` int(4) NOT NULL,
  `adminUID` int(4) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `UID` int(4) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `alkatime` int(255) NOT NULL,
  `ID` int(11) NOT NULL,
  `Geld` double NOT NULL DEFAULT '350',
  `Spawnpos_X` varchar(50) NOT NULL DEFAULT '-2458.288085',
  `Spawnpos_Y` varchar(50) NOT NULL DEFAULT '774.354492',
  `Spawnpos_Z` varchar(50) NOT NULL DEFAULT '35.171875',
  `Spawnrot_X` varchar(50) NOT NULL DEFAULT '52.94',
  `SpawnInterior` double NOT NULL DEFAULT '0',
  `SpawnDimension` double NOT NULL DEFAULT '0',
  `Fraktion` double NOT NULL DEFAULT '0',
  `FraktionsRang` double NOT NULL DEFAULT '0',
  `Adminlevel` int(10) NOT NULL DEFAULT '0',
  `Spielzeit` double NOT NULL DEFAULT '0',
  `Hitglocke` int(1) NOT NULL DEFAULT '0',
  `CurrentCars` double NOT NULL DEFAULT '0',
  `MaximumCars` double NOT NULL DEFAULT '5',
  `Knastzeit` double NOT NULL DEFAULT '0',
  `Prison` double NOT NULL DEFAULT '0',
  `Kaution` int(4) NOT NULL DEFAULT '0',
  `Himmelszeit` double NOT NULL DEFAULT '0',
  `Hausschluessel` int(50) NOT NULL DEFAULT '0',
  `Bizschluessel` int(50) NOT NULL DEFAULT '0',
  `Bankgeld` double NOT NULL DEFAULT '35000',
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
  `Coins` int(11) NOT NULL DEFAULT '0',
  `Guthaben` int(255) NOT NULL DEFAULT '0',
  `XP` int(255) NOT NULL,
  `Level` int(255) NOT NULL,
  `SkillPoints` int(255) NOT NULL,
  `PremiumPaket` int(255) NOT NULL,
  `PremiumData` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`UID`, `Name`, `alkatime`, `ID`, `Geld`, `Spawnpos_X`, `Spawnpos_Y`, `Spawnpos_Z`, `Spawnrot_X`, `SpawnInterior`, `SpawnDimension`, `Fraktion`, `FraktionsRang`, `Adminlevel`, `Spielzeit`, `Hitglocke`, `CurrentCars`, `MaximumCars`, `Knastzeit`, `Prison`, `Kaution`, `Himmelszeit`, `Hausschluessel`, `Bizschluessel`, `Bankgeld`, `Drogen`, `Skinid`, `Autofuehrerschein`, `Motorradtfuehrerschein`, `LKWfuehrerschein`, `Helikopterfuehrerschein`, `FlugscheinKlasseA`, `FlugscheinKlasseB`, `Motorbootschein`, `Segelschein`, `Angelschein`, `Wanteds`, `StvoPunkte`, `Waffenschein`, `Perso`, `Boni`, `PdayIncome`, `Telefonnr`, `Warns`, `Gunbox1`, `Gunbox2`, `Gunbox3`, `Job`, `Jobtime`, `Club`, `FavRadio`, `Bonuspunkte`, `Truckerskill`, `AirportLevel`, `farmerLVL`, `bauarbeiterLVL`, `Contract`, `ArmyPermissions`, `SocialState`, `fversicherung`, `LastFactionChange`, `StreetCleanPoints`, `Handy`, `Rausch`, `Sucht`, `pred`, `Buslevel`, `Coins`, `Guthaben`, `XP`, `Level`, `SkillPoints`, `PremiumPaket`, `PremiumData`) VALUES
(1, 'g3rry', 0, 0, 8453131, '-1964.430000', '116.012800', '28', '0', 0, 0, 1, 5, 9, 2261, 0, 0, 5, 0, 0, 0, 0, 0, 0, 49336, 0, 239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3868274, 0, '0|0', '0|0', '0|0', 'none', 0, 'none', '0', 0, '1', '1', 0, 0, 0, '|0|0|0|0|0|0|0|0|0|0|', 'FlÃ¼chtling', 0, '26.6.2016, 18:45', 0, '|1|0|', '0|0|0|', '0|0|0|', 0, 0, 0, 8, 0, 28, 8, 0, '0'),
(6, 'Frezzer', 0, 0, 15000, '-1965.530000', '116.012800', '28', '0', 0, 0, 0, 0, 0, 7, 0, 0, 5, 0, 0, 0, 0, 0, 0, 35000, 0, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 6937830, 0, '0|0', '0|0', '0|0', 'none', 0, 'none', '0', 0, '1', '1', 0, 0, 0, '|0|0|0|0|0|0|0|0|0|0|', 'FlÃ¼chtling', 0, '-', 0, '|1|0|', '0|0|0|', '0|0|0|', 0, 0, 0, 1, 0, 0, 0, 4, '87-2017'),
(4, 'Blvck-F16', 0, 0, 11749, '2230.523682', '-1107.616089', '1050.531982', '0', 5, 0, 0, 0, 0, 26, 0, 1, 5, 0, 0, 0, 0, 0, 0, 35000, 0, 46, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1000, 0, 549882, 0, '0|0', '0|0', '0|0', 'streetclean', 0, 'none', '0', 20, '1', '1', 0, 0, 0, '|0|0|0|0|0|0|0|0|0|0|', 'FlÃ¼chtling', 0, '-', 0, '|1|0|', '0|0|0|', '0|0|0|', 0, 0, 0, 2, 0, 3, 1, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
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

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`UID`, `id`, `Kofferraum`, `Typ`, `Tuning`, `Spawnpos_X`, `Spawnpos_Y`, `Spawnpos_Z`, `Spawnrot_X`, `Spawnrot_Y`, `Spawnrot_Z`, `Farbe`, `Paintjob`, `Benzin`, `Slot`, `Special`, `Lights`, `Distance`, `STuning`, `AuktionsID`, `GangVehicle`, `rc`, `spezcolor`, `Sportmotor`, `Bremse`, `Antrieb`, `plate`) VALUES
(4, 3, '0|0|0|0|', 549, '|1012|0|1001|1017|0|0|0|0|1010|1087|0|0|1081|1020|0|0|0|', '-2487.521484', '376.141602', '34.800419', '359.972534', '0.071411', '54.607544', '|83|36|0|0|', '3', '86.346666', 1, 0, '|84|173|254|', 0, '0|0|0|1|0|0|', 0, 0, 0, '|0|0|0|0|0|0|', 0, '0', 'rwd', 'F-16'),
(3, 2, '0|0|0|0|', 459, '|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|', '-2265.100000', '129.120000', '35.310000', '0', '0', '90', '|57|57|0|0|', '3', '100', 1, 0, '|255|255|255|', 0, '0|0|0|0|0|0|', 0, 0, 0, '|0|0|0|0|0|0|', 0, '0', 'rwd', '');

-- --------------------------------------------------------

--
-- Table structure for table `vip_gutscheine`
--

CREATE TABLE `vip_gutscheine` (
  `ID` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `activ` int(11) NOT NULL DEFAULT '1',
  `activatedFrom` varchar(255) NOT NULL DEFAULT 'none',
  `vipTime` int(255) NOT NULL DEFAULT '0' COMMENT 'Wie viel VIP Zeit?',
  `vipCoins` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warns`
--

CREATE TABLE `warns` (
  `UID` int(4) NOT NULL,
  `id` int(11) NOT NULL,
  `adminUID` int(4) NOT NULL,
  `reason` text NOT NULL,
  `extends` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `extends_o` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warps`
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
-- Table structure for table `weed`
--

CREATE TABLE `weed` (
  `id` int(11) NOT NULL,
  `x` int(20) NOT NULL,
  `y` int(20) NOT NULL,
  `z` int(20) NOT NULL,
  `time` int(50) NOT NULL,
  `UID` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `serial` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `whitelist`
--

INSERT INTO `whitelist` (`serial`) VALUES
('01D9C87D492ED103CC7ADA9107CB05F2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievments`
--
ALTER TABLE `achievments`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `adminPermissons`
--
ALTER TABLE `adminPermissons`
  ADD UNIQUE KEY `permName` (`permName`),
  ADD KEY `permLevel` (`permLevel`);

--
-- Indexes for table `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `Eintragsdatum` (`Eintragsdatum`),
  ADD KEY `IP` (`IP`),
  ADD KEY `Serial` (`Serial`),
  ADD KEY `STime` (`STime`);

--
-- Indexes for table `biz`
--
ALTER TABLE `biz`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Biz` (`Biz`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `bonustable`
--
ALTER TABLE `bonustable`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `carhouses_icons`
--
ALTER TABLE `carhouses_icons`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `carhouses_vehicles`
--
ALTER TABLE `carhouses_vehicles`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `cars_ai`
--
ALTER TABLE `cars_ai`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `cars_peds_ai`
--
ALTER TABLE `cars_peds_ai`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `changelog`
--
ALTER TABLE `changelog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cp_bank`
--
ALTER TABLE `cp_bank`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cp_ticket`
--
ALTER TABLE `cp_ticket`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cp_ticket_ans`
--
ALTER TABLE `cp_ticket_ans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD KEY `Empfaenger` (`EmpfaengerUID`);

--
-- Indexes for table `forum_accounts`
--
ALTER TABLE `forum_accounts`
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `fraktionen`
--
ALTER TABLE `fraktionen`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nummer` (`ID`);

--
-- Indexes for table `gang_basic`
--
ALTER TABLE `gang_basic`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gang_members`
--
ALTER TABLE `gang_members`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `gang_vehicles`
--
ALTER TABLE `gang_vehicles`
  ADD PRIMARY KEY (`GangID`),
  ADD UNIQUE KEY `GangID` (`GangID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `Besitzer` (`UID`);

--
-- Indexes for table `idcounter`
--
ALTER TABLE `idcounter`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `inventar`
--
ALTER TABLE `inventar`
  ADD UNIQUE KEY `UID` (`UID`),
  ADD KEY `UID_2` (`UID`);

--
-- Indexes for table `loggedin`
--
ALTER TABLE `loggedin`
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `logout`
--
ALTER TABLE `logout`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lotto`
--
ALTER TABLE `lotto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `id` (`UID`);

--
-- Indexes for table `playingtime`
--
ALTER TABLE `playingtime`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `pm`
--
ALTER TABLE `pm`
  ADD PRIMARY KEY (`ids`),
  ADD KEY `Empfaenger` (`EmpfaengerUID`);

--
-- Indexes for table `preRegister`
--
ALTER TABLE `preRegister`
  ADD UNIQUE KEY `Name_2` (`Name`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `prestige`
--
ALTER TABLE `prestige`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `racing`
--
ALTER TABLE `racing`
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`),
  ADD KEY `id` (`UID`);

--
-- Indexes for table `state_files`
--
ALTER TABLE `state_files`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `ticketsystem`
--
ALTER TABLE `ticketsystem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ticket_answeres`
--
ALTER TABLE `ticket_answeres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vip_gutscheine`
--
ALTER TABLE `vip_gutscheine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `warns`
--
ALTER TABLE `warns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warps`
--
ALTER TABLE `warps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weed`
--
ALTER TABLE `weed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `whitelist`
--
ALTER TABLE `whitelist`
  ADD UNIQUE KEY `serial` (`serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biz`
--
ALTER TABLE `biz`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=667;
--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `carhouses_vehicles`
--
ALTER TABLE `carhouses_vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `changelog`
--
ALTER TABLE `changelog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cp_bank`
--
ALTER TABLE `cp_bank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_ticket`
--
ALTER TABLE `cp_ticket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_ticket_ans`
--
ALTER TABLE `cp_ticket_ans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gangs`
--
ALTER TABLE `gangs`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `gang_basic`
--
ALTER TABLE `gang_basic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `lotto`
--
ALTER TABLE `lotto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pm`
--
ALTER TABLE `pm`
  MODIFY `ids` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticketsystem`
--
ALTER TABLE `ticketsystem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket_answeres`
--
ALTER TABLE `ticket_answeres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vip_gutscheine`
--
ALTER TABLE `vip_gutscheine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warns`
--
ALTER TABLE `warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `warps`
--
ALTER TABLE `warps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `weed`
--
ALTER TABLE `weed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
