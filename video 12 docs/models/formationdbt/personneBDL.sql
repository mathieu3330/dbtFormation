{{ config(materialized='table') }}

WITH typed_data AS (
    SELECT
        SAFE_CAST(idPersonne AS INT64) AS idPersonne,
        SAFE_CAST(nom AS STRING) AS nom,
        SAFE_CAST(prenom AS STRING) AS prenom,
        SAFE_CAST(dateNaissance AS DATE) AS dateNaissance,
        SAFE_CAST(idAdresseDomicile AS INT64) AS idAdresseDomicile,
        SAFE_CAST(idAdresseTelephonique AS INT64) AS idAdresseTelephonique
    FROM {{ source('databaseContrat', 'personneRawDataLayer') }}
)

SELECT *
FROM typed_data
