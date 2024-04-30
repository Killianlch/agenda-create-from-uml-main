# Objectifs
Lors de cet atelier, l’apprenant doit :  
-  A partir des diagrammes de classes et des diagrammes de composants d’une étude  de cas donnée par l’intervenant, développer et tester les composants de la couche  métier d’une application informatique.

## Sujet
A partir du diagramme de classe suivant , implémentez dans le langage de votre choix la structure logicielle correspondante.

## Cahier des charges:

Nous désirons implémenter la gestion d’un agenda:
- un agenda contient un ensemble de personnes nommées `contacts`.
- Un agenda possède un `owner` possédant un login/mot de passe et jwt token.
- Chaque contact est identifié par son nom et par un ensemble de coordonnées
- Une coordonnée peut être postale, téléphonique ou électonique (email ou page web)
- Chaque coordonnées possède une méthode propre permettant de valider le format de saisie. 
- Un contact doit pouvoir être exporté. Celà exportera l'ensemble des coordonées associées à ce contact. 
- Il n'est pas attendu de pouvoir exporter l'intégralité d'un agenda.

Votre application doit pouvoir contenir plusieurs agendas liés à un compte utilisateur. 
Plusieurs utilisateurs peuvent utiliser simultanément l'application. 
Ainsi un utilisateur donné ne doit pas pouvoir voir les contacts d'un autre compte utilisateur.
Il n'est pas attendu d'avoir des contacts partagés entre utilisateurs. 

```mermaid
classDiagram
    User "1" *-- "0..*" Agenda
    Agenda "1" *-- "0..*" Contact
    Contact "1" *-- "0..*" ContactDetail
    ContactDetail <|-- Address
    ContactDetail <|-- Phone
    ContactDetail <|-- Email
    ContactDetail <|-- Website
    <<abstract>> ContactDetail
    class Agenda{
        +String label
    }
    class Contact{
        +String name
    }
    class ContactDetail {
        +String value
        #String pattern
        +validate()

    }
    class User{
      +String login
      -String password
      -String jwt
    }
    class Address{
        #String pattern
    }
    class Phone{
        #String pattern
    }
    class Email{
        #String pattern
    }
    class Website{
        #String pattern
    }
```


## Attendus de l'exercice
Dans le langage de votre choix, implémentez les classes liées à ce diagramme.

Vérifiez l'ensemble des méthodes nécessaires pour que l'agenda soit opérationnel.
Que ce soit par des tests ou par un script `main` basique, par exemple : 
```python
thomas = Contact("Thomas", "Le Pipeau")
thomas.addContactDetail(Phone("01 23 45 67 89"))
thomas.addContactDetail(Email("thomas.lepipeau@lilo.org"))

try:
   thomas.addContactDetail(Phone("Un mauvais num"))
except InvalidValueException:
   print("Thomas contact is properly set")
   print(thomas)
else:
   raise Exception("Invalid phone number")

marcel = User(login="Marcel", password="Orchestre")
personnalAgenda = Agenda("Personnel") 
marcel.addAgenda(personnalAgenda)

personnalAgenda.addContact(thomas)
print("Marcel has a new contact named Thomas")
print(marcel)

# ... Continue with getContacts, getContact, setValue, deleteContact ...
```

A partir du code produit, réalisez le diagramme de classe final.
Vous pouvez utiliser des pattern (Factory, MVC, MVVT ...).

## Les consignes ci-dessus sont le minimum attendu
Vous avez des niveaux variés, et les exigences ci-dessus sont minimalistes au vu du temps imparti : 7 heures...
Le travail fourni doit être propre et structuré.
Définissez le scope en amont, il est possible de réaliser les fonctionnalités suivantes en bonus :
 - Implémenter des tests unitaires ou fonctionnels au besoin.
 - Persister les données.
 - Ajouter une api
 - Implémenter un client communiquant avec un back-end simulé.

 

## Livrables attendus
Livraison par le biais d'un dépôt git communiqué au formateur contenant :
 - un fichier README.md expliquant à minima (2pts):
    - comment installer lancer le projet .
    - comment lancer l'executable de votre projet.
    - comment lancer un environnement de dev.
    - un screenshot ou plusieurs de l'application lancée.
 - le code source de l'application (9/10pts)
 - le code compilé s'il s'agit d'un langage compilé (0/1pts)
 - le diagramme de classe final. Non pas de vos modèles mais de la structure mise en place. (4pts)

Votre note sera sur 16 pts si vous vous contentez du minimum attendu. 
Les bonus pouvant vous apporter des points supplémentaires.
