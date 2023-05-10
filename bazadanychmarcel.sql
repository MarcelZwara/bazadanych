-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Maj 2023, 15:01
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bazadanychmarcel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `filename` varchar(96) NOT NULL,
  `title` text NOT NULL,
  `authorId` int(11) NOT NULL,
  `removed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `post`
--

INSERT INTO `post` (`id`, `timestamp`, `filename`, `title`, `authorId`, `removed`) VALUES
(1, '0000-00-00', '2023-04-26 14:55:31', 'sraka', 1, 0),
(2, '0000-00-00', '2023-04-26 15:00:14', '', 1, 0),
(3, '0000-00-00', '2023-05-10 14:34:32', 'popi', 1, 0),
(4, '2023-05-10', 'img/3ca2bce26744bfbf40e6fdd707880703525443e2fcd16c11bed24884b7fb971e.webp', 'gowno', 1, 1),
(5, '2023-05-10', 'img/b18a602d7c397117f3467d3b5d44dc63a27b702a66cf81fabf83dec82e17aeea.webp', 'ewewewae', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'marcelzwara@o2.pl', '$argon2i$v=19$m=65536,t=4,p=1$QU9IZUVyNkJQTW0zbDBEbQ$Y4Dx8cwzcdmwZYv9LMkCiT0qxKTRo39OuRCvm532m0o'),
(2, 'marcelzwara@o2.pl', '$argon2i$v=19$m=65536,t=4,p=1$ODZ2d1oxN2pIMGguZTBtdg$FzeBR6nInudCx6lJFo00frvE5vT13Vt+pgvadJl03Cc'),
(3, 'marcelzwara@o2.pl', '$argon2i$v=19$m=65536,t=4,p=1$VW5pWFVDVTh2VGFON3NoRw$zgIt7GvTHqwtwVm7bRe/Ze1rL5YaUsn1t+/5dt8ej58');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `vote`
--

INSERT INTO `vote` (`id`, `post_id`, `score`, `user_id`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 2, -1, 1),
(5, 1, -1, 1),
(6, 2, -1, 1),
(7, 3, -1, 1),
(8, 3, -1, 1),
(9, 4, 1, 1),
(10, 4, -1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
