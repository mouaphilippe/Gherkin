Feature: creation d_une nouvelle categorie par le magasinier

Scenario Outline: le magasinier cree une nouvelle categorie_SN
    Given le magasinier se trouve sur une page produit   
    When le magasinier entre une nouvelle <categorie> et valide
    Then le site Nozama cree la nouvelle <categorie>
    And le site Nozama affiche un message : "Nouvelle categorie creee !"

    Examples:
        | categorie  |
        | jeux video | 
        | livres     |


Scenario Outline: le magasinier cree une categorie existante_SE
    Given le magasinier se trouve sur l_interface pour creer une categorie
    When le magasinier entre le nom de la <categorie> et valide
    Then le site Nozama affiche un message d_erreur : "Categorie deja existante."

    Examples:
        | categorie  |
        | jeux video | 
        | livres     |


#Auteur : Maud
#Reviseur : Corentin 28/04/2023
#Rev2 : Yann + Kerstin + Sylvain 03/05/2023
#Derniere correction : 18/05/2023
#US : US_MAG_022
#Validation PO :