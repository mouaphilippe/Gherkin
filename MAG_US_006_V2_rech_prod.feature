
Feature:  Recherche d_un produit par reference 

Scenario Outline: Trouver un produit avec une reference valide_SN
Given Le magasinier est sur l_interface employe
When Le magasinier saisit une <reference> valide
Then Le site NOZAMA affiche la  <reference>, le <nom du produit>, la <description>, la <categorie>, l_<image>, le <prix ht>, le <prix ttc>,le <taux tva>, la <quantite>, les <dimension>, et la <disponibilite> du produit en lien avec la <reference> recherchee.

Examples:

# Reference saisie par le magasinier

    | reference  |      
    | ref10n     |
    | ref37-if   |

# Resultat affiche par le systeme NOZAMA

    | reference  | nom du produit | description    | categorie       | image                | prix ht     | prix ttc    | taux tva | quantite | dimension  | disponibilite |
    | ref10n     | poto           | dessin animé   | CD              | 1 image minimum      | 9 euros     | 10,76 euros | 20,6%    | 1        | 10*18*1    | en stock      |
    | ref37-if   | NBA            | DVD FINALE NBA | jeux video      | 4 images             | 50 euros    | 60,30 euros | 20,6%    | 0        | 10*18*1    | indisponible  |


Scenario Outline: Trouver un produit avec une reference erronee_SE
Given Le magasinier est sur l_interface employe
When Le magasinier saisit une <reference> erronee du produit
Then Le site NOZAMA affiche un message d_erreur "reference incorrecte"

Examples:

# Reference saisie par le magasinier

    | reference              |
    | refb%*µ                |  

# Auteur   : Facourou , j'ai remplacé comme convenu "système nozama par site nozama"
# Réviseur : Yann
# Rev2: Yann + Kersin + Sylvain 03/05/2023
# Validation PO : 
# 



