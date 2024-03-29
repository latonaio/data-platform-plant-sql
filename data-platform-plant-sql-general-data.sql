CREATE TABLE `data_platform_plant_general_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Plant`                           varchar(4) NOT NULL,
  `PlantName`                       varchar(100) NOT NULL,
  `PlantFullName`                   varchar(200) DEFAULT NULL,
  `Language`                        varchar(2) NOT NULL,
  `PlantFoundationDate`             date DEFAULT NULL,
  `PlantLiquidationDate`            date DEFAULT NULL,
  `PlantDeathDate`                  date DEFAULT NULL,
  `AddressID`                       int(12) DEFAULT NULL,
  `Country`                         varchar(3) NOT NULL,
  `TimeZone`                        varchar(3) NOT NULL,
  `PlantIDByExtSystem`              varchar(20) DEFAULT NULL,
  `CreationDate`                    date NOT NULL,
  `LastChangeDate`                  date NOT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`BusinessPartner`, `Plant`),
    
  CONSTRAINT `DataPlatformPlantGeneralDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformPlantGeneralDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
  CONSTRAINT `DataPlatformPlantGeneralDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`),
  CONSTRAINT `DataPlatformPlantGeneralDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`),
  CONSTRAINT `DataPlatformPlantGeneralDataTimeZone_fk` FOREIGN KEY (`TimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
