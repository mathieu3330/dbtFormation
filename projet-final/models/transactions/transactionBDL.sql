{{ config(materialized='incremental') }}

SELECT 
    CAST(transactionId AS STRING) AS transactionId,
    CAST(customerId AS STRING) AS customerId,
    CAST(nom AS STRING) AS nom,
    CAST(prenom AS STRING) AS prenom,
    CAST(email AS STRING) AS email,
    CAST(pays AS STRING) AS pays,
    "Airflow" AS outilTransf,
    CAST(date_transaction AS DATE) AS date_transaction,
    CAST(date_inscription AS DATE) AS date_inscription,
    CAST(montant AS FLOAT64) AS montant,
    CAST(devise AS STRING) AS devise,
    CAST(statut AS STRING) AS statut,
    CAST(type_transaction AS STRING) AS type_transaction,
    CAST(categorie AS STRING) AS categorie,
    CAST(remise AS FLOAT64) AS remise,
    CAST(taxes AS FLOAT64) AS taxes,
    CAST(total AS FLOAT64) AS total
    FROM {{ source('databaseContrat', 'transactionsRdl') }}
