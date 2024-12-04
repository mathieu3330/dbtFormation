WITH validation AS (
    SELECT
        idPersonne,
        COUNT(*) AS occurrences
    FROM `projet-test-442516`.`RdlDbt`.`personneRDL`
    GROUP BY idPersonne
    HAVING COUNT(*) > 1
)
 
SELECT *
FROM validation