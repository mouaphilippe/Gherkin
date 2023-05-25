Feature: supprimer une catégorie

    Feature Description 

    Scenario: le magasinier supprime une categorie_SN
    
    Given le magasinier se trouve sur l_interface "gestion de catalogue"
    When le magasiner supprime une "categorie"
    Then le systeme Nozama supprime la categorie
    



    Scenario: le magasinier tente de supprimer une categorie_SE
   
    Given le magasinier se trouve sur l_interface categorie
    When Le magasinier ne possede pas les droits de suppression de categorie et le magasiner tente de supprimer une categorie 
    Then le systeme Nozama affiche un message d_erreur "cette fonction n_est pas autorisee "
    

    #auteur: Abir
    #reviseur: Thomas
    #validation PO:
    #date:

 