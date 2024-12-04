{{ config(materialized='table') }}

WITH typed_data AS (
    SELECT
        SAFE_CAST(idAdresse AS INT64) AS idAdresse,
        SAFE_CAST(rue AS STRING) AS rue,
        SAFE_CAST(ville AS STRING) AS ville,
        SAFE_CAST(codePostal AS STRING) AS codePostal,
        SAFE_CAST(pays AS STRING) AS pays
    FROM {{ source('databaseContrat', 'adresseDomicileRawDataLayer') }}
)

SELECT *
FROM typed_data
