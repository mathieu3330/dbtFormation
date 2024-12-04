{{ config(materialized='table') }}

WITH typed_data AS (
    SELECT
        SAFE_CAST(idAdresseTelephonique AS INT64) AS idAdresseTelephonique,
        SAFE_CAST(typeTelephone AS STRING) AS typeTelephone,
        SAFE_CAST(numero AS STRING) AS numero
    FROM {{ source('databaseContrat', 'adresseTelephoniqueRawDataLayer') }}
)

SELECT *
FROM typed_data
