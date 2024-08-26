Exemple pour cours devops

# QuelPoke App

Cette application est un petit serveur web qui génère dynamiquement des pages HTML en fonction d'un nom de Pokémon fourni par l'utilisateur. Elle utilise un algorithme pour déterminer quel Pokémon afficher et récupère les informations correspondantes depuis une API externe.

## Fonctionnalités

### 1. Gestion des Requêtes HTTP



### 2. Calcul de l'ID du Pokémon

Cela permet de choisir de manière déterministe un Pokémon en fonction du nom fourni.

### 3. Récupération des informations sur le Pokémon

Une fois l'identifiant du Pokémon calculé, l'application fait une requête HTTP à l'API externe [PokeAPI](https://pokeapi.co/) pour récupérer les informations sur le Pokémon correspondant à cet ID. L'API retourne les données au format JSON, et l'application en extrait le nom du Pokémon.

### 4. Rendu de la page HTML

Les informations récupérées (le nom et l'ID du Pokémon) sont insérées dans un modèle HTML (`index.tmpl.html`). Ce modèle est rendu et envoyé en réponse à l'utilisateur, affichant ainsi la page web avec les détails du Pokémon.

## Dépendances

L'application dépend des services et modules suivants :

1. **Serveur HTTP** :
   - Utilise le package `net/http` pour créer un serveur web et gérer les requêtes HTTP.

2. **PokeAPI** :
   - L'application interagit avec le service externe [PokeAPI](https://pokeapi.co/) pour récupérer les données sur les Pokémon.

3. **Environnement système** :
   - L'application utilise les variables d'environnement suivantes :
     - `ADDR` : l'adresse IP sur laquelle le serveur écoute (par défaut `0.0.0.0`).
     - `PORT` : le port sur lequel le serveur écoute (par défaut `8080`).
     - `VERSION` : la version de l'application (par défaut `dev`).

## Exemple d'utilisation

### Executer en local

##### Installer GO sur son poste: 
[GO-install](https://go.dev/doc/install)
##### Compiler dans le dossier racine de Quel Poke:
[GO-compilalition](https://go.dev/doc/tutorial/compile-install)
##### Lancer avec la commande:
- Sur Linux or Mac:
```
./hello
```
- Sur Windows:
```
hello.exe
```
##### Test l'application
http://localhost:8080


## Auteur

Développé par Nintendo INC
