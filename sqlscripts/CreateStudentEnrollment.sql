CREATE SCHEMA [Student]
GO
CREATE TABLE [Student].[Enrollment](
	[CDS_CODE] [varchar](14) NULL,
	[COUNTY] [varchar](50) NULL,
	[DISTRICT] [varchar](50) NULL,
	[SCHOOL] [varchar](50) NULL,
	[ETHNIC] [char](1) NULL,
	[GENDER] [char](1) NULL,
	[KDGN] [int] NULL,
	[GR_1] [int] NULL,
	[GR_2] [int] NULL,
	[GR_3] [int] NULL,
	[GR_4] [int] NULL,
	[GR_5] [int] NULL,
	[GR_6] [int] NULL,
	[GR_7] [int] NULL,
	[GR_8] [int] NULL,
	[UNGR_ELM] [int] NULL,
	[GR_9] [int] NULL,
	[GR_10] [int] NULL,
	[GR_11] [int] NULL,
	[GR_12] [int] NULL,
	[UNGR_SEC] [int] NULL,
	[ENR_TOTAL] [int] NULL,
	[ADULT] [int] NULL,
	[LoadDate] [date] NULL
) 
