SET IDENTITY_INSERT [shopping] ON;
INSERT INTO [shopping]
(
    [sh_id],
    [sh_transaction],
    [sh_category]
) VALUES
(1, 1, N'Сумка'),
(2, 1, N'Платье'),
(3, 1, N'Сумка'),
(4, 2, N'Сумка'),
(5, 2, N'Юбка'),
(6, 3, N'Платье'),
(7, 3, N'Юбка'),
(8, 3, N'Туфли'),
(9, 3, N'Шляпка'),
(10, 4, N'Сумка');
SET IDENTITY_INSERT [shopping] OFF;