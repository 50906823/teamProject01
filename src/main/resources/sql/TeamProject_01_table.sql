CREATE TABLE team_area_info
(
    area_num VARCHAR2(3) PRIMARY KEY,
    area_name VARCHAR2(15)
);

SELECT * FROM team_area_info;

--DROP TABLE team_area_info;

INSERT INTO team_area_info VALUES ('02', '서울');
INSERT INTO team_area_info VALUES ('051', '부산');


--INSERT INTO team_area_info VALUES ((SELECT NVL(MAX(no),0)+1
--                                 FROM team_area_info
--                                 WHERE no = ?)
--                                 ,?, ?);


서울 02 부산 051 대구 053 인천 032 광주 062 
대전 042 울산 052 세종 044 경기 031
강원 033 충북 043 
충남 041 전북 063 전남 061 경북 054 경남 055 제주 064



경상북도
경상남도

전라북도
전라남도
충청남도

제주특별자치도