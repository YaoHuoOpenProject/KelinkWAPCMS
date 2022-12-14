if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[wap_message]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[wap_message]
GO

CREATE TABLE [dbo].[wap_message] (
	[id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[siteid] [bigint] NULL ,
	[userid] [bigint] NULL ,
	[nickname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[title] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[touserid] [bigint] NULL ,
	[tonickname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[isnew] [smallint] NULL ,
	[issystem] [smallint] NULL ,
	[addtime] [smalldatetime] NULL ,
	[HangBiaoShi] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[wap_message] WITH NOCHECK ADD 
	CONSTRAINT [PK_wap_message] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[wap_message] ADD 
	CONSTRAINT [DF_wap_message_siteid] DEFAULT (0) FOR [siteid],
	CONSTRAINT [DF_wap_message_userid] DEFAULT (0) FOR [userid],
	CONSTRAINT [DF_wap_message_touserid] DEFAULT (0) FOR [touserid],
	CONSTRAINT [DF_wap_message_isnew] DEFAULT (1) FOR [isnew],
	CONSTRAINT [DF_wap_message_issystem] DEFAULT (0) FOR [issystem],
	CONSTRAINT [DF_wap_message_addtime] DEFAULT (getdate()) FOR [addtime]
GO

 CREATE  INDEX [PK_siteid] ON [dbo].[wap_message]([siteid]) ON [PRIMARY]
GO

 CREATE  INDEX [PK_touserid] ON [dbo].[wap_message]([touserid]) ON [PRIMARY]
GO

