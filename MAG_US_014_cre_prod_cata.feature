Feature:  creer un produit dans le catalogue

    Scenario Outline: le magasinier creer un produit 
    Given le magasinier se trouve sur le catalogue
    When le magasinier selectionne "creer un produit"
    And le magasinier remplit les informations : <nom du produit>, <reference du produit>, <prix ht>, <prix ttc>, <taux tva>, <image>, <description>, <categorie>, <quantite>, <dimension>, <disponibilite>
    Then le systeme Nozama cree le nouveau produit

    Examples:
        | nom du produit | description                      | categorie | image           | reference du produit | prix ht | prix ttc   | taux tva | quantite | dimension | disponibilite |
        | l'avare        | piece de theatre moliere         | livre     | 1 image minimum | ref55-ma             | 8 euros | 9,65 euros | 20,6%    | 1        | 10*18*1   | "en stock"    |
        | fifa           | jeux de football sur playstation | jeux video| 4 images        | ref37-if             | 50 euros| 60,30 euros| 20,6%    | 0        | 10*18*1   | "indisponible"|
    


    Scenario Outline: le magasinier creer un produit avec des informations manquantes_SE 
    Given le magasinier se trouve sur le catalogue
    When le magasinier selectionne "creer un produit" et le magasinier remplit les informations :  <reference du produit>, <prix ht>, <prix ttc>, <image>, <description>, <categorie>, <quantite>, <dimension>, <disponibilite>
    But le magasinier ne renseigne pas les informations: <nom du produit>,<taux tva>
    Then le systeme Nozama affiche un message d_erreur "Informations obligatoires manquantes"


    Examples:
        | nom du produit | description | categorie       | image    | reference du produit| prix ht     | prix ttc | taux tva | quantite | dimension | disponibilite |
        |                | livre       | 1 image minimum | ref55-ma | 16 euros            | 19,29 euros | 20,6%    |          | 1        | 13*15*2   | "en stock" |
    


#Autrice : Abir
#Reviseur : Sylvain
#validation PO:
#date:


