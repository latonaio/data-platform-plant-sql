CREATE TABLE `data_platform_plant_storage_location_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Plant`                           varchar(4) NOT NULL,
  `StorageLocation`                 varchar(4) NOT NULL,
  `StorageLocationFullName`         varchar(200) DEFAULT NULL,
  `StorageLocationName`             varchar(100) NOT NULL,
  `StorageLocationIDByExtSystem`    varchar(20) DEFAULT NULL,
  `CreationDate`                    date NOT NULL,
  `LastChangeDate`                  date NOT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`BusinessPartner`, `Plant`, `StorageLocation`),
    
  CONSTRAINT `DataPlatformPlantStorageLocationData_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
