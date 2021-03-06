USE [SlamBookPitch]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 12/4/2017 11:07:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [nvarchar](280) NOT NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 12/4/2017 11:07:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](140) NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/4/2017 11:07:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[PenName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([AnswerID], [Answer], [QuestionID]) VALUES (1, N'She''s really nice to everybody.', 4)
INSERT [dbo].[Answers] ([AnswerID], [Answer], [QuestionID]) VALUES (4, N'I always wanted to be... A lumberjack!', 2)
INSERT [dbo].[Answers] ([AnswerID], [Answer], [QuestionID]) VALUES (5, N'No. Stop trying to make it happen.', 7)
INSERT [dbo].[Answers] ([AnswerID], [Answer], [QuestionID]) VALUES (6, N'Good: reading. Bad: cooking.', 6)
SET IDENTITY_INSERT [dbo].[Answers] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (2, N'What''s your dream career?', 2)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (3, N'Write one nice thing about everyone else in the group.', 4)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (4, N'What is Regina George''s best feature?', 3)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (5, N'If you could have one superpower, what would it be?', 6)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (6, N'Name one thing you''re really good at, and one thing you''re really bad at.', 8)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (7, N'Is "fetch" ever going to happen?', 1)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (8, N'Who have you lost, that you most want back?', 9)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (9, N'Which of your friends has the hottest mom?', 5)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (10, N'What''s the craziest thing you ever did for love?', 10)
INSERT [dbo].[Questions] ([QuestionID], [Question], [UserID]) VALUES (11, N'Are you secretly jealous of your best friend?', 7)
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (1, N'Gretchen Weiner')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (2, N'Duckie')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (3, N'Regina George')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (4, N'Booger')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (5, N'Stiffler')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (6, N'Buffy')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (7, N'Cameron Frye')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (8, N'Katniss')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (9, N'Sidney Prescott')
INSERT [dbo].[Users] ([UserID], [PenName]) VALUES (10, N'Lloyd Dobbler')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Questions] ([QuestionID])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Users]
GO
