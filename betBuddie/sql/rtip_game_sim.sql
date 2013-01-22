--
-- INSTRUCTIONS:
--
-- 1) Create a database named XXX and with password YYY
-- 2) Go to ../php/global_vars.php and change the names of the database connect string, username, and password accordingly
-- 2) Run this sql file to create and populate the tables in a SQL database
-- 3) deploy the rest of the application
--

-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2013 at 09:55 PM
-- Server version: 5.5.23
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rtip_game_sim`
--

-- --------------------------------------------------------

--
-- Table structure for table `HStats`
--

DROP TABLE IF EXISTS `HStats`;
CREATE TABLE IF NOT EXISTS `HStats` (
  `HorseName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HorseID` int(11) NOT NULL AUTO_INCREMENT,
  `Starts` int(11) NOT NULL,
  `FirstPlace` int(11) NOT NULL,
  `SecondPlace` int(11) NOT NULL,
  `ThirdPlace` int(11) NOT NULL,
  `WinPercent` double NOT NULL,
  `ITMPercent` double NOT NULL,
  `PastPerf` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`HorseID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `HStats`
--

INSERT INTO `HStats` (`HorseName`, `HorseID`, `Starts`, `FirstPlace`, `SecondPlace`, `ThirdPlace`, `WinPercent`, `ITMPercent`, `PastPerf`) VALUES
('Pedro Del Valle', 1, 4, 0, 0, 1, 0, 25, '<a class="click" href="#" onclick="popUp(''pastPerformances/pedroDelValle.html'');">get</a>'),
('Indiana Moon', 2, 12, 0, 2, 1, 0, 25, '<a class="click" href="#" onclick="popUp(''pastPerformances/indianaMoon.html'');">get</a>'),
('Night Seeker', 3, 13, 0, 5, 2, 0, 54, '<a class="click" href="#" onclick="popUp(''pastPerformances/nightSeeker.html'');">get</a>'),
('Seal the Deal', 4, 8, 0, 1, 3, 0, 50, '<a class="click" href="#" onclick="popUp(''pastPerformances/sealTheDeal.html'');">get</a>'),
('Pylorus', 5, 2, 0, 0, 0, 0, 0, '<a class="click" href="#" onclick="popUp(''pastPerformances/noPerformance.html'');">get</a>'),
('Yes I''m Awesome', 6, 3, 0, 2, 1, 0, 100, '<a class="click" href="#" onclick="popUp(''pastPerformances/noPerformance.html'');">get</a>'),
('Maid of Dishonor', 7, 4, 0, 2, 1, 0, 75, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/maidOfDishonor.html'');"></a>'),
('Gitanilla', 8, 6, 0, 1, 1, 0, 33, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/gitanilla.html'');"></a>'),
('Avie Atress', 9, 26, 0, 2, 3, 0, 26, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/avieAtress.html'');"></a>'),
('A True Imperialism', 10, 10, 0, 4, 1, 0, 50, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/aTrueImperialism.html'');"></a>'),
('Inspeightofthegold', 11, 5, 0, 2, 1, 0, 60, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/inspeightofthegold.html'');"></a>'),
('Queen''s Corredor', 12, 4, 0, 1, 0, 0, 25, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/queensCorredor.html'');"></a>'),
('Portena', 13, 1, 0, 0, 0, 0, 0, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/Portena.html'');"></a>'),
('Filled With Wonder ', 14, 30, 7, 5, 4, 23, 53, '<a class="click" href="#" onclick="popUp(''pastPerformances/filledWithWonder.html'');">get</a>'),
('Homeboykris ', 15, 55, 15, 10, 10, 27, 64, '<a class="click" href="#" onclick="popUp(''pastPerformances/homeboykris.html'');">get</a>'),
('Head Heart Hoof ', 16, 30, 6, 7, 2, 20, 27, '<a class="click" href="#" onclick="popUp(''pastPerformances/headHeartHoof.html'');">get</a>'),
('The Elevator ', 17, 23, 4, 6, 5, 17, 65, '<a class="click" href="#" onclick="popUp(''pastPerformances/theElevator.html'');">get</a>'),
('Backwater Blues ', 18, 20, 5, 3, 3, 25, 55, '<a class="click" href="#" onclick="popUp(''pastPerformances/backwaterBlues.html'');">get</a>'),
('Debit Card  ', 19, 46, 15, 7, 2, 34, 52, '<a class="click" href="#" onclick="popUp(''pastPerformances/debitCard.html'');">get</a>'),
('Regal Revenge ', 20, 15, 4, 3, 1, 27, 53, '<a class="click" href="#" onclick="popUp(''pastPerformances/regalRevenge.html'');">get</a>'),
('Livonzin', 30, 3, 2, 0, 0, 67, 67, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/livonzin.html'');"></a>'),
('Nevada Kid', 33, 6, 1, 1, 0, 17, 33, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/nevadaKid.html'');"></a>'),
('Rare Courage', 31, 10, 1, 2, 3, 10, 60, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/rareCourage.html'');"></a>'),
('Five Shadwell', 26, 12, 1, 3, 0, 8, 33, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/fiveShadewell.html'');"></a>'),
('Downhill Dale', 25, 11, 1, 0, 4, 9, 45, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/downhillDale.html'');"></a>'),
('Crow Bar', 28, 26, 1, 2, 0, 4, 12, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/crowBar.html'');"></a>'),
('El Pichon', 27, 45, 1, 3, 8, 2, 27, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/elPichon.html'');"></a>'),
('Isolation Road', 21, 14, 3, 2, 0, 21, 36, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/isolationRoad.html'');"></a>'),
('My Friend Dr Joe', 32, 5, 1, 0, 2, 20, 60, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/myFriendDrJoe.html'');"></a>'),
('Dubonnet Red', 22, 14, 2, 5, 2, 14, 64, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/dubonnetRed.html'');"></a>'),
('Jamie''s Valentine', 29, 7, 1, 1, 1, 14, 43, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/jamiesValentine.html'');"></a>'),
('Surprisedtoseeme', 24, 11, 1, 1, 3, 9, 45, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/Surprisedtoseeme.html'');"></a>'),
('Flying Forward', 23, 17, 1, 0, 2, 6, 18, '<a class="click" href="#" onclick="popUp(''/racing-game/pages/pastPerformances/flyingForward.html'');"></a>');

