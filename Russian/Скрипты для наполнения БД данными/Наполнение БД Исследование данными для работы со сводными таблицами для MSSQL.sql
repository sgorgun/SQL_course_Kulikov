SET IDENTITY_INSERT [shopping] ON;
INSERT INTO [shopping]
(
    [sh_id],
    [sh_transaction],
    [sh_category]
) VALUES
(1, 1, N'�����'),
(2, 1, N'������'),
(3, 1, N'�����'),
(4, 2, N'�����'),
(5, 2, N'����'),
(6, 3, N'������'),
(7, 3, N'����'),
(8, 3, N'�����'),
(9, 3, N'������'),
(10, 4, N'�����');
SET IDENTITY_INSERT [shopping] OFF;