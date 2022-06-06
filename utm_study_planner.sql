
DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `eventID` int(11) NOT NULL AUTO_INCREMENT,
  `eventName` varchar(255) NOT NULL,
  `fromEvent` varchar(60) NOT NULL,
  `toEvent` varchar(60) NOT NULL,
  `background` varchar(255) NOT NULL,
  `isAllDay` tinyint(1) NOT NULL,
  `matricID` varchar(9) NOT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `event` WRITE;

INSERT INTO `event` VALUES (35,'abc','2022-05-18 17:11:05.675064','2022-05-18 18:11','0xFF0F8644',0,'5203'),(38,'Test','2022-05-19 03:49:36.329511','2022-05-25 06:15','0xFF0F8644',0,'A21EC0005'),(11,'Walk Fish','2022-05-16 03:15:00','2022-05-16 03:30:00','0xFF0F8644',0,'A18DW0052'),(36,'def','2022-05-18 17:11:22.338720','2022-05-18 20:11','0xFF0F8644',0,'5203');

UNLOCK TABLES;



DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` varchar(9) NOT NULL,
  `email` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `coursecode` varchar(10) NOT NULL,
  `password` varchar(25) NOT NULL,
  `profilePicture` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

LOCK TABLES `users` WRITE;

INSERT INTO `users` VALUES ('A18DW0052','af.aiman@graduate.utm.my','LoxC','3/SECRH','abcdef123',''),('5203','abcdef@utm.my','Lox','1/SECRH','abcdef123**',NULL),('A21EC0005','edux7904@gmail.com','bestie','3/SECRH','abcdef123**',NULL);

UNLOCK TABLES;
