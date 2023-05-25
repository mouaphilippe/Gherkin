Feature: supprimer un produit dans la liste des produits 


Scenario: le magasiner supprime un produit_SN

Given le magasinier se trouve sur l_interface liste des produits    
When le magasinier supprime le produit de son choix 
Then le systeme Nozama affiche un message de validation "le produit est supprime" 



Scenario: le magasiner tente de supprime un produit_SE

Given le magasinier se trouve sur l_interface liste des produits  
When le magasinier supprime le produit de son choix 
Then le systeme Nozama affiche un message d_erreur "vous n_avez pas _l_acces a cette fontionnalite"



#Auteur: Abir
#reviseur: Thomas
