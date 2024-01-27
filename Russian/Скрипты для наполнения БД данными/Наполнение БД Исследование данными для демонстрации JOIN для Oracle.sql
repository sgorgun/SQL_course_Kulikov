INSERT ALL
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (1, N'������� � ����� ������������', 5)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (2, N'������� � ����� ������������', 5)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (3, N'������ ������� 1', 2)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (4, N'������ ������� 2', 2)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (5, N'������ ������� 3', 2)
SELECT 1 FROM "DUAL";

INSERT ALL
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (1, 1, N'��������� A � ������� 1')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (2, 1, N'��������� B � ������� 1')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (3, 2, N'��������� A � ������� 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (4, 2, N'��������� B � ������� 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (5, 2, N'��������� C � ������� 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (6, NULL, N'��������� ��������� A')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (7, NULL, N'��������� ��������� B')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (8, NULL, N'��������� ��������� C')
SELECT 1 FROM "DUAL";