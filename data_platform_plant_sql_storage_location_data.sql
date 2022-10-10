CREATE TABLE `data_platform_plant_storage_location_data`
(
  `BusinessPartner`                 varchar(10) NOT NULL,
  `Plant`                           varchar(4) NOT NULL,
  `StorageLocation`                 varchar(4) NOT NULL,
  `StorageLocationFullName`         varchar(200) DEFAULT NULL,
  `StorageLocationName`             varchar(100) DEFAULT NULL,
  `Language`                        varchar(2) DEFAULT NULL,
  `CreationDate`                    varchar(80) DEFAULT NULL,
  `CreationTime`                    varchar(80) DEFAULT NULL,
  `Division`                        varchar(2) DEFAULT NULL,
  `LastChangeDate`                  varchar(80) DEFAULT NULL,
  `LastChangeTime`                  varchar(80) DEFAULT NULL,
  `PlantFoundationDate`             varchar(80) DEFAULT NULL,
  `PlantLiquidationDate`            varchar(80) DEFAULT NULL,
  `SearchTerm1`                     varchar(20) DEFAULT NULL,
  `SearchTerm2`                     varchar(20) DEFAULT NULL,
  `PlantDeathDate`                  varchar(80) DEFAULT NULL,
  `StorageLocationIsBlocked`        tinyint(1) DEFAULT NULL,
  `GroupStorageLocationName1`       varchar(40) DEFAULT NULL,
  `GroupStorageLocationName2`       varchar(40) DEFAULT NULL,
  `IsMarkedForArchiving`            tinyint(1) DEFAULT NULL,
  `StorageLocationIDByExtSystem`    varchar(20) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformPlantStorageLocationData_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
