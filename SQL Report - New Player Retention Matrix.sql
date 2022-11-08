/*
/*
https://github.com/deltaDNA/sql-cookbook/blob/master/KPIs/New_Player_Retention_Matrix.sql
*/

----------------------------
-- New Player Retention Matrix


/*
/*
https://github.com/deltaDNA/sql-cookbook/blob/master/KPIs/New_Player_Retention_Matrix.sql
*/

----------------------------
-- New Player Retention Matrix

declare 
@install_interval interval = '7 day';

with days_data as (
select devtodevid 
		, created::date as created
		, eventtime::date as eventtime
	from p106255.sessions
	where created > current_date - @install_interval and eventtime < current_date
	group by 1, 2, 3
),

matrix as (
select created
  , count (distinct case when eventtime - created = 0 then devtodevid else null end) as "installs"
 	, count (distinct case when eventtime - created = 1 then devtodevid else null end) as "R1"
	, count (distinct case when eventtime - created = 2 then devtodevid else null end) as "R2"
	, count (distinct case when eventtime - created = 3 then devtodevid else null end) as "R3"
	, count (distinct case when eventtime - created = 4 then devtodevid else null end) as "R4"
	, count (distinct case when eventtime - created = 5 then devtodevid else null end) as "R5"
	, count (distinct case when eventtime - created = 6 then devtodevid else null end) as "R6"
	, count (distinct case when eventtime - created = 7 then devtodevid else null end) as "R7"
	, count (distinct case when eventtime - created = 8 then devtodevid else null end) as "R8"
	, count (distinct case when eventtime - created = 9 then devtodevid else null end) as "R9"
	, count (distinct case when eventtime - created = 10 then devtodevid else null end) as "R10"
	, count (distinct case when eventtime - created = 11 then devtodevid else null end) as "R11"
	, count (distinct case when eventtime - created = 12 then devtodevid else null end) as "R12"
	, count (distinct case when eventtime - created = 13 then devtodevid else null end) as "R13"
	, count (distinct case when eventtime - created = 14 then devtodevid else null end) as "R14"
	, count (distinct case when eventtime - created = 15 then devtodevid else null end) as "R15"
	, count (distinct case when eventtime - created = 16 then devtodevid else null end) as "R16"
	, count (distinct case when eventtime - created = 17 then devtodevid else null end) as "R17"
	, count (distinct case when eventtime - created = 18 then devtodevid else null end) as "R18"
	, count (distinct case when eventtime - created = 19 then devtodevid else null end) as "R19"
	, count (distinct case when eventtime - created = 20 then devtodevid else null end) as "R20"
	, count (distinct case when eventtime - created = 21 then devtodevid else null end) as "R21"
	, count (distinct case when eventtime - created = 22 then devtodevid else null end) as "R22"
	, count (distinct case when eventtime - created = 23 then devtodevid else null end) as "R23"
	, count (distinct case when eventtime - created = 24 then devtodevid else null end) as "R24"
	, count (distinct case when eventtime - created = 25 then devtodevid else null end) as "R25"
	, count (distinct case when eventtime - created = 26 then devtodevid else null end) as "R26"
	, count (distinct case when eventtime - created = 27 then devtodevid else null end) as "R27"
	, count (distinct case when eventtime - created = 28 then devtodevid else null end) as "R28"
	, count (distinct case when eventtime - created = 29 then devtodevid else null end) as "R29"
	, count (distinct case when eventtime - created = 30 then devtodevid else null end) as "R30"
from days_data
group by 1
)

select * from matrix order by 1
