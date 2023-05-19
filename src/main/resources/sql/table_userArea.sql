--------------------------------------------------------
--  파일이 생성됨 - 금요일-5월-19-2023   
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
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('빨간맛','충남 천안시 동남구 먹거리11길 16','같이 닭발 먹으러 가실 분 밴드메시지 ㄱㄱ 존맛탱구리❣❣❣');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('이조초밥','충남 천안시 동남구 먹거리11길 14 1층 이조초밥','상무초밥을 너무 많이 먹은 당신, 이조초밥은 어떠신지?');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('상주 소담양평칼국수','우방아파트 근처','진짜 존맛 김치가 미쳤어요 칼국수랑 김치랑 같이먹으면 진짜 그날 하루는 굶어도 됨 상주 근처 가면 무조건 믿고 가야함 시간 절대 안아까우니 꼭 드세요 !  -다현-');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('상주 명실상감한우','외답동 어딘가','맛있는 녀석들에서 출현한 소고기 맛집 가격이 좀 있는 편이지만 누가 밥사준다고 하면 무조건 여기로 가세요 대접하기도 딱 좋고 맛있습니다. 참고로 갈비탕은 하루 100개한정 대부분 12시쯤이면 없어요 일찍가서 ㄹㅇ');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('황소식당','상주에서 지도 검색','시골에있는 중국집 맛집 뭐 모르고 곱빼기 시키면 4명이서 먹어야 다 먹을수 있어요 그러니까 절때 곱빼기 금지 .. 까지는 아니고 배가 엄청 고프면 드세요 맛도 맛있어요 볶음우동 존맛탱 ㅎㅎㅎ -다현-');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('별일이네김밥','천안역 근처','내 돈주고는 안사먹을거같아요 .. 비추천.. 맛이없어요 ㅠㅠ 진짜 맛없어요 ㅠㅠ ');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('상주 선산김치곱창','상주 시장 근처','이거 하나 있으면 밥 3일간 먹어요 진짜 맛있어요 매장에서 먹으면 다 먹고 볶음밥까지 만들어 먹으면 진짜 꿀맛 (소주필수) -다현-');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('이고집 만두','충남 천안시 동남구 태조산길 258','만두전골 먹고옴. 원래 웨이팅 있는데 타이밍 좋아서 바로 먹음 ㅋㅋㅋ
진짜 맛있고 양도 많아서 배부르게 잘 먹음 굿!!!!!!
근데 차 있어야 왔다갔다 편함. 버스로는 힘들듯....');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('휴먼교육센터 6교육실 김성훈의 하우스','국가 기밀...에바..','성훈이가 지내고 있는 이유가 있다. 이 비밀의 장소를 찾아내면 무언가 사건이 일어날지도...?');
Insert into SCOTT.TEAM_AREA (AREA_NAME,AREA_ADDRESS,AREA_EXPLANATION) values ('심바네','두정동','엉클하우스.심바집
홍재 삼촌네 강아지(남(이었음), 2)가 있는 곳
순심이 라이벌 (심바가 순심이에게 대결을 요청합니다.)
-심바교 전도사-');
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
