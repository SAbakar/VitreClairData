﻿CREATE TABLE [dbo].[TBMODEPAYEMENT](
	[IDMODEPAYEMENT] [int] NOT NULL,
	[LIBMODEPAYEMENT] [varchar](50) NULL,
 CONSTRAINT [PK_TBMODEPAYEMENT] PRIMARY KEY NONCLUSTERED 
(
	[IDMODEPAYEMENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]