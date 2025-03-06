{{ log("Running on target: " ~ target.name, info=true) }}


{{
    config(
        partition_by={
            "field":"dateNaissance",
            "data_type":"DATE"
        },
        cluster_by = ["nom", "prenom"]
    )
}}

SELECT
        idPersonne OPTIONS(description="Identifiant unique de la personne"),
        nom,
        prenom,
        dateNaissance,
FROM {{ ref('personneBDL') }} 