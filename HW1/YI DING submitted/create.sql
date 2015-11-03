--------------------------------------------------------
--  文件已创建 - 星期五-十月-10-2014   
--------------------------------------------------------
DROP TABLE "SYSTEM"."Z_COUPON" cascade constraints;
DROP TABLE "SYSTEM"."Z_FAVORITE" cascade constraints;
DROP TABLE "SYSTEM"."Z_FEATURES" cascade constraints;
DROP TABLE "SYSTEM"."Z_LIKEDREVIEWS" cascade constraints;
DROP TABLE "SYSTEM"."Z_MANAGER" cascade constraints;
DROP TABLE "SYSTEM"."Z_OWNER" cascade constraints;
DROP TABLE "SYSTEM"."Z_RATE" cascade constraints;
DROP TABLE "SYSTEM"."Z_RESERVATION" cascade constraints;
DROP TABLE "SYSTEM"."Z_REVIEW" cascade constraints;
DROP TABLE "SYSTEM"."Z_USER" cascade constraints;
DROP TABLE "SYSTEM"."Z_VILLA" cascade constraints;
DROP TABLE "SYSTEM"."Z_VILLA_FEATURES" cascade constraints;
--------------------------------------------------------
--  DDL for Table Z_COUPON
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_COUPON" 
   (	"COUPON_ID" VARCHAR2(20 BYTE), 
	"VILLA_ID" VARCHAR2(20 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"DISCOUNT" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_FAVORITE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_FAVORITE" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"VILLA_ID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_FEATURES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_FEATURES" 
   (	"FEATURE_ID" VARCHAR2(20 BYTE), 
	"FEATURE_NAME" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_LIKEDREVIEWS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_LIKEDREVIEWS" 
   (	"REVIEW_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_MANAGER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_MANAGER" 
   (	"MANAGER_ID" VARCHAR2(20 BYTE), 
	"MANAGED_BY" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_OWNER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_OWNER" 
   (	"OWNER_ID" VARCHAR2(20 BYTE), 
	"CONTACT_NUMBER" VARCHAR2(20 BYTE), 
	"MANAGED_BY" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_RATE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_RATE" 
   (	"RATE_ID" VARCHAR2(20 BYTE), 
	"VILLA_ID" VARCHAR2(20 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"RATE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_RESERVATION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_RESERVATION" 
   (	"RESERVATION_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"VILLA_ID" VARCHAR2(20 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"COUPON_ID" VARCHAR2(20 BYTE), 
	"DEPOSIT" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_REVIEW
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_REVIEW" 
   (	"REVIEW_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"VILLA_ID" VARCHAR2(20 BYTE), 
	"TEXT" VARCHAR2(1000 BYTE), 
	"RATING" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_USER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_USER" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"DOB" DATE, 
	"FAVORITE_VILLAS" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_VILLA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_VILLA" 
   (	"VILLA_ID" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"OWNER_ID" VARCHAR2(20 BYTE), 
	"CONSTRUCTION_YEAR" DATE, 
	"AGE" NUMBER, 
	"PICTURE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Z_VILLA_FEATURES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Z_VILLA_FEATURES" 
   (	"VILLA_ID" VARCHAR2(20 BYTE), 
	"FEATURE_ID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.Z_COUPON
SET DEFINE OFF;
Insert into SYSTEM.Z_COUPON (COUPON_ID,VILLA_ID,START_DATE,END_DATE,DISCOUNT) values ('Coup1','Vil1',to_date('2013/09/01','yyyy/mm/dd'),to_date('2014/01/31','yyyy/mm/dd'),20);
Insert into SYSTEM.Z_COUPON (COUPON_ID,VILLA_ID,START_DATE,END_DATE,DISCOUNT) values ('Coup2','Vil2',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),15);
Insert into SYSTEM.Z_COUPON (COUPON_ID,VILLA_ID,START_DATE,END_DATE,DISCOUNT) values ('Coup3','Vil3',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),25);
Insert into SYSTEM.Z_COUPON (COUPON_ID,VILLA_ID,START_DATE,END_DATE,DISCOUNT) values ('Coup4','Vil4',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),10);
Insert into SYSTEM.Z_COUPON (COUPON_ID,VILLA_ID,START_DATE,END_DATE,DISCOUNT) values ('Coup5','Vil1',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),15);
REM INSERTING into SYSTEM.Z_FAVORITE
SET DEFINE OFF;
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U1','Vil2');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U1','Vil4');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U10','Vil11');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U10','Vil12');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U13','Vil1');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U14','Vil2');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U2','Vil8');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U3','Vil10');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U3','Vil3');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U3','Vil7');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U4','Vil10');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U4','Vil4');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U5','Vil1');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U6','Vil3');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U7','Vil12');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U7','Vil2');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U7','Vil4');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U8','Vil1');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U8','Vil9');
Insert into SYSTEM.Z_FAVORITE (USER_ID,VILLA_ID) values ('U9','Vil6');
REM INSERTING into SYSTEM.Z_FEATURES
SET DEFINE OFF;
Insert into SYSTEM.Z_FEATURES (FEATURE_ID,FEATURE_NAME) values ('Fea1','swimming pool');
Insert into SYSTEM.Z_FEATURES (FEATURE_ID,FEATURE_NAME) values ('Fea2','Jacuzzi');
Insert into SYSTEM.Z_FEATURES (FEATURE_ID,FEATURE_NAME) values ('Fea3','billiard table');
Insert into SYSTEM.Z_FEATURES (FEATURE_ID,FEATURE_NAME) values ('Fea4','Xbox 360');
Insert into SYSTEM.Z_FEATURES (FEATURE_ID,FEATURE_NAME) values ('Fea5','board games');
Insert into SYSTEM.Z_FEATURES (FEATURE_ID,FEATURE_NAME) values ('Fea6','pets allowed');
REM INSERTING into SYSTEM.Z_LIKEDREVIEWS
SET DEFINE OFF;
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev1','U2');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev1','U3');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev1','U4');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev14','U2');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev14','U4');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev14','U6');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev15','U3');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev15','U6');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev15','U7');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev2','U4');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev2','U7');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev3','U8');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev4','U9');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev5','U2');
Insert into SYSTEM.Z_LIKEDREVIEWS (REVIEW_ID,USER_ID) values ('Rev5','U4');
REM INSERTING into SYSTEM.Z_MANAGER
SET DEFINE OFF;
Insert into SYSTEM.Z_MANAGER (MANAGER_ID,MANAGED_BY) values ('U14','null');
Insert into SYSTEM.Z_MANAGER (MANAGER_ID,MANAGED_BY) values ('U15','U14');
REM INSERTING into SYSTEM.Z_OWNER
SET DEFINE OFF;
Insert into SYSTEM.Z_OWNER (OWNER_ID,CONTACT_NUMBER,MANAGED_BY) values ('U11','111-111-1111','U15');
Insert into SYSTEM.Z_OWNER (OWNER_ID,CONTACT_NUMBER,MANAGED_BY) values ('U12','222-222-2222','U15');
Insert into SYSTEM.Z_OWNER (OWNER_ID,CONTACT_NUMBER,MANAGED_BY) values ('U13','333-333-3333','U15');
Insert into SYSTEM.Z_OWNER (OWNER_ID,CONTACT_NUMBER,MANAGED_BY) values ('U14','444-444-4444',null);
REM INSERTING into SYSTEM.Z_RATE
SET DEFINE OFF;
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat1','Vil1',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),150);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat2','Vil2',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),100);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat3','Vil3',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),200);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat4','Vil4',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),130);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat5','Vil5',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),120);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat6','Vil6',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),140);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat7','Vil7',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),180);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat8','Vil8',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),300);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat9','Vil9',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),80);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat10','Vil10',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),250);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat11','Vil11',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),170);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat12','Vil12',to_date('2013/01/01','yyyy/mm/dd'),to_date('2013/08/31','yyyy/mm/dd'),110);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat13','Vil1',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),120);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat14','Vil2',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),75);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat15','Vil3',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),160);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat16','Vil4',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),90);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat17','Vil5',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),80);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat18','Vil6',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),100);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat19','Vil7',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),150);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat20','Vil8',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),200);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat21','Vil9',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),50);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat22','Vil10',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),200);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat23','Vil11',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),120);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat24','Vil12',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/12/31','yyyy/mm/dd'),90);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat25','Vil1',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),180);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat26','Vil2',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),120);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat27','Vil3',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),240);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat28','Vil4',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),150);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat29','Vil5',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),150);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat30','Vil6',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),180);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat31','Vil7',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),250);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat32','Vil8',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),400);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat33','Vil9',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),110);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat34','Vil10',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),320);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat35','Vil11',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),210);
Insert into SYSTEM.Z_RATE (RATE_ID,VILLA_ID,START_DATE,END_DATE,RATE) values ('Rat36','Vil12',to_date('2014/01/01','yyyy/mm/dd'),to_date('2014/08/31','yyyy/mm/dd'),140);
REM INSERTING into SYSTEM.Z_RESERVATION
SET DEFINE OFF;
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res1','U1','Vil1',to_date('2013/01/02','yyyy/mm/dd'),to_date('2013/01/04','yyyy/mm/dd'),'null',50);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res2','U7','Vil2',to_date('2013/01/05','yyyy/mm/dd'),to_date('2013/01/06','yyyy/mm/dd'),'null',30);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res3','U2','Vil3',to_date('2013/02/03','yyyy/mm/dd'),to_date('2013/02/07','yyyy/mm/dd'),'null',60);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res4','U4','Vil4',to_date('2013/02/04','yyyy/mm/dd'),to_date('2013/02/05','yyyy/mm/dd'),'null',39);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res5','U4','Vil5',to_date('2013/03/06','yyyy/mm/dd'),to_date('2013/03/12','yyyy/mm/dd'),'null',40);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res6','U4','Vil6',to_date('2013/04/23','yyyy/mm/dd'),to_date('2013/04/25','yyyy/mm/dd'),'null',42);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res7','U6','Vil7',to_date('2013/05/29','yyyy/mm/dd'),to_date('2013/06/01','yyyy/mm/dd'),'null',60);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res8','U10','Vil8',to_date('2013/07/30','yyyy/mm/dd'),to_date('2013/08/02','yyyy/mm/dd'),'null',100);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res9','U3','Vil9',to_date('2013/08/11','yyyy/mm/dd'),to_date('2013/08/12','yyyy/mm/dd'),'null',24);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res10','U2','Vil10',to_date('2013/08/19','yyyy/mm/dd'),to_date('2013/08/21','yyyy/mm/dd'),'null',75);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res11','U5','Vil11',to_date('2013/08/15','yyyy/mm/dd'),to_date('2013/08/17','yyyy/mm/dd'),'null',51);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res12','U6','Vil12',to_date('2013/08/27','yyyy/mm/dd'),to_date('2013/08/28','yyyy/mm/dd'),'null',33);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res13','U2','Vil1',to_date('2013/09/01','yyyy/mm/dd'),to_date('2013/09/03','yyyy/mm/dd'),'null',40);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res14','U5','Vil2',to_date('2013/09/02','yyyy/mm/dd'),to_date('2013/09/03','yyyy/mm/dd'),'null',25);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res15','U9','Vil3',to_date('2013/09/15','yyyy/mm/dd'),to_date('2013/09/20','yyyy/mm/dd'),'Coup3',36);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res16','U5','Vil4',to_date('2013/10/01','yyyy/mm/dd'),to_date('2013/10/03','yyyy/mm/dd'),'Coup4',27);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res17','U4','Vil5',to_date('2013/10/15','yyyy/mm/dd'),to_date('2013/10/16','yyyy/mm/dd'),'null',24);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res18','U5','Vil6',to_date('2013/11/02','yyyy/mm/dd'),to_date('2013/11/04','yyyy/mm/dd'),'null',30);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res19','U10','Vil7',to_date('2013/11/06','yyyy/mm/dd'),to_date('2013/11/07','yyyy/mm/dd'),'null',50);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res20','U9','Vil8',to_date('2013/11/06','yyyy/mm/dd'),to_date('2013/11/10','yyyy/mm/dd'),'null',60);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res21','U4','Vil9',to_date('2013/11/10','yyyy/mm/dd'),to_date('2013/11/13','yyyy/mm/dd'),'null',15);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res22','U4','Vil10',to_date('2013/11/11','yyyy/mm/dd'),to_date('2013/11/13','yyyy/mm/dd'),'null',60);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res23','U6','Vil11',to_date('2013/12/01','yyyy/mm/dd'),to_date('2013/12/04','yyyy/mm/dd'),'null',40);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res24','U5','Vil12',to_date('2013/12/23','yyyy/mm/dd'),to_date('2013/12/26','yyyy/mm/dd'),'null',30);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res25','U7','Vil1',to_date('2014/01/12','yyyy/mm/dd'),to_date('2014/01/15','yyyy/mm/dd'),'Coup1',48);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res26','U9','Vil2',to_date('2014/01/06','yyyy/mm/dd'),to_date('2014/01/07','yyyy/mm/dd'),'Coup2',34);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res27','U6','Vil2',to_date('2014/02/05','yyyy/mm/dd'),to_date('2014/02/09','yyyy/mm/dd'),'null',40);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res28','U5','Vil5',to_date('2014/02/09','yyyy/mm/dd'),to_date('2014/02/15','yyyy/mm/dd'),'null',50);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res29','U4','Vil8',to_date('2014/03/18','yyyy/mm/dd'),to_date('2014/03/19','yyyy/mm/dd'),'null',120);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res30','U2','Vil4',to_date('2014/04/27','yyyy/mm/dd'),to_date('2014/04/30','yyyy/mm/dd'),'null',50);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res31','U4','Vil10',to_date('2014/05/29','yyyy/mm/dd'),to_date('2014/06/01','yyyy/mm/dd'),'null',96);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res32','U9','Vil12',to_date('2014/07/28','yyyy/mm/dd'),to_date('2014/08/02','yyyy/mm/dd'),'null',42);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res33','U9','Vil7',to_date('2014/08/11','yyyy/mm/dd'),to_date('2014/08/12','yyyy/mm/dd'),'null',75);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res34','U7','Vil4',to_date('2014/08/15','yyyy/mm/dd'),to_date('2014/08/21','yyyy/mm/dd'),'null',50);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res35','U8','Vil8',to_date('2014/08/13','yyyy/mm/dd'),to_date('2014/08/17','yyyy/mm/dd'),'null',120);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res36','U3','Vil2',to_date('2014/08/27','yyyy/mm/dd'),to_date('2014/08/28','yyyy/mm/dd'),'null',40);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res37','U2','Vil11',to_date('2014/06/20','yyyy/mm/dd'),to_date('2014/06/23','yyyy/mm/dd'),'null',70);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res38','U1','Vil2',to_date('2014/08/28','yyyy/mm/dd'),to_date('2014/08/30','yyyy/mm/dd'),'null',40);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res39','U9','Vil1',to_date('2014/04/10','yyyy/mm/dd'),to_date('2014/04/15','yyyy/mm/dd'),'null',60);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res40','U9','Vil7',to_date('2014/02/05','yyyy/mm/dd'),to_date('2014/02/09','yyyy/mm/dd'),'null',75);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res41','U8','Vil7',to_date('2014/02/09','yyyy/mm/dd'),to_date('2014/02/15','yyyy/mm/dd'),'null',75);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res42','U5','Vil7',to_date('2014/03/18','yyyy/mm/dd'),to_date('2014/03/19','yyyy/mm/dd'),'null',75);
Insert into SYSTEM.Z_RESERVATION (RESERVATION_ID,USER_ID,VILLA_ID,START_DATE,END_DATE,COUPON_ID,DEPOSIT) values ('Res43','U6','Vil1',to_date('2014/05/12','yyyy/mm/dd'),to_date('2014/05/13','yyyy/mm/dd'),'Coup5',51);
REM INSERTING into SYSTEM.Z_REVIEW
SET DEFINE OFF;
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev1','U1','Vil1','Poor maintainance considering the price.',2);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev2','U2','Vil3','Boring and Dull',1);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev3','U4','Vil6','Love it!',4);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev4','U2','Vil1','Best vila error',2);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev5','U7','Vil1','Though not clean, has fantastic scenery around it',3);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev6','U5','Vil2','not recommended',1);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev7','U6','Vil1','Good one',4);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev8','U4','Vil4','I gonna rent again and again',5);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev9','U9','Vil3','Good work',5);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev10','U3','Vil9','A must visit villa',5);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev11','U10','Vil8','Nice',1);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev13','U6','Vil7','poor one',1);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev14','U1','Vil7','popular one',4);
Insert into SYSTEM.Z_REVIEW (REVIEW_ID,USER_ID,VILLA_ID,TEXT,RATING) values ('Rev15','U7','Vil3','wanna go back!',5);
REM INSERTING into SYSTEM.Z_USER
SET DEFINE OFF;
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U1','jack_killer@gmail.com','Jackie','Jones',to_date('1983/02/28','yyyy/mm/dd'),'Vil2,Vil4');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U2','Hello_macy@yahoo.com','Jessie','Jackson',to_date('1986/03/04','yyyy/mm/dd'),'Vil8');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U3','john_black@hotmail.com','Tommy','Trojan',to_date('1990/04/22','yyyy/mm/dd'),'Vil10,Vil3,Vil7');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U4','ny_robert@usc.edu','Niki','Nanjan',to_date('1980/06/10','yyyy/mm/dd'),'Vil10,Vil4');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U5','cool_andrew@bbc.co.uk','Jalli','Shadan',to_date('1984/11/27','yyyy/mm/dd'),'Vil1');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U6','coryphillip@voa.gov','Houtan','Khandan',to_date('1966/06/06','yyyy/mm/dd'),'Vil3');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U7','DaneilJ@msnbc.com','Naz','Nazi',to_date('2000/04/20','yyyy/mm/dd'),'Vil2,Vil4,Vil12');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U8','rohanau@cs.mit.edu','Ab','Bazi',to_date('1956/12/12','yyyy/mm/dd'),'Vil1,Vil9');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U9','edmorales@houti.com','Ben','Ghazi',to_date('1973/11/10','yyyy/mm/dd'),'Vil6');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U10','danamoon@louti.com','Carlos','Santana',to_date('1977/07/07','yyyy/mm/dd'),'Vil11,Vil12');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U11','owner1@villa.com','Roberto','Carlos',to_date('1955/05/05','yyyy/mm/dd'),'null');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U12','owner2@villa.com','De','Vilardo',to_date('1944/04/04','yyyy/mm/dd'),'null');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U13','owner3@villa.com','villa','Blanka',to_date('1974/11/11','yyyy/mm/dd'),'Vil1');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U14','ceo@villa.com','nino','bino',to_date('1991/01/01','yyyy/mm/dd'),'Vil2');
Insert into SYSTEM.Z_USER (USER_ID,EMAIL,FIRST_NAME,LAST_NAME,DOB,FAVORITE_VILLAS) values ('U15','manager2@villa.com','Bookish','Morinio',to_date('1950/04/17','yyyy/mm/dd'),'null');
REM INSERTING into SYSTEM.Z_VILLA
SET DEFINE OFF;
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil1','Fifi','U11',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil2','Lulu','U12',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil3','Penny','U13',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil4','Kiki','U11',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil5','Vivi','U11',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil6','Gigi','U11',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil7','Kitty','U12',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil8','Ellie','U13',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil9','Ali','U14',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil10','Kelley','U12',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil11','Dori','U12',null,null,null);
Insert into SYSTEM.Z_VILLA (VILLA_ID,NAME,OWNER_ID,CONSTRUCTION_YEAR,AGE,PICTURE) values ('Vil12','Houti','U13',null,null,null);
REM INSERTING into SYSTEM.Z_VILLA_FEATURES
SET DEFINE OFF;
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil1','Fea1');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil1','Fea2');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil10','Fea5');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil11','Fea2');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil12','Fea2');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil2','Fea1');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil3','Fea1');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil3','Fea4');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil3','Fea5');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil4','Fea2');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil5','Fea4');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil6','Fea6');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil7','Fea3');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil7','Fea4');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil7','Fea5');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil7','Fea6');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil8','Fea6');
Insert into SYSTEM.Z_VILLA_FEATURES (VILLA_ID,FEATURE_ID) values ('Vil9','Fea5');
--------------------------------------------------------
--  DDL for Index Z_COUPON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_COUPON_PK" ON "SYSTEM"."Z_COUPON" ("COUPON_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_FAVORITE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_FAVORITE_PK" ON "SYSTEM"."Z_FAVORITE" ("USER_ID", "VILLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_FEATURES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_FEATURES_PK" ON "SYSTEM"."Z_FEATURES" ("FEATURE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_LIKEDREVIEWS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_LIKEDREVIEWS_PK" ON "SYSTEM"."Z_LIKEDREVIEWS" ("REVIEW_ID", "USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_MANAGER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_MANAGER_PK" ON "SYSTEM"."Z_MANAGER" ("MANAGER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_OWNER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_OWNER_PK" ON "SYSTEM"."Z_OWNER" ("OWNER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."RATE_PK" ON "SYSTEM"."Z_RATE" ("RATE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_RESERVATION_PK" ON "SYSTEM"."Z_RESERVATION" ("RESERVATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_REVIEW_PK" ON "SYSTEM"."Z_REVIEW" ("REVIEW_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_USER_PK" ON "SYSTEM"."Z_USER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index VILLA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."VILLA_PK" ON "SYSTEM"."Z_VILLA" ("VILLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index Z_VILLA_FEATURES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Z_VILLA_FEATURES_PK" ON "SYSTEM"."Z_VILLA_FEATURES" ("VILLA_ID", "FEATURE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table Z_COUPON
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_COUPON" ADD CONSTRAINT "Z_COUPON_PK" PRIMARY KEY ("COUPON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_FAVORITE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_FAVORITE" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_FAVORITE" MODIFY ("VILLA_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_FAVORITE" ADD CONSTRAINT "Z_FAVORITE_PK" PRIMARY KEY ("USER_ID", "VILLA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_FEATURES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_FEATURES" MODIFY ("FEATURE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_FEATURES" ADD CONSTRAINT "Z_FEATURES_PK" PRIMARY KEY ("FEATURE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_LIKEDREVIEWS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_LIKEDREVIEWS" MODIFY ("REVIEW_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_LIKEDREVIEWS" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_LIKEDREVIEWS" ADD CONSTRAINT "Z_LIKEDREVIEWS_PK" PRIMARY KEY ("REVIEW_ID", "USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_MANAGER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_MANAGER" MODIFY ("MANAGER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_MANAGER" ADD CONSTRAINT "Z_MANAGER_PK" PRIMARY KEY ("MANAGER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_OWNER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_OWNER" MODIFY ("OWNER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_OWNER" ADD CONSTRAINT "Z_OWNER_PK" PRIMARY KEY ("OWNER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_RATE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_RATE" ADD CONSTRAINT "RATE_PK" PRIMARY KEY ("RATE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."Z_RATE" MODIFY ("RATE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Z_RESERVATION
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_RESERVATION" MODIFY ("RESERVATION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_RESERVATION" ADD CONSTRAINT "Z_RESERVATION_PK" PRIMARY KEY ("RESERVATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_REVIEW
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_REVIEW" MODIFY ("REVIEW_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_REVIEW" ADD CONSTRAINT "Z_REVIEW_PK" PRIMARY KEY ("REVIEW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_USER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_USER" ADD CONSTRAINT "Z_USER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_VILLA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_VILLA" MODIFY ("VILLA_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_VILLA" ADD CONSTRAINT "VILLA_PK" PRIMARY KEY ("VILLA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Z_VILLA_FEATURES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_VILLA_FEATURES" MODIFY ("VILLA_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_VILLA_FEATURES" MODIFY ("FEATURE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."Z_VILLA_FEATURES" ADD CONSTRAINT "Z_VILLA_FEATURES_PK" PRIMARY KEY ("VILLA_ID", "FEATURE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_COUPON
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_COUPON" ADD CONSTRAINT "Z_COUPON_FK1" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."Z_VILLA" ("VILLA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_FAVORITE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_FAVORITE" ADD CONSTRAINT "Z_FAVORITE_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."Z_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "SYSTEM"."Z_FAVORITE" ADD CONSTRAINT "Z_FAVORITE_FK2" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."Z_VILLA" ("VILLA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_LIKEDREVIEWS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_LIKEDREVIEWS" ADD CONSTRAINT "Z_LIKEDREVIEWS_FK1" FOREIGN KEY ("REVIEW_ID")
	  REFERENCES "SYSTEM"."Z_REVIEW" ("REVIEW_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_MANAGER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_MANAGER" ADD CONSTRAINT "Z_MANAGER_FK1" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "SYSTEM"."Z_MANAGER" ("MANAGER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_OWNER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_OWNER" ADD CONSTRAINT "Z_OWNER_FK1" FOREIGN KEY ("OWNER_ID")
	  REFERENCES "SYSTEM"."Z_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "SYSTEM"."Z_OWNER" ADD CONSTRAINT "Z_OWNER_FK2" FOREIGN KEY ("MANAGED_BY")
	  REFERENCES "SYSTEM"."Z_MANAGER" ("MANAGER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_RATE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_RATE" ADD CONSTRAINT "Z_RATE_FK1" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."Z_VILLA" ("VILLA_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_RESERVATION
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_RESERVATION" ADD CONSTRAINT "Z_RESERVATION_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."Z_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "SYSTEM"."Z_RESERVATION" ADD CONSTRAINT "Z_RESERVATION_FK2" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."Z_VILLA" ("VILLA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_REVIEW
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_REVIEW" ADD CONSTRAINT "Z_REVIEW_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."Z_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "SYSTEM"."Z_REVIEW" ADD CONSTRAINT "Z_REVIEW_FK2" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."Z_VILLA" ("VILLA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_VILLA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_VILLA" ADD CONSTRAINT "Z_VILLA_FK1" FOREIGN KEY ("OWNER_ID")
	  REFERENCES "SYSTEM"."Z_OWNER" ("OWNER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Z_VILLA_FEATURES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Z_VILLA_FEATURES" ADD CONSTRAINT "Z_VILLA_FEATURES_FK1" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."Z_VILLA" ("VILLA_ID") ENABLE;
 
  ALTER TABLE "SYSTEM"."Z_VILLA_FEATURES" ADD CONSTRAINT "Z_VILLA_FEATURES_FK2" FOREIGN KEY ("FEATURE_ID")
	  REFERENCES "SYSTEM"."Z_FEATURES" ("FEATURE_ID") ENABLE;
