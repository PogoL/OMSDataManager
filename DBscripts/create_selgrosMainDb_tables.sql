USE [SelgrosMainDB_OMS]


CREATE TABLE [dbo].[Artykuly](
	[BRANZA] [smallint] NOT NULL,
	[ARTYKUL] [int] NOT NULL,
	[ZAKLAD] [smallint] NOT NULL,
	[ZAKLADNAZWA] [varchar](50) NULL,
	[BRANZANAZWA] [varchar](50) NULL,
	[BRANZASPECJALNA] [int] NULL,
	[ARTOPIS1] [varchar](50) NULL,
	[ARTOPIS2] [varchar](50) NULL,
	[GRUPA] [smallint] NULL,
	[GRUPANAZWA] [varchar](50) NULL,
	[PODGRUPA] [smallint] NULL,
	[PODGRUPANAZWA] [varchar](50) NULL,
	[GRUP_WAWI] [int] NULL,
	[GRUPOWANIE] [int] NULL,
	[GRUPOPIS] [varchar](50) NULL,
	[DOSTAWCA] [int] NULL,
	[DOSTNAZWA] [varchar](50) NULL,
	[DOSTARTYKUL] [varchar](50) NULL,
	[PODDOSTAWCA] [int] NULL,
	[ILOSCSPRZEDAZY] [smallint] NULL,
	[ILOSCZAKUPU] [smallint] NULL,
	[JM] [varchar](3) NULL,
	[KZ_SORTART] [char](1) NULL,
	[WAGOWY] [char](1) NULL,
	[KODEAN] [bigint] NULL,
	[DYSPONENCI] [varchar](50) NULL,
	[NRSEZONU] [smallint] NULL,
	[NRSORTCENT] [smallint] NULL,
	[NRSORTZAKL] [smallint] NULL,
	[KGO] [money] NULL,
	[ILEZGRUPOWANYCH] [smallint] NULL,
	[DKZ] [smallint] NULL,
	[VAT] [smallint] NULL,
	[PKTPP] [smallint] NULL,
	[DATAZALOZENIA] [varchar](10) NULL,
	[ZALISTOWANY] [char](1) NULL,
	[ZAPAS] [money] NULL,
	[STRWYS] [money] NULL,
	[OBR15DNI] [money] NULL,
	[DATAPZ] [int] NULL,
	[DATASP] [int] NULL,
	[DKZPORCEN] [smallint] NULL,
	[KZABC] [char](1) NULL,
	[ZALEGLE] [money] NULL,
	[DOSTEPNYOD] [int] NULL,
	[REGAL] [smallint] NULL,
	[POLKA] [smallint] NULL,
	[FACING] [smallint] NULL,
	[WYPELNIENIE] [smallint] NULL,
	[RYTMDYSPO] [smallint] NULL,
	[KZVK] [varchar](3) NULL,
	[VKNN] [money] NULL,
	[VKNN2] [money] NULL,
	[VK0P] [money] NULL,
	[VK2P] [money] NULL,
	[KODPROMOCJI] [int] NULL,
	[KZEK] [varchar](3) NULL,
	[EKLI] [money] NULL,
	[EKRK] [money] NULL,
	[EKNN] [money] NULL,
	[EKRKP] [money] NULL,
	[EKNP] [money] NULL,
	[KZVK0] [varchar](3) NULL,
	[CENASPRZEDAZY] [money] NULL,
	[CENASPRZKONCES] [money] NULL,
	[KZEK0] [varchar](3) NULL,
	[CENAZAKUPU] [money] NULL,
	[CENAZAKUPURK] [money] NULL,
	[ILSPRZ07DNI] [money] NULL,
	[ILSPRZ21DNI] [money] NULL,
	[WASPRZ28DNI] [money] NULL,
	[WASPRZ28DNIEK] [money] NULL,
	[MARZA28DNI] [money] NULL,
	[ILOSCPRM28DNI] [money] NULL,
	[WARTOSCPRM28DNI] [money] NULL,
	[MARZAPRM28DNI] [money] NULL,
	[ILSPRZ6MIES] [money] NULL,
	[WASPRZ6MIES] [money] NULL,
	[WASPRZ6MIESEK] [money] NULL,
	[MARZAPLN6MIES] [money] NULL,
	[ILOSCPRM6MIES] [money] NULL,
	[WARTOSCPRM6MIES] [money] NULL,
	[MARZAPLNPRM6MIES] [money] NULL,
	[ILSPRZBR] [money] NULL,
	[WASPRZBR] [money] NULL,
	[MARZAPLNBR] [money] NULL,
	[ILSPRZPRBR] [money] NULL,
	[WASPRZPRBR] [money] NULL,
	[MARZAPLNPRMBR] [money] NULL,
	[RANKING] [varchar](50) NULL,
	[RANKINGGRUPWAWI] [smallint] NULL,
	[DATAAKTUALIZACJI] [datetime] NULL,
	[ID] [uniqueidentifier] NULL,
	[artCount] [int] NOT NULL,
	[articlePlantsCSV] [varchar](500) NULL,
	[CalculateDate] [datetime] NULL,
	[isArticleIn170Plant] [bit] NULL,
	[NR_I5] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Artykuly] ADD  CONSTRAINT [DF_Artykuly_artCount]  DEFAULT ((0)) FOR [artCount]
GO

GO


CREATE TABLE [dbo].[Artykuly_Grupowanie](
	[ARTYKUL] [int] NOT NULL,
	[GRUPA_MASTER] [int] NOT NULL,
	[GRUPA_WAWI] [int] NOT NULL,
	[GRUPA_JEDNOSTKA] [int] NOT NULL,
	[DataAktualizacji] [datetime] NOT NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Dostawcy](
	[NRDOSTAWCY] [int] NOT NULL,
	[NRSAPDOSTAWCY] [int] NULL,
	[NIP] [varchar](50) NULL,
	[NAZWA1] [varchar](100) NULL,
	[NAZWA2] [varchar](100) NULL,
	[KRAJ] [varchar](10) NULL,
	[ADRES] [varchar](100) NULL,
	[KODPOCZTOWY] [varchar](10) NULL,
	[MIASTO] [varchar](100) NULL,
	[STATUS] [tinyint] NULL,
	[BRANZA] [smallint] NULL,
	[TERMINRABATUPROM] [int] NULL,
	[OSOBAKONTAKTOWA] [varchar](100) NULL,
	[TELEFON1] [varchar](100) NULL,
	[TELEFON2] [varchar](100) NULL,
	[DATAIMPORTU] [datetime] NOT NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Dostawcy_AdresyMailowe](
	[ID] [int] NOT NULL,
	[NRDOSTAWCY] [int] NOT NULL,
	[DZIAL] [varchar](10) NOT NULL,
	[BRANZA] [int] NOT NULL,
	[PODDOSTAWCA] [smallint] NOT NULL,
	[KRAJ] [char](1) NULL,
	[EMAIL1] [varchar](100) NULL,
	[EMAIL2] [varchar](100) NULL,
	[EMAIL3] [varchar](100) NULL,
	[EMAIL4] [varchar](100) NULL,
	[DataAktualizacji] [datetime] NOT NULL
) ON [PRIMARY]
GO

