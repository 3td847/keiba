with freq as ( 
    select
        rd.LOCATION as location
        , rd.GRASS_DIRT as grass_dirt
        , rd.DISTANCE as distance
        , hm.FATHER_NAME as father_name
        , count( 
            case rd.ACTUAL_FINISH_POSITION 
                when 1 then rd.RACE_ID 
                else null 
                end
        ) as place1
        , count( 
            case rd.ACTUAL_FINISH_POSITION 
                when 2 then rd.RACE_ID 
                else null 
                end
        ) as place2
        , count( 
            case rd.ACTUAL_FINISH_POSITION 
                when 3 then rd.RACE_ID 
                else null 
                end
        ) as place3
        , count( 
            case 
                when rd.ACTUAL_FINISH_POSITION > 3 
                    then rd.RACE_ID 
                else null 
                end
        ) as out_of_place
        , count( 
            case 
                when rd.ACTUAL_FINISH_POSITION > 0 
                    then rd.RACE_ID 
                else null 
                end
        ) as race_count 
    from
        race_data rd 
        left outer join horse_master hm 
            on hm.HORSE_NAME = rd.HORSE_NAME 
    where
        exists ( 
            select
                1 
            from
                entry_analyze_work eaw 
            where
                eaw.LOCATION = rd.LOCATION 
                and eaw.GRASS_DIRT = rd.GRASS_DIRT 
                and eaw.DISTANCE = rd.DISTANCE 
                and eaw.FATHER_NAME = hm.FATHER_NAME
        ) 
    group by
        hm.FATHER_NAME
        , rd.LOCATION
        , rd.GRASS_DIRT
        , rd.DISTANCE
) 
, freq_2 as ( 
    select
        f1.location as 場所
        , f1.grass_dirt as 芝ダート
        , f1.distance as 距離
        , f1.father_name as 種牡馬名1
        , f1.place1 as 種牡馬1_1着
        , f1.place2 as 種牡馬1_2着
        , f1.place3 as 種牡馬1_3着
        , f1.place1 / f1.race_count as 種牡馬1_単勝率
        , (f1.place1 + f1.place2) / f1.race_count as 種牡馬1_連対率
        , (f1.place1 + f1.place2 + f1.place3) / f1.race_count as 種牡馬1_複勝率
        , f1.out_of_place as 種牡馬1_着外
        , f1.race_count as 種牡馬1_総数
        , f2.father_name as 種牡馬名2
        , f2.place1 as 種牡馬2_1着
        , f2.place2 as 種牡馬2_2着
        , f2.place3 as 種牡馬2_3着
        , f2.place1 / f2.race_count as 種牡馬2_単勝率
        , (f2.place1 + f2.place2) / f2.race_count as 種牡馬2_連対率
        , (f2.place1 + f2.place2 + f2.place3) / f2.race_count as 種牡馬2_複勝率
        , f2.out_of_place as 種牡馬2_着外
        , f2.race_count as 種牡馬2_総数
        , ( 
            f1.race_count * f1.place1 / f1.race_count + f2.race_count * f2.place1 / f2.race_count
        ) / (f1.race_count + f2.race_count) as 標本比率単勝
        , ( 
            f1.race_count * f1.place2 / f1.race_count + f2.race_count * f2.place2 / f2.race_count
        ) / (f1.race_count + f2.race_count) as 標本比率連対
        , ( 
            f1.race_count * f1.place3 / f1.race_count + f2.race_count * f2.place3 / f2.race_count
        ) / (f1.race_count + f2.race_count) as 標本比率複勝 
    from
        freq f1 
        inner join freq f2 
            on f2.father_name <> f1.father_name 
            and f2.location = f1.location 
            and f2.grass_dirt = f1.grass_dirt 
            and f2.distance = f1.distance
) 
select
    f2.場所
    , f2.芝ダート
    , f2.距離
    , f2.種牡馬名1
    , CONCAT( 
        f2.種牡馬1_1着
        , '-'
        , f2.種牡馬1_2着
        , '-'
        , f2.種牡馬1_3着
        , '-'
        , f2.種牡馬1_着外
    ) as 種牡馬1着度数
    , f2.種牡馬1_単勝率
    , f2.種牡馬1_連対率
    , f2.種牡馬1_複勝率
    , f2.種牡馬名2
    , CONCAT( 
        f2.種牡馬2_1着
        , '-'
        , f2.種牡馬2_2着
        , '-'
        , f2.種牡馬2_3着
        , '-'
        , f2.種牡馬2_着外
    ) as 種牡馬2着度数
    , f2.種牡馬2_単勝率
    , f2.種牡馬2_連対率
    , f2.種牡馬2_複勝率
    , (種牡馬1_単勝率 - 種牡馬2_単勝率) / sqrt( 
        標本比率単勝 * (1 - 標本比率単勝) * (1 / 種牡馬1_総数 + 1 / 種牡馬2_総数)
    ) as 単勝Z値
    , (種牡馬1_連対率 - 種牡馬2_連対率) / sqrt( 
        標本比率連対 * (1 - 標本比率連対) * (1 / 種牡馬1_総数 + 1 / 種牡馬2_総数)
    ) as 連対Z値
    , (種牡馬1_複勝率 - 種牡馬2_複勝率) / sqrt( 
        標本比率複勝 * (1 - 標本比率複勝) * (1 / 種牡馬1_総数 + 1 / 種牡馬2_総数)
    ) as 複勝Z値 
from
    freq_2 f2;
