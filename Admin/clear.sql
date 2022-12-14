if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fcount]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[fcount]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[wap_adlinkre]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[wap_adlinkre]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[wap_log]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[wap_log]
GO



CREATE TABLE [dbo].[fcount] (
	[fid] [bigint] IDENTITY (1, 1) NOT NULL ,
	[fyear] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[fmonth] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[fweek] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[fday] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[fhour] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[fip] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[fwindows] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[fsystem] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[furl] [nvarchar] (250) COLLATE Chinese_PRC_CI_AS NULL ,
	[ftime] [smalldatetime] NULL ,
	[fweeknum] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[fuserid] [bigint] NULL ,
	[fuser] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[userid] [bigint] NULL ,
	[nickname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[classid] [bigint] NULL ,
	[classname] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[SubMoneyFlag] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[HangBiaoShi] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[wap_adlinkre] (
	[id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[devid] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[userid] [bigint] NULL ,
	[nickname] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[classid] [bigint] NULL ,
	[bookid] [bigint] NULL ,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[redate] [smalldatetime] NULL ,
	[myGetMoney] [int] NULL ,
	[HangBiaoShi] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[wap_log] (
	[id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[siteid] [bigint] NOT NULL ,
	[oper_userid] [bigint] NOT NULL ,
	[oper_nickname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[oper_type] [int] NOT NULL ,
	[log_info] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[oper_ip] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[oper_time] [datetime] NOT NULL ,
	[HangBiaoShi] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



ALTER TABLE [dbo].[wap_adlinkre] WITH NOCHECK ADD 
	CONSTRAINT [PK_wap_adlinkre] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO



 CREATE  CLUSTERED  INDEX [PK_fcount] ON [dbo].[fcount]([ftime], [fuserid]) ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [PK_userid] ON [dbo].[wap_log]([oper_userid]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[fcount] ADD 
	CONSTRAINT [DF_fcount_ftime] DEFAULT (getdate()) FOR [ftime],
	CONSTRAINT [DF_fcount_fuserid] DEFAULT (0) FOR [fuserid],
	CONSTRAINT [DF_fcount_userid] DEFAULT (0) FOR [userid],
	CONSTRAINT [DF_fcount_classid] DEFAULT (0) FOR [classid]
GO

 CREATE  INDEX [PL_S] ON [dbo].[fcount]([fip], [fuserid], [userid]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [PK_fid] ON [dbo].[fcount]([fid]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[wap_adlinkre] ADD 
	CONSTRAINT [DF_wap_adlinkre_userid] DEFAULT (0) FOR [userid],
	CONSTRAINT [DF_wap_adlinkre_classid] DEFAULT (0) FOR [classid],
	CONSTRAINT [DF_wap_adlinkre_bookid] DEFAULT (0) FOR [bookid],
	CONSTRAINT [DF_wap_adlinkre_redate] DEFAULT (getdate()) FOR [redate]
GO

 CREATE  INDEX [PK_userid] ON [dbo].[wap_adlinkre]([userid]) ON [PRIMARY]
GO

 CREATE  INDEX [PK_bookid] ON [dbo].[wap_adlinkre]([bookid]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[wap_log] ADD 
	CONSTRAINT [DF_wap_log_siteid] DEFAULT (0) FOR [siteid],
	CONSTRAINT [DF_wap_log_oper_type] DEFAULT (0) FOR [oper_type],
	CONSTRAINT [DF_wap_log_oper_date] DEFAULT (getdate()) FOR [oper_time]
GO

 CREATE  INDEX [PK_siteid] ON [dbo].[wap_log]([siteid]) ON [PRIMARY]
GO

 CREATE  INDEX [PK_id] ON [dbo].[wap_log]([id]) ON [PRIMARY]
GO


