

WITH typed_data AS (
    SELECT
        SAFE_CAST(idAdresseTelephonique AS INT64) AS idAdresseTelephonique,
        SAFE_CAST(typeTelephone AS STRING) AS typeTelephone,
        SAFE_CAST(numero AS STRING) AS numero
    FROM `projet-test-442516`.`RdlDbt`.`adresseTelephoniqueRDL`
)

SELECT *
FROM typed_data