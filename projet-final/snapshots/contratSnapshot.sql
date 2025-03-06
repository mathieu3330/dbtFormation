{% snapshot ContratSnapshot %}

    {{
        config(
          target_schema='RdlDbt',
          strategy='check',
          unique_key='coappctr',
          check_cols=['idctr', 'dteff' ,'tiappope']
        )
    }}

    select * from {{ source('databaseContrat', 'contratHistorique') }}

{% endsnapshot %}