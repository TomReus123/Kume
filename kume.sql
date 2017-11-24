-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 02 okt 2017 om 12:53
-- Serverversie: 5.7.14
-- PHP-versie: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

--
-- Database: `kume`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `description` longtext COLLATE utf8_general_mysql500_ci NOT NULL,
  `imageBig` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `imageSmall` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `imageSmall2` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `imageSmall3` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `imageSmall4` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `imageSmall5` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Gegevens worden geëxporteerd voor tabel `projects`
--

INSERT INTO `projects` (`id`, `author`, `title`, `description`, `imageBig`, `imageSmall`, `imageSmall2`, `imageSmall3`, `imageSmall4`, `imageSmall5`) VALUES
(1, 'Lucas Veerman', 'Webwinkel', 'Dit is een stuk tekst.', 'lucas1.png', '', '', '', '', ''),
(2, 'Tom Reus', 'Iets', 'Ook iets!', '', '', '', '', '', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
