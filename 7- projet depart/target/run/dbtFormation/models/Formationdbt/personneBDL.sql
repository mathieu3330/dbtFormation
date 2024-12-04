
  
    

    create or replace table `projet-test-442516`.`RdlDbt`.`personneBDL`
      
    
    

    OPTIONS()
    as (
      

WITH typed_data AS (
    SELECT
        SAFE_CAST(idPersonne AS INT64) AS idPersonne,
        SAFE_CAST(nom AS STRING) AS nom,
        SAFE_CAST(prenom AS STRING) AS prenom,
        SAFE_CAST(dateNaissance AS DATE) AS dateNaissance,
        SAFE_CAST(idAdresseDomicile AS INT64) AS idAdresseDomicile,
        SAFE_CAST(idAdresseTelephonique AS INT64) AS idAdresseTelephonique
    FROM `projet-test-442516`.`RdlDbt`.`personneRDL`
)

SELECT *
FROM typed_data
    );
  