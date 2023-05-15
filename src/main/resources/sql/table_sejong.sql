--------------------------------------------------------
--  파일이 생성됨 - 월요일-5월-15-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TEAM_SEJONG_01
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TEAM_SEJONG_01" 
   (	"NAME" VARCHAR2(60 BYTE), 
	"POSTNUM" VARCHAR2(10 BYTE), 
	"ADDRESS" VARCHAR2(90 BYTE), 
	"LATITUDE" NUMBER(20,0), 
	"LONGITUDE" NUMBER(20,0), 
	"OUTLINE" VARCHAR2(4000 BYTE), 
	"TEL" VARCHAR2(80 BYTE), 
	"OPENING" VARCHAR2(1000 BYTE), 
	"DAYOFF" VARCHAR2(110 BYTE), 
	"EXPERIENCEINFO" VARCHAR2(4000 BYTE), 
	"EXPERIENCEAGE" VARCHAR2(90 BYTE), 
	"LIMITPEOPLE" VARCHAR2(130 BYTE), 
	"PERIOD" VARCHAR2(100 BYTE), 
	"HOURS" VARCHAR2(900 BYTE), 
	"PARKING" VARCHAR2(840 BYTE), 
	"RENTALSTROLLER" VARCHAR2(6 BYTE), 
	"WITHPET" VARCHAR2(6 BYTE), 
	"DETAILINFO" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
REM INSERTING into SCOTT.TEAM_SEJONG_01
SET DEFINE OFF;
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('비암사(세종)','30008','세종특별자치시 전의면 비암사길 137(전의면)',37,127,'* 810년 된 느티나무가 있는 비암사 *<br /><br />세종시 전의면 비암사길 137 비암사는 2,000여 년 전 삼한시대의 절이라고 하지만 정확하진 않다. 통일신라 말기 도선국사가 창건했다는 설도 있다. 삼층석탑은 고려시대의 것으로 추정되며, 조선시대 기록에 비암사라는 이름이 나온다. 1960년 삼층석탑 꼭대기에서 ‘계유명전씨아미타불비상’이 발견되어 국보로 지정됐다. 이밖에 17세기에 제작된 것으로 알려진 영산회 괘불탱화와 소조아미타여래좌상이 있다. 비암사에서 방문객을 가장 먼저 반기는 것은 810년 된 느티나무. 높이 15m, 둘레 7.5m인 이 나무는 비암사로 오르는 계단 옆에 있다. 비암사 주차장에 차를 세운 뒤 바로 절로 올라가지 말고 화장실 뒤로 난 계단을 따라 산으로 조금만 올라가면 비암사를 한눈에 담을 수 있다.<br>','044-863-0230',null,'연중개방',null,null,null,null,null,'주차 가능','불가','없음','입 장 료:무료
화장실:있음
한국어 안내서비스:가능
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('운주산성','30009','세종특별자치시 전동면 청송리 산90',37,127,'일명 고산산성으로 백제시대의 유물이다. 전동면 미곡리, 청송리와 전의면 동교리, 신정리 경계 지점에 운주산(459.7m)이 솟아있다. 운주산성은 바로 이 운주산을 이용한 산성이다. 산성 서쪽 아래편으로는 경부고속 철길이 놓인다. 운주산성은 성의 둘레 3,210m, 폭 2m, 높이 2~8m의 웅장한 백제산성으로, 분지형의 산세와 수려한 풍치가 일품이다.성벽은 자연 지형을 최대한 이용하면서 축성되었는데, 북벽과 동벽은 운주산 정상에서 서쪽과 남쪽으로 뻗어내린 능선을 따라 이어졌으며 남벽은 산봉우리를 에워싸면서 축조되었고, 서벽은 서쪽으로 뻗어내린 능선을 가로지르면서 축성되었다. 따라서 북쪽은 해발고도가 높고 서남쪽이 낮은 지형으로 이루어져 있다.서문, 남문, 북문에서 문지(門址)가 확인되는데 붕괴되어 자세한 형상을 알 수 없다.

성 안에는 성문과 건물터, 우물터 등이 남아 있는데, 정상부에는 기우제(祈雨祭)를 지낸 제단으로 보이는 원형 대지가 있다. 또 성 안에서는 백제 토기편과 기와편이 출토되었고, 고려시대와 조선시대의 자기편과 기와편도 발견되었다. 이 산성은 내성과 외성으로 이루어져 있어서 고대 산성 연구에 중요한 자료가 된다.운주산성은 서기 660년 백제가 멸망하고 풍왕과 복신, 도침장군을 선두로 일어났던 백제부흥 운동군의 최후의 구국항쟁지로 알려져 있다. 운주산 등산로 입구에 사찰(고산사)이 있으며 백제가 멸망한 매년 음력 9월 8일을 기해 토요일 백제 멸망기의 의자왕과 부흥기의 풍왕 그리고 백제부흥운동을 하다, 죽은 혼령을 위로하기 위해 고산제를 지내고 있다.','044-861-2114',null,'연중개방',null,null,null,null,'00:00~24:00','주차가능','없음','없음','입 장 료:무료
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('영평사','30054','세종특별자치시 장군면 영평사길 124(장군면)',36,127,'대한불교조계종 제6교구 마곡사 말사로서 6동의 문화재급 전통건물과 3동의 토굴을 갖춘 대한민국 전통사찰의 수행도량이다. 산은 작지만 풍수적으로는 금강을 거슬러 올라가는 역룡(逆龍)이라 하여 기운이 세찬 명당이라 불린다. 장군산!(將軍山) 국토의 7할이 산인 우리나라, 산봉우리 이름이 장군봉인 산은 많다. 하지만 과문한 탓이겠지만 산의 이름이 장군인 산은 아직 듣지 못했다.<br /><br />어느 등산가는 큰 나무숲도 없고 두 시간이면 다녀오는 정상을 다녀와서 하시는 말씀 “태백산에서도 느끼지 못한 거대한 기운, 어떤 두려움 같은 경외심을 느꼈어요, 굉장히 큰 산입니다, 이 명산에 안겨있는 영평사 앞으로 대한민국 국찰(國刹)이 되겠습니다.” 어찌되었든 들어오면 편안하다고들 말하는 영평사는 아직도 반딧불과 가재 다슬기가 사는 청정한 물과 공기를 간직한 조용하고 아늑하며 청정한 수행도량이다. 봄에는 매발톱꽃, 할미꽃이요 여름에는 백련이며 가을에는 구절초 꽃 등 온갖 들꽃들이 앞 다투어 반기는 꽃 대궐이기도 하다.<br /><br />* 영평사의 유래 *<br /><br />스승이 머물고 있는 도량으로 영원하고 궁극적인 행복을 선사하는 곳이며, 또한 도량에서 추구해야 할 일이 바로 중생의 행복과 세계의 평화라고 믿기 때문에, 이 도량에 상주하는 대중은 물론 한 번 다녀가거나 절 이름을 생각만 해도 최고의 행복을 얻으라는 원력으로 영평사(永平寺)라고 한다.<br>','044-857-1854',null,'연중무휴','템플스테이 안내 <a href="http://youngpyungsa.templestay.com/"target="_blank" title="새창: 템플스테이 ">http://youngpyungsa.templestay.com/</a>',null,null,null,null,'주차 가능','없음','없음','화장실:있음
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('합호서원','30134','세종특별자치시 연동면 원합강1길 262-6(합강리)',37,127,'1984년 5월 17일 충청남도문화재자료로 지정되었다. 2012년 해제되었다가 같은 해 12월 31일 문화재자료로 지정되었다. 1716년(숙종 42) 안경신·안경인·안경정 등이 고려 때의 학자 안향(安珦:1243∼1306)의 영정을 봉안하고 매년 3월 3일과 9월 9일 향사를 지내다가 고종 때 서원철폐령에 따라 훼철되었다. 그 후 후손들이 합호사(合湖祠)를 건립하여 춘추로 향사하다가, 1949년 전국 218개 향교의 동의를 얻어 합호서원을 부설하였다. 정면 3칸 측면 2칸의 맞배지붕 기와집으로 현재 연기유림회 주최로 매년 9월 12일 안향의 제삿날에 제사를 지낸다. 안향은 순흥(順興) 출신으로, 호는 회헌(晦軒), 시호는 문성공(文成公)이다. 1260년(고려 원종 원년) 문과에 급제하여 교서랑(校書郞)이 되고, 1270년 삼별초의 항쟁 때 강화에 억류되었다가 탈출한 뒤 감찰어사(監察御史)가 되었다. 1286년(충렬왕 12) 왕을 따라 원(元)나라에 가서 연경(燕京)에서 처음으로 《주자전서(朱子全書)》를 보고 필사하여 고려로 가지고 들어왔다. 이후 성리학 연구에 몰두, 고려 말기의 유학 진흥에 큰 공적을 남겼다.<br>','044-330-5832',null,null,null,null,null,null,null,null,'없음','없음',null);
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('전의향교','30004','세종특별자치시 전의면 북촌1길 5-18',37,127,'1416년(태종 16)에 현유(賢儒)의 위패를 봉안, 배향하고 지방민의 교육과 교화를 위하여 창건되었다. 그뒤 임진왜란중에 소실되었다가 1684년(숙종 10) 현재의 위치에 중건하였고, 1867년·1891년·1938년·1958년·1970년·1972년에 각각 중수하였다. 현존하는 건물로는 대성전·동무(東廡)·서무(西廡)·명륜당·동재(東齋)·서재(西齋)·전사청(典祀廳)·내신문(內神門)·외신문(外神門)·제기고(祭器庫) 등이 있다. 대성전에는 5성(五聖), 송조4현(宋朝四賢), 우리나라 18현(十八賢)의 위패를 봉안하고 있다. 조선시대에는 국가로부터 토지와 전적·노비 등을 지급받아 교관 1명이 정원 30명의 교생을 가르쳤으나 갑오개혁 이후 신학제 실시에 따라 교육적 기능은 없어지고 봄·가을에 석전을 봉행하며 초하루·보름에 분향을 하고 있다. 소장 전적은 판본 4종 8책, 사본 3종 3책 등 총 7종 11책이 있으며, 이 중『선안(仙案)』·『재임록(齋任錄)』·『훈사(訓辭)』등은 이 고장의 향토사연구에 좋은 자료가 된다. 전의향교는 세종특별자치시 기념물로 지정되어 있으며, 현재 전교(典校) 1명과 장의(掌議) 수명이 운영을 맡고 있다.<br>','044-211-4022',null,null,null,null,null,null,null,null,'없음','없음',null);
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('세종리 은행나무 (구, 양화리 은행나무)','30061','세종특별자치시 연기면세종리 88-5',37,127,'세종리 마을 앞에는 은행나무 두 그루가 있는데, 이것은 고려말에 이곳으로 낙향한 전서(典書) 林蘭秀가 심은 것으로 압각(鴨脚)이라 부른다. 그는 이성계가 왕이 되자 벼슬도 마다하고 낙향하여 암수 두 그루의 은행나무를 심고 낚시로 소일하며 지냈다. 어느 해인가 일본 사람에게 이 은행나무를 팔았는데 일본 사람들이 나무를 베려고 하자, 나무가 ''웅'' 소리를 내고 울어 베지 못했다고 한다.<br>','044-300-5832~6',null,null,null,null,null,null,null,null,'없음','없음',null);
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('뒤웅박고을','30010','세종특별자치시 전동면 배일길 90-43(전동면)',37,127,'뒤웅박고을은 전통장류로 유명한 곳이다. 전통장류박물관(체험장), 전통장류음식 전문식당, 전통장류 등 전시판매장, 커피전문점, 대규모 장독대, 야외전시장 등이 있다. 전통장류박물관은 130여 점의 옹기 유물을 전시하고 있다. 또, 1950년대 뒤웅박고을 설립자의 어머니가 담근 씨간장과 장항아리를 볼 수 있다. 전통장의 제조 과정을 그림과 실물을 통해 보여주며, 이밖에 뒤때그릇, 제주도 화산토로 만든 물허벅, 옹기 등도 있다. 체험 프로그램으로는 콩가루를 이용한 천연비누만들기, 옹기향초만들기, 콩다식만들기 등이 있다. 식당에서는 전통장류음식을 코스 요리로 즐길 수 있다. 다양한 장류를 직접 구매하는 것도 가능하다. 뒤웅박고을의 백미는 야외에 있는 대규모 장독대다.','044-868-4892<br/>
세종전통장류박물관 044-868-7007',null,'매주 월요일, 설/추석 연휴','계절별로 상이함으로 자세한 사항은 홈페이지 참조',null,null,null,'[세종전통장류박물관]<br/>
- 하절기(3월~10월) 평일 10:00~18:00/주말·공휴일 10:00~17:30<br/>
- 동절기(11월~2월) 평일 10:00~17:30/주말·공휴일 10:00~17:30<br/>','주차가능','불가','불가','화장실:있음
이용가능시설:세종전통장류박물관, 장향관, 가비향, 세미나실, 전시판매장 등

입 장 료:무료
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('세종호수공원 일원','30106','세종특별자치시 연기면 호수공원길 155',36,127,'세종호수공원 일원은 전국 최대 규모의 호수공원(69만여㎡), 140여만㎡ 규모의 중앙공원(1단계:‘20.11.4. 개장, 2단계:‘21년 착공), 65만여㎡ 규모의 국립세종수목원(‘20.10.17. 개장)이 연접한 약 275만㎡에 달하는 도심녹지공간(Sejong Central Park)으로, 다양한 식물과 테마형 정원 등을 관람할 수 있는 휴양 및 여가 관광명소다. 세종중앙공원과 세종시청을 잇는 금강보행교(L=1.65km, B=12~30m / ''20.7월 준공)가 건설 중이며, 도심 속에서 자연을 느끼고 체험하는 등 일상 속에서 지친 심신을 힐링할 수 있는 세종시 대표 관광지다. 가족, 커플이 함께 즐길 수 있는 호수 주변 무동력 자전거도 체험해볼 수 있다.<br>','044-301-3926',null,'연중무휴',null,null,null,null,'05:00 ~ 23:00','※ 4개소/총 1,216대(제1주차장 377대 / 제2주차장 239대 / 제3주차장 300대 / 제4주차장 300대)','없음','가능','관광코스안내:[A코스] 중앙광장 - 무대섬 - 물놀이섬 - 물꽃섬 - 수변전통정원 - 중앙광장(도보 약 30분 / 자전거 약 15분)<br />
[B코스] 중앙광장 - 무대섬 - 푸른들판 - 습지섬 - 청음지 - 축제섬 - 중앙광장(도보 약 45분 / 자전거 약 20분)<br />
[C코스] 호수공원 전체(도보 약 1시간 - 무대섬 경유시 약 1시간 20분 / 자전거 약 30분 - 무대섬 경유시 약 35분)
주차요금:무료
화장실:공영화장실 있음
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('밀마루전망대','30064','세종특별자치시 도움3로 58(어진동)',37,127,'세종시의 중심행정타운 중앙에 조성된 밀마루전망대는 동서남북 어디서든 도시의 모습을 관람할 수 있도록 설계되었다. 이 전망대에 오르면 하루가 다르게 변화하는 세종시의 모습과 공주, 조치원 등 인근 지역을 한 눈에 볼 수 있다. 또한, 세종시 전체 조감도와 첫마을 조감도, 토지이용 조감도도 설치해 놓아 조감도를 살펴보면서 세종시 미래의 모습을 동시에 상상해 볼 수 있다.<br /><br />- 설치일 : 2009년 3월 12일<br />- 높이 : 42m (해발 : 98m)<br />- 특징 : 누드 엘리베이터와 슬림형<br>','044-862-8845',null,'연중무휴 (설날,추석 당일은 전화로 휴무 확인)',null,null,'엘리베이터 탑승인원(12명)<br>전망대 전체 관람객(약 30명)',null,'09:00~18:00','있음','없음','없음','화장실:있음
관 람 료:무료
내국인 예약안내:인원수에 제한이 있으므로 단체관람시 사전 예약
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('연기향교','30058','세종특별자치시 연기면 교촌3길 13(연기면)',37,127,'1416년(태종 16)에 현유(賢儒)의 위패를 봉안, 배향하고 지방민의 교육과 교화를 위하여 창건되었다. 1865년(고종 2)에 명륜당을 중수하고, 1887년에 현재의 위치로 이건하였다. 1901년에 전사청(典祀廳), 1936년에 명륜당, 1949년에 대성전을 각각 중수하였다. 현존하는 건물로는 6칸의 대성전, 명륜당, 전사청 등이 있다. 대성전에는 5성(五聖), 송조4현(宋朝四賢), 우리나라 18현(十八賢)의 위패를 봉안하고 있다. 조선시대에는 국가로부터 토지와 전적·노비 등을 지급받아 교관 1명이 정원 30명의 교생을 가르쳤으나, 갑오개혁 이후 신학제 실시에 따라 교육적 기능은 없어지고 봄·가을에 석전(釋奠)을 봉행하며, 초하루·보름에 분향하고 있다. 이 향교는 세종특별자치시 기념물로 지정되어 있으며, 소장전적은 판본 22종 36책, 사본 34종 60책 등이 있다. 이 중 『향교둔전도조기(鄕校屯田賭租記)』·『구폐절목(捄弊節目)』·『향약강조(鄕約綱條)』·『향약좌목(鄕約座目)』·『청금좌목(靑衿座目)』·『원생안(院生案)』 등은 이 지방의 향토사연구에 귀중한 자료이다. 현재 향교의 운영은 전교(典校) 1명과 장의(掌議) 수명이 담당하고 있다.<br>','044-863-4219',null,null,'교실에서 만나는 전통인성교육<br />
한문경전 성독대회',null,null,null,null,null,'없음','없음',null);
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('아람달 체험마을','30010','세종특별자치시 전동면 운주산로 606',37,127,'세종시 아람달 체험마을은 활력 넘치고 살맛나는 농촌으로 발돋움하기 위해 여섯 개 마을이 의기 투합한 농촌마을 종합개발사업으로 시작되었다.아람달은 정겨운 농촌 분위기 속에서 현대적인 펜션형 숙박, 세미나실, 풋살 경기장 등 이용자를 배려한 다양한 편의 시설을 완비하고 있다. 또한 자라나는 청소년에게는 도시에서 할 수 없는 색다른 체험을, 어른들에게는 그 시절 농촌 문화의 아련한 추억을 떠올릴 수 있도록 각종 민속체험, 농촌체험, 로컬푸드 등을 제공한다.<br>','044-868-1055',null,null,'충청, 대전지역어린이 농촌체험 여행안내, 두부만들기, 짚풀공예만들기, 한과만들기, 비누만들기, 인절미 떡매치기',null,'숙박 - 100명, 당일 체험 - 150명, 1박 2일 패키지 (시설체험 + 농촌체험 or 민속체험) - 80명 수용가능',null,null,'있음 (승용차 20대, 대형버스 2대)','없음','없음','시설이용료:* 펜션형 숙박시설<br />
- 25인 기준 (최대 30인 수용가능) 250,000원<br />
- 6인 기준 (최대 8인 수용가능) 100,000원<br />
- 4인 기준 (최대 6인 수용가능) 60,000원<br />
- 황토방 (최대 7인 수용가능) 120,000원<br />
<br />
* 체육시설<br />
- 풋살장 / 족구장 40,000원<br />
<br />
* 세미나실<br />
- 대강당 (120석) 200,000원 / 소강당 (60석) 60,000원<br />
<br />
※ 각종 체험비용 별도
이용가능시설:숙박시설, 식당, 아람달 체험농장, 풋살장, 족구장, 세미나실 등

');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('조천연꽃공원','30036','세종특별자치시 조치원읍 번암리 226',37,127,'조천변 벚꽃길은 세종시 북부권의 젖줄인 조천을 따라 이어진다. 조천변 벚꽃길은 부용리 벚꽃길, 고복저수지 벚꽃길과 함께 세종시 3대 벚꽃길로 꼽히는 봄철의 명소지만 봄 이외의 계절에도 저마다의 매력을 갖고 있다. 특히, 여름철에는 벚나무가 제공하는 그늘과 조천을 따라 불어오는 시원한 바람, 조천연꽃공원의 연꽃이 어우러져 한 낮 산책도 부담스럽지 않다. 세종시 북부권의 젖줄답게 이 곳에는 조천과 얽힌 많은 이야기들이 지금까지 전해지고 있다. 전의면 다방리에서 발원해 미호천과 금강으로 유입되는 조천은 갈대와 억새풀이 무성하여 새들이 많이 모이는 곳이라는 뜻에서 ‘새내’, 한자로 ‘조천’이라고 부른데서 그 이름이 유래됐다고 전해진다. 또한 통일신라 초기인 673년 백제 유민인 혜명법사가 창건했다는 비암사와 고려시대 사기를 제작하던 ‘사기소’가 있고, 금이성, 운주산성 등 역사유적과 조천에 보를 쌓아 물길을 잡은 허만석 현감의 이야기 등도 흥미롭다. 이렇게 다양한 조천의 이야기들을 함께 걷는 사람과 나누며 걷는 것도 특별한 경험이 될 것이다.<br>','044-300-5335',null,null,null,null,null,null,'연중개방<br />
* 가로등 점등시간<br />
- 봄, 여름, 가을철 : 일몰 ~ 24시<br />
- 겨울철 : 일몰 ~ 22시',null,'없음','없음',null);
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('국립세종수목원','30106','세종특별자치시 연기면 수목원로 136',36,127,'국내 최초의 도심형 수목원으로 개장 앞둔 국립세종수목원은 여러 정부 부처가 위치한 세종정부청사와 인접하게 65ha 면적에 조성되었으며, 국내 최대 사계절온실, 한국전통정원, 학습의 장인 청류지원, 분재원 등 다양한 테마로 2,834종 172만본(교목 45,958주 포함)의 식물 관람이 가능하다. 기후 및 식생대별 수목유전 자원의 보존 및 자원화를 위한 국가수목원 확충계획에 따라 국립백두대간수목원에 이어 설립된 또하나의 국립수목원이다.','044-251-0001',null,'매주 월요일, 1월 1일, 설추석 당일 (월요일이 공휴일인 경우 그 다음날 휴관)','해설프로그램','전연령',null,null,'[3월~10월] 09:00~18:00<br />
[11월~2월] 09:00~17:00<br />
※ 입장마감은 관람시간 마감 1시간전','주차가능','없음','불가','입 장 료:성인 : 개인 5,000원 / 단체(20인 이상) 4,000원<br>
청소년 : 개인 4,000원 / 단체(20인 이상) 3,000원<br>
어린이 : 개인 3,000원 / 단체(20인 이상) 2,000원<br/>
※ 무료 : 만 6세 이하 65세 이상, 장애인, 국가유공자, 독립유공자, 참전용사, 기초 수급자, 숲사랑지도원, 등
이용가능시설:푸트코트, 전문식당, 카페/베이커리, 편의점 등
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('금강보행교','30151','세종특별자치시 연기면 세종리',36,127,'세종시의 랜드마크가 될 금강보행교는 2018년 7월에 착공을 시작하여 2022년 3월 임시 개통을 앞두고 있다. 국내 최초로 복층 일면 강관트러스교로 지어졌으며, 독창적인 디자인으로 도시미관 향상에 크게 기여할 것으로 보여진다. 금강보행교는 환상의 시간여행 이라는 설계 개념으로, 교량상부(폭 12m)는 보행편의를 위한 휴게 및 편의시설과 다양한 이벤트, 놀이 체험시설이 가득한 녹지 보행공간으로 조성했고, 교량하부(폭 7m)에는 쾌적한 자전거 전용도로를 설치하여  보행자 안전을 보장하고 자전거 이용자들에게도 편의를 제공할 예정이다.<br>','044-868-9127',null,null,null,null,null,null,'06:00~23:00(연중무휴)','주차가능','없음','없음','입 장 료:무료
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('별신(삼버들협동조합)','30075','세종특별자치시 부강면 시장1길 6-2',37,127,'삼버들협동조합은 큰 버드나무 세 그루가 있었다 하여 지어진 부강의 옛 지명 ‘삼버들’에서 따온 이름으로 전통문화향유 활성화 사업 및 교육 콘텐츠를 기획하는 마을기업이다. 2018년부터 14개의 지역 문화재를 활용한 도보여행 코스 ‘작은 여행자마을’을 운영하며 역사공간을 활용해 문화공연과 돌잔치, 전통혼례장소 대관을 하고 있다.','044-863-5735',null,'토, 일(프로그램 예약시 주말 운영)','체험 : 도보투어, 민화체험 / 판매 : 육포',null,null,null,'10:00~15:00','5대','없음','없음','이용가능시설:삼버들작은도서관, 부강성당, 김재식고가, 부강초등학교 등
입 장 료:체험 : 15,000원 / 판매 : 45,000원
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('원수산습지생태원',null,'세종특별자치시 연기면 세종리 734-4',37,127,'원수산습지생태원은 세종시 연기면 세종리에 있다. 생태원 내에는 보존습지, 수생식물습지, 건생습지, 조류관찰공간, 생태학습장, 단풍나무숲, 산책로 등이 갖춰져 있다. 생태원은 서세종IC 와 가까운 거리에 있다. 주변에는 전월산국민여가캠핑장, 세종중앙공원이 있다.','044-120',null,null,null,null,null,null,null,'있음','없음','없음',null);
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('도토리숲키즈파크','30054','세종특별자치시 장군면 영평사길 34',36,127,'도토리숲키즈파크는 세종시 장군면 산학리에 자리 잡고 있다. 아이들이 안전하고 신나게 즐길 수 있는 놀거리가 많다. 자연 친화적인 공간에 숲속 놀이터를 비롯해 쁘띠아르 조각공원, 소나무 산책길, 싱커토이 놀이터, 상상블록, 갤러리 랑 등 여러 시설이 갖춰져 있다. 이곳은 서세종IC에서 가까운 거리에 있다. 주변에는 연계 여행지로 삼기 좋은 세종호수공원과 전월산 국민 여가 캠핑장이 있다.','044-868-1103',null,null,'숲속 놀이터, 싱커토이 놀이터, 상상블록 등',null,null,null,'10:00 - 18:00','주차가능','없음','없음','입 장 료:입장료 10,000원(24개월 미만 무료), 개인의 경우 1인당 음료 1잔 제공<br>※ 이용요금은 변동될 수 있으므로 홈페이지 참조 또는 전화 문의 요망		

');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('세종어린이천문대(세종미리내천문대)','30008','세종특별자치시 전의면 의당전의로 4',37,127,'세종 어린이천문대는 세종시 전의면 다방리에 자리 잡고 있다. 인류가 탐사선을 보냈고 직접 우주로 나가 탐험하는 우주를 통해 꿈을 키우는 곳이다. 또한 우주를 통해 과학을 배우는 곳이며 인류가 상상의 나래를 펼친 우주를 통해 생각하는 힘을 기르는 곳이다. 세종시 전역에서 20~25분 거리에 자리하며 은하수와 어두운 밤하늘 천체를 볼 수 있는 좋은 관측 환경을 갖추었다. 자라나는 아이들에게 별과 우주에 대한 관심과 호기심을 채워줄 수 있다.','044-867-1730',null,'일요일',null,null,null,null,'14:30 - 23:00','주차가능','없음','없음','입 장 료:체험 프로그램 12명 이하 1팀당 1회 420,000원<br>※ 이용요금은 변동될 수 있으므로 홈페이지 참조 또는 전화 문의 요망

');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('뽀로로파크 세종점','30121','세종특별자치시  갈매로 351 에비뉴힐B동 지하1층',36,127,'뽀로로파크 세종점은 세종특별자치시 어진동에 있다. 놀이를 하면서 교육 효과를 창출하는 에듀테인먼트 공간이며, 친근한 뽀로로 캐릭터로 어린이들을 서로 연결하고 함께 즐기는 놀이문화의 장이다. 입구로 들어서면 뽀로로 오션월드를 시작으로 뽀로로 기차 정거장, 삐삐뽀뽀 우주선, 뚜뚜 드라이빙, 패티 게임존 등 여러 가지 즐길 거리가 펼쳐진다. 서세종 IC에서 가깝고 주변에 국립세종수목원과 세종호수공원이 있다.','044-417-6886',null,'명절 당일','뽀로로 오션월드, 뚜뚜 드라이빙, 통통이 소극장 등',null,null,null,'11:00~19:00','있음',null,null,':
:
시설이용료:어린이 2시간 23,000원, 성인 2시간 8,000원, 어린이 3시간 26,000원, 성인 3시간 8,000원
:
');
Insert into SCOTT.TEAM_SEJONG_01 (NAME,POSTNUM,ADDRESS,LATITUDE,LONGITUDE,OUTLINE,TEL,OPENING,DAYOFF,EXPERIENCEINFO,EXPERIENCEAGE,LIMITPEOPLE,PERIOD,HOURS,PARKING,RENTALSTROLLER,WITHPET,DETAILINFO) values ('베어트리파크','30009','세종특별자치시 전동면 신송로 217',37,127,' 세종특별자치시에 위치한 베어트리파크는 2009년 5월 개장하였다. 이재연 설립자가 50여년간 가꾸어온 식물과 동물들이 자라 숲과 군락을 이루어 현재의 베어트리파크가 되었다. 베어트리파크 33만여㎡(10만 평)의 대지에 1,000여종 40여만 점에 이르는 꽃과 나무, 비단잉어와 반달곰, 꽃사슴 등이 어우러진 곳이다. 백여마리의 비단잉어가 서식하는 오색연못을 시작으로 수백 마리의 반달곰과 불곰이 재롱을 부리는 모습을 직접 볼 수 있다. 베어트리파크를 한눈에 볼 수 있는 전망대를 시작으로 사시사철 꽃을 피우는 베어트리정원, 아기반달곰과 사슴, 공작새, 원앙 등을 관람할 수 있는 애완동물원 등이 조성되어 있다. 희귀한 소나무를 수집해 조성한 송백원, 고사목과 향나무가 조화를 이룬 하계정원, 수천 송이의 장미를 감상할 수 있는 장미원, 국내 야생화를 모아둔 산책로인 야생화 동산, 다양한 종류의 분재를 만나 볼 수 있는 분재원, 국내에서 보기 힘든 열대 식물을 한자리에 모아 놓은 열대온실원, 선인장과 과목, 나무화석 등 다양한 볼거리가 가득한 만경비원, 수령 100년 이상 된 향나무 사이로 산책로를 조성한 향나무동산, 800년 된 느티나무가 있는 우리나라 지도 모양으로 만든 유럽식 정원 송파원 등이 있다. 11월부터 2월까지 동절기에는 비단잉어 실내 관람 시설에서 먹이주기 체험이 가능핟. 여러 개의 야외 연못에 분산되어 있던 1,000여 마리의 비단잉어가 따듯한 겨울을 날수 있도록 한곳에 모여 더욱 장관을 이룬다. 먹이를 뿌리면 와르르 모여드는 비단 잉어떼를 만나볼 수 있다.<br>','044-866-7766','2009년 5월 11일','연중무휴','먹이주기 체험(곰, 비단잉어, 사슴, 염소 등)',null,null,null,'3월~11월 : 09:00 ~ 일몰시<br />
12월~2월 : 10:00 ~ 17:00 또는 18:00','있음','가능','불가','화장실:있음
입 장 료:대인(중학생 이상) 12,000원 / 청소년 10,000원 / 소인(만 3세~초등학생) 8,000원

이용가능시설:[주요시설]<br />
오색연못, 베어트리정원, 애완동물원, 반달곰동산, 야생화동산, 전망대, 잔디광장, 곰조각공원, 열대식물원 등<br /><br />
[부대시설]<br />
웰컴레스토랑, 베어트리 카페, 베어트리 라운지, 푸드코트
주차요금:무료
내국인 예약안내:단체 방문시 사전예약<br />
- 대인 단체 문의/예약 044-866-7766, 863-2220<br />
- 소인 단체 문의/예약 044-863-5566
');
--------------------------------------------------------
--  DDL for Index SYS_C007673
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007673" ON "SCOTT"."TEAM_SEJONG_01" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  Constraints for Table TEAM_SEJONG_01
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TEAM_SEJONG_01" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TEAM_SEJONG_01" ADD PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE"  ENABLE;
