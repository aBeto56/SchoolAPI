-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 04. 11:34
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mark`
--

CREATE TABLE `mark` (
  `Id` int(36) NOT NULL,
  `MarkNumber` int(11) NOT NULL,
  `MarkText` varchar(10) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Description` varchar(36) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `CreatedTime` datetime NOT NULL,
  `UpdatedTime` datetime NOT NULL,
  `StudentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `student`
--

CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Age` int(11) NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `CreatedTime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `student`
--

INSERT INTO `student` (`Id`, `Name`, `Age`, `Email`, `CreatedTime`) VALUES
(1, 'Ram Sabey', 12, 'rsabey0@fc2.com', 2024),
(2, 'Lesley Malt', 11, 'lmalt1@webeden.co.uk', 2024),
(3, 'Ganny Trodler', 11, 'gtrodler2@taobao.com', 2024),
(4, 'Ryann Deadman', 14, 'rdeadman3@newsvine.com', 2024),
(5, 'Audrie Gagg', 19, 'agagg4@addtoany.com', 2024),
(6, 'Atlanta Paliser', 19, 'apaliser5@netlog.com', 2024),
(7, 'Hildy Broke', 16, 'hbroke6@cisco.com', 2024),
(8, 'Chas Fothergill', 15, 'cfothergill7@facebook.com', 2024),
(9, 'Juliana Lafee', 17, 'jlafee8@msu.edu', 2024),
(10, 'Ricardo Riddoch', 18, 'rriddoch9@prweb.com', 2024),
(11, 'Bondy Cockshott', 12, 'bcockshotta@cnn.com', 2024),
(12, 'Derron Berry', 19, 'dberryb@cnn.com', 2024),
(13, 'Martin Eggleston', 14, 'megglestonc@histats.com', 2024),
(14, 'Wilhelm Grebner', 17, 'wgrebnerd@merriam-webster.com', 2023),
(15, 'Martita Trippack', 13, 'mtrippacke@google.ru', 2024),
(16, 'Consolata Copcott', 17, 'ccopcottf@quantcast.com', 2024),
(17, 'Hy Prin', 11, 'hpring@aboutads.info', 2024),
(18, 'Neel Beaument', 16, 'nbeaumenth@histats.com', 2023),
(19, 'Mallory Pettendrich', 10, 'mpettendrichi@salon.com', 2024),
(20, 'Verna Arnoldi', 19, 'varnoldij@utexas.edu', 2024),
(21, 'Samaria Portt', 15, 'sporttk@phpbb.com', 2024),
(22, 'Sutherland Denzey', 12, 'sdenzeyl@amazon.com', 2024),
(23, 'Rogerio Berney', 18, 'rberneym@ask.com', 2024),
(24, 'Rikki Hamstead', 15, 'rhamsteadn@soundcloud.com', 2024),
(25, 'Vic Earp', 16, 'vearpo@bravesites.com', 2024),
(26, 'Jessica Cowell', 16, 'jcowellp@dagondesign.com', 2024),
(27, 'Goldarina Rittelmeyer', 10, 'grittelmeyerq@patch.com', 2024),
(28, 'Maribelle Seath', 10, 'mseathr@zimbio.com', 2023),
(29, 'Brantley McNeillie', 20, 'bmcneillies@infoseek.co.jp', 2024),
(30, 'Lewiss Antusch', 11, 'lantuscht@lulu.com', 2024),
(31, 'Cordey Sancto', 20, 'csanctou@homestead.com', 2024),
(32, 'Merrile Kairns', 15, 'mkairnsv@clickbank.net', 2024),
(33, 'Maris Audiss', 19, 'maudissw@surveymonkey.com', 2024),
(34, 'Elora Bilston', 15, 'ebilstonx@surveymonkey.com', 2024),
(35, 'Parsifal Bastie', 11, 'pbastiey@cnbc.com', 2024),
(36, 'Alistair Matuska', 16, 'amatuskaz@china.com.cn', 2023),
(37, 'Melisa Bridgen', 19, 'mbridgen10@usnews.com', 2024),
(38, 'Josias Stirzaker', 13, 'jstirzaker11@time.com', 2024),
(39, 'Denney Posner', 18, 'dposner12@cocolog-nifty.com', 2024),
(40, 'Viole Haygreen', 14, 'vhaygreen13@amazon.co.jp', 2024),
(41, 'Malvin Bengle', 20, 'mbengle14@mtv.com', 2024),
(42, 'Beckie Gillie', 19, 'bgillie15@disqus.com', 2024),
(43, 'Grange Delatour', 14, 'gdelatour16@rakuten.co.jp', 2024),
(44, 'Isiahi Jagg', 18, 'ijagg17@wunderground.com', 2024),
(45, 'Bryana Nourse', 12, 'bnourse18@reuters.com', 2023),
(46, 'Renaldo Moxom', 19, 'rmoxom19@engadget.com', 2024),
(47, 'Boniface Halpin', 11, 'bhalpin1a@engadget.com', 2024),
(48, 'Abel Blomfield', 14, 'ablomfield1b@usgs.gov', 2024),
(49, 'Harley Brimilcome', 11, 'hbrimilcome1c@elpais.com', 2024),
(50, 'Isidore Sproule', 19, 'isproule1d@columbia.edu', 2024),
(51, 'Lynn Austins', 17, 'laustins1e@so-net.ne.jp', 2024),
(52, 'Llywellyn Dubs', 12, 'ldubs1f@i2i.jp', 2023),
(53, 'Nonna Raymen', 17, 'nraymen1g@columbia.edu', 2024),
(54, 'George Bartoshevich', 10, 'gbartoshevich1h@youtu.be', 2024),
(55, 'Terri Nehl', 18, 'tnehl1i@geocities.jp', 2024),
(56, 'Alan Tidy', 18, 'atidy1j@nymag.com', 2023),
(57, 'Loni Kunkler', 19, 'lkunkler1k@51.la', 2024),
(58, 'Eleanor Fuzzard', 20, 'efuzzard1l@chicagotribune.com', 2023),
(59, 'Mattie Lamzed', 13, 'mlamzed1m@uol.com.br', 2024),
(60, 'Morse Meus', 15, 'mmeus1n@surveymonkey.com', 2024),
(61, 'Percival Yarn', 14, 'pyarn1o@aboutads.info', 2024),
(62, 'Conrad Losbie', 13, 'closbie1p@webmd.com', 2024),
(63, 'Salli Daber', 15, 'sdaber1q@ebay.com', 2024),
(64, 'Joela Whifen', 16, 'jwhifen1r@nba.com', 2024),
(65, 'Hewet Odam', 13, 'hodam1s@bandcamp.com', 2024),
(66, 'Leigha Frude', 14, 'lfrude1t@comcast.net', 2023),
(67, 'Margeaux Lages', 13, 'mlages1u@ox.ac.uk', 2023),
(68, 'Frederik Blare', 20, 'fblare1v@tiny.cc', 2023),
(69, 'Nealon Creeber', 12, 'ncreeber1w@blog.com', 2024),
(70, 'Saunder Gatecliffe', 15, 'sgatecliffe1x@washington.edu', 2024),
(71, 'Ernesta Farncombe', 14, 'efarncombe1y@facebook.com', 2024),
(72, 'Sindee Bradick', 15, 'sbradick1z@amazon.co.jp', 2024),
(73, 'Burnard Woodus', 11, 'bwoodus20@typepad.com', 2024),
(74, 'Deloris Brim', 20, 'dbrim21@feedburner.com', 2024),
(75, 'Skell Vaisey', 14, 'svaisey22@barnesandnoble.com', 2024),
(76, 'Axe Adair', 13, 'aadair23@forbes.com', 2024),
(77, 'Nobie Renfrew', 18, 'nrenfrew24@over-blog.com', 2024),
(78, 'Kevan Yesichev', 20, 'kyesichev25@comsenz.com', 2024),
(79, 'Elbert Royall', 18, 'eroyall26@engadget.com', 2023),
(80, 'Linzy Lambie', 20, 'llambie27@cocolog-nifty.com', 2024),
(81, 'Tan Hulk', 19, 'thulk28@intel.com', 2024),
(82, 'Dev Beggs', 14, 'dbeggs29@microsoft.com', 2024),
(83, 'Cynthia Dowden', 13, 'cdowden2a@reference.com', 2024),
(84, 'Phyllys Fratson', 16, 'pfratson2b@cornell.edu', 2024),
(85, 'Vin Masters', 17, 'vmasters2c@unicef.org', 2024),
(86, 'Palmer Mc Caughen', 19, 'pmc2d@sfgate.com', 2024),
(87, 'Cyrill Mason', 15, 'cmason2e@flickr.com', 2024),
(88, 'Tiffi Fishby', 19, 'tfishby2f@privacy.gov.au', 2024),
(89, 'Silvie Cooke', 18, 'scooke2g@un.org', 2023),
(90, 'Darryl Goane', 14, 'dgoane2h@163.com', 2024),
(91, 'Darrell Scraggs', 13, 'dscraggs2i@youku.com', 2023),
(92, 'Rodina Chantillon', 15, 'rchantillon2j@netlog.com', 2024),
(93, 'Anica Dameisele', 18, 'adameisele2k@booking.com', 2024),
(94, 'Ralina Tallman', 13, 'rtallman2l@theatlantic.com', 2024),
(95, 'Thomasina Norster', 18, 'tnorster2m@forbes.com', 2024),
(96, 'Jarvis Shewon', 18, 'jshewon2n@printfriendly.com', 2024),
(97, 'Henrie Mulcock', 17, 'hmulcock2o@last.fm', 2024),
(98, 'Reider Bramhill', 19, 'rbramhill2p@sciencedirect.com', 2024),
(99, 'Edsel Banghe', 19, 'ebanghe2q@va.gov', 2024),
(100, 'Kristi Kimmerling', 16, 'kkimmerling2r@nps.gov', 2024);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_student` (`StudentID`);

--
-- A tábla indexei `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `mark`
--
ALTER TABLE `mark`
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`StudentID`) REFERENCES `student` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
