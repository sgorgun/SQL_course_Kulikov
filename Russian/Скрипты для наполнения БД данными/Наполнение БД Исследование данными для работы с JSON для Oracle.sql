INSERT ALL
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (1, N'������� ������', N'[{"id":7,"name":"�.�. ������"}]',
              N'[{"id":1,"name":"������"},{"id":5,"name":"��������"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (2, N'������ � ������ � �����',
              N'[{"id":7,"name":"�.�. ������"}]',
              N'[{"id":1,"name":"������"},{"id":5,"name":"��������"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (3, N'��������� � �������', N'[{"id":2,"name":"�. ������"}]',
              N'[{"id":6,"name":"����������"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (4, N'���������� ����������������',
              N'[{"id":3,"name":"�. �������"},
                 {"id":6,"name":"�. ����������"}]',
              N'[{"id":2,"name":"����������������"},
                 {"id":3,"name":"����������"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (5, N'���� ���������������� �++',
              N'[{"id":6,"name":"�. ����������"}]', 
              N'[{"id":2,"name":"����������������"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (6, N'���� ������������� ������',
              N'[{"id":4,"name":"�.�. ������"},
                 {"id":5,"name":"�.�. ������"}]',
              N'[{"id":5,"name":"��������"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (7, N'��������� ����������������',
              N'[{"id":1,"name":"�. ����"}]',
              N'[{"id":2,"name":"����������������"},
                 {"id":5,"name":"��������"}]')
SELECT 1 FROM "DUAL";