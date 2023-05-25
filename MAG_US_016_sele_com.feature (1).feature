Feature: selectionner une commande client rapidement
    
    
    Scenario Outline: le magasinier selectionne une commande client_SN

    Given magasinier se trouve sur l_interface de la liste des commandes clients
    When magasinier selectionne une commande client
    Then le systeme Nozama affiche le contenu de cette commande 
 



     Scenario: le magasinier tente de selectionner une commande client_SE

    Given magasinier se trouve sur l_interface de la liste des commandes clients
    When magasinier "selectionne" une "commande client"
    Then le systeme Nozama affiche un message d_errer "une erreur se produite veuillez reessaier ulterierement "


    #auteur: Abir 
    #reviseur:Lou 
    #Validation PO: 
    #date:




    