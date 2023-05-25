
Feature: Creer un catalogue pour actualiser le site Nozama

Scenario Outline: Le magasinier creer un catalogue_SN
Given le magasinier est sur la page de gestion du catalogue et selectionne l_option " Creer un catalogue "
When le magasinier saisit le <nom du catalogue> et la <description du catalogue> necessaires et valide la creation du nouveau catalogue
Then le site Nozama cree le nouveau catalogue avec succes

Examples:
| Nom du catalogue         | description du catalogue                                                 |
| Catalogue Printemps 2023 | Venez decouvrir les produits phare de ce Printemps 2023                  |
| Catalogue Ete 2023       | Le soleil et pleins de produits sont deja la dans ce catalogue Ete 2023  |
| Catalogue Automne 2023   | Preparez dignement Halloween dans ce catalogue Automne 2023              |
| Catalogue Hiver 2023     | Le pere Noel est arrive dans ce catalogue Hiver 2023                     |

Scenario: Le magasinier creer un catalogue existant deja avec le meme nom_SE
Given le magasinier est sur la page de gestion du catalogue et selectionne l_option " Creer un catalogue "
When le magasinier saisit un nom de catalogue deja existant et valide la creation du nouveau catalogue
Then le site Nozama affiche un message d_erreur " un catalogue avec le meme nom existe deja "

#Auteur : Yann 14/05/2023
#Reviseur :
#Rev2 :
#Validation PO : 
