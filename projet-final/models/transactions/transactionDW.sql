{{ config(materialized='table') }}

SELECT 
    transactionId,
    customerId,
    nom,
    prenom,
    email,
    pays,
    outilTransf,
    date_transaction,
    date_inscription,
    montant,
    devise,
    statut,
    type_transaction,
    categorie,
    remise,
    taxes,
    total,
    -- Calcul d'une nouvelle dimension (catégorie de transaction)
    CASE 
        WHEN montant < 50 THEN 'petite'
        WHEN montant BETWEEN 50 AND 500 THEN 'moyenne'
        ELSE 'grande'
    END AS transaction_size_category

FROM {{ref('transactionBDL')}}