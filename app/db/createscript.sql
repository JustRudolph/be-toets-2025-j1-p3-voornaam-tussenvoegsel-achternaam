-- Verwijder database Mvc_smartphone_2408B
DROP DATABASE IF EXISTS `Mvc_smartphone_2408B`;

-- Maak een nieuwe database aan Mvc_smartphone_2408B
CREATE DATABASE `Mvc_smartphone_2408B`;

-- Gebruik database Mvc_smartphone_2408B
USE `Mvc_smartphone_2408B`;

-- Step: 14
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Cyberaanval
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           1-04-2025      Arjan de Ruijter    Tabel Cyberaanval
-- *****************************************************************************************************
-- Verbeter de dataypen van de onderstaande velden van de tabel Cyberaanval
-- *****************************************************************************************************

CREATE TABLE Cyberaanval
(
    Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Naam               VARCHAR(250)                NOT NULL
    ,Jaar               VARCHAR(10)                 NOT NULL
    ,AantalSlachtoffers BIGINT          UNSIGNED    NOT NULL
    ,TypeAanval         VARCHAR(300)                NOT NULL
    ,Schade             INT             UNSIGNED    NOT NULL
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Cyberaanval_Id           PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 15
-- *****************************************************************
-- Doel : Vul de tabel Cyberaanval met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           1-4-2025      Arjan de Ruijter     Vulling Cyberaanval
-- *****************************************************************

INSERT INTO Cyberaanval
(
  Naam
,Jaar
,AantalSlachtoffers
,TypeAanval
,Schade
,IsActief
,Opmerking
,DatumAangemaakt
,DatumGewijzigd
)
VALUES
('WannaCry', '2017', 230, 'Ransomware', 4000, 1, NULL, SYSDATE(6), SYSDATE(6))
     ,('Yahoo Datalek', '2013', 3000, 'Datalek', 350, 1, NULL, SYSDATE(6), SYSDATE(6))
     ,('Equifax Hack', '2017', 147, 'Datalek', 700, 1, NULL, SYSDATE(6), SYSDATE(6))
     ,('Target Hack', '2013', 110, 'Creditcardgegevens gestolen', 18.5, 1, NULL, SYSDATE(6), SYSDATE(6))
     ,('Marriott Hack', '2014',  500, 'Datalek', 100, 1, NULL, SYSDATE(6), SYSDATE(6));