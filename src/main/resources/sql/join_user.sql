-- 회원정보 테이블 추가
CREATE TABLE USERS (
  userID VARCHAR2(20) PRIMARY KEY,
  userPassword VARCHAR2(100) NOT NULL,
  userName VARCHAR2(50) NOT NULL,
  userGender CHAR(1) NOT NULL,
  userPhone VARCHAR2(15) NOT NULL,
  USER_EMAIL VARCHAR2(100) NOT NULL
);

-- 관리자 계정 추가 -> 커밋하기!!!!
INSERT INTO USERS (userID, userPassword, userName, userGender, userPhone, USER_EMAIL) 
VALUES ('admin', 'admin', 'admin', 'M', '00000000000', 'admin@admin.com');

-- 회원정보 테이블 조회
select * from users;


-- 회원정보 테이블 삭제
drop table users;