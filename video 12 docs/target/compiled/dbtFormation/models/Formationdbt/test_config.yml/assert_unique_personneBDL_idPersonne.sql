
 
    SELECT idPersonne
    FROM `projet-test-442516`.`RdlDbt`.`personneBDL`
    GROUP BY idPersonne
    HAVING COUNT(*) > 1
 
