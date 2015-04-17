CREATE DATABASE `wokark` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `wokark`.`w_airport` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `alias` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wokark`.`w_flight` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `airline` varchar(25) DEFAULT NULL,
  `airport_from` int(10) NOT NULL,
  `airport_to` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wokark`.`w_flight_price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `flight_id` int(10) NOT NULL,
  `departure_dt` datetime NOT NULL,
  `price_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
