ALTER TRIGGER "TRG_site_pages_sp_id" DISABLE;
INSERT ALL
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (1, NULL, N'�������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (2, 1, N'���������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (3, 1, N'���������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (4, 1, N'��������������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (5, 2, N'�������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (6, 2, N'����������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (7, 3, N'�����������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (8, 3, N'������� ������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (9, 4, N'�����')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (10, 1, N'��������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (11, 3, N'���������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (12, 6, N'�������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (13, 6, N'��������')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (14, 6, N'�������������')
SELECT 1 FROM "DUAL";
ALTER TRIGGER "TRG_site_pages_sp_id" ENABLE;

ALTER TRIGGER "TRG_cities_ct_id" DISABLE;
INSERT ALL
 INTO "cities" ("ct_id", "ct_name") VALUES (1, N'������')
 INTO "cities" ("ct_id", "ct_name") VALUES (2, N'�����')
 INTO "cities" ("ct_id", "ct_name") VALUES (3, N'������')
 INTO "cities" ("ct_id", "ct_name") VALUES (4, N'�����')
 INTO "cities" ("ct_id", "ct_name") VALUES (5, N'������')
 INTO "cities" ("ct_id", "ct_name") VALUES (6, N'����')
 INTO "cities" ("ct_id", "ct_name") VALUES (7, N'�����')
 INTO "cities" ("ct_id", "ct_name") VALUES (8, N'����')
 INTO "cities" ("ct_id", "ct_name") VALUES (9, N'�������')
 INTO "cities" ("ct_id", "ct_name") VALUES (10, N'������')
SELECT 1 FROM "DUAL";
ALTER TRIGGER "TRG_cities_ct_id" ENABLE;

INSERT ALL
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(1, 5, 10, 'Y')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(1, 7, 20, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(7, 1, 25, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(7, 2, 15, 'Y')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(2, 6, 50, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(6, 8, 40, 'Y')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(8, 4, 30, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(4, 8, 35, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(8, 9, 15, 'Y')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(9, 1, 20, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(7, 3, 5, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(3, 6, 5, 'N')
SELECT 1 FROM "DUAL";