SET IDENTITY_INSERT [site_pages] ON;
INSERT INTO [site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES
(1, NULL, N'�������'),
(2, 1, N'���������'),
(3, 1, N'���������'),
(4, 1, N'��������������'),
(5, 2, N'�������'),
(6, 2, N'����������'),
(7, 3, N'�����������'),
(8, 3, N'������� ������'),
(9, 4, N'�����'),
(10, 1, N'��������'),
(11, 3, N'���������'),
(12, 6, N'�������'),
(13, 6, N'��������'),
(14, 6, N'�������������');
SET IDENTITY_INSERT [site_pages] OFF;

SET IDENTITY_INSERT [cities] ON;
INSERT INTO [cities] ([ct_id], [ct_name]) VALUES
(1, N'������'),
(2, N'�����'),
(3, N'������'),
(4, N'�����'),
(5, N'������'),
(6, N'����'),
(7, N'�����'),
(8, N'����'),
(9, N'�������'),
(10, N'������');
SET IDENTITY_INSERT [cities] OFF;

INSERT INTO [connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES
(1, 5, 10, 'Y'),
(1, 7, 20, 'N'),
(7, 1, 25, 'N'),
(7, 2, 15, 'Y'),
(2, 6, 50, 'N'),
(6, 8, 40, 'Y'),
(8, 4, 30, 'N'),
(4, 8, 35, 'N'),
(8, 9, 15, 'Y'),
(9, 1, 20, 'N'),
(7, 3, 5, 'N'),
(3, 6, 5, 'N');