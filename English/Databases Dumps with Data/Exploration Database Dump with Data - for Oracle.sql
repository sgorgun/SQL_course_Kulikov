--------------------------------------------------------
--  Exploration
--------------------------------------------------------
DROP SEQUENCE "exploration"."SEQ_cities_ct_id";
DROP SEQUENCE "exploration"."SEQ_computers_c_id";
DROP SEQUENCE "exploration"."SEQ_library_in_json_lij_id";
DROP SEQUENCE "exploration"."SEQ_rooms_r_id";
DROP SEQUENCE "exploration"."SEQ_shopping_sh_id";
DROP SEQUENCE "exploration"."SEQ_site_pages_sp_id";
DROP SEQUENCE "exploration"."SEQ_test_counts_id";
DROP TABLE "exploration"."cities" cascade constraints;
DROP TABLE "exploration"."computers" cascade constraints;
DROP TABLE "exploration"."connections" cascade constraints;
DROP TABLE "exploration"."dates" cascade constraints;
DROP TABLE "exploration"."library_in_json" cascade constraints;
DROP TABLE "exploration"."overflow" cascade constraints;
DROP TABLE "exploration"."rooms" cascade constraints;
DROP TABLE "exploration"."shopping" cascade constraints;
DROP TABLE "exploration"."site_pages" cascade constraints;
DROP TABLE "exploration"."table_with_nulls" cascade constraints;
DROP TABLE "exploration"."test_counts" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence SEQ_cities_ct_id
--------------------------------------------------------

   CREATE SEQUENCE  "exploration"."SEQ_cities_ct_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_computers_c_id
--------------------------------------------------------

   CREATE SEQUENCE  "exploration"."SEQ_computers_c_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 17 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_library_in_json_lij_id
--------------------------------------------------------

   CREATE SEQUENCE  "exploration"."SEQ_library_in_json_lij_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_rooms_r_id
--------------------------------------------------------

   CREATE SEQUENCE  "exploration"."SEQ_rooms_r_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_shopping_sh_id
--------------------------------------------------------

   CREATE SEQUENCE  "exploration"."SEQ_shopping_sh_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_site_pages_sp_id
--------------------------------------------------------

   CREATE SEQUENCE  "exploration"."SEQ_site_pages_sp_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_test_counts_id
--------------------------------------------------------

   CREATE SEQUENCE  "exploration"."SEQ_test_counts_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table cities
