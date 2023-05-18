--------------------------------------------------------
--  파일이 생성됨 - 목요일-5월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TEAM_AREA
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TEAM_AREA" 
   (	"AREA_NAME" VARCHAR2(4000 BYTE), 
	"AREA_ADDRESS" VARCHAR2(4000 BYTE), 
	"AREA_EXPLANATION" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
REM INSERTING into SCOTT.TEAM_AREA
SET DEFINE OFF;
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('맘스터치_천안역점','콩나물국밥 옆집','배민으로 주문해두고 가세용~ 바로받음!');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('동천홍','편의점 골목길','도착하기 15분전 전화하기!');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('콩나물국밥','맘스터치 옆집','여기는 무조건 콩나물비빕밥!');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('시훈마라탕(경훈마라탕아님^^)','빽다방 옆집아님','소고기 서비스!!');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('빽다방','마라탕집 사이','바나나라떼 최고...');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('롯데리아_천안역','천안역안에 어딘가...','난 데리버거 최고...');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('신포우리만두','검색ㄱㄱ','돌솥 제육덮밥 꼭...');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('예산국수','천안역앞 언덕 올라가는 길...','비빔국수 존맛...!');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('아라기쌀국수','신포만두 앞집!','분짜 또 먹고싶다..');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('하노이쌀국수','콩나물국밥 옆집(맘스터치 반대편)','아직 서툰사장님... 언제 빨리나올까');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('메가커피','천안역 골목 옆에!','손흥민...광고모델...');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('김밥천국_천안역점','음...버스정류장 근처?','김밥집에 김밥이 맛있겠지,,');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('휴먼교육센터','충남 천안시 동남구 대흥로 215, 7층, 8층','T.041-561-1122');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('달식당','충남 천안시 동남구 대흥로 215 백자빌딩 1층 102호 달식당','😋😋돈까스 맛있음!! 친구랑 같이 가서 냉모밀+돈까스 같이 주문해서 노나먹으면 진짜 개꿀맛 👍');
--------------------------------------------------------
--  DDL for Index SYS_C007728
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007728" ON "SCOTT"."TEAM_AREA" ("AREA_ADDRESS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  Constraints for Table TEAM_AREA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TEAM_AREA" MODIFY ("AREA_NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TEAM_AREA" MODIFY ("AREA_EXPLANATION" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TEAM_AREA" ADD PRIMARY KEY ("AREA_ADDRESS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 167 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE"  ENABLE;
