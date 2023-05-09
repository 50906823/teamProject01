CREATE TABLE team_jeonnam_01
(
  명칭 VARCHAR2(60) PRIMARY KEY,
  우편번호 VARCHAR2(10), 
  주소 VARCHAR2(249) NOT NULL,
  개요 VARCHAR2(4000),
  문의및안내 VARCHAR2(129),
  개장일 VARCHAR2(30),
  쉬는날 VARCHAR2(120),
  체험안내 VARCHAR2(4000),
  체험가능연령 VARCHAR2(100),
  수용인원 VARCHAR2(100), 
  이용시기 VARCHAR2(100), 
  이용시간 VARCHAR2(900),
  주차시설 VARCHAR2(840),
  유모차대여여부 VARCHAR2(6),
  애완동물동반가능여부 VARCHAR2(6),
  상세정보 VARCHAR2(4000)
);

ALTER TABLE team_jeonnam_01 RENAME COLUMN 명칭 TO name;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 우편번호 TO postNum;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 주소 TO address;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 개요 TO outline;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 문의및안내 TO tel;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 개장일 TO opening;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 쉬는날 TO dayOff;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 체험안내 TO experienceInfo;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 체험가능연령 TO experienceAge;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 수용인원 TO limitPeople;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 이용시기 TO period;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 이용시간 TO hours;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 주차시설 TO parking;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 유모차대여여부 TO rentalStroller;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 애완동물동반가능여부 TO withPet;
ALTER TABLE team_jeonnam_01 RENAME COLUMN 상세정보 TO detailInfo;

--DROP TABLE team_jeonnam_01;
SELECT * FROM team_jeonnam_01;