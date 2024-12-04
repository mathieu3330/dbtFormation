
 
    SELECT idPersonne
    FROM `projet-test-442516`.`RdlDbt`.`personneRDL`
    GROUP BY idPersonne
    HAVING COUNT(*) > 1
 
