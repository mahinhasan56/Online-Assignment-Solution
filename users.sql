-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2015 at 04:05 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martin`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(40) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `sid` varchar(32) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gr` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `fname`, `sid`, `email`, `gr`) VALUES
('sdgsegas ', ' jkhjkh  ', ' 98574635241 ', ' asdh ', ' D '),
('sdgsegas ', ' jkhjkh  ', ' 133 ', ' bbwef ', ' 1 '),
('mahinjkha ', ' fherjt  ', ' 7622774 ', ' cbhfgnhdrs ', ' A '),
('sdgsegas ', ' jkhjkh  ', ' 2346478734623 ', ' dbdfbdf ', ' B  '),
('sdgsegas ', ' shye  ', ' 7347347346 ', ' dfbdnhdfhs ', ' C '),
('KFHD ', ' tjkrot  ', ' 43756984372633 ', ' dfhjfgjdsfsdnfm ', ' D '),
('efw ', ' jkhjkh  ', ' 9545213545785673462143 ', ' dfnmjfhsdafs ', ' C '),
('KFHD ', ' tjkrot  ', ' 673425434645684323 ', ' dgsdfjfghsd ', ' C '),
('KFHD ', ' sdsgs  ', ' 5743424845 ', ' dhdhsga ', ' C '),
('sdgsegas ', ' tjkrot  ', ' 9674 ', ' DJDRFK ', ' 1 '),
('sdgsegas ', ' sdsgs  ', ' 87436524645743532 ', ' dnfgkdhgacf ', ' D '),
('mag ', ' mah  ', ' 34654747632 ', ' fbdfjhdsgfa ', ' C '),
('KFHD ', ' SGGSG  ', ' 834374858352 ', ' fbgdbdf ', ' 1 '),
('sdgsegas ', ' mah  ', ' 123 ', ' fbhasanmahin@yahoo.com ', ' 1 '),
('sdgsegas ', ' tjkrot  ', ' 8435237707807684575 ', ' fbhfgndrgv ', ' C '),
('sdgsegas ', ' mah  ', ' 876453423rt4y56432 ', ' fg,kjsdhagdzfg ', ' C '),
('sdgsegas ', ' jkhjkh  ', ' 65463425 ', ' fghewedva ', ' C '),
('sdgsegas ', ' mah  ', ' 73634 ', ' fhdhd ', ' 1 '),
('sdgsegas ', ' tjkrot  ', ' 345928820852353463 ', ' fhdjhtrjdfgfsdb ', ' D '),
('KFHD ', ' vsgdfjfgjd  ', ' 1243457977865432 ', ' fhfgdfdgfasgd ', ' C '),
('KFHD ', ' SGGSG  ', ' 83925289 ', ' fhfgjds ', ' B  '),
('sdgsegas ', ' jkhjkh  ', ' 2424 ', ' tultul@gmail.com ', ' 1 '),
('sdgsegas ', ' mah  ', ' 45466879 ', ' vjhckj, ', ' B  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sid` (`sid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
