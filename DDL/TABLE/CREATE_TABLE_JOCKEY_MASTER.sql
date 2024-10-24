CREATE TABLE `jockey_master` (
  `RANK` int DEFAULT NULL COMMENT '順位',
  `NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '名前',
  `FULL_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'フルネーム',
  `NAME_READING` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '読み',
  `ROMANIZED_NAME` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '欧字表記名',
  `AFFILIATION` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '所属',
  `AGE` int DEFAULT NULL COMMENT '年齢',
  `BIRTHDAY` date DEFAULT NULL COMMENT '誕生日',
  `LICENSE_YEAR` int DEFAULT NULL COMMENT '免許取得年',
  `CAREER` int DEFAULT NULL COMMENT 'キャリア',
  `THIS_YEAR_TOTAL_PLACE` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '本年着度数',
  `THIS_YEAR_1ST_PLACE` int DEFAULT NULL COMMENT '1着数',
  `THIS_YEAR_2ND_PLACE` int DEFAULT NULL COMMENT '2着数',
  `THIS_YEAR_3RD_PLACE` int DEFAULT NULL COMMENT '3着数',
  `THIS_YEAR_OTHER_PLACES` int DEFAULT NULL COMMENT '着外数',
  `THIS_YEAR_TOTAL` int DEFAULT NULL COMMENT '総数',
  `WIN_RATE` decimal(5,2) DEFAULT NULL COMMENT '勝率',
  `COMBINED_WIN_PLACE_RATE` decimal(5,2) DEFAULT NULL COMMENT '連対率',
  `MULTIPLE_WIN_PLACE_RATE` decimal(5,2) DEFAULT NULL COMMENT '複勝率',
  `LAST_YEAR_TOTAL_PLACE` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '前年着度数',
  `LAST_YEAR_1ST_PLACE` int DEFAULT NULL COMMENT '前年1着',
  `LAST_YEAR_2ND_PLACE` int DEFAULT NULL COMMENT '前年2着',
  `LAST_YEAR_3RD_PLACE` int DEFAULT NULL COMMENT '前年3着',
  `LAST_YEAR_OTHER_PLACES` int DEFAULT NULL COMMENT '前年着外',
  `LAST_YEAR_TOTAL` int DEFAULT NULL COMMENT '前年総数',
  `LAST_YEAR_WIN_RATE` decimal(5,2) DEFAULT NULL COMMENT '前年勝率',
  `LAST_YEAR_COMBINED_WIN_PLACE_RATE` decimal(5,2) DEFAULT NULL COMMENT '前年連対率',
  `LAST_YEAR_MULTIPLE_WIN_PLACE_RATE` decimal(5,2) DEFAULT NULL COMMENT '前年複勝率',
  `CAREER_TOTAL_PLACE` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '生涯着度数',
  `CAREER_1ST_PLACE` int DEFAULT NULL COMMENT '生涯1着',
  `CAREER_2ND_PLACE` int DEFAULT NULL COMMENT '生涯2着',
  `CAREER_3RD_PLACE` int DEFAULT NULL COMMENT '生涯3着',
  `CAREER_OTHER_PLACES` int DEFAULT NULL COMMENT '生涯着外',
  `CAREER_TOTAL` int DEFAULT NULL COMMENT '生涯総数',
  `CAREER_WIN_RATE` decimal(5,2) DEFAULT NULL COMMENT '生涯勝率',
  `CAREER_COMBINED_WIN_PLACE_RATE` decimal(5,2) DEFAULT NULL COMMENT '生涯連対率',
  `CAREER_MULTIPLE_WIN_PLACE_RATE` decimal(5,2) DEFAULT NULL COMMENT '生涯複勝率',
  `JOCKEY_CODE` varchar(5) COLLATE utf8mb3_bin NOT NULL COMMENT '騎手コード',
  `ACTIVE_OR_CANCELLATION` varchar(5) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '現役・抹消',
  `CHECK` int DEFAULT NULL COMMENT 'チェック',
  `WIN_COUNT_YEAR_ON_YEAR` decimal(5,2) DEFAULT NULL COMMENT '勝数前年比',
  `TOTAL_RACES_YEAR_ON_YEAR` decimal(5,2) DEFAULT NULL COMMENT '総レース数前年比',
  `COMMENTS` varchar(8) COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'コメント',
  `THIS_YEAR_RANK` int DEFAULT NULL COMMENT '本年順位',
  `LAST_YEAR_RANK` int DEFAULT NULL COMMENT '前年順位',
  PRIMARY KEY (`JOCKEY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='騎手名マスタ';