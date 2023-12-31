Create database [PRN211_1] USE [PRN211_1]
GO
/****** Object:  Table [dbo].[curriculum]    Script Date: 20/07/2023 8:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[curriculum](
	[curriculum_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NULL,
	[name] [varchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[decision_id] [int] NULL,
	[total_credit] [int] NULL,
	[owner_id] [int] NULL,
	[is_active] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[curriculum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[decision]    Script Date: 20/07/2023 8:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[decision](
	[decision_id] [int] IDENTITY(1,1) NOT NULL,
	[decision_no] [varchar](50) NULL,
	[decision_date] [date] NULL,
	[creator_id] [int] NULL,
	[is_active] [tinyint] NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[decision_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 20/07/2023 8:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject]    Script Date: 20/07/2023 8:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NULL,
	[name] [varchar](100) NULL,
	[semester] [int] NULL,
	[no_credit] [int] NULL,
	[pre_condition] [varchar](450) NULL,
 CONSTRAINT [PK_subject] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[syllabus]    Script Date: 20/07/2023 8:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[syllabus](
	[syllabus_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[is_active] [bit] NULL,
	[decision_id] [int] NULL,
	[designer_id] [int] NULL,
	[reviewer_id] [int] NULL,
	[subject_id] [int] NULL,
	[degree_level] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[syllabus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 20/07/2023 8:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](100) NULL,
	[user_name] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[mobile] [varchar](20) NULL,
	[password] [varchar](100) NULL,
	[status] [tinyint] NULL,
	[title] [varchar](10) NULL,
	[company] [varchar](100) NULL,
	[create_at] [date] NULL,
	[update_at] [date] NULL,
	[modified_by] [int] NULL,
	[avatar_id] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 20/07/2023 8:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[role_id] [int] NULL,
	[user_id] [int] NULL,
	[is_active] [tinyint] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_user_role_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[curriculum] ON 

INSERT [dbo].[curriculum] ([curriculum_id], [code], [name], [description], [decision_id], [total_credit], [owner_id], [is_active]) VALUES (6, N'BIT_GD_K15DK16A', N'Bachelor Program of Information Technology, Digital Art & Design Major (Chuong trình c? nhân ngành C', N'1. Training Objectives General objective: Training Bachelor of Information Technology, Digital Art & Design specialty with personality and capacity to meet the needs of society, mastering professional knowledge and practice, being able to organize, implem...aaasd', 4, 149, 2, 1)
INSERT [dbo].[curriculum] ([curriculum_id], [code], [name], [description], [decision_id], [total_credit], [owner_id], [is_active]) VALUES (7, N'BIT_GD_K16B	', N'Bachelor Program of Information Technology, Digital Art & Design Major (Chuong trình c? nhân ngành C', N'1. Training Objectives General objective: Training Bachelor of Information Technology, Digital Art & Design specialty with personality and capacity to meet the needs of society, mastering professional knowledge and practice, being able to organize, implem...5', 5, 149, 2, 1)
INSERT [dbo].[curriculum] ([curriculum_id], [code], [name], [description], [decision_id], [total_credit], [owner_id], [is_active]) VALUES (69, N'abc da tang ', N'anh trinh dep trai', N'adjisajdiasjdiasda', 5, 20, NULL, 1)
INSERT [dbo].[curriculum] ([curriculum_id], [code], [name], [description], [decision_id], [total_credit], [owner_id], [is_active]) VALUES (70, N'ngu', N'dadadasdaad', N'asjhdasuhduasduis', 4, -7, NULL, 1)
INSERT [dbo].[curriculum] ([curriculum_id], [code], [name], [description], [decision_id], [total_credit], [owner_id], [is_active]) VALUES (71, N'trinh oke ma', N'pass mon', N'oke nhe passss', 5, 18, NULL, 1)
INSERT [dbo].[curriculum] ([curriculum_id], [code], [name], [description], [decision_id], [total_credit], [owner_id], [is_active]) VALUES (72, NULL, NULL, NULL, 4, NULL, NULL, 1)
INSERT [dbo].[curriculum] ([curriculum_id], [code], [name], [description], [decision_id], [total_credit], [owner_id], [is_active]) VALUES (73, N'trinh le ba', N'dasdas', N'dsadas', 4, 2, NULL, 1)
INSERT [dbo].[curriculum] ([curriculum_id], [code], [name], [description], [decision_id], [total_credit], [owner_id], [is_active]) VALUES (74, N'trinh oke madadasda', N'dadadasdaad', N'dsadasdsd', 14, 5, NULL, 0)
SET IDENTITY_INSERT [dbo].[curriculum] OFF
GO
SET IDENTITY_INSERT [dbo].[decision] ON 

INSERT [dbo].[decision] ([decision_id], [decision_no], [decision_date], [creator_id], [is_active], [name]) VALUES (4, N'495/QÐ-ÐHFPT', CAST(N'2023-05-16' AS Date), 1, 1, N'Ban hành đề cương chi tiết học kì Summer 2023')
INSERT [dbo].[decision] ([decision_id], [decision_no], [decision_date], [creator_id], [is_active], [name]) VALUES (5, N'496/QÐ-ÐHFPT', CAST(N'2023-05-17' AS Date), 2, 1, N'Ban hành đè cương chi tiết học kì Summer 2023')
INSERT [dbo].[decision] ([decision_id], [decision_no], [decision_date], [creator_id], [is_active], [name]) VALUES (14, N'306/QÐ-ÐHFPT', CAST(N'2023-05-15' AS Date), 1, 1, N'Ban hành đè cương chi tiết học kì Summer 2023')
INSERT [dbo].[decision] ([decision_id], [decision_no], [decision_date], [creator_id], [is_active], [name]) VALUES (19, N'420/QÐ-ÐHFPT', CAST(N'2022-05-10' AS Date), 1, 1, N'Danh muc')
INSERT [dbo].[decision] ([decision_id], [decision_no], [decision_date], [creator_id], [is_active], [name]) VALUES (20, N'100/QÐ-ÐHFPT', CAST(N'2001-05-05' AS Date), 1, 1, N'Danh muc quyet Dinh ')
INSERT [dbo].[decision] ([decision_id], [decision_no], [decision_date], [creator_id], [is_active], [name]) VALUES (1006, N'Quy?t d?nh 861/QÐ-TTg ', CAST(N'2023-07-20' AS Date), NULL, 0, N'ddad')
INSERT [dbo].[decision] ([decision_id], [decision_no], [decision_date], [creator_id], [is_active], [name]) VALUES (1007, N'Quy?t d?nh 861/QÐ-TTg bbbb', CAST(N'2023-07-20' AS Date), NULL, 0, N'fdsfd ')
SET IDENTITY_INSERT [dbo].[decision] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([role_id], [name], [description]) VALUES (1, N'System Admin', N'Manage the system , able to manage users and roles')
INSERT [dbo].[role] ([role_id], [name], [description]) VALUES (2, N'Student', N'View learning materrial')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[subject] ON 

INSERT [dbo].[subject] ([subject_id], [code], [name], [semester], [no_credit], [pre_condition]) VALUES (1, N'OTP101', N'OTP101 -- Orientation and General Training Program_Ð?nh hu?ng và Rèn luy?n t?p trung', 1, 3, N'')
INSERT [dbo].[subject] ([subject_id], [code], [name], [semester], [no_credit], [pre_condition]) VALUES (2, N'PEN', N'Preparation English_Ti?ng Anh chu?n b?', 0, 4, N'')
SET IDENTITY_INSERT [dbo].[subject] OFF
GO
SET IDENTITY_INSERT [dbo].[syllabus] ON 

INSERT [dbo].[syllabus] ([syllabus_id], [name], [description], [is_active], [decision_id], [designer_id], [reviewer_id], [subject_id], [degree_level]) VALUES (3, N'Ðịnh hướng và Rèn luyện tập trung(Orientaiton and General Training Program)', N'Orientation and general training program includes 4 modules :', 1, 4, 2, NULL, 1, NULL)
INSERT [dbo].[syllabus] ([syllabus_id], [name], [description], [is_active], [decision_id], [designer_id], [reviewer_id], [subject_id], [degree_level]) VALUES (4, N'Communication and In-group working skills', N'This course will cover both working in groups and communication skills.
 
 Assessment structure:
 * On-going Assessment:
 - Activity: 10%
 - Quiz: 15%
 - Group Assignment : 15%
 - Group Project : 30%
 * Final Exam: 30%
 * Completion Criteria: Every on-going assessment component > 0, Final Exam >=4, Final Result >=5', 1, 5, 2, NULL, 2, NULL)
INSERT [dbo].[syllabus] ([syllabus_id], [name], [description], [is_active], [decision_id], [designer_id], [reviewer_id], [subject_id], [degree_level]) VALUES (5, N'q', N'q', 1, 4, 2, NULL, 2, NULL)
INSERT [dbo].[syllabus] ([syllabus_id], [name], [description], [is_active], [decision_id], [designer_id], [reviewer_id], [subject_id], [degree_level]) VALUES (6, N'e', N'e', 1, 14, 2, NULL, 2, NULL)
INSERT [dbo].[syllabus] ([syllabus_id], [name], [description], [is_active], [decision_id], [designer_id], [reviewer_id], [subject_id], [degree_level]) VALUES (7, N'r', N'r', 1, 19, 2, NULL, NULL, NULL)
INSERT [dbo].[syllabus] ([syllabus_id], [name], [description], [is_active], [decision_id], [designer_id], [reviewer_id], [subject_id], [degree_level]) VALUES (1005, N'trinh le baewrwerwewerassd', N'dsadasdasdas', 1, 14, NULL, NULL, NULL, N'2')
INSERT [dbo].[syllabus] ([syllabus_id], [name], [description], [is_active], [decision_id], [designer_id], [reviewer_id], [subject_id], [degree_level]) VALUES (1006, N'add ngondsadas', N'dsadasds', 1, 20, NULL, NULL, NULL, N'4')
SET IDENTITY_INSERT [dbo].[syllabus] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (1, N'Admin Admin', N'admin12', N'trinhlbhe163893@gmail.com', N'0888160699', N'trinh123@', 1, N'mr', N'fpt software', CAST(N'2023-06-23' AS Date), NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (2, N'Truc Ha', N'ha123', N'duclinh5122002@gmail.com', N'0843442345', N'trinh123@', 1, N'mrs', N'NTF solution', CAST(N'2023-06-23' AS Date), NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (3, N'trinh dz', N'trinhbg', NULL, NULL, N'trinh123@', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (4, N'Lê Bá Tr?nha ', N'trinhhe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (5, N'Le Ba Trinh Ka', N'trinhbg123', NULL, NULL, N'12', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (6, N'Dang Van Hoan', N'hoanda', N'hoanga@gmail.com', N'0123456789', N'Hoan123@', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (7, N'Lê Bá Trình', N'trinhlb1912', N'trinhbg2121@gmail.com', N'0974160666', N'trinh123@', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (8, N'Lê Bá Trìnhaa', N'trinhlb1', N'trinhbg2121@gmail.com', N'0974160666', N'trinh123@', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (9, N'Lê Bá Trình', N'trinhlb11', N'trinhbg2121@gmail.com', N'0974160666', N'trinh123@', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (10, N'Lê Bá Trình', N'trinhbg1912', N'trinhbg2121@gmail.com', N'0564296789', N'trinh123@', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user] ([user_id], [full_name], [user_name], [email], [mobile], [password], [status], [title], [company], [create_at], [update_at], [modified_by], [avatar_id]) VALUES (11, N'trinh le ba tr', N'trinhleba1', N'trinhbg2121@gmail.com', N'0564296789', N'trinh123@', 1, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[user_role] ON 

INSERT [dbo].[user_role] ([role_id], [user_id], [is_active], [Id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[user_role] ([role_id], [user_id], [is_active], [Id]) VALUES (2, 2, 1, 2)
INSERT [dbo].[user_role] ([role_id], [user_id], [is_active], [Id]) VALUES (2, 9, NULL, 3)
INSERT [dbo].[user_role] ([role_id], [user_id], [is_active], [Id]) VALUES (2, 10, NULL, 4)
INSERT [dbo].[user_role] ([role_id], [user_id], [is_active], [Id]) VALUES (2, 11, NULL, 5)
SET IDENTITY_INSERT [dbo].[user_role] OFF
GO
ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (NULL) FOR [decision_id]
GO
ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (NULL) FOR [total_credit]
GO
ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (NULL) FOR [owner_id]
GO
ALTER TABLE [dbo].[curriculum] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[decision] ADD  DEFAULT (NULL) FOR [decision_no]
GO
ALTER TABLE [dbo].[decision] ADD  DEFAULT (NULL) FOR [decision_date]
GO
ALTER TABLE [dbo].[decision] ADD  DEFAULT (NULL) FOR [creator_id]
GO
ALTER TABLE [dbo].[decision] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[decision] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[subject] ADD  DEFAULT ('') FOR [pre_condition]
GO
ALTER TABLE [dbo].[syllabus] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[syllabus] ADD  DEFAULT ('1') FOR [is_active]
GO
ALTER TABLE [dbo].[syllabus] ADD  DEFAULT (NULL) FOR [decision_id]
GO
ALTER TABLE [dbo].[syllabus] ADD  DEFAULT (NULL) FOR [designer_id]
GO
ALTER TABLE [dbo].[syllabus] ADD  DEFAULT (NULL) FOR [reviewer_id]
GO
ALTER TABLE [dbo].[syllabus] ADD  DEFAULT (NULL) FOR [subject_id]
GO
ALTER TABLE [dbo].[syllabus] ADD  DEFAULT (NULL) FOR [degree_level]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [full_name]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [user_name]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [mobile]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [password]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('1') FOR [status]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [company]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [create_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [update_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [modified_by]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [avatar_id]
GO
ALTER TABLE [dbo].[user_role] ADD  DEFAULT (NULL) FOR [is_active]
GO
ALTER TABLE [dbo].[curriculum]  WITH CHECK ADD  CONSTRAINT [FK_curriculum_decision] FOREIGN KEY([decision_id])
REFERENCES [dbo].[decision] ([decision_id])
GO
ALTER TABLE [dbo].[curriculum] CHECK CONSTRAINT [FK_curriculum_decision]
GO
ALTER TABLE [dbo].[curriculum]  WITH CHECK ADD  CONSTRAINT [FK_curriculum_owner] FOREIGN KEY([owner_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[curriculum] CHECK CONSTRAINT [FK_curriculum_owner]
GO
ALTER TABLE [dbo].[decision]  WITH CHECK ADD  CONSTRAINT [FK_decision_creator] FOREIGN KEY([creator_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[decision] CHECK CONSTRAINT [FK_decision_creator]
GO
ALTER TABLE [dbo].[syllabus]  WITH CHECK ADD  CONSTRAINT [fk_syllabus_decision] FOREIGN KEY([decision_id])
REFERENCES [dbo].[decision] ([decision_id])
GO
ALTER TABLE [dbo].[syllabus] CHECK CONSTRAINT [fk_syllabus_decision]
GO
ALTER TABLE [dbo].[syllabus]  WITH CHECK ADD  CONSTRAINT [fk_syllabus_designer] FOREIGN KEY([designer_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[syllabus] CHECK CONSTRAINT [fk_syllabus_designer]
GO
ALTER TABLE [dbo].[syllabus]  WITH CHECK ADD  CONSTRAINT [fk_syllabus_reviewer] FOREIGN KEY([reviewer_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[syllabus] CHECK CONSTRAINT [fk_syllabus_reviewer]
GO
ALTER TABLE [dbo].[syllabus]  WITH CHECK ADD  CONSTRAINT [fk_syllabus_subject] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subject] ([subject_id])
GO
ALTER TABLE [dbo].[syllabus] CHECK CONSTRAINT [fk_syllabus_subject]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_modified_by] FOREIGN KEY([modified_by])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_modified_by]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [FK_user_role_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [FK_user_role_role_id]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [FK_user_role_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [FK_user_role_user_id]
GO
