﻿CREATE TABLE [dbo].[TBPRIME](
	[IDPRIME] [int] NOT NULL,
	[IDPERSONNEL] [int] NOT NULL,
	[SALAIREBASE] [money] NULL,
	[PRIMERESPO] [money] NULL,
	[FRAISMEDICAUX] [money] NULL,
	[PRIMERATION] [money] NULL,
	[PRIMETRANSPORT] [money] NULL,
	[GRATIFICATION] [money] NULL,
	[PRIMERISQUE] [money] NULL,
	[PRIMEDEPART] [money] NULL,
	[PANIER_SALISSURE] [money] NULL,
 CONSTRAINT [PK_TBPRIME] PRIMARY KEY NONCLUSTERED 
(
	[IDPRIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBPRIME]  WITH CHECK ADD  CONSTRAINT [FK_TBPRIME_tbPersonnel] FOREIGN KEY([IDPERSONNEL])
REFERENCES [dbo].[TBPERSONNEL] ([IDPERSONNEL])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[TBPRIME] CHECK CONSTRAINT [FK_TBPRIME_tbPersonnel]