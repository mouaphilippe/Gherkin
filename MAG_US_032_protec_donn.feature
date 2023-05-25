Feature: Protection des donnees personnelles

Scenario: Le magasinier accepte l_utilisation des cookies et des donnees personnelles_SN
Given le site Nozama affiche le message d_utilisation des cookies et d_autres donnees personnelles
When le magasinier accepte l_option d_utilisation de tous les cookies et de toutes les donnees
Then le magasinier accede au site Nozama avec l_utilisation de tous les cookies et de toutes les donnees

Scenario: Le magasinier refuse l_utilisation des cookies et des donnees personnelles_SA
Given le site Nozama affiche le message d_utilisation des cookies et d_autres donnees personnelles
When le magasinier refuse l_option d_utilisation de tous les cookies et de toutes les donnees
Then le magasinier accede au site Nozama sans l_utilisation de tous les cookies et de toutes les donnees

Scenario Outline: Le magasinier personnalise l_utilisation des cookies et des donnees personnelles_SA
Given le site Nozama affiche le message d_<utilisation des cookies et d_autres donnees personnelles>
When le magasinier selectionne et personnalise l_<utilisation des cookies et d_autres donnees personnelles>
Then le magasinier accede au site Nozama avec l_<utilisation des cookies et d_autres donnees personnelles> personnalisee

Examples:
| utilisation_des_cookies_et_des_donnees_personnelles |
| mesure d_audience et web analyse                    |
| donnees de geolocalisation precises                 |
| promotions de contenu, produits et services         |
| publicite ciblee                                    |
| publicite et contenu personnalises d_un tiers       |
| pubilicite personnalisee de l_editeur               |
| contenu interactif propose par des tiers            |
| reseaux sociaux                                     |


#US_MAG_032
#Auteur:  Sylvain 17/04/23
#Reviseur: Thomas 18/04/23
#Rev2: Adrien 18/05/23
#Validation PO :