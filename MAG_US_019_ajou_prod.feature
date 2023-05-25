Feature: ajouter un produit dans la liste des produits
 

    Scenario Outline: le magasinier ajoute un produit par reference de prduit_SN
    
    Given magasinier se trouve sur l_interface ajout produit
    When  magasinier renseigne la <categorie> et la <reference> et le <prix> et la <format> et la <quantite>
    Then  le systeme Nozama ajoute le produit 


    Example: 
    | categorie | reference  | prix        | tva   | format     | quantite|
    | livre     | 1035503557 | 39.90 euros | 20.6% |24cm * 33cm | 12      |


    Scenario Outline: le magasinier ajoute un produit par nom de produit_SA
   
    Given magasinier se trouve sur l_interface ajout produit
    When  magasinier renseigne la <categorie> et le <nom produit> et le <prix> et la <format> et la <quantite>
    Then  le systeme Nozama ajoute le produit 



    Example: 
     | categorie | nom produit  | prix        | format      | quantite |
     | livre     | Harry Potter | 39.90 euros | 24cm * 33cm | 20       | 



    Scenario: le magasinier tente d_ajouter un produit_SE
    
    Given magasinier se trouve sur l_interface ajout produit
    When  magasinier renseigne une donnee du produit
    But le magasinier n_as pas l_autorisation d_ajouter un produit 
    Then le systeme Nozama affiche un message d_erreur "cette action n_est pas permise"


#auteur: Abir
#reviseur: Gwen
#validation PO:
#date:


