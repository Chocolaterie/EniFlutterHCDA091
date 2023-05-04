# Enonce

## Objectif

A partir du TP précedent, rendre le **LoginForm** en **StatefulWidget**

Faire le contrôle de surface  dans le **State** pour vérifier si les champs saisies ne sont pas vide

Si les champs sont vide, afficher l'erreur :

```
Erreur, les champs sont invalides
```

INFO: Pour écouter/avoir la valeur de la saisie d'un champs, nous devons utiliser **TextEditingController** comme dans la Démo.

## Processus

- Rendre le **LoginForm** en **StatefulWidget**
- Créer son **State** associé
- Dans le **State** avoir 
    - une variable **errorMessage** (contient le message d'erreur)
    - la méthode/fonction qui fait le contrôle de surface
    - les **TextEditingController** pour les champs de saisie
- Dans la vue rajouter un **Text** avec une couleur rouge qui affiche ce message d'erreur
- Au clique du bouton **Connexion** appeler la méthode dans notre **State** qui effectue le contrôle de surface