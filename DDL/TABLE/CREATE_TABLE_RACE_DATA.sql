CREATE TABLE `race_data` (
  `RACE_YEAR` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `RACE_MONTH` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `RACE_DAY` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROUND_NUMBER` int DEFAULT NULL,
  `LOCATION` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `DAY_NUMBER` int DEFAULT NULL,
  `RACE_NUMBER` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `RACE_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `CLASS_CODE` int DEFAULT NULL,
  `GRASS_DIRT` varchar(3) COLLATE utf8mb3_bin DEFAULT NULL,
  `COURSE_CODE` int DEFAULT NULL,
  `DISTANCE` int DEFAULT NULL,
  `TRACK_CONDITION` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `HORSE_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `GENDER` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `AGE` int DEFAULT NULL,
  `JOCKEY_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `WEIGHT` decimal(4,2) DEFAULT NULL,
  `NUMBER_OF_HORSES` int DEFAULT NULL,
  `HORSE_NUMBER` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONFIRMED_FINISH_POSITION` int DEFAULT NULL,
  `ACTUAL_FINISH_POSITION` int DEFAULT NULL,
  `ABNORMAL_CODE` int DEFAULT NULL,
  `MARGIN` decimal(5,2) DEFAULT NULL,
  `POPULARITY_RANK` int DEFAULT NULL,
  `COMPLETION_TIME` decimal(5,2) DEFAULT NULL,
  `RUNNING_TIME` varchar(4) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUMMY` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `PASSAGE_POSITION_1` int DEFAULT NULL,
  `PASSAGE_POSITION_2` int DEFAULT NULL,
  `PASSAGE_POSITION_3` int DEFAULT NULL,
  `PASSAGE_POSITION_4` int DEFAULT NULL,
  `FINAL_3F_TIME` decimal(4,2) DEFAULT NULL,
  `HORSE_WEIGHT` int DEFAULT NULL,
  `TRAINER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `AFFILIATION_PLACE` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIZE_MONEY` int DEFAULT NULL,
  `PEDIGREE_REGISTRATION_NUMBER` varchar(8) COLLATE utf8mb3_bin DEFAULT NULL,
  `JOCKEY_CODE` varchar(5) COLLATE utf8mb3_bin DEFAULT NULL,
  `TRAINER_CODE` varchar(5) COLLATE utf8mb3_bin DEFAULT NULL,
  `RACE_ID` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `CURRENT_HORSE_OWNER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRODUCER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `FATHER_HORSE_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `MOTHER_HORSE_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `MOTHERS_FATHER_HORSE_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `COAT_COLOR` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL,
  `BIRTH_DATE` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL,
  `WIN_ODDS` decimal(5,2) DEFAULT NULL,
  `HORSE_MARK_1` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL,
  `RACE_MARK_1` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL,
  `PCI` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`RACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='レース詳細';