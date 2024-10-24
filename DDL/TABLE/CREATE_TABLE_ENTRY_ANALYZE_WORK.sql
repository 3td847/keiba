CREATE TABLE `entry_analyze_work` (
  `RACE_YMD` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年月日',
  `LOCATION` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '場所',
  `RACE_NUMBER` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '競走番号',
  `HORSE_NUMBER` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '馬番号',
  `RACE_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'レース名',
  `GRASS_DIRT` varchar(3) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '芝・ダ',
  `DISTANCE` int DEFAULT NULL COMMENT '距離',
  `HORSE_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '馬名',
  `GENDER` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '性別',
  `AGE` int DEFAULT NULL COMMENT '年齢',
  `JOCKEY_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '騎手名',
  `WEIGHT` decimal(4,2) DEFAULT NULL COMMENT '斤量',
  `TRAINER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '調教師名',
  `AFFILIATION` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '所属',
  `OWNER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '馬主名',
  `PRODUCER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '生産者名',
  `FATHER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '種牡馬名',
  `MOTHER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '母名',
  `PEDIGREE_REGISTRATION_NUMBER` varchar(8) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '血統登録番号',
  `DAY_NUMBER` int DEFAULT NULL COMMENT '日次',
  `MOTHERS_FATHER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '母父名',
  `COAT_COLOR` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '毛色',
  `FRAME_NUMBER` int DEFAULT NULL COMMENT '枠番号',
  `INTERVAL_SINCE_PREVIOUS_RACE` int DEFAULT NULL COMMENT '前走との間隔',
  `PREVIOUS_RACE_POPULARITY` int DEFAULT NULL COMMENT '前走人気',
  `PREVIOUS_RACE_FINISH_POSITION` int DEFAULT NULL COMMENT '前走着順',
  `NUMBER_OF_HORSES` int DEFAULT NULL COMMENT '頭数',
  `MAIN_PRIZE_MONEY` int DEFAULT NULL COMMENT '本賞金',
  `TOTAL_PRIZE_MONEY` int DEFAULT NULL COMMENT '収得賞金',
  `TODAY_POPULARITY` int DEFAULT NULL COMMENT '本日人気',
  `TODAY_ODDS` decimal(5,2) DEFAULT NULL COMMENT '本日オッズ',
  `TODAY_FINISH_POSITION` int DEFAULT NULL COMMENT '本日着順',
  `RACE_ID` varchar(10) COLLATE utf8mb3_bin NOT NULL COMMENT 'レースID',
  PRIMARY KEY (`RACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='出走分析ワーク';