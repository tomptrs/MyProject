-- phpMyAdmin SQL Dump
-- version 3.3.2
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Genereertijd: 08 Jun 2012 om 20:37
-- Serverversie: 5.1.45
-- PHP-Versie: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arduinoprj`
--
DROP DATABASE `arduinoprj`;
CREATE DATABASE `arduinoprj` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `arduinoprj`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `t_agent`
--
-- Gecreëerd: 06 Jun 2012 om 10:44
-- Laatst bijgewerkt: 06 Jun 2012 om 14:36
--

DROP TABLE IF EXISTS `t_agent`;
CREATE TABLE IF NOT EXISTS `t_agent` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Type_Id` int(11) NOT NULL,
  `Beschrijving` varchar(400) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `t_agent`
--

INSERT INTO `t_agent` (`Id`, `Name`, `Type_Id`, `Beschrijving`) VALUES
(1, 'Agent_Poc_1', 1, 'Device met dummy data - gebruikt in test fase'),
(2, 'POC_Device2', 1, 'Device om lijst devices te testen'),
(3, 'POC_Device3', 1, 'Device om lijst devices te testen'),
(5, 'b', 1, 'bbbb'),
(6, 'Tom', 1, 'Tom');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `t_agentproperties`
--
-- Gecreëerd: 08 Mei 2012 om 11:51
-- Laatst bijgewerkt: 06 Jun 2012 om 14:26
--

DROP TABLE IF EXISTS `t_agentproperties`;
CREATE TABLE IF NOT EXISTS `t_agentproperties` (
  `AgentType_Id` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  PRIMARY KEY (`AgentType_Id`,`PropertyId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `t_agentproperties`
--

INSERT INTO `t_agentproperties` (`AgentType_Id`, `PropertyId`) VALUES
(1, 0),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `t_agenttype`
--
-- Gecreëerd: 08 Mei 2012 om 11:50
-- Laatst bijgewerkt: 08 Mei 2012 om 19:43
--

DROP TABLE IF EXISTS `t_agenttype`;
CREATE TABLE IF NOT EXISTS `t_agenttype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Gegevens worden uitgevoerd voor tabel `t_agenttype`
--

INSERT INTO `t_agenttype` (`Id`, `Name`) VALUES
(1, 'POC_Type');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `t_alarmperproperty`
--
-- Gecreëerd: 06 Jun 2012 om 20:56
-- Laatst bijgewerkt: 06 Jun 2012 om 21:07
--

DROP TABLE IF EXISTS `t_alarmperproperty`;
CREATE TABLE IF NOT EXISTS `t_alarmperproperty` (
  `AlarmId` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `Triggered` varchar(100) NOT NULL,
  `AgentId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `t_alarmperproperty`
--

INSERT INTO `t_alarmperproperty` (`AlarmId`, `PropertyId`, `Triggered`, `AgentId`) VALUES
(1, 1, '', 0),
(123, 123, '2012-06-06 20:50:47', 0),
(888, 123, '2012-06-06 20:57:38', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `t_alarms`
--
-- Gecreëerd: 06 Jun 2012 om 20:47
-- Laatst bijgewerkt: 06 Jun 2012 om 20:47
--

DROP TABLE IF EXISTS `t_alarms`;
CREATE TABLE IF NOT EXISTS `t_alarms` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Condition` varchar(200) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `Conditie` varchar(20) NOT NULL,
  `WaardeConditie` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `t_alarms`
--

INSERT INTO `t_alarms` (`Id`, `Name`, `Condition`, `PropertyId`, `Conditie`, `WaardeConditie`) VALUES
(1, 'TemperatureAlarm', '>30', 2, '>', 30);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `t_monitoring`
--
-- Gecreëerd: 09 Mei 2012 om 09:52
-- Laatst bijgewerkt: 06 Jun 2012 om 20:59
--

DROP TABLE IF EXISTS `t_monitoring`;
CREATE TABLE IF NOT EXISTS `t_monitoring` (
  `AgentId` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `Value` varchar(20) NOT NULL,
  `When` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=411 ;

--
-- Gegevens worden uitgevoerd voor tabel `t_monitoring`
--

INSERT INTO `t_monitoring` (`AgentId`, `PropertyId`, `Value`, `When`, `Id`) VALUES
(1, 1, '20', '2012-05-09 09:52:28', 1),
(1, 1, '21', '2012-05-09 09:52:34', 2),
(1, 1, '20', '2012-05-09 09:52:45', 3),
(1, 1, '24', '2012-05-09 09:52:52', 4),
(1, 1, '25', '2012-05-09 09:53:02', 5),
(1, 1, '19', '2012-05-09 09:53:08', 6),
(1, 2, '400', '2012-05-09 10:09:13', 7),
(1, 2, '404', '2012-05-09 10:09:21', 8),
(1, 1, '29', '2012-05-09 21:23:46', 9),
(1, 1, '31', '2012-05-09 21:23:46', 10),
(1, 5, 'running', '2012-05-09 22:10:21', 11),
(1, 6, 'good', '2012-05-09 22:10:29', 12),
(1, 1, '60', '2012-05-10 10:14:57', 13),
(1, 1, '33', '2012-05-15 06:53:16', 14),
(1, 1, '33', '2012-05-15 06:53:59', 15),
(1, 1, '33', '2012-05-15 06:54:55', 16),
(1, 1, '33', '2012-05-15 06:55:21', 17),
(1, 1, '22', '2012-05-15 06:56:11', 18),
(1, 1, '25', '2012-05-15 06:56:33', 19),
(1, 1, '26', '2012-05-15 06:56:37', 20),
(1, 1, '11', '2012-06-06 20:58:01', 410),
(1, 1, '600', '2012-06-06 20:50:47', 408),
(1, 1, '432', '2012-06-06 20:57:38', 409);

--
-- Triggers `t_monitoring`
--
DROP TRIGGER IF EXISTS `after_t_monitoring_insert`;
DELIMITER //
CREATE TRIGGER `after_t_monitoring_insert` AFTER INSERT ON `t_monitoring`
 FOR EACH ROW begin
  
  declare c varchar(20);
  declare w int;

  DECLARE conditie CURSOR FOR 
  SELECT Conditie, WaardeConditie from t_alarms a, t_properties p where a.Id = p.Id; 
  -- Open the cursor 
  OPEN conditie; 
  -- Get order number 
  FETCH conditie INTO c,w; 
  
  if c = '>' then
    if NEW.Value > w then
      insert into t_alarmperproperty
      set AlarmId= '1', 
      PropertyId= NEW.PropertyId,
      AgentId = NEW.AgentId,
      Triggered=now();
    end if;
   end if;
   
  if c = '<' then
  if NEW.Value < w then
      insert into t_alarmperproperty
      set AlarmId= '1', 
      PropertyId= NEW.PropertyId,
      AgentId = NEW.AgentId,
      Triggered=now();
    end if;
   end if;

end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `t_properties`
--
-- Gecreëerd: 08 Mei 2012 om 11:50
-- Laatst bijgewerkt: 06 Jun 2012 om 14:26
--

DROP TABLE IF EXISTS `t_properties`;
CREATE TABLE IF NOT EXISTS `t_properties` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Gegevens worden uitgevoerd voor tabel `t_properties`
--

INSERT INTO `t_properties` (`Id`, `Name`) VALUES
(1, 'Distance'),
(2, 'Temperature'),
(4, 'Humidity'),
(5, 'Motor Status'),
(6, 'Cooling Status'),
(7, 'Motor Temperature');
