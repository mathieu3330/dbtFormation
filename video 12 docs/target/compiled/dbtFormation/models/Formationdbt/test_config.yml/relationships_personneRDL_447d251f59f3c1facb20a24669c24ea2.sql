
    
    

with child as (
    select idAdresseDomicile as from_field
    from `projet-test-442516`.`RdlDbt`.`personneRDL`
    where idAdresseDomicile is not null
),

parent as (
    select idAdresse as to_field
    from `projet-test-442516`.`RdlDbt`.`adresseDomicileRDL`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


