
  
    

    create or replace table `projet-test-442516`.`RdlDbt`.`adresseDomicileBDL`
      
    
    

    OPTIONS()
    as (
      

WITH typed_data AS (
    SELECT
        SAFE_CAST(idAdresse AS INT64) AS idAdresse,
        SAFE_CAST(rue AS STRING) AS rue,
        SAFE_CAST(ville AS STRING) AS ville,
        SAFE_CAST(codePostal AS STRING) AS codePostal,
        SAFE_CAST(pays AS STRING) AS pays
    FROM `projet-test-442516`.`RdlDbt`.`adresseDomicileRDL`
)

SELECT *
FROM typed_data
    );
  