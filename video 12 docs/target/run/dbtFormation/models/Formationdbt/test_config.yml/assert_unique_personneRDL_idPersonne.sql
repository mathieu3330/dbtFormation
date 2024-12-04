select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
 
    SELECT idPersonne
    FROM `projet-test-442516`.`RdlDbt`.`personneRDL`
    GROUP BY idPersonne
    HAVING COUNT(*) > 1
 

      
    ) dbt_internal_test