--------------------------------------------------------

  CREATE TABLE "exploration"."cities" 
   (	"ct_id" NUMBER(10,0), 
	"ct_name" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table computers
--------------------------------------------------------

  CREATE TABLE "exploration"."computers" 
   (	"c_id" NUMBER(10,0), 
	"c_room" NUMBER(10,0), 
	"c_name" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table connections
--------------------------------------------------------

  CREATE TABLE "exploration"."connections" 
   (	"cn_from" NUMBER(10,0), 
	"cn_to" NUMBER(10,0), 
	"cn_cost" NUMBER(15,4), 
	"cn_bidir" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table dates
--------------------------------------------------------

  CREATE TABLE "exploration"."dates" 
   (	"d" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table library_in_json
--------------------------------------------------------

  CREATE TABLE "exploration"."library_in_json" 
   (	"lij_id" NUMBER(10,0), 
	"lij_book" NVARCHAR2(150), 
	"lij_author" NVARCHAR2(2000), 
	"lij_genre" NVARCHAR2(2000)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table overflow
--------------------------------------------------------

  CREATE TABLE "exploration"."overflow" 
   (	"x" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table rooms
--------------------------------------------------------

  CREATE TABLE "exploration"."rooms" 
   (	"r_id" NUMBER(10,0), 
	"r_name" NVARCHAR2(50), 
	"r_space" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table shopping
--------------------------------------------------------

  CREATE TABLE "exploration"."shopping" 
   (	"sh_id" NUMBER(10,0), 
	"sh_transaction" NUMBER(10,0), 
	"sh_category" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table site_pages
--------------------------------------------------------

  CREATE TABLE "exploration"."site_pages" 
   (	"sp_id" NUMBER(10,0), 
	"sp_parent" NUMBER(10,0), 
	"sp_name" NVARCHAR2(200)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table table_with_nulls
--------------------------------------------------------

  CREATE TABLE "exploration"."table_with_nulls" 
   (	"x" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Table test_counts
--------------------------------------------------------

  CREATE TABLE "exploration"."test_counts" 
   (	"id" NUMBER(10,0), 
	"fni" NUMBER(10,0), 
	"fwi" NUMBER(10,0), 
	"fni_nn" NUMBER(10,0), 
	"fwi_nn" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "EXPLORATION" ;
REM INSERTING into "exploration"."cities"
SET DEFINE OFF;
Insert into "exploration"."cities" ("ct_id","ct_name") values (1,'London');
Insert into "exploration"."cities" ("ct_id","ct_name") values (2,'Paris');
Insert into "exploration"."cities" ("ct_id","ct_name") values (3,'Madrid');
Insert into "exploration"."cities" ("ct_id","ct_name") values (4,'Tokyo');
Insert into "exploration"."cities" ("ct_id","ct_name") values (5,'Moscow');
Insert into "exploration"."cities" ("ct_id","ct_name") values (6,'Kiev');
Insert into "exploration"."cities" ("ct_id","ct_name") values (7,'Minsk');
Insert into "exploration"."cities" ("ct_id","ct_name") values (8,'Riga');
Insert into "exploration"."cities" ("ct_id","ct_name") values (9,'Warsaw');
Insert into "exploration"."cities" ("ct_id","ct_name") values (10,'Berlin');
REM INSERTING into "exploration"."computers"
SET DEFINE OFF;
Insert into "exploration"."computers" ("c_id","c_room","c_name") values (9,1,'The computer A in the room 1');
Insert into "exploration"."computers" ("c_id","c_room","c_name") values (10,1,'The computer B in the room 1');
Insert into "exploration"."computers" ("c_id","c_room","c_name") values (11,2,'The computer A in the room 2');
Insert into "exploration"."computers" ("c_id","c_room","c_name") values (12,2,'The computer B in the room 2');
Insert into "exploration"."computers" ("c_id","c_room","c_name") values (13,2,'The computer C in the room 2');
Insert into "exploration"."computers" ("c_id","c_room","c_name") values (14,null,'Unassigned computer A');
Insert into "exploration"."computers" ("c_id","c_room","c_name") values (15,null,'Unassigned computer B');
Insert into "exploration"."computers" ("c_id","c_room","c_name") values (16,null,'Unassigned computer C');
REM INSERTING into "exploration"."connections"
SET DEFINE OFF;
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (1,5,10,'Y');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (1,7,20,'N');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (7,1,25,'N');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (7,2,15,'Y');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (2,6,50,'N');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (6,8,40,'Y');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (8,4,30,'N');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (4,8,35,'N');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (8,9,15,'Y');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (9,1,20,'N');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (7,3,5,'N');
Insert into "exploration"."connections" ("cn_from","cn_to","cn_cost","cn_bidir") values (3,6,5,'N');
REM INSERTING into "exploration"."dates"
SET DEFINE OFF;
REM INSERTING into "exploration"."library_in_json"
SET DEFINE OFF;
Insert into "exploration"."library_in_json" ("lij_id","lij_book","lij_author","lij_genre") values (1,'Eugene Onegin','[{"id":7,"name":"Alexander Pushkin"}]','[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]');
Insert into "exploration"."library_in_json" ("lij_id","lij_book","lij_author","lij_genre") values (2,'The Fisherman and the Golden Fish','[{"id":7,"name":"Alexander Pushkin"}]','[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]');
Insert into "exploration"."library_in_json" ("lij_id","lij_book","lij_author","lij_genre") values (3,'Foundation and Empire','[{"id":2,"name":"Isaac Asimov"}]','[{"id":6,"name":"Science Fiction"}]');
Insert into "exploration"."library_in_json" ("lij_id","lij_book","lij_author","lij_genre") values (4,'Programming Psychology','[{"id":3,"name":"Dale Carnegie"},
                 {"id":6,"name":"Bjarne Stroustrup"}]','[{"id":2,"name":"Programming"},
                 {"id":3,"name":"Psychology"}]');
Insert into "exploration"."library_in_json" ("lij_id","lij_book","lij_author","lij_genre") values (5,'The C++ Programming Language','[{"id":6,"name":"Bjarne Stroustrup"}]','[{"id":2,"name":"Programming"}]');
Insert into "exploration"."library_in_json" ("lij_id","lij_book","lij_author","lij_genre") values (6,'Course of Theoretical Physics','[{"id":4,"name":"Lev Landau"},
                 {"id":5,"name":"Evgeny Lifshitz"}]','[{"id":5,"name":"Classic"}]');
Insert into "exploration"."library_in_json" ("lij_id","lij_book","lij_author","lij_genre") values (7,'The Art of Computer Programming','[{"id":1,"name":"Donald Knuth"}]','[{"id":2,"name":"Programming"},
                 {"id":5,"name":"Classic"}]');
REM INSERTING into "exploration"."overflow"
SET DEFINE OFF;
REM INSERTING into "exploration"."rooms"
SET DEFINE OFF;
Insert into "exploration"."rooms" ("r_id","r_name","r_space") values (1,'A room with two computers',5);
Insert into "exploration"."rooms" ("r_id","r_name","r_space") values (2,'A room with three computers',5);
Insert into "exploration"."rooms" ("r_id","r_name","r_space") values (3,'An empty room 1',2);
Insert into "exploration"."rooms" ("r_id","r_name","r_space") values (4,'An empty room 2',2);
Insert into "exploration"."rooms" ("r_id","r_name","r_space") values (5,'An empty room 3',2);
REM INSERTING into "exploration"."shopping"
SET DEFINE OFF;
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (1,1,'Bag');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (2,1,'Dress');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (3,1,'Bag');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (4,2,'Bag');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (5,2,'Skirt');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (6,3,'Dress');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (7,3,'Skirt');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (8,3,'Shoes');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (9,3,'Hat');
Insert into "exploration"."shopping" ("sh_id","sh_transaction","sh_category") values (10,4,'Bag');
REM INSERTING into "exploration"."site_pages"
SET DEFINE OFF;
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (1,null,'Main');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (2,1,'For subscribers');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (3,1,'For sponsors');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (4,1,'For advertisers');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (5,2,'News');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (6,2,'Statistics');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (7,3,'Offers');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (8,3,'Success stories');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (9,4,'Events');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (10,1,'Contacts');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (11,3,'Documents');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (12,6,'Current');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (13,6,'Archive');
Insert into "exploration"."site_pages" ("sp_id","sp_parent","sp_name") values (14,6,'Non-official');
REM INSERTING into "exploration"."table_with_nulls"
SET DEFINE OFF;
REM INSERTING into "exploration"."test_counts"
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_cities
--------------------------------------------------------

  CREATE UNIQUE INDEX "exploration"."PK_cities" ON "exploration"."cities" ("ct_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Index PK_computers
--------------------------------------------------------

  CREATE UNIQUE INDEX "exploration"."PK_computers" ON "exploration"."computers" ("c_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Index PK_connections
--------------------------------------------------------

  CREATE UNIQUE INDEX "exploration"."PK_connections" ON "exploration"."connections" ("cn_to", "cn_from") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Index PK_rooms
--------------------------------------------------------

  CREATE UNIQUE INDEX "exploration"."PK_rooms" ON "exploration"."rooms" ("r_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Index PK_site_pages
--------------------------------------------------------

  CREATE UNIQUE INDEX "exploration"."PK_site_pages" ON "exploration"."site_pages" ("sp_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Index PK_test_counts
--------------------------------------------------------

  CREATE UNIQUE INDEX "exploration"."PK_test_counts" ON "exploration"."test_counts" ("id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Index idx_fwi
--------------------------------------------------------

  CREATE INDEX "exploration"."idx_fwi" ON "exploration"."test_counts" ("fwi") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Index idx_fwi_nn
--------------------------------------------------------

  CREATE INDEX "exploration"."idx_fwi_nn" ON "exploration"."test_counts" ("fwi_nn") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Index idx_d
--------------------------------------------------------

  CREATE INDEX "exploration"."idx_d" ON "exploration"."dates" ("d") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "EXPLORATION" ;
--------------------------------------------------------
--  DDL for Trigger TRG_cities_ct_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "exploration"."TRG_cities_ct_id" 
	BEFORE INSERT 
	ON "cities" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_cities_ct_id".NEXTVAL 
		INTO :NEW."ct_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "exploration"."TRG_cities_ct_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_computers_c_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "exploration"."TRG_computers_c_id" 
	BEFORE INSERT 
	ON "computers" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_computers_c_id".NEXTVAL 
		INTO :NEW."c_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "exploration"."TRG_computers_c_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_library_in_json_lij_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "exploration"."TRG_library_in_json_lij_id" 
	BEFORE INSERT 
	ON "library_in_json" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_library_in_json_lij_id".NEXTVAL 
		INTO :NEW."lij_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "exploration"."TRG_library_in_json_lij_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_rooms_r_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "exploration"."TRG_rooms_r_id" 
	BEFORE INSERT 
	ON "rooms" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_rooms_r_id".NEXTVAL 
		INTO :NEW."r_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "exploration"."TRG_rooms_r_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_shopping_sh_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "exploration"."TRG_shopping_sh_id" 
	BEFORE INSERT 
	ON "shopping" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_shopping_sh_id".NEXTVAL 
		INTO :NEW."sh_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "exploration"."TRG_shopping_sh_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_site_pages_sp_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "exploration"."TRG_site_pages_sp_id" 
	BEFORE INSERT 
	ON "site_pages" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_site_pages_sp_id".NEXTVAL 
		INTO :NEW."sp_id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "exploration"."TRG_site_pages_sp_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_test_counts_id
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "exploration"."TRG_test_counts_id" 
	BEFORE INSERT 
	ON "test_counts" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_test_counts_id".NEXTVAL 
		INTO :NEW."id" 
		FROM DUAL; 
	END;


/
ALTER TRIGGER "exploration"."TRG_test_counts_id" ENABLE;
--------------------------------------------------------
--  Constraints for Table computers
--------------------------------------------------------

  ALTER TABLE "exploration"."computers" MODIFY ("c_id" NOT NULL ENABLE);
  ALTER TABLE "exploration"."computers" MODIFY ("c_name" NOT NULL ENABLE);
  ALTER TABLE "exploration"."computers" ADD CONSTRAINT "PK_computers" PRIMARY KEY ("c_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table cities
--------------------------------------------------------

  ALTER TABLE "exploration"."cities" MODIFY ("ct_id" NOT NULL ENABLE);
  ALTER TABLE "exploration"."cities" MODIFY ("ct_name" NOT NULL ENABLE);
  ALTER TABLE "exploration"."cities" ADD CONSTRAINT "PK_cities" PRIMARY KEY ("ct_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table shopping
--------------------------------------------------------

  ALTER TABLE "exploration"."shopping" MODIFY ("sh_id" NOT NULL ENABLE);
  ALTER TABLE "exploration"."shopping" MODIFY ("sh_transaction" NOT NULL ENABLE);
  ALTER TABLE "exploration"."shopping" MODIFY ("sh_category" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table site_pages
--------------------------------------------------------

  ALTER TABLE "exploration"."site_pages" MODIFY ("sp_id" NOT NULL ENABLE);
  ALTER TABLE "exploration"."site_pages" ADD CONSTRAINT "PK_site_pages" PRIMARY KEY ("sp_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table connections
--------------------------------------------------------

  ALTER TABLE "exploration"."connections" MODIFY ("cn_from" NOT NULL ENABLE);
  ALTER TABLE "exploration"."connections" MODIFY ("cn_to" NOT NULL ENABLE);
  ALTER TABLE "exploration"."connections" MODIFY ("cn_bidir" NOT NULL ENABLE);
  ALTER TABLE "exploration"."connections" ADD CONSTRAINT "PK_connections" PRIMARY KEY ("cn_to", "cn_from")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION"  ENABLE;
  ALTER TABLE "exploration"."connections" ADD CONSTRAINT "CHK_bidir" CHECK ("cn_bidir" IN ('N','Y')) ENABLE;
--------------------------------------------------------
--  Constraints for Table test_counts
--------------------------------------------------------

  ALTER TABLE "exploration"."test_counts" MODIFY ("id" NOT NULL ENABLE);
  ALTER TABLE "exploration"."test_counts" MODIFY ("fni_nn" NOT NULL ENABLE);
  ALTER TABLE "exploration"."test_counts" MODIFY ("fwi_nn" NOT NULL ENABLE);
  ALTER TABLE "exploration"."test_counts" ADD CONSTRAINT "PK_test_counts" PRIMARY KEY ("id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "EXPLORATION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table rooms
--------------------------------------------------------

  ALTER TABLE "exploration"."rooms" MODIFY ("r_id" NOT NULL ENABLE);
  ALTER TABLE "exploration"."rooms" MODIFY ("r_name" NOT NULL ENABLE);
  ALTER TABLE "exploration"."rooms" MODIFY ("r_space" NOT NULL ENABLE);
  ALTER TABLE "exploration"."rooms" ADD CONSTRAINT "PK_rooms" PRIMARY KEY ("r_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXPLORATION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table library_in_json
--------------------------------------------------------

  ALTER TABLE "exploration"."library_in_json" MODIFY ("lij_id" NOT NULL ENABLE);
  ALTER TABLE "exploration"."library_in_json" MODIFY ("lij_book" NOT NULL ENABLE);
  ALTER TABLE "exploration"."library_in_json" MODIFY ("lij_author" NOT NULL ENABLE);
  ALTER TABLE "exploration"."library_in_json" MODIFY ("lij_genre" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table computers
--------------------------------------------------------

  ALTER TABLE "exploration"."computers" ADD CONSTRAINT "FK_computers_rooms" FOREIGN KEY ("c_room")
	  REFERENCES "exploration"."rooms" ("r_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table connections
--------------------------------------------------------

  ALTER TABLE "exploration"."connections" ADD CONSTRAINT "FK_connections_cities1" FOREIGN KEY ("cn_from")
	  REFERENCES "exploration"."cities" ("ct_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "exploration"."connections" ADD CONSTRAINT "FK_connections_cities2" FOREIGN KEY ("cn_to")
	  REFERENCES "exploration"."cities" ("ct_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table site_pages
--------------------------------------------------------

  ALTER TABLE "exploration"."site_pages" ADD CONSTRAINT "FK_site_pages_site_pages" FOREIGN KEY ("sp_parent")
	  REFERENCES "exploration"."site_pages" ("sp_id") ENABLE;
