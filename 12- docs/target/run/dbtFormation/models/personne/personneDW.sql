
  
    

    create or replace table `projet-test-442516`.`RdlDbt`.`personneDW`
      
    
    

    OPTIONS()
    as (
      

SELECT * FROM `projet-test-442516`.`RdlDbt`.`personneBDL`
 WHERE nom="Durand"
    );
  