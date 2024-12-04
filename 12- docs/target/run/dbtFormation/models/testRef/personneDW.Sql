
  
    

    create or replace table `projet-test-442516`.`RdlDbt`.`personneDW`
      
    
    

    OPTIONS()
    as (
      

select * from `projet-test-442516`.`RdlDbt`.`personneBDL` where nom="Durand"
    );
  