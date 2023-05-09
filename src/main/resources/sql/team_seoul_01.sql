--여행지

CREATE TABLE team_seoul_01
(
  seoul_name VARCHAR2(60) PRIMARY KEY,
  seoul_postNum VARCHAR2(10) , 
  seoul_address VARCHAR2(90) NOT NULL,
  seoul_outline VARCHAR2(4000) ,
  seoul_tel VARCHAR2(50),
  seoul_opening VARCHAR2(30),
  seoul_dayOff VARCHAR2(100) ,
  seoul_experienceInfo VARCHAR2(4000),
  seoul_experienceAge VARCHAR2(90),
  seoul_limitPeople VARCHAR2(100), 
  seoul_period VARCHAR2(100) , 
  seoul_hours VARCHAR2(900),
  seoul_parking VARCHAR2(840) ,
  seoul_rentalStroller VARCHAR2(6),
  seoul_withPet VARCHAR2(6),
  seoul_detailInfo VARCHAR2(4000)
);

--DROP TABLE team_seoul_01;
SELECT * FROM team_seoul_01;

SELECT *
FROM team_seoul_01
WHERE seoul_name LIKE '%서울%';
