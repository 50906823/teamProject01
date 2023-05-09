--여행지

CREATE TABLE team_Daegu_01
(
  name  VARCHAR2(60) PRIMARY KEY,
  postNum VARCHAR2(10) , 
  address  VARCHAR2(90) NOT NULL,
  outline  VARCHAR2(4000) ,
  tel       VARCHAR2(80),
  opening  VARCHAR2(1000),
  dayOff    VARCHAR2(100) ,
  experienceInfo VARCHAR2(4000),
  experienceAge  VARCHAR2(90),
  limitPeople VARCHAR2(100), 
  period  VARCHAR2(100) , 
  hours  VARCHAR2(900),
  parking    VARCHAR2(840) ,
  rentalStroller  VARCHAR2(6),
  withPet VARCHAR2(6),
  detailInfo  VARCHAR2(4000)
);


--DROP TABLE team_Daegu_01;
SELECT * FROM team_Daegu_01;

