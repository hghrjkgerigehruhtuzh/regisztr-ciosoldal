-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Dec 08. 10:18
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `adatbazist`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `regriszt`
--

CREATE TABLE `regriszt` (
  `id` int(11) NOT NULL,
  `telefonszam` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `datum` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `regriszt`
--

INSERT INTO `regriszt` (`id`, `telefonszam`, `email`, `password`, `datum`) VALUES
(1, 2147483647, 'ggg@gmail.com', '$2y$10$QhSAlLVu0F8nFuYmJ8PR..2Cb5uZgNCUb5jpcH/OUxUMTpAc8JGXa', '2015-02-13'),
(3, 2147483647, 'erik@gmail.com', '$2y$10$vtBGvh36BGJxQ2p5mWrweu25Uqb8vINHqKmcz3dhHhhXsiGxT0aZi', '2008-05-08'),
(4, 2147483647, 'bela@gmail.com', '$2y$10$DE7ztIFmvmFnwqCfalDKjOapZYHxIZqwWPvEmyPu8WSHKxVXcMah6', '2025-11-04'),
(5, 2147483647, 'bel@gmail.com', '$2y$10$CMf3vm2BiVSjIZNSzdmIVORjDn5jnTl/aK.GLL3SxvcN7u1Hfl5Mm', '2025-11-04'),
(6, 2147483647, 'bl@gmail.com', '$2y$10$ndrLC/M63votPNoBslhImORxjvRIhHUi6CGHvE.xLaZtOzR8jrTMO', '2025-11-04'),
(7, 2147483647, 'gazsi@gmail.com', '$2y$10$h/ssPS10RSrl3bh5iVSCOef/Gq73ojO3oXTZTV/WRZZ2wEmaIboPC', '2025-12-01'),
(8, 2147483647, 'patrik12@gmail.com', '$2y$10$6MiMKME/k8F2Z34WOA1O8Ol77Rub5E4veM6bbkmAfJtgz7ihyTxtm', '2017-02-17');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `regriszt`
--
ALTER TABLE `regriszt`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `regriszt`
--
ALTER TABLE `regriszt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
