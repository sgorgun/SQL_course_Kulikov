--------------------------------------------------------
--  Library_exp
--------------------------------------------------------
DROP SEQUENCE "library_exp"."SEQ_authors_a_id";
DROP SEQUENCE "library_exp"."SEQ_books_b_id";
DROP SEQUENCE "library_exp"."SEQ_genres_g_id";
DROP SEQUENCE "library_exp"."SEQ_subscribers_s_id";
DROP SEQUENCE "library_exp"."SEQ_subscriptions_sb_id";
DROP TABLE "library_exp"."authors" cascade constraints;
DROP TABLE "library_exp"."books" cascade constraints;
DROP TABLE "library_exp"."genres" cascade constraints;
DROP TABLE "library_exp"."m2m_books_authors" cascade constraints;
DROP TABLE "library_exp"."m2m_books_genres" cascade constraints;
DROP TABLE "library_exp"."subscribers" cascade constraints;
DROP TABLE "library_exp"."subscriptions" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence SEQ_authors_a_id
--------------------------------------------------------

   CREATE SEQUENCE  "library_exp"."SEQ_authors_a_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_books_b_id
--------------------------------------------------------

   CREATE SEQUENCE  "library_exp"."SEQ_books_b_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_genres_g_id
--------------------------------------------------------

   CREATE SEQUENCE  "library_exp"."SEQ_genres_g_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_subscribers_s_id
--------------------------------------------------------

   CREATE SEQUENCE  "library_exp"."SEQ_subscribers_s_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_subscriptions_sb_id
--------------------------------------------------------

   CREATE SEQUENCE  "library_exp"."SEQ_subscriptions_sb_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table authors
