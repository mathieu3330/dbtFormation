
    
    

with child as (
    select idAdresseTelephonique as from_field
    from `projet-test-442516`.`RdlDbt`.`personneRDL`
    where idAdresseTelephonique is not null
),

parent as (
    select idAdresseTelephonique as to_field
    from `projet-test-442516`.`RdlDbt`.`adresseTelephoniqueRDL`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


