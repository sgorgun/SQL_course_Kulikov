INSERT ALL
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (1, N'Евгений Онегин', N'[{"id":7,"name":"А.С. Пушкин"}]',
              N'[{"id":1,"name":"Поэзия"},{"id":5,"name":"Классика"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (2, N'Сказка о рыбаке и рыбке',
              N'[{"id":7,"name":"А.С. Пушкин"}]',
              N'[{"id":1,"name":"Поэзия"},{"id":5,"name":"Классика"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (3, N'Основание и империя', N'[{"id":2,"name":"А. Азимов"}]',
              N'[{"id":6,"name":"Фантастика"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (4, N'Психология программирования',
              N'[{"id":3,"name":"Д. Карнеги"},
                 {"id":6,"name":"Б. Страуструп"}]',
              N'[{"id":2,"name":"Программирование"},
                 {"id":3,"name":"Психология"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (5, N'Язык программирования С++',
              N'[{"id":6,"name":"Б. Страуструп"}]', 
              N'[{"id":2,"name":"Программирование"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (6, N'Курс теоретической физики',
              N'[{"id":4,"name":"Л.Д. Ландау"},
                 {"id":5,"name":"Е.М. Лифшиц"}]',
              N'[{"id":5,"name":"Классика"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (7, N'Искусство программирования',
              N'[{"id":1,"name":"Д. Кнут"}]',
              N'[{"id":2,"name":"Программирование"},
                 {"id":5,"name":"Классика"}]')
SELECT 1 FROM "DUAL";