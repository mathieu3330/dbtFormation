
    
    

with all_values as (

    select
        typeTelephone as value_field,
        count(*) as n_records

    from `projet-test-442516`.`RdlDbt`.`adresseTelephoniqueRDL`
    group by typeTelephone

)

select *
from all_values
where value_field not in (
    'mobile','fixe','fax'
)


