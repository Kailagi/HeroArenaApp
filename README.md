# HeroArenaApp

Application de combat de héros développée en C# / WPF

---

## Technique
- **Runtime** : .NET 8.0
- **Langage** : C# 12
- **Framework UI** : WPF
- **ORM** : Entity Framework Core 8.0
- **Base de données** : Microsoft SQL Server

---

## Fonctionnalités 
- **Système d'Authentification** : Sécurisation par hachage Base64 des mots de passe.
- **Sélection de Champion** : Récupération des héros depuis une base de données SQL Server via Entity Framework Core.
- **Arène de Combat Dynamique** : 
  - Système de combat au tour par tour.
  - Chargement des sorts spécifiques à chaque héros.
  - Gestion des dégâts aléatoires pour l'ennemi.

---

## Architecture 
- **Views** : Uniquement le XAML et le code-behind.
- **ViewModels** : Logique de commande, appels BDD via le Context, et notifications.
- **Models** : Classes représentant les tables SQL.
- **Data** : Le `DbContext` configuré pour SQL Server.

---

## Guide de Connexion
Pour tester l'application, utilisez les identifiants pré-configurés :

| Champ | Valeur |
| :--- | :--- |
| **Nom d'utilisateur** | `admin` |
| **Mot de passe** | `admin` |

---

## Installation et Configuration

### 1. Base de données
L'application utilise une base de données SQL Server nommée `ExerciceHero`.
**Important :** Veuillez exécuter le script contenu dans le fichier `init_db.sql` (situé à la racine) dans SQL Server Management Studio (SSMS) avant de lancer l'application.

### 2. Lancement
Depuis le terminal à la racine du projet :
```bash
dotnet build
dotnet run
