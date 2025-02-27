USE [MusicDB]
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 23/10/2019 8:59:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite_Song]    Script Date: 23/10/2019 8:59:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite_Song](
	[id] [int] NOT NULL,
	[username] [varchar](30) NULL,
	[sa_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Song]    Script Date: 23/10/2019 8:59:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Song](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Song_Artist]    Script Date: 23/10/2019 8:59:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Song_Artist](
	[id] [int] NOT NULL,
	[song_id] [int] NULL,
	[artist_id] [int] NULL,
	[view_count] [int] NULL,
	[image_link] [varchar](200) NULL,
	[song_link] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 23/10/2019 8:59:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](30) NULL,
	[name] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Artist] ([id], [name]) VALUES (1, N'JustaTee, Phuong Ly')
INSERT [dbo].[Artist] ([id], [name]) VALUES (2, N'Mr Siro')
INSERT [dbo].[Artist] ([id], [name]) VALUES (3, N'Nguyễn Trọng Tài, San Ji, Double X')
INSERT [dbo].[Artist] ([id], [name]) VALUES (4, N'Will')
INSERT [dbo].[Artist] ([id], [name]) VALUES (5, N'Kay Trần, Nguyễn Khoa, Kass')
INSERT [dbo].[Artist] ([id], [name]) VALUES (6, N'Only C, Karik')
INSERT [dbo].[Artist] ([id], [name]) VALUES (7, N'Đức Phúc')
INSERT [dbo].[Artist] ([id], [name]) VALUES (8, N'Đạt G')
INSERT [dbo].[Artist] ([id], [name]) VALUES (9, N'Hoa Vinh')
INSERT [dbo].[Artist] ([id], [name]) VALUES (10, N'Andiez')
INSERT [dbo].[Artist] ([id], [name]) VALUES (11, N'Thủy Rainbow')
INSERT [dbo].[Artist] ([id], [name]) VALUES (12, N'Hoàng Thùy Linh')
INSERT [dbo].[Artist] ([id], [name]) VALUES (13, N'Đạt G ft. Masew')
INSERT [dbo].[Song] ([id], [name]) VALUES (1, N'Thằng Ðiên')
INSERT [dbo].[Song] ([id], [name]) VALUES (2, N'Càng Níu Giữ Càng Dễ Mất')
INSERT [dbo].[Song] ([id], [name]) VALUES (3, N'Hongkong1 (Official Version)')
INSERT [dbo].[Song] ([id], [name]) VALUES (4, N'Tận Cùng Nỗi Nhớ')
INSERT [dbo].[Song] ([id], [name]) VALUES (5, N'Chuyện Tình Tôi')
INSERT [dbo].[Song] ([id], [name]) VALUES (6, N'Yêu Đơn Phương')
INSERT [dbo].[Song] ([id], [name]) VALUES (7, N'Còn Yêu, Đâu Ai Ra Đi')
INSERT [dbo].[Song] ([id], [name]) VALUES (8, N'Buồn Không Em')
INSERT [dbo].[Song] ([id], [name]) VALUES (9, N'Đừng Quên Tên Anh')
INSERT [dbo].[Song] ([id], [name]) VALUES (10, N'Suýt Nữa Thì (Chuyến Đi Của Thanh Xuân OST)')
INSERT [dbo].[Song] ([id], [name]) VALUES (11, N'Để Mị Nói Cho Mà Nghe')
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (1, 1, 1, 19, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/9/d/5/c/9d5c56a277a06a48ec7956a4fd17e4c1.jpg', N'https://www.youtube.com/embed/HXkh7EOqcQ4')
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (2, 2, 2, 0, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/9/9/7/2/997250daaebfe5c1a8f29a5fce90248a.jpg', NULL)
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (3, 3, 3, 29, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/2/4/3/6/2436b0b8130f7c2199d9803c0b85d57d.jpg', N'https://www.youtube.com/embed/t7tZFq29lis')
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (4, 4, 4, 1, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/3/b/c/d/3bcd4a21a806a35f4b54f600b818faac.jpg', NULL)
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (5, 5, 5, 0, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/f/b/0/2/fb02af43541ac3442301b5da01f8404a.jpg', NULL)
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (6, 6, 6, 0, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/5/6/4/2/564259a86e36010f6b80ac31210395ad.jpg', NULL)
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (7, 7, 7, 0, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/d/9/4/c/d94c4005fce37250ba69b69544c965bd.jpg', NULL)
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (8, 8, 8, 7, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/3/0/1/c/301ce668e0144c874754359e3db405cb.jpg', N'https://www.youtube.com/embed/NtKX__-qPSI')
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (9, 9, 9, 0, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/e/2/7/1/e271782467a84390a22cb9a28301b0e9.jpg', NULL)
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (10, 10, 10, 0, N'https://photo-zmp3.zadn.vn/thumb/94_94/cover/c/2/4/7/c2475264a30999a45a3c8bcf0e5f090d.jpg', NULL)
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (11, 11, 12, 18, N'http://vip.img.cdn.keeng.vn/sata11/singer/2018/09/13/7A6HhFHFzjMoBigauN755b9a37b6644f3.jpg', N'https://www.youtube.com/embed/JAhdeizXpaQ')
INSERT [dbo].[Song_Artist] ([id], [song_id], [artist_id], [view_count], [image_link], [song_link]) VALUES (12, 8, 13, 19, N'https://photo-resize-zmp3.zadn.vn/w240_r1x1_jpeg/avatars/9/0/d/0/90d0a2d58bdd48f401a74f9f41a5185b.jpg', N'https://www.youtube.com/embed/GZUgkshzVEQ')
INSERT [dbo].[User] ([username], [password], [name], [email], [gender], [dob]) VALUES (N'admin', N'thubeo', N'Le Thi Anh Thu', N'hehe@gmail.com', 0, CAST(N'2000-01-01' AS Date))
INSERT [dbo].[User] ([username], [password], [name], [email], [gender], [dob]) VALUES (N'conglthe130017', N'123456', N'Le Thanh Cong', N'conglthe130017@fpt.edu.vn', 1, CAST(N'1999-12-13' AS Date))
INSERT [dbo].[User] ([username], [password], [name], [email], [gender], [dob]) VALUES (N'congltse6025', N'123456', N'Le Thanh Huy', N'congltse6025@fpt.edu.vn', 0, CAST(N'2001-06-05' AS Date))
INSERT [dbo].[User] ([username], [password], [name], [email], [gender], [dob]) VALUES (N'ltc1999', N'qIpoHyZFDc', N'LTC', N'lethanhcong99lx@gmail.com', 0, CAST(N'1999-12-21' AS Date))
INSERT [dbo].[User] ([username], [password], [name], [email], [gender], [dob]) VALUES (N'root', N'1', N'Admin', N'admin123@gmail.com', 1, CAST(N'1995-06-16' AS Date))
ALTER TABLE [dbo].[Favorite_Song]  WITH CHECK ADD FOREIGN KEY([sa_id])
REFERENCES [dbo].[Song_Artist] ([id])
GO
ALTER TABLE [dbo].[Favorite_Song]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Song_Artist]  WITH CHECK ADD FOREIGN KEY([artist_id])
REFERENCES [dbo].[Artist] ([id])
GO
ALTER TABLE [dbo].[Song_Artist]  WITH CHECK ADD FOREIGN KEY([song_id])
REFERENCES [dbo].[Song] ([id])
GO
