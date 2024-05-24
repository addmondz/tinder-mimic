CREATE DATABASE IF NOT EXISTS tinder-mimic;

USE tinder-mimic;

DROP TABLE IF EXISTS `interests`;

CREATE TABLE `interests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `interest_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;

INSERT INTO `interests` (`id`, `interest_name`)
VALUES
	(1,'Reading'),
	(2,'Traveling'),
	(3,'Photography'),
	(4,'Cooking'),
	(5,'Gardening'),
	(6,'Painting'),
	(7,'Cycling'),
	(8,'Hiking'),
	(9,'Skiing'),
	(10,'Dancing'),
	(11,'Music'),
	(12,'Sports'),
	(13,'Yoga'),
	(14,'Gaming'),
	(15,'Writing'),
	(16,'Fishing'),
	(17,'Knitting'),
	(18,'Programming'),
	(19,'Movies'),
	(20,'Fashion');

/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_interests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_interests`;

CREATE TABLE `user_interests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `interest_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `user_interests` WRITE;
/*!40000 ALTER TABLE `user_interests` DISABLE KEYS */;

INSERT INTO `user_interests` (`id`, `user_id`, `interest_id`)
VALUES
	(1,1,14),
	(2,1,19),
	(3,2,18),
	(4,3,14),
	(5,4,11),
	(6,4,16),
	(7,4,7),
	(8,4,7),
	(9,4,14),
	(10,4,9),
	(11,5,17),
	(12,5,15),
	(13,5,7),
	(14,5,7),
	(15,5,16),
	(16,6,7),
	(17,7,19),
	(18,7,4),
	(19,7,4),
	(20,7,8),
	(21,7,9),
	(22,8,3),
	(23,8,1),
	(24,8,14),
	(25,8,10),
	(26,8,5),
	(27,8,15),
	(28,9,3),
	(29,10,1),
	(30,10,15),
	(31,10,14),
	(32,10,3),
	(33,10,12),
	(34,11,18),
	(35,11,19),
	(36,11,1),
	(37,12,14),
	(38,12,18),
	(39,12,8),
	(40,12,6),
	(41,13,19),
	(42,13,12),
	(43,13,1),
	(44,14,20),
	(45,14,16),
	(46,14,19),
	(47,15,4),
	(48,15,11),
	(49,15,4),
	(50,16,15),
	(51,16,7),
	(52,16,10),
	(53,17,8),
	(54,17,10),
	(55,17,4),
	(56,17,12),
	(57,17,5),
	(58,18,18),
	(59,18,9),
	(60,19,6),
	(61,20,4),
	(62,20,20),
	(63,20,6),
	(64,20,12),
	(65,20,1),
	(66,20,9),
	(67,21,19),
	(68,22,1),
	(69,22,10),
	(70,23,15),
	(71,23,5),
	(72,23,18),
	(73,23,16),
	(74,23,3),
	(75,23,6),
	(76,24,5),
	(77,24,11),
	(78,24,20),
	(79,24,6),
	(80,25,20),
	(81,25,11),
	(82,25,13),
	(83,26,10),
	(84,26,14),
	(85,27,11),
	(86,27,7),
	(87,27,1),
	(88,28,5),
	(89,29,20),
	(90,29,4),
	(91,29,2),
	(92,29,15),
	(93,30,8),
	(94,30,4),
	(95,30,13),
	(96,30,14),
	(97,31,14),
	(98,31,17),
	(99,32,5),
	(100,32,5),
	(101,32,8),
	(102,32,7),
	(103,32,8),
	(104,32,18),
	(105,33,18),
	(106,33,1),
	(107,33,11),
	(108,34,18),
	(109,35,3),
	(110,35,20),
	(111,35,14),
	(112,35,7),
	(113,35,12),
	(114,35,18),
	(115,36,5),
	(116,36,11),
	(117,36,17),
	(118,36,13),
	(119,36,15),
	(120,36,13),
	(121,37,3),
	(122,37,5),
	(123,37,12),
	(124,37,5),
	(125,38,14),
	(126,38,1),
	(127,38,19),
	(128,39,12),
	(129,39,13),
	(130,39,10),
	(131,40,5),
	(132,40,18),
	(133,40,12),
	(134,40,5),
	(135,40,9),
	(136,41,3),
	(137,41,10),
	(138,41,18),
	(139,42,10),
	(140,42,15),
	(141,43,20),
	(142,43,10),
	(143,43,10),
	(144,43,1),
	(145,43,12),
	(146,44,16),
	(147,44,14),
	(148,44,19),
	(149,45,10),
	(150,45,10),
	(151,45,2),
	(152,45,18),
	(153,46,12),
	(154,46,6),
	(155,46,13),
	(156,46,6),
	(157,47,11),
	(158,48,5),
	(159,48,12),
	(160,48,4),
	(161,48,1),
	(162,48,14),
	(163,48,6),
	(164,49,2),
	(165,49,6),
	(166,49,2),
	(167,49,11),
	(168,49,10),
	(169,50,13),
	(170,50,12),
	(171,50,3),
	(172,51,10),
	(173,51,12),
	(174,51,10),
	(175,51,13),
	(176,52,6),
	(177,52,5),
	(178,52,5),
	(179,52,9),
	(180,52,8),
	(181,53,10),
	(182,53,11),
	(183,54,9),
	(184,54,6),
	(185,55,6),
	(186,55,12),
	(187,55,4),
	(188,55,3),
	(189,55,3),
	(190,55,4),
	(191,56,1),
	(192,56,19),
	(193,56,10),
	(194,57,2),
	(195,57,7),
	(196,57,7),
	(197,57,16),
	(198,57,17),
	(199,58,18),
	(200,58,19),
	(201,58,1),
	(202,59,16),
	(203,59,9),
	(204,59,19),
	(205,60,1),
	(206,60,12),
	(207,60,18),
	(208,60,13),
	(209,60,11),
	(210,60,13),
	(211,61,3),
	(212,61,16),
	(213,62,16),
	(214,62,15),
	(215,62,4),
	(216,62,14),
	(217,62,18),
	(218,63,17),
	(219,63,20),
	(220,63,10),
	(221,64,7),
	(222,64,6),
	(223,64,9),
	(224,64,7),
	(225,64,6),
	(226,65,15),
	(227,65,19),
	(228,66,10),
	(229,66,19),
	(230,66,7),
	(231,66,18),
	(232,66,6),
	(233,67,20),
	(234,67,7),
	(235,68,15),
	(236,68,19),
	(237,68,12),
	(238,68,2),
	(239,68,13),
	(240,68,17),
	(241,69,2),
	(242,69,6),
	(243,69,2),
	(244,69,14),
	(245,69,1),
	(246,70,10),
	(247,70,8),
	(248,70,11),
	(249,70,8),
	(250,70,7),
	(251,71,16),
	(252,71,14),
	(253,71,4),
	(254,71,15),
	(255,71,4),
	(256,72,10),
	(257,72,4),
	(258,72,9),
	(259,73,19),
	(260,73,15),
	(261,73,17),
	(262,73,19),
	(263,74,18),
	(264,74,13),
	(265,74,12),
	(266,74,19),
	(267,75,16),
	(268,75,12),
	(269,75,14),
	(270,75,11),
	(271,75,13),
	(272,76,14),
	(273,77,7),
	(274,77,16),
	(275,78,12),
	(276,78,15),
	(277,78,17),
	(278,78,19),
	(279,78,5),
	(280,79,14),
	(281,80,20),
	(282,80,19),
	(283,81,15),
	(284,81,13),
	(285,81,17),
	(286,81,5),
	(287,81,14),
	(288,82,20),
	(289,82,15),
	(290,82,12),
	(291,82,16),
	(292,82,3),
	(293,83,7),
	(294,83,20),
	(295,83,18),
	(296,83,11),
	(297,83,20),
	(298,83,6),
	(299,84,7),
	(300,84,9),
	(301,84,2),
	(302,85,14),
	(303,85,6),
	(304,85,7),
	(305,86,16),
	(306,86,2),
	(307,86,1),
	(308,86,16),
	(309,86,18),
	(310,86,2),
	(311,87,19),
	(312,87,13),
	(313,87,7),
	(314,87,17),
	(315,87,5),
	(316,87,11),
	(317,88,18),
	(318,88,11),
	(319,88,20),
	(320,88,5),
	(321,89,5),
	(322,89,15),
	(323,89,18),
	(324,89,5),
	(325,89,10),
	(326,89,16),
	(327,90,16),
	(328,91,20),
	(329,91,15),
	(330,91,16),
	(331,91,11),
	(332,91,10),
	(333,92,11),
	(334,92,1),
	(335,92,9),
	(336,92,4),
	(337,92,11),
	(338,92,2),
	(339,93,5),
	(340,94,19),
	(341,94,18),
	(342,94,11),
	(343,94,4),
	(344,95,11),
	(345,95,5),
	(346,95,10),
	(347,96,20),
	(348,96,12),
	(349,96,19),
	(350,96,18),
	(351,96,12),
	(352,97,18),
	(353,98,16),
	(354,98,3),
	(355,98,6),
	(356,98,2),
	(357,98,11),
	(358,98,7),
	(359,99,4),
	(360,99,17),
	(361,99,12),
	(362,99,10),
	(363,99,10),
	(364,100,10),
	(365,100,19),
	(366,100,7),
	(367,100,15),
	(368,100,16);

/*!40000 ALTER TABLE `user_interests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `gender`, `location`, `university`, `photo`, `created_at`, `updated_at`)
VALUES
	(1,'Carol Perez','Male','Long Beach','University of California','https://randomuser.me/api/portraits/men/1.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(2,'Dorothy Brown','Female','Columbus','Brown University','https://randomuser.me/api/portraits/women/2.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(3,'Sarah Collins','Female','Raleigh','Northwestern University','https://randomuser.me/api/portraits/women/3.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(4,'Amanda Young','Female','San Jose','University of Chicago','https://randomuser.me/api/portraits/women/4.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(5,'Melissa Allen','Female','Dallas','University of North Carolina','https://randomuser.me/api/portraits/women/5.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(6,'Joshua Phillips','Female','Sacramento','Massachusetts Institute of Technology','https://randomuser.me/api/portraits/women/6.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(7,'Joseph Hall','Female','Milwaukee','Cornell University','https://randomuser.me/api/portraits/women/7.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(8,'Edward Thompson','Female','Jacksonville','University of California','https://randomuser.me/api/portraits/women/8.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(9,'John Mitchell','Female','Louisville','University of California','https://randomuser.me/api/portraits/women/9.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(10,'Steven Miller','Female','Columbus','University of California','https://randomuser.me/api/portraits/women/10.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(11,'Dorothy Brown','Female','Nashville','University of Pennsylvania','https://randomuser.me/api/portraits/women/11.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(12,'Jessica Thompson','Female','Houston','University of California','https://randomuser.me/api/portraits/women/12.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(13,'Joseph Lopez','Male','Phoenix','University of California','https://randomuser.me/api/portraits/men/13.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(14,'Margaret Garcia','Male','Indianapolis','University of North Carolina','https://randomuser.me/api/portraits/men/14.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(15,'Charles Evans','Female','San Antonio','University of California','https://randomuser.me/api/portraits/women/15.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(16,'Joseph Collins','Female','Atlanta','Columbia University','https://randomuser.me/api/portraits/women/16.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(17,'Nancy King','Female','Las Vegas','University of California','https://randomuser.me/api/portraits/women/17.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(18,'Matthew Green','Female','Louisville','Johns Hopkins University','https://randomuser.me/api/portraits/women/18.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(19,'Matthew Jones','Female','Oklahoma City','University of California','https://randomuser.me/api/portraits/women/19.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(20,'Sarah Nelson','Female','Sacramento','Johns Hopkins University','https://randomuser.me/api/portraits/women/20.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(21,'Robert Miller','Male','Seattle','University of California','https://randomuser.me/api/portraits/men/21.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(22,'Charles Parker','Female','Houston','University of California','https://randomuser.me/api/portraits/women/22.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(23,'Sarah Moore','Female','Arlington','Yale University','https://randomuser.me/api/portraits/women/23.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(24,'Jennifer Campbell','Female','Philadelphia','University of California','https://randomuser.me/api/portraits/Femalewomen/24.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(25,'Nancy White','Male','Raleigh','University of California','https://randomuser.me/api/portraits/men/25.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(26,'Dorothy Edwards','Male','Las Vegas','Dartmouth College','https://randomuser.me/api/portraits/men/26.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(27,'Edward Hill','Male','Raleigh','University of Pennsylvania','https://randomuser.me/api/portraits/men/27.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(28,'Patricia King','Female','New York','Rice University','https://randomuser.me/api/portraits/women/28.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(29,'Andrew Taylor','Female','Nashville','University of California','https://randomuser.me/api/portraits/women/29.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(30,'Matthew Moore','Male','Detroit','University of Pennsylvania','https://randomuser.me/api/portraits/men/30.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(31,'Daniel Davis','Male','San Francisco','Brown University','https://randomuser.me/api/portraits/men/31.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(32,'Elizabeth Lee','Female','Chicago','Johns Hopkins University','https://randomuser.me/api/portraits/women/32.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(33,'Susan Lopez','Male','Oakland','Vanderbilt University','https://randomuser.me/api/portraits/men/33.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(34,'Sandra Walker','Female','Denver','Duke University','https://randomuser.me/api/portraits/women/34.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(35,'Melissa Wilson','Female','New York','University of California','https://randomuser.me/api/portraits/women/35.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(36,'Paul Nelson','Female','Baltimore','Villanova University','https://randomuser.me/api/portraits/women/36.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(37,'Ronald Smith','Male','Sacramento','Princeton University','https://randomuser.me/api/portraits/men/37.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(38,'Betty Campbell','Female','Fresno','University of California','https://randomuser.me/api/portraits/women/38.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(39,'Sandra Martin','Female','Washington','Princeton University','https://randomuser.me/api/portraits/women/39.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(40,'Margaret Smith','Female','Kansas City','Johns Hopkins University','https://randomuser.me/api/portraits/women/40.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(41,'Nancy Carter','Female','Oakland','University of Virginia','https://randomuser.me/api/portraits/women/41.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(42,'Deborah Martin','Female','New York','University of Michigan','https://randomuser.me/api/portraits/women/42.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(43,'Robert Martin','Male','Memphis','University of North Carolina','https://randomuser.me/api/portraits/men/43.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(44,'Donna Thomas','Female','Houston','Princeton University','https://randomuser.me/api/portraits/women/44.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(45,'Sandra White','Female','Oakland','University of California','https://randomuser.me/api/portraits/women/45.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(46,'William White','Female','San Diego','Vanderbilt University','https://randomuser.me/api/portraits/women/46.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(47,'Lisa Rodriguez','Female','Memphis','Northwestern University','https://randomuser.me/api/portraits/women/47.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(48,'Sarah Smith','Male','Detroit','Massachusetts Institute of Technology','https://randomuser.me/api/portraits/men/48.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(49,'Joseph Carter','Female','Jacksonville','University of Southern California','https://randomuser.me/api/portraits/women/49.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(50,'Donna Hall','Male','San Jose','University of Virginia','https://randomuser.me/api/portraits/men/50.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(51,'Donna King','Female','Chicago','University of Notre Dame','https://randomuser.me/api/portraits/women/51.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(52,'Paul Walker','Male','Portland','Emory University','https://randomuser.me/api/portraits/men/52.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(53,'Kimberly Young','Female','Oakland','Harvard University','https://randomuser.me/api/portraits/women/53.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(54,'Richard Scott','Male','Nashville','University of California','https://randomuser.me/api/portraits/men/54.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(55,'Jessica Hall','Female','Arlington','University of California','https://randomuser.me/api/portraits/women/55.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(56,'Daniel Adams','Male','Kansas City','Cornell University','https://randomuser.me/api/portraits/men/56.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(57,'Mark Gonzalez','Female','Portland','Emory University','https://randomuser.me/api/portraits/women/57.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(58,'Brian Parker','Female','Kansas City','Yale University','https://randomuser.me/api/portraits/women/58.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(59,'Daniel Collins','Female','Chicago','Georgetown University','https://randomuser.me/api/portraits/women/59.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(60,'David Martinez','Male','Milwaukee','Villanova University','https://randomuser.me/api/portraits/men/60.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(61,'Donald Davis','Female','Fort Worth','Emory University','https://randomuser.me/api/portraits/women/61.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(62,'Betty White','Female','Chicago','University of California','https://randomuser.me/api/portraits/women/62.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(63,'Sarah Williams','Male','Columbus','University of North Carolina','https://randomuser.me/api/portraits/men/63.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(64,'Lisa Perez','Female','Austin','University of California','https://randomuser.me/api/portraits/women/64.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(65,'Sarah Roberts','Male','Denver','University of Southern California','https://randomuser.me/api/portraits/men/65.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(66,'Betty Mitchell','Male','Tucson','Columbia University','https://randomuser.me/api/portraits/men/66.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(67,'Carol Rodriguez','Female','Columbus','Stanford University','https://randomuser.me/api/portraits/women/67.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(68,'Emily Rodriguez','Male','Phoenix','Johns Hopkins University','https://randomuser.me/api/portraits/men/68.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(69,'Thomas Robinson','Female','Portland','Emory University','https://randomuser.me/api/portraits/women/69.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(70,'Robert Walker','Male','Chicago','University of California','https://randomuser.me/api/portraits/men/70.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(71,'Betty Hill','Female','Houston','Dartmouth College','https://randomuser.me/api/portraits/women/71.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(72,'Mark Green','Male','Austin','University of California','https://randomuser.me/api/portraits/men/72.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(73,'Dorothy Lopez','Male','Philadelphia','Brown University','https://randomuser.me/api/portraits/men/73.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(74,'Michael Parker','Male','Phoenix','University of California','https://randomuser.me/api/portraits/men/74.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(75,'Carol Lopez','Female','Fresno','University of California','https://randomuser.me/api/portraits/women/75.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(76,'Paul Lewis','Male','Louisville','Brown University','https://randomuser.me/api/portraits/men/76.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(77,'Michelle Miller','Male','Boston','University of California','https://randomuser.me/api/portraits/men/77.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(78,'Melissa Thompson','Female','Phoenix','University of California','https://randomuser.me/api/portraits/women/78.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(79,'Karen Miller','Female','Fort Worth','Stanford University','https://randomuser.me/api/portraits/women/79.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(80,'Amanda Hall','Female','Memphis','Columbia University','https://randomuser.me/api/portraits/women/80.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(81,'Andrew Collins','Female','Houston','Dartmouth College','https://randomuser.me/api/portraits/women/81.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(82,'Mark Taylor','Male','Louisville','University of California','https://randomuser.me/api/portraits/men/82.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(83,'Elizabeth Baker','Female','Milwaukee','University of California','https://randomuser.me/api/portraits/women/83.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(84,'Nancy White','Male','Kansas City','Georgetown University','https://randomuser.me/api/portraits/men/84.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(85,'Richard Johnson','Male','Kansas City','Villanova University','https://randomuser.me/api/portraits/men/85.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(86,'Brian Martinez','Male','Tucson','Harvard University','https://randomuser.me/api/portraits/men/86.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(87,'Paul Anderson','Female','Jacksonville','Cornell University','https://randomuser.me/api/portraits/women/87.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(88,'John Walker','Male','Charlotte','Villanova University','https://randomuser.me/api/portraits/men/88.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(89,'David Lewis','Female','Detroit','University of North Carolina','https://randomuser.me/api/portraits/women/89.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(90,'Margaret Williams','Female','Minneapolis','Yale University','https://randomuser.me/api/portraits/women/90.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(91,'Emily Wilson','Female','Tucson','University of Notre Dame','https://randomuser.me/api/portraits/women/91.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(92,'Mark Turner','Male','San Antonio','University of North Carolina','https://randomuser.me/api/portraits/men/92.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(93,'Brian Moore','Male','Boston','University of California','https://randomuser.me/api/portraits/men/93.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(94,'Brian Roberts','Female','Philadelphia','University of California','https://randomuser.me/api/portraits/women/94.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(95,'Michael Anderson','Female','Albuquerque','California Institute of Technology','https://randomuser.me/api/portraits/women/95.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(96,'Kimberly Thomas','Female','Phoenix','University of California','https://randomuser.me/api/portraits/women/96.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(97,'Charles Parker','Female','Dallas','University of Chicago','https://randomuser.me/api/portraits/women/97.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(98,'Sarah Parker','Female','Washington','Johns Hopkins University','https://randomuser.me/api/portraits/women/98.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(99,'Linda Robinson','Female','Portland','Emory University','https://randomuser.me/api/portraits/women/99.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46'),
	(100,'Mary Baker','Male','Fort Worth','Yale University','https://randomuser.me/api/portraits/men/100.jpg','2024-05-24 00:56:46','2024-05-24 00:56:46');

UNLOCK TABLES;