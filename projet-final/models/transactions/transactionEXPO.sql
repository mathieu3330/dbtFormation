{{ config(materialized='view') }}

SELECT * 
FROM {{ref('transactionDW')}}
WHERE EXTRACT(YEAR FROM date_transaction) = EXTRACT(YEAR FROM CURRENT_DATE())
AND EXTRACT(MONTH FROM date_transaction) = EXTRACT(MONTH FROM CURRENT_DATE())