WITH person_data AS (
    SELECT
        idPersonne,
        nom,
        prenom,
        dateNaissance,
        -- Calcul de l'âge basé sur la date de naissance
        {{ calculate_age('dateNaissance') }} AS age
    FROM {{ ref('personneBDL') }}  -- Remplacez 'personneBDL' par le nom réel de votre modèle/table de données source
)
 
SELECT *
FROM person_data