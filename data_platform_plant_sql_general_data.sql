CREATE TABLE `data_platform_plant_general_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Plant`                           varchar(4) NOT NULL,
  `PlantFullName`                   varchar(200) DEFAULT NULL,
  `PlantName`                       varchar(100) NOT NULL,
  `Language`                        varchar(2) NOT NULL,
  `CreationDate`                    date NOT NULL,
  `CreationTime`                    time NOT NULL,
  `LastChangeDate`                  date NOT NULL,
  `LastChangeTime`                  time NOT NULL,
  `PlantFoundationDate`             date DEFAULT NULL,
  `PlantLiquidationDate`            date DEFAULT NULL,
  `SearchTerm1`                     varchar(40) DEFAULT NULL,
  `SearchTerm2`                     varchar(40) DEFAULT NULL,
  `PlantDeathDate`                  date DEFAULT NULL,
  `PlantIsBlocked`                  tinyint(1) DEFAULT NULL,
  `GroupPlantName1`                 varchar(100) DEFAULT NULL,
  `GroupPlantName2`                 varchar(100) DEFAULT NULL,
  `AddressID`                       int(12) DEFAULT NULL,
  `Country`                         varchar(3) DEFAULT NULL,
  `TimeZone`                        varchar(3) DEFAULT NULL,
  `PlantIDByExtSystem`              varchar(20) DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`BusinessPartner`, `Plant`),
    
  CONSTRAINT `DataPlatformPlantGeneralDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformPlantGeneralDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
  CONSTRAINT `DataPlatformPlantGeneralDataDivision_fk` FOREIGN KEY (`Division`) REFERENCES `data_platform_division_division_data` (`Division`),
  CONSTRAINT `DataPlatformPlantGeneralDataAddressID_fk` FOREIGN KEY (`AddressID`, `Country`, `TimeZone`) REFERENCES `data_platform_address_address_data` (`AddressID`, `Country`, `TimeZone`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
