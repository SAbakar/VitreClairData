﻿CREATE TABLE [dbo].[TBAYANTDROIT_PERS](
	[IDPERSONNEL] [int] NOT NULL,
	[IDAYANTDROIT] [int] NOT NULL,
 CONSTRAINT [PK_TBAYANTDROIT_PERS] PRIMARY KEY NONCLUSTERED 
(
	[IDPERSONNEL] ASC,
	[IDAYANTDROIT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBAYANTDROIT_PERS]  WITH CHECK ADD  CONSTRAINT [FK_TBAYANTDROIT_PERS_TBAYANTDROIT] FOREIGN KEY([IDAYANTDROIT])
REFERENCES [dbo].[TBAYANTDROIT] ([IDAYANTDROIT])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[TBAYANTDROIT_PERS] CHECK CONSTRAINT [FK_TBAYANTDROIT_PERS_TBAYANTDROIT]
GO
ALTER TABLE [dbo].[TBAYANTDROIT_PERS]  WITH CHECK ADD  CONSTRAINT [FK_TBAYANTDROIT_PERS_tbPersonnel] FOREIGN KEY([IDPERSONNEL])
REFERENCES [dbo].[TBPERSONNEL] ([IDPERSONNEL])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[TBAYANTDROIT_PERS] CHECK CONSTRAINT [FK_TBAYANTDROIT_PERS_tbPersonnel]