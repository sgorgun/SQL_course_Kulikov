SET IDENTITY_INSERT [rooms] ON;
INSERT INTO [rooms] ([r_id], [r_name], [r_space])
VALUES
(1, N'������� � ����� ������������', 5),
(2, N'������� � ����� ������������', 5),
(3, N'������ ������� 1', 2),
(4, N'������ ������� 2', 2),
(5, N'������ ������� 3', 2);
SET IDENTITY_INSERT [rooms] OFF;

SET IDENTITY_INSERT [computers] ON;
INSERT INTO [computers] ([c_id], [c_room], [c_name])
VALUES
(1, 1, N'��������� A � ������� 1'),
(2, 1, N'��������� B � ������� 1'),
(3, 2, N'��������� A � ������� 2'),
(4, 2, N'��������� B � ������� 2'),
(5, 2, N'��������� C � ������� 2'),
(6, NULL, N'��������� ��������� A'),
(7, NULL, N'��������� ��������� B'),
(8, NULL, N'��������� ��������� C');
SET IDENTITY_INSERT [computers] OFF;