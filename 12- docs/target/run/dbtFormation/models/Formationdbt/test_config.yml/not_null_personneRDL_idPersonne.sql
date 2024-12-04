select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select idPersonne
from `projet-test-442516`.`RdlDbt`.`personneRDL`
where idPersonne is null



      
    ) dbt_internal_test