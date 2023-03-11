# SiteSymfony
Projet de faire un site en symfony dans le cadre du cours de développement web pour découvrir et travailler ce framework.

Développé par COLLOMBET Nathan, OUASTI Redouane et MITTELHOCKAMP Nils.

Pour faire fonctionner ce site en local, il faut bien créer une base de données nommée "symfonycontact" sur phpmyadmin (sans mdp) et utiliser le fichier "symfonycontact.sql" pour initialiser toutes les données.

Notre site comporte plusieurs services :

  Pour tout le monde :

    - Une connexion
    - Une Inscription
    - Affichage des contacts
    - Affichage des informations du compte de l'utilisateur
    - Possibilité de modifier les informations de l'utilisateur
    - Une déconnexion

  Pour les administrateurs seulement :
  
    - Un onglet administration qui permet de voir les rôles de tous les utilisateurs
    - Modification de chacun des rôles
    

Pour naviguer sur notre site voici la liste de toutes les routes possible :

  - "/"
  - "/connexion"
  - "/inscription"
  - "/accueil"
  - "/contact"
  - "/compte"
  - "/compte/modifier"
  - "/admin"
  - "/admin/edit/{id}"
  - "/deconnexion"
  

Nous avons configuré un système de rôle, chaque utilisateurs qui créer un compte à un rôle "USER". Mais il existe le rôle "ADMIN" qui offre davantage de services.

Dans le fichier sql, il y a déjà pleins d'utilisateurs créés avec différents rôles. Pour que vous puissiez utiliser ces comptes, voici quelques identifiants et mdp :

  username : bond
  mdp : agentsecret

  username : nate
  mdp : azerty

  username : Texas
  mdp : Poudlard
  

Nous avons utilisés plusieurs bibliothèques de symfony telles que :

  - Forms
  - Users
  - Security
  - Request/Response
  - Doctrine ORM
  - Authentication / Firewalls
  - Passwords
  - CSRF Token
  - Migration
  
  
Pour finir, nous avons configuré le fichier "security.yaml" pour plus de sécurité au niveau des chemin d'accés.
Nous avons attribué à chaque url un rôle qui peut y accéder, ce qui évite d'avoir des gens non-connecté qui peuvent aller sur des pages auxquels ils n'ont pas accés.
  
  
© Tous droits réservés - 2023
