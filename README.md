# Test with Rspec

Ce projet a pour but de faire des tests de vérification sur un projet rails. Je n'ai réussi qu'à faire la première partie (vérification des models).

* Heroku : https://murmuring-headland-50960.herokuapp.com/

## ATTENTION
Je me suis rendu compte trop tard qu'il fallait utiliser les 'minitests' ... J'ai utilisé la gem rspec à la place.

## Gem du projet
* gem rspec
* gem guard-rspec (Pour automatiser le lancement des tests)
* gem factory_bot_rails (Pour créer des utilisateurs, etc.)
* gem database_cleaner (Pour nettoyer la base de donnée)

## Presentation du projet
* Inscription, connexion et deconnexion
* Un utilisateur peut s'inscrire, se connecter et se déconnecter

## Lancer les tests
Pour lancer les tests, sur le terminal (dans le dossier concerne) :
```
bundle install --without production
```

```
rails db:migrate
```

```
bundle exec rspec spec/models/user_spec.rb
```

Vous observez les résultats dans le terminal.

## Les tests rspec
On trouve les tests dans les fichiers suivants :
* spec/models/user_spec.rb
La génération d'utilisateur est dans le fichier :
* spec/factories/users.rb
