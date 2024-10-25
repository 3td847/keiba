select
    concat( 
        hm.MOTHERS_FATHER_NAME
        , '-'
        , rd.LOCATION
        , '-'
        , rd.GRASS_DIRT
        , '-'
        , rd.DISTANCE
    ) as 検索用
    , hm.MOTHERS_FATHER_NAME as 母父名
    , rd.LOCATION as 場所
    , rd.GRASS_DIRT as 芝ダート
    , rd.DISTANCE as 距離
    , count( 
        case 
            when rd.ACTUAL_FINISH_POSITION = 1 
                then rd.RACE_ID 
            else null 
            end
    ) AS 1着
    , count( 
        case 
            when rd.ACTUAL_FINISH_POSITION = 2 
                then rd.RACE_ID 
            else null 
            end
    ) AS 2着
    , count( 
        case 
            when rd.ACTUAL_FINISH_POSITION = 3 
                then rd.RACE_ID 
            else null 
            end
    ) AS 3着
    , count( 
        case 
            when rd.ACTUAL_FINISH_POSITION > 3 
                then rd.RACE_ID 
            else null 
            end
    ) AS 着外 
from
    race_data rd 
    left outer join horse_master hm 
        on rd.PEDIGREE_REGISTRATION_NUMBER = hm.PEDIGREE_REGISTRATION_NUMBER 
where
    exists ( 
        select
            1 
        from
            entry_analyze_work eaw 
        where
            eaw.MOTHERS_FATHER_NAME = hm.MOTHERS_FATHER_NAME 
            and eaw.LOCATION = rd.LOCATION 
            and eaw.GRASS_DIRT = rd.GRASS_DIRT 
            and eaw.DISTANCE = rd.DISTANCE
    ) 
group by
    hm.MOTHERS_FATHER_NAME
    , rd.LOCATION
    , rd.GRASS_DIRT
    , rd.DISTANCE; 