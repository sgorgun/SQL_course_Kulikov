-- ВАЖНО! Перед вставкой данных в таблицу "subscriptions" отключите триггер:
-- ALTER TRIGGER "TRG_subscriptions_sb_id" DISABLE;
-- После вставки данных включите триггер:
-- ALTER TRIGGER "TRG_subscriptions_sb_id" ENABLE;
-- Если этого не сделать, будут неверно вставлены значения первичных ключей
-- в таблице "subscriptions".

INSERT INTO "authors" ("a_id","a_name") values (1,'Д. Кнут');
INSERT INTO "authors" ("a_id","a_name") values (2,'А. Азимов');
INSERT INTO "authors" ("a_id","a_name") values (3,'Д. Карнеги');
INSERT INTO "authors" ("a_id","a_name") values (4,'Л.Д. Ландау');
INSERT INTO "authors" ("a_id","a_name") values (5,'Е.М. Лифшиц');
INSERT INTO "authors" ("a_id","a_name") values (6,'Б. Страуструп');
INSERT INTO "authors" ("a_id","a_name") values (7,'А.С. Пушкин');

INSERT INTO "books" ("b_id","b_name","b_year","b_quantity") values (1,'Евгений Онегин',1985,2);
INSERT INTO "books" ("b_id","b_name","b_year","b_quantity") values (2,'Сказка о рыбаке и рыбке',1990,3);
INSERT INTO "books" ("b_id","b_name","b_year","b_quantity") values (3,'Основание и империя',2000,5);
INSERT INTO "books" ("b_id","b_name","b_year","b_quantity") values (4,'Психология программирования',1998,1);
INSERT INTO "books" ("b_id","b_name","b_year","b_quantity") values (5,'Язык программирования С++',1996,3);
INSERT INTO "books" ("b_id","b_name","b_year","b_quantity") values (6,'Курс теоретической физики',1981,12);
INSERT INTO "books" ("b_id","b_name","b_year","b_quantity") values (7,'Искусство программирования',1993,7);

INSERT INTO "genres" ("g_id","g_name") values (5,'Классика');
INSERT INTO "genres" ("g_id","g_name") values (4,'Наука');
INSERT INTO "genres" ("g_id","g_name") values (1,'Поэзия');
INSERT INTO "genres" ("g_id","g_name") values (2,'Программирование');
INSERT INTO "genres" ("g_id","g_name") values (3,'Психология');
INSERT INTO "genres" ("g_id","g_name") values (6,'Фантастика');

INSERT INTO "m2m_books_authors" ("b_id","a_id") values (1,7);
INSERT INTO "m2m_books_authors" ("b_id","a_id") values (2,7);
INSERT INTO "m2m_books_authors" ("b_id","a_id") values (3,2);
INSERT INTO "m2m_books_authors" ("b_id","a_id") values (4,3);
INSERT INTO "m2m_books_authors" ("b_id","a_id") values (4,6);
INSERT INTO "m2m_books_authors" ("b_id","a_id") values (5,6);
INSERT INTO "m2m_books_authors" ("b_id","a_id") values (6,4);
INSERT INTO "m2m_books_authors" ("b_id","a_id") values (6,5);
INSERT INTO "m2m_books_authors" ("b_id","a_id") values (7,1);

INSERT INTO "m2m_books_genres" ("b_id","g_id") values (1,1);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (1,5);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (2,1);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (2,5);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (3,6);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (4,2);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (4,3);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (5,2);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (6,5);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (7,2);
INSERT INTO "m2m_books_genres" ("b_id","g_id") values (7,5);

INSERT INTO "subscribers" ("s_id","s_name") values (1,'Иванов И.И.');
INSERT INTO "subscribers" ("s_id","s_name") values (2,'Петров П.П.');
INSERT INTO "subscribers" ("s_id","s_name") values (3,'Сидоров С.С.');
INSERT INTO "subscribers" ("s_id","s_name") values (4,'Сидоров С.С.');

ALTER TRIGGER "TRG_subscriptions_sb_id" DISABLE;
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (100,1,3,to_date('12-JAN-11','DD-MON-RR'),to_date('12-FEB-11','DD-MON-RR'),'N');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (2,1,1,to_date('12-JAN-11','DD-MON-RR'),to_date('12-FEB-11','DD-MON-RR'),'N');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (3,3,3,to_date('17-MAY-12','DD-MON-RR'),to_date('17-JUL-12','DD-MON-RR'),'Y');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (42,1,2,to_date('11-JUN-12','DD-MON-RR'),to_date('11-AUG-12','DD-MON-RR'),'N');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (57,4,5,to_date('11-JUN-12','DD-MON-RR'),to_date('11-AUG-12','DD-MON-RR'),'N');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (61,1,7,to_date('03-AUG-14','DD-MON-RR'),to_date('03-OCT-14','DD-MON-RR'),'N');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (62,3,5,to_date('03-AUG-14','DD-MON-RR'),to_date('03-OCT-14','DD-MON-RR'),'Y');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (86,3,1,to_date('03-AUG-14','DD-MON-RR'),to_date('03-SEP-14','DD-MON-RR'),'Y');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (91,4,1,to_date('07-OCT-15','DD-MON-RR'),to_date('07-MAR-15','DD-MON-RR'),'Y');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (95,1,4,to_date('07-OCT-15','DD-MON-RR'),to_date('07-NOV-15','DD-MON-RR'),'N');
INSERT INTO "subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (99,4,4,to_date('08-OCT-15','DD-MON-RR'),to_date('08-NOV-25','DD-MON-RR'),'Y');
ALTER TRIGGER "TRG_subscriptions_sb_id" ENABLE;