--------------------------------------------------------

  CREATE TABLE "library_exp"."authors" 
   (	"a_id" NUMBER(10,0), 
	"a_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Table books
--------------------------------------------------------

  CREATE TABLE "library_exp"."books" 
   (	"b_id" NUMBER(10,0), 
	"b_name" NVARCHAR2(150), 
	"b_year" NUMBER(5,0), 
	"b_quantity" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Table genres
--------------------------------------------------------

  CREATE TABLE "library_exp"."genres" 
   (	"g_id" NUMBER(10,0), 
	"g_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Table m2m_books_authors
--------------------------------------------------------

  CREATE TABLE "library_exp"."m2m_books_authors" 
   (	"b_id" NUMBER(10,0), 
	"a_id" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Table m2m_books_genres
--------------------------------------------------------

  CREATE TABLE "library_exp"."m2m_books_genres" 
   (	"b_id" NUMBER(10,0), 
	"g_id" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Table subscribers
--------------------------------------------------------

  CREATE TABLE "library_exp"."subscribers" 
   (	"s_id" NUMBER(10,0), 
	"s_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Table subscriptions
--------------------------------------------------------

  CREATE TABLE "library_exp"."subscriptions" 
   (	"sb_id" NUMBER(10,0), 
	"sb_subscriber" NUMBER(10,0), 
	"sb_book" NUMBER(10,0), 
	"sb_start" DATE, 
	"sb_finish" DATE, 
	"sb_is_active" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
REM INSERTING into "library_exp"."authors"
SET DEFINE OFF;
Insert into "library_exp"."authors" ("a_id","a_name") values (1,'Donald Knuth');
Insert into "library_exp"."authors" ("a_id","a_name") values (2,'Isaac Asimov');
Insert into "library_exp"."authors" ("a_id","a_name") values (3,'Dale Carnegie');
Insert into "library_exp"."authors" ("a_id","a_name") values (4,'Lev Landau');
Insert into "library_exp"."authors" ("a_id","a_name") values (5,'Evgeny Lifshitz');
Insert into "library_exp"."authors" ("a_id","a_name") values (6,'Bjarne Stroustrup');
Insert into "library_exp"."authors" ("a_id","a_name") values (7,'Alexander Pushkin');
REM INSERTING into "library_exp"."books"
SET DEFINE OFF;
Insert into "library_exp"."books" ("b_id","b_name","b_year","b_quantity") values (1,'Eugene Onegin',1985,2);
Insert into "library_exp"."books" ("b_id","b_name","b_year","b_quantity") values (2,'The Fisherman and the Golden Fish',1990,3);
Insert into "library_exp"."books" ("b_id","b_name","b_year","b_quantity") values (3,'Foundation and Empire',2000,5);
Insert into "library_exp"."books" ("b_id","b_name","b_year","b_quantity") values (4,'Programming Psychology',1998,1);
Insert into "library_exp"."books" ("b_id","b_name","b_year","b_quantity") values (5,'The C++ Programming Language',1996,3);
Insert into "library_exp"."books" ("b_id","b_name","b_year","b_quantity") values (6,'Course of Theoretical Physics',1981,12);
Insert into "library_exp"."books" ("b_id","b_name","b_year","b_quantity") values (7,'The Art of Computer Programming',1993,7);
REM INSERTING into "library_exp"."genres"
SET DEFINE OFF;
Insert into "library_exp"."genres" ("g_id","g_name") values (1,'Classic');
Insert into "library_exp"."genres" ("g_id","g_name") values (2,'Science');
Insert into "library_exp"."genres" ("g_id","g_name") values (3,'Poetry');
Insert into "library_exp"."genres" ("g_id","g_name") values (4,'Programming');
Insert into "library_exp"."genres" ("g_id","g_name") values (5,'Psychology');
Insert into "library_exp"."genres" ("g_id","g_name") values (6,'Science Fiction');
REM INSERTING into "library_exp"."m2m_books_authors"
SET DEFINE OFF;
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (1,7);
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (2,7);
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (3,2);
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (4,3);
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (4,6);
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (5,6);
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (6,4);
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (6,5);
Insert into "library_exp"."m2m_books_authors" ("b_id","a_id") values (7,1);
REM INSERTING into "library_exp"."m2m_books_genres"
SET DEFINE OFF;
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (1,1);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (1,5);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (2,1);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (2,5);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (3,6);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (4,2);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (4,3);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (5,2);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (6,5);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (7,2);
Insert into "library_exp"."m2m_books_genres" ("b_id","g_id") values (7,5);
REM INSERTING into "library_exp"."subscribers"
SET DEFINE OFF;
Insert into "library_exp"."subscribers" ("s_id","s_name") values (1,'Ivanov I.I.');
Insert into "library_exp"."subscribers" ("s_id","s_name") values (2,'Petrov P.P.');
Insert into "library_exp"."subscribers" ("s_id","s_name") values (3,'Sidorov S.S.');
Insert into "library_exp"."subscribers" ("s_id","s_name") values (4,'Sidorov S.S.');
REM INSERTING into "library_exp"."subscriptions"
SET DEFINE OFF;
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (100,1,3,to_date('12-JAN-11','DD-MON-RR'),to_date('12-FEB-11','DD-MON-RR'),'N');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (2,1,1,to_date('12-JAN-11','DD-MON-RR'),to_date('12-FEB-11','DD-MON-RR'),'N');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (3,3,3,to_date('17-MAY-12','DD-MON-RR'),to_date('17-JUL-12','DD-MON-RR'),'Y');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (42,1,2,to_date('11-JUN-12','DD-MON-RR'),to_date('11-AUG-12','DD-MON-RR'),'N');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (57,4,5,to_date('11-JUN-12','DD-MON-RR'),to_date('11-AUG-12','DD-MON-RR'),'N');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (61,1,7,to_date('03-AUG-14','DD-MON-RR'),to_date('03-OCT-14','DD-MON-RR'),'N');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (62,3,5,to_date('03-AUG-14','DD-MON-RR'),to_date('03-OCT-14','DD-MON-RR'),'Y');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (86,3,1,to_date('03-AUG-14','DD-MON-RR'),to_date('03-SEP-14','DD-MON-RR'),'Y');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (91,4,1,to_date('07-OCT-15','DD-MON-RR'),to_date('07-MAR-15','DD-MON-RR'),'Y');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (95,1,4,to_date('07-OCT-15','DD-MON-RR'),to_date('07-NOV-15','DD-MON-RR'),'N');
Insert into "library_exp"."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (99,4,4,to_date('08-OCT-15','DD-MON-RR'),to_date('08-NOV-25','DD-MON-RR'),'Y');
--------------------------------------------------------
--  DDL for Index PK_authors
--------------------------------------------------------

  CREATE UNIQUE INDEX "library_exp"."PK_authors" ON "library_exp"."authors" ("a_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Index PK_books
--------------------------------------------------------

  CREATE UNIQUE INDEX "library_exp"."PK_books" ON "library_exp"."books" ("b_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Index PK_genres
--------------------------------------------------------

  CREATE UNIQUE INDEX "library_exp"."PK_genres" ON "library_exp"."genres" ("g_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Index PK_m2m_books_authors
--------------------------------------------------------

  CREATE UNIQUE INDEX "library_exp"."PK_m2m_books_authors" ON "library_exp"."m2m_books_authors" ("b_id", "a_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Index PK_m2m_books_genres
--------------------------------------------------------

  CREATE UNIQUE INDEX "library_exp"."PK_m2m_books_genres" ON "library_exp"."m2m_books_genres" ("b_id", "g_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Index PK_subscribers
--------------------------------------------------------

  CREATE UNIQUE INDEX "library_exp"."PK_subscribers" ON "library_exp"."subscribers" ("s_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Index PK_subscriptions
--------------------------------------------------------

  CREATE UNIQUE INDEX "library_exp"."PK_subscriptions" ON "library_exp"."subscriptions" ("sb_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Index UQ_genres_g_name
--------------------------------------------------------

  CREATE UNIQUE INDEX "library_exp"."UQ_genres_g_name" ON "library_exp"."genres" ("g_name") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP" ;
--------------------------------------------------------
--  DDL for Trigger TRG_authors_a_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "library_exp"."TRG_authors_a_id" 
	BEFORE INSERT 
	ON "authors" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_authors_a_id".NEXTVAL 
		INTO :NEW."a_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "library_exp"."TRG_authors_a_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_books_b_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "library_exp"."TRG_books_b_id" 
	BEFORE INSERT 
	ON "books" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_books_b_id".NEXTVAL 
		INTO :NEW."b_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "library_exp"."TRG_books_b_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_genres_g_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "library_exp"."TRG_genres_g_id" 
	BEFORE INSERT 
	ON "genres" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_genres_g_id".NEXTVAL 
		INTO :NEW."g_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "library_exp"."TRG_genres_g_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_subscribers_s_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "library_exp"."TRG_subscribers_s_id" 
	BEFORE INSERT 
	ON "subscribers" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_subscribers_s_id".NEXTVAL 
		INTO :NEW."s_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "library_exp"."TRG_subscribers_s_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_subscriptions_sb_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "library_exp"."TRG_subscriptions_sb_id" 
	BEFORE INSERT 
	ON "subscriptions" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_subscriptions_sb_id".NEXTVAL 
		INTO :NEW."sb_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "library_exp"."TRG_subscriptions_sb_id" ENABLE;
--------------------------------------------------------
--  Constraints for Table subscriptions
--------------------------------------------------------

  ALTER TABLE "library_exp"."subscriptions" MODIFY ("sb_id" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."subscriptions" MODIFY ("sb_subscriber" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."subscriptions" MODIFY ("sb_book" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."subscriptions" MODIFY ("sb_start" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."subscriptions" MODIFY ("sb_finish" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."subscriptions" MODIFY ("sb_is_active" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."subscriptions" ADD CONSTRAINT "PK_subscriptions" PRIMARY KEY ("sb_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP"  ENABLE;
  ALTER TABLE "library_exp"."subscriptions" ADD CONSTRAINT "check_enum" CHECK ("sb_is_active" IN ('Y', 'N')) ENABLE;
--------------------------------------------------------
--  Constraints for Table books
--------------------------------------------------------

  ALTER TABLE "library_exp"."books" MODIFY ("b_id" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."books" MODIFY ("b_name" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."books" MODIFY ("b_year" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."books" MODIFY ("b_quantity" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."books" ADD CONSTRAINT "PK_books" PRIMARY KEY ("b_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table genres
--------------------------------------------------------

  ALTER TABLE "library_exp"."genres" ADD CONSTRAINT "UQ_genres_g_name" UNIQUE ("g_name")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP"  ENABLE;
  ALTER TABLE "library_exp"."genres" MODIFY ("g_id" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."genres" MODIFY ("g_name" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."genres" ADD CONSTRAINT "PK_genres" PRIMARY KEY ("g_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table subscribers
--------------------------------------------------------

  ALTER TABLE "library_exp"."subscribers" MODIFY ("s_id" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."subscribers" MODIFY ("s_name" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."subscribers" ADD CONSTRAINT "PK_subscribers" PRIMARY KEY ("s_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table m2m_books_authors
--------------------------------------------------------

  ALTER TABLE "library_exp"."m2m_books_authors" ADD CONSTRAINT "PK_m2m_books_authors" PRIMARY KEY ("b_id", "a_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP"  ENABLE;
  ALTER TABLE "library_exp"."m2m_books_authors" MODIFY ("b_id" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."m2m_books_authors" MODIFY ("a_id" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table authors
--------------------------------------------------------

  ALTER TABLE "library_exp"."authors" MODIFY ("a_id" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."authors" MODIFY ("a_name" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."authors" ADD CONSTRAINT "PK_authors" PRIMARY KEY ("a_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table m2m_books_genres
--------------------------------------------------------

  ALTER TABLE "library_exp"."m2m_books_genres" MODIFY ("b_id" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."m2m_books_genres" MODIFY ("g_id" NOT NULL ENABLE);
  ALTER TABLE "library_exp"."m2m_books_genres" ADD CONSTRAINT "PK_m2m_books_genres" PRIMARY KEY ("b_id", "g_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EXP"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table m2m_books_authors
--------------------------------------------------------

  ALTER TABLE "library_exp"."m2m_books_authors" ADD CONSTRAINT "FK_m2m_books_authors_authors" FOREIGN KEY ("a_id")
	  REFERENCES "library_exp"."authors" ("a_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "library_exp"."m2m_books_authors" ADD CONSTRAINT "FK_m2m_books_authors_books" FOREIGN KEY ("b_id")
	  REFERENCES "library_exp"."books" ("b_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table m2m_books_genres
--------------------------------------------------------

  ALTER TABLE "library_exp"."m2m_books_genres" ADD CONSTRAINT "FK_m2m_books_genres_books" FOREIGN KEY ("b_id")
	  REFERENCES "library_exp"."books" ("b_id") ENABLE;
  ALTER TABLE "library_exp"."m2m_books_genres" ADD CONSTRAINT "FK_m2m_books_genres_genres" FOREIGN KEY ("g_id")
	  REFERENCES "library_exp"."genres" ("g_id") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table subscriptions
--------------------------------------------------------

  ALTER TABLE "library_exp"."subscriptions" ADD CONSTRAINT "FK_subscriptions_books" FOREIGN KEY ("sb_book")
	  REFERENCES "library_exp"."books" ("b_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "library_exp"."subscriptions" ADD CONSTRAINT "FK_subscriptions_subscribers" FOREIGN KEY ("sb_subscriber")
	  REFERENCES "library_exp"."subscribers" ("s_id") ON DELETE CASCADE ENABLE;
