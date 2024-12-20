CREATE TABLE `horse_master` (
  `HORSE_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '馬名',
  `PEDIGREE_REGISTRATION_NUMBER` varchar(8) COLLATE utf8mb3_bin NOT NULL COMMENT '血統登録番号',
  `GENDER` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '性別',
  `AFFILIATION` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '所属',
  `TRAINER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '調教師名',
  `FATHER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '種牡馬名',
  `MOTHER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '母名',
  `MOTHERS_FATHER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '母の父名',
  `OWNER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '馬主名',
  `PRODUCER_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '生産者名',
  `COAT_COLOR` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '毛色',
  `BIRTH_DATE` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '生年月日',
  `MAIN_PRIZE_MONEY` int DEFAULT NULL COMMENT '本賞金',
  `TOTAL_PRIZE_MONEY` int DEFAULT NULL COMMENT '収得賞金',
  `LAST_RACE_HORSE_WEIGHT` int DEFAULT NULL COMMENT '前走馬体重',
  `TOTAL_1ST_PLACE` int DEFAULT NULL COMMENT '全成績1着数',
  `TOTAL_2ND_PLACE` int DEFAULT NULL COMMENT '全成績2着数',
  `TOTAL_3RD_PLACE` int DEFAULT NULL COMMENT '全成績3着数',
  `TOTAL_OTHER_PLACES` int DEFAULT NULL COMMENT '全成績着外数',
  `GRASS_1ST_PLACE` int DEFAULT NULL COMMENT '芝成績1着数',
  `GRASS_2ND_PLACE` int DEFAULT NULL COMMENT '芝成績2着数',
  `GRASS_3RD_PLACE` int DEFAULT NULL COMMENT '芝成績3着数',
  `GRASS_OTHER_PLACES` int DEFAULT NULL COMMENT '芝成績着外数',
  `DIRT_1ST_PLACE` int DEFAULT NULL COMMENT 'ダート成績1着数',
  `DIRT_2ND_PLACE` int DEFAULT NULL COMMENT 'ダート成績2着数',
  `DIRT_3RD_PLACE` int DEFAULT NULL COMMENT 'ダート成績3着数',
  `DIRT_OTHER_PLACES` int DEFAULT NULL COMMENT 'ダート成績着外数',
  `DATA_CREATION_DATE` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'データ作成日',
  `CANCELLATION` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '抹消',
  `REGISTRATION_DATE` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '登録日',
  `CANCELLATION_DATE` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '抹消日',
  PRIMARY KEY (`PEDIGREE_REGISTRATION_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='馬名マスタ';