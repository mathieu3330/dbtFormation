
  
    

    create or replace table `projet-test-442516`.`RdlDbt`.`contratBDL`
      
    
    

    OPTIONS()
    as (
      
 
WITH source_data AS (
    SELECT
        idContrat,
        dateTraitement,
        nomSystemeSource
    FROM `projet-test-442516`.`RdlDbt`.`ContratRdl`
    )
SELECT
    idcontrat,
    dateTraitement,
    nomSystemeSource
FROM source_data
    );
  