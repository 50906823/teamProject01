CREATE TABLE USERS (
  userID VARCHAR2(20) PRIMARY KEY,
  userPassword VARCHAR2(100) NOT NULL,
  userName VARCHAR2(50) NOT NULL,
  userGender CHAR(1) NOT NULL,
  userPhone VARCHAR2(15) NOT NULL,
  USER_EMAIL VARCHAR2(100) NOT NULL
);

select * from users;
--drop table users;