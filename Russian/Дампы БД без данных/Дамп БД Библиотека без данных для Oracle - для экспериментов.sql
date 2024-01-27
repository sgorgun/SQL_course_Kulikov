--------------------------------------------------------
--  "library_exp"   
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