-- --------------------------------------------------------

--
-- Table structure for table `JStats`
--

DROP TABLE IF EXISTS `JStats`;
CREATE TABLE IF NOT EXISTS `JStats` (
  `JockeyName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `JockeyID` int(11) NOT NULL AUTO_INCREMENT,
  `Starts` int(11) NOT NULL,
  `FirstPlace` int(11) NOT NULL,
  `SecondPlace` int(11) NOT NULL,
  `ThirdPlace` int(11) NOT NULL,
  `WinPercent` double NOT NULL,
  PRIMARY KEY (`JockeyID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `JStats`
--

INSERT INTO `JStats` (`JockeyName`, `JockeyID`, `Starts`, `FirstPlace`, `SecondPlace`, `ThirdPlace`, `WinPercent`) VALUES
('Daniel Centeno', 1, 350, 74, 66, 45, 21),
('Luis Garcia', 2, 111, 18, 21, 9, 16),
('Yomar Ortiz', 3, 332, 58, 49, 57, 17),
('Ricardo Santana Jr.', 7, 418, 88, 63, 65, 21),
('Joe Rocco Jr.', 4, 221, 43, 36, 34, 19),
('Alex Cintron', 5, 403, 80, 66, 77, 20),
('Jose Caraballo', 6, 280, 66, 48, 37, 24),
('Juan Molina Jr.', 8, 83, 4, 9, 8, 5),
('Brian Pedroza', 9, 183, 10, 26, 27, 5),
('Martin Solis', 10, 95, 4, 6, 7, 4),
('Julio Mera ', 11, 3, 0, 0, 0, 0),
('Yamil Rosario ', 12, 166, 15, 9, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RaceInstance`
--

DROP TABLE IF EXISTS `RaceInstance`;
CREATE TABLE IF NOT EXISTS `RaceInstance` (
  `JockeyName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HorseName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `RaceInstanceID` int(11) NOT NULL AUTO_INCREMENT,
  `Won` int(11) NOT NULL,
  `Time` int(11) NOT NULL,
  `HorseNumber` int(11) NOT NULL,
  `JockeyID` int(11) NOT NULL,
  `HorseID` int(11) NOT NULL,
  `RaceID` int(11) NOT NULL,
  `Date` int(11) NOT NULL,
  `FinishCall` int(11) NOT NULL,
  `stretchcall` int(11) NOT NULL,
  `2call` int(11) NOT NULL,
  `1call` int(11) NOT NULL,
  `Odds` int(11) NOT NULL,
  `Silks` text COLLATE utf8_unicode_ci NOT NULL,
  `Trainer` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Owner` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `winPayoff` float NOT NULL,
  `placePayoff` float NOT NULL,
  `showPayoff` float NOT NULL,
  PRIMARY KEY (`RaceInstanceID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=71 ;

--
-- Dumping data for table `RaceInstance`
--

INSERT INTO `RaceInstance` (`JockeyName`, `HorseName`, `RaceInstanceID`, `Won`, `Time`, `HorseNumber`, `JockeyID`, `HorseID`, `RaceID`, `Date`, `FinishCall`, `stretchcall`, `2call`, `1call`, `Odds`, `Silks`, `Trainer`, `Owner`, `winPayoff`, `placePayoff`, `showPayoff`) VALUES
('Daniel Centeno', 'Pedro Del Valle', 21, 0, 111, 1, 1, 1, 123, 20120915, 6, 6, 6, 5, 6, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/1.png" />', 'Nicholas Zito', 'Joseph F. Moss', 0, 0, 0),
('Luis Garcia', 'Indiana Moon', 22, 0, 111, 2, 2, 2, 123, 20120915, 4, 4, 4, 3, 22, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/2.png" />', 'Kevin Boniface', 'Eric Y. Long', 0, 0, 0),
('Yomar Ortiz', 'Night Seeker', 23, 0, 111, 3, 3, 3, 123, 20120915, 2, 2, 3, 4, 4, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/3.png" />', 'Steve Hobby', 'Cresran LLC and Joe W. Colley', 0, 3.2, 2.1),
('Joe Rocco Jr.', 'Seal the Deal', 24, 0, 111, 4, 4, 4, 123, 20120915, 3, 5, 5, 6, 5, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/4.png" />', 'Michael Trombetta', 'Robert S. Evans', 0, 0, 3.2),
('Alex Cintron', 'Pylorus', 25, 0, 111, 5, 5, 5, 123, 20120915, 5, 3, 2, 1, 3, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/5.png" />', 'McLean Robertson', 'Joseph F. Novogratz', 0, 0, 0),
('Jose Caraballo', 'Yes Im Awesome', 26, 1, 111, 6, 6, 6, 123, 20120915, 1, 1, 1, 2, 1, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/6.png" />', 'Todd Pletcher', 'E. Paul Robsham Stables LLC', 4.8, 3, 2.2),
('Yomar Ortiz ', 'Filled With Wonder ', 27, 0, 0, 1, 3, 14, 124, 0, 6, 1, 1, 1, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/1.png" />', 'Shellaine Brown ', 'Larry E. Rabold ', 0, 0, 0),
('Jose Montano ', 'Homeboykris ', 28, 0, 0, 2, 0, 15, 124, 0, 2, 2, 2, 2, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/2.png" />', 'Julio Cartagena ', ' Brooklyn Farm and M and M Racing Stables LLC', 0, 4.1, 2.9),
('Joseph Rocco Jr. ', 'Head Heart Hoof ', 29, 0, 0, 3, 4, 16, 124, 0, 7, 3, 3, 3, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/3.png" />', 'Anthony Dutrow ', 'Dubb, Michael, Grant, Stuart and Aisquith, Gary', 0, 0, 0),
('Daniel Centeno ', 'The Elevator ', 30, 0, 0, 4, 1, 17, 124, 0, 3, 4, 4, 4, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/4.png" />', 'Dane Kobiskie ', 'PTK LLC ', 0, 0, 3.2),
('Ricardo Santana Jr ', 'Backwater Blues ', 31, 0, 0, 5, 7, 18, 124, 0, 4, 5, 5, 5, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/5.png" />', 'Diane Alvardo  ', 'Tommy G. Ligon ', 0, 0, 0),
('Alex Cintron ', 'Debit Card  ', 32, 0, 0, 6, 5, 19, 124, 0, 1, 6, 6, 6, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/6.png" />', 'Jeff Talley ', 'Texas Toyco LLC ', 3, 2.1, 2.1),
('Luis Garcia ', 'Regal Revenge ', 33, 0, 0, 7, 2, 20, 124, 0, 5, 7, 7, 7, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/7.png" />', 'Timothy Tullock Jr. ', 'Everest Stables  ', 0, 0, 0),
('Brian Pedroza', 'Five Shadwell', 34, 0, 0, 1, 9, 26, 222, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/1.png" />', 'James Connor III', 'James Connor III', 0, 0, 0),
('Martin Solis', 'El Pichon', 35, 0, 0, 2, 10, 27, 222, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/2.png" />', 'Jose Nunez', 'Susana Rangel', 0, 0, 0),
('Alex Cintron', 'Flying Forward', 56, 0, 0, 5, 5, 23, 333, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/5.png" />', 'Mclean Robertson', 'Barry Butzow', 0, 0, 0),
('Jose Carabello', 'Crow Bar', 44, 0, 0, 3, 6, 28, 222, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/3.png" />', 'Gretchen Mobberley', 'Gretchen Mobberley', 0, 0, 0),
('Joseph Rocco, Jr.', 'Isolation Road', 54, 0, 0, 3, 4, 21, 333, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/3.png" />', 'D. Peck', 'D. Scott Peck', 4.4, 2.8, 2.2),
('Ricardo Santana, Jr.', 'Downhill Dale', 43, 0, 0, 4, 7, 25, 222, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/4.png" />', 'Randy Nunley', 'Tom Coulter', 0, 0, 0),
('Daniel Centeno', 'Dubonnet Red', 55, 0, 0, 4, 1, 22, 333, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/4.png" />', 'Jamie Ness', 'Midwest Thoroughbreds, Inc.', 0, 0, 2.7),
('Yamil Rosario', 'Jamies Valentine', 53, 0, 0, 2, 12, 29, 333, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/2.png" />', 'Michael Waller', 'Michael J. Waller', 0, 0, 0),
('Alex Cintron', 'Livonzin', 48, 0, 0, 5, 5, 30, 222, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/5.png" />', 'Mclean Robertson', 'Jeff Larson', 3.8, 2.4, 2.1),
('Joseph Rocco, Jr.', 'Rare Courage', 49, 0, 0, 6, 4, 31, 222, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/6.png" />', 'Mclean Robertson', 'Hugh H. Robertson', 0, 0, 2.4),
('Ricardo Santana, Jr.', 'My Friend Dr Joe', 52, 0, 0, 1, 7, 32, 333, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/1.png" />', 'Juan Vazquez', 'Florence Patitucci', 0, 3.2, 2.8),
('Daniel Centeno', 'Nevada Kid', 51, 0, 0, 7, 1, 33, 222, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/7.png" />', 'Nicholas Zito', 'Hurricane Boys and Pell, Richa', 0, 3.4, 2.2),
('Brian Pedroza', 'Surprisedtoseeme', 57, 0, 0, 6, 9, 24, 333, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/6.png" />', 'Douglas Seyler', 'Shawn Murphy', 0, 0, 0),
('Daniel Centeno', 'Maid of Dishonor', 58, 1, 112, 1, 1, 7, 125, 20120915, 1, 1, 1, 1, 1, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/1.png" />', 'Andrew Simoff', 'Andrew L. Simoff', 4.4, 3.4, 2.1),
('Ricardo Santana Jr.', 'Gitanilla', 59, 0, 112, 2, 7, 8, 125, 20120915, 7, 7, 6, 5, 23, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/2.png" />', 'Rodolfo Romero', 'Rodolfo Romero', 0, 0, 0),
('Juan Molina Jr.', 'Avie Atress', 60, 0, 112, 3, 8, 9, 125, 20120915, 6, 6, 7, 7, 49, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/3.png" />', 'Maureen Stillwell', 'Maureen Stillwell', 0, 0, 0),
('Brian Pedroza', 'A True Imperialism', 61, 0, 112, 4, 9, 10, 125, 20120915, 2, 2, 3, 2, 6, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/4.png" />', 'Samuel Cronk', 'Janet Peterson', 0, 3.8, 2.4),
('Alex Cintron', 'Inspeightofthegold', 62, 0, 112, 5, 5, 11, 125, 20120915, 3, 3, 2, 3, 1, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/5.png" />', 'McLean Robertson', 'John and Iveta Kerber', 0, 0, 2.1),
('Yomar Ortiz', 'Queen''s Corredor', 63, 0, 112, 6, 3, 12, 125, 20120915, 4, 5, 5, 4, 13, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/6.png" />', 'Dennis Kendall Jr.', 'Westmoreland Stable', 0, 0, 0),
('Martin Solis', 'Portena', 64, 0, 112, 7, 10, 13, 125, 20120915, 5, 4, 4, 6, 38, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/7.png" />', 'Rodolfo Romero', 'Isaias Garcia', 0, 0, 0),
('Jose Caraballo', 'Tropical Deputy', 65, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/4.png" />', 'Heather Hollahan', 'Juan Arriagada', 0, 0, 0),
('Yamil Rosario ', 'Beansandtaters', 66, 0, 0, 5, 12, 200, 0, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/5.png" />', 'D Peck', 'D. Scott Peck', 0, 0, 0),
('Alex Cintron', 'Jango', 67, 0, 0, 6, 5, 300, 0, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/6.png" />', 'Peter Klesaris', 'Elsie Klesaris', 0, 0, 0),
('Brian Pedroza', 'Poppy Cat', 68, 0, 0, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/1.png" />', 'Samuel Cronk ', 'Janet Peterson', 0, 0, 0),
('Martin Solis', 'Mala Mala Cat ', 69, 0, 0, 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/2.png" />', 'Jose Nunez', '', 0, 0, 0),
('Julio Mera', 'Dubai''s Debut', 70, 0, 0, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, '<img width="45px" src="http://rtip.trendap.com/racing-game/img/silks/3.png" />', 'Edward Lotrugilo', 'Trigger Racing', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
CREATE TABLE IF NOT EXISTS `Users` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `salt` int(10) NOT NULL,
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Money` int(15) NOT NULL DEFAULT '250',
  `Level` int(11) NOT NULL DEFAULT '1',
  `Level_Section` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`username`, `salt`, `userID`, `hash`, `Money`, `Level`, `Level_Section`) VALUES
('b', 452537, 34, '5952e91416723aee4be3f82a338184855cb6f47e', 537, 2, 1),
('ogomez', 159746, 30, 'd2329845596a253a1df3e3bf0ff28de05abeeb27', 424, 2, 1),
('User1', 651826, 20, 'c22e699724709e3d78891998599cd7628c4ab1bc', 1592, 2, 1),
('testing123', 283964, 8, '08675753a8c0dfe30907900fa5d5003a11ab2270', 250, 1, 1),
('bff', 132843, 26, '7a7430996bda3c634077d9dd0f9762ceb5b4ea1b', 2371, 2, 1),
('test', 413078, 10, '0b2e3f15d7c52927034b67134324a2b295115e49', 250, 1, 1),
('wendydavis', 814328, 32, '0ad0f04252f4a523fb44912197c2696d6465b7a0', 254, 2, 1),
('dreed', 206753, 33, 'b9b57f0445dc3ffa4b26f172ae56c953e50132e1', 400, 2, 1),
('bddicken', 122190, 29, '87eeb3a0f135a8ffc657e803e9256ca3ad4a9134', 131856797, 2, 1),
('sam', 209696, 14, 'bb11684a8cb825eefdde1d7f64865bbcd056a1da', 58367452, 2, 1),
('markepower@gmail.com', 215832, 23, '64864749b3ca17143b2237ca5e2928938249d91f', 664, 2, 1),
('pinklady', 242556, 16, 'bc2483662fbb1a9e65f13cd4bc1ab477503e3e74', 316, 1, 1),
('jdoc22', 664307, 17, 'cb2c1075103edc76285b10a7d00ac75ba8b20486', 6228, 1, 1),
('djerk9@gmail.com', 447222, 24, 'a5000988a51747293b595c62c88d9cb36e545443', 150, 1, 1),
('asdf', 686161, 31, '96d72df9e438985384d232d82c61024698abcc69', 250, 1, 1),
('bddicken', 944844, 35, 'cc67e48f24d9e2a8618f99e4008a7fd55413e1cb', 131856797, 1, 1),
('csanchez', 111964, 36, '3a650ddb9e4ac8dee757abe0267e78f4db5c88df', 250, 1, 1),
('LosPonies', 309588, 37, '7418fc4574745c5dbe1c36e30a5901683679ac9b', 0, 2, 1),
('mrdillon5', 239517, 38, '92078a891192d9bda0c84307f5ce771801527048', 455, 1, 1),
('demo', 278286, 39, '872e930548618aa262d94b1c1cada6b41b4d615a', 49653, 2, 1),
('demo-2', 217605, 40, 'e1e05e27ff3128a5d8bf9583ae19ac612bc30697', 0, 1, 1),
('demo-3', 456017, 41, 'b51ce8b4df5d9111cc1ab3a86aab859bd954540d', 1090, 1, 1),
('Rockers Bombers', 564588, 42, 'd467d2ad0bf1866f80d9652a0c3dccd682dd563a', 36330, 2, 1),
('demo', 121440, 43, '79193d34465de9af05580fe0767182f707c044b0', 49653, 2, 1),
('bamafan', 869563, 44, 'bdb6649053b5bc6694f287bbe2ff3fc8bec3ad96', 375, 1, 1),
('bamafan', 689254, 45, '32c469f6fcf16e98997f8cbcc6cba2c3a024a528', 375, 1, 1),
('hello', 845759, 46, 'dc2de3bbbbf331eb07fde6522034297976357e8f', 0, 1, 1),
('rmhend', 385815, 47, '5a7bd6f54086d3eb4d6966ac4bab9ed12cc62aab', 175, 1, 1),
('kru2wuero', 316247, 48, '5104f9f1fd014c9ecbff2ed2da99a74076958bb8', 225, 1, 1),
('fred', 302940, 49, '40f0b4c63a4a34677d141fe0a467ebf4be988bc9', 250, 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


