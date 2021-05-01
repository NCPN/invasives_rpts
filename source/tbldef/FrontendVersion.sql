CREATE TABLE [FrontendVersion] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [Developer] VARCHAR (50),
  [DeveloperEmail] VARCHAR (50),
  [VersionDate] DATETIME ,
  [VersionNumber] VARCHAR ,
  [VersionDescription] LONGTEXT 
)
