WITH validation AS (
    SELECT
        idPersonne,
        COUNT(*) AS occurrences
    FROM {{ ref('personneRDL') }}
    GROUP BY idPersonne
    HAVING COUNT(*) > 1
)
 
SELECT *
FROM validation
 