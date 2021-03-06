﻿CREATE TABLE [dbo].[TBABSENCE](
	[IDABSENCE] [int] NOT NULL,
	[IDPERSONNEL] [int] NOT NULL,
	[MOTIFABSENCE] [varchar](100) NULL,
	[DATEDUABSENCE] [datetime] NULL,
	[DATEAUABSENCE] [datetime] NULL,
	[DATEAUTORISATIONABS] [datetime] NULL,
	[DATEDEMANDEABS] [datetime] NULL,
	[AUTORISEABSENCE] [bit] NULL,
 CONSTRAINT [PK_TBABSENCE] PRIMARY KEY NONCLUSTERED 
(
	[IDABSENCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBABSENCE]  WITH CHECK ADD  CONSTRAINT [FK_TBABSENCE_tbPersonnel] FOREIGN KEY([IDPERSONNEL])
REFERENCES [dbo].[TBPERSONNEL] ([IDPERSONNEL])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[TBABSENCE] CHECK CONSTRAINT [FK_TBABSENCE_tbPersonnel]