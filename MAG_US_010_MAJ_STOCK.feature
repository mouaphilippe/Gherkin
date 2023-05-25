Feature : MISE A JOUR DES STOCKS

    Scenario Outline: Mise a jour d_une quantite d_un produit_SN
        
        Given le magasinier est sur page de "gestion des stocks"
        And le <produit> existe dans le stock avec une certaine <quantite>
        When le magasinier augmente la <quantite> du <produit> au stock
        Then le site Nozama affiche un <message de confirmation> de mise a jour du stock <produit> avec la nouvelle <quantite>
    
        Examples:

        | produit             | quantite  |                                  
        | Ordinateur portable | 50        |
        | Ordinateur portable | 60        |

        | message de confirmation                              |
        | La quantite du produit Ordinateur portable est de 60 |

    Scenario Outline: Mise a jour d_une quantite negative d_un produit_SE
        
        Given le magasinier est sur la page de "gestion des stocks"
        And le <produit> existe dans le stock avec une certaine <quantite>
        When le magasinier soustrait la <quantite> du <produit> au stock
        Then le site Nozama affiche un message d_erreur "La quantite du produit ne peut pas etre negative"
    
        Examples:

        | produit             | quantite  |                                  
        | Clef USB            | 5         |
        | Clef USB            | -10       |      
