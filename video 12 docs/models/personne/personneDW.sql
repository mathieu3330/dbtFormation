{{ config(materialized='table') }}

SELECT * FROM {{ ref('personneBDL') }}
 WHERE nom="Durand"