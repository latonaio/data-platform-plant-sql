CREATE TABLE `data_platform_plant_general_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Plant`                           varchar(4) NOT NULL,
  `PlantFullName`                   varchar(200) DEFAULT NULL,
  `PlantName`                       varchar(100) NOT NULL,
  `Language`                        varchar(2) NOT NULL,
  `CreationDate`                    date NOT NULL,
  `LastChangeDate`                  date NOT NULL,
  `PlantFoundationDate`             date DEFAULT NULL,
  `PlantLiquidationDate`            date DEFAULT NULL,
  `PlantDeathDate`                  date DEFAULT NULL,
  `AddressID`                       int(12) DEFAULT NULL,
  `Country`                         varchar(3) DEFAULT NULL,
  `TimeZone`                        varchar(3) DEFAULT NULL,
  `PlantIDByExtSystem`              varchar(20) DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`BusinessPartner`, `Plant`),
    
  CONSTRAINT `DataPlatformPlantGeneralDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformPlantGeneralDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
  CONSTRAINT `DataPlatformPlantGeneralDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
