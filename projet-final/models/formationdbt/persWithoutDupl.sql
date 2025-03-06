{{ dbt_utils.deduplicate(
    relation=ref('adresseTelephoniqueBDL'),
    partition_by='idAdresseTelephonique',
    order_by='idAdresseTelephonique'
   )
}}