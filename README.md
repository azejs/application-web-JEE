# Application de Gestion des Agents

Cette application a été développée pour gérer les agents d'une entreprise. Elle permet de réaliser les opérations CRUD (Create, Read, Update, Delete) sur les informations des agents.

## Technologies Utilisées

- Java EE (Servlets, JSP) pour la logique de l'application côté serveur
- MySQL pour la base de données
- Bootstrap pour le design et la mise en page
- jQuery pour les interactions côté client

## Architecture MVC

L'application suit le principe de l'architecture Modèle-Vue-Contrôleur (MVC) pour une meilleure organisation du code et une facilité de maintenance.

- Modèle : Les classes Java qui représentent les entités de la base de données et qui interagissent avec celle-ci.
- Vue : Les fichiers JSP qui définissent l'interface utilisateur et intègrent Bootstrap pour le design.
- Contrôleur : Les Servlets qui agissent comme des contrôleurs pour traiter les requêtes HTTP, récupérer ou modifier les données et rediriger vers les bonnes vues.

## Fonctionnalités

L'application offre les fonctionnalités suivantes :

- Affichage de la liste des agents avec leurs informations.
- Ajout d'un nouvel agent avec un formulaire de saisie.
- Modification des informations d'un agent existant.
- Suppression d'un agent de la base de données.

## Configuration

Avant de lancer l'application, assurez-vous de configurer votre base de données MySQL. Vous pouvez trouver le script de création de la base de données dans le fichier `database.sql`.

Assurez-vous également de configurer les paramètres de connexion à la base de données dans le fichier `config.properties`.

## Installation

1. Clonez ce dépôt sur votre machine locale.
2. Importez le projet dans votre environnement de développement Java EE (par exemple, Eclipse, IntelliJ IDEA).
3. Configurez votre serveur d'application pour exécuter le projet (par exemple, Apache Tomcat).
4. Configurez votre base de données MySQL en utilisant le script fourni dans `database.sql`.
5. Modifiez les paramètres de connexion à la base de données dans le fichier `config.properties`.
6. Lancez l'application sur votre serveur d'application.

## Contribution

Les contributions sont les bienvenues ! Si vous souhaitez contribuer à ce projet, n'hésitez pas à soumettre une pull request.

## Licence

Ce projet est sous licence [MIT](LICENSE).

