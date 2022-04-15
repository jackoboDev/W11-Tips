# W11-Tips
Astuces pour améliorer l'expérience Utilisateur sous Windows 11

## AVANT DE COMMENCER

1. Je ne suis pas responsable des potentiels dégats matériels, logiciels et/ou physiques lors de l'utilisation de ces commandes et astuces. Vous êtes responsable de votre équipement informatique.
2. Dans la section "Issues" ou "Pull requests" du projet, n'hésitez pas à me faire des propositions de commandes / astuces que vous souhaitez partager 

-----------------

## ETAPE 1 : MISE A JOUR DE WINDOWS 11

Lors du passage à Windows 11, ou durant son utilisation, vérifier que les mises à jour soient toutes installés sur votre ordinateur. Si les mises à jour doivent être installés, les installer et redémarrer le PC.

-----------------

## ETAPE 2 : EXECUTION DES COMMANDES SUIVANTES SOUS CMD.EXE ( ADMINISTRATEUR REQUIS )

Exécuter le fichier "clean_w11.bat" __en tant qu'administrateur__. Plus d'information sur les commandes dans le fichier "clean_w11.md".

Redémarrer ensuite votre ordinateur.

-----------------

## ETAPE 3 : AUTRES ASTUCES

__Configuration du Windows Defender:__

Des applications peuvent faire paniquer l'antivirus et provoquent une surcharge du CPU par Windows Defender. Cependant, désactiver l'anti-virus complet est une erreur à ne pas faire ! Pour ajouter une exclusion :
1. Aller dans Paramètres -> Confidentialité  & Sécurité -> Sécurité Windows -> Protections contre les virus et menaces
2. Cliquer sur Gérer les paramètres
3. Dans Exclusions ( tout en bas ), cliquer sur "Ajouter ou supprimer des exclusions"
4. Ajouter le programme exe concerné ( avec le mode fichier ) ou un processus ( en saisissant son nom )

__Déplacement de certains dossiers du compte utilisateur:__

Il est tout à fait possible de déplacer certains dossiers de l'utilisateur dans un autre lecteur. Voici les étapes à respecter :
1. Dans le disque dur de cotre choix, créer un dossier "Utilisateurs"
2. Aller dans ce dossier "Utilisateurs" et créer le dossier qui est le nom de votre compte utilisateur Windows ( Vous aider de C:\Utilisateurs , vous avez le nom des comptes existants sur le PC )

Exemple : J'utilise le lecteur L:\ . Mon compte Utilisateur actuel s'appelle "jackobo" d'après mon dossier dans C:\Utilisateurs. Je créé le dossier suivant
```
L:\Utilisateurs\jackobo
```

3. Créer les dossiers "AppData" puis "Roaming" dans "AppData", "Documents", "Téléchargements", "Images", "Vidéos", "Musique".

Exemple : J'utilise le lecteur L:\ . Mon compte Utilisateur actuel s'appelle "jackobo" d'après mon dossier dans C:\Utilisateurs. Je créé les dossiers suivants
```
L:\Utilisateurs\jackobo\AppData\Roaming
L:\Utilisateurs\jackobo\Documents
L:\Utilisateurs\jackobo\Téléchargements
L:\Utilisateurs\jackobo\Images
L:\Utilisateurs\jackobo\Vidéos
L:\Utilisateurs\jackobo\Musique
```

4. Ensuite, allez dans le répertoire d’utilisateur (écrire %USERPROFILE% dans la barre d’adresse de l’Explorateur de fichiers, puis validez avec "Entrée" )
5. Pour déplacer un dossier utilisateur, faire un clic droit dessus, puis sélectionner « Propriétés » dans le menu contextuel.
6. Cliquer ensuite sur l’onglet « Emplacement », puis sur le bouton « Déplacer ».
7. Sélectionner le nouveau dossier correspondant, puis cliquer sur « Sélectionner un dossier ».
8. Valider le déplacement du dossier utilisateur en cliquant sur « OK ».
9. Un message d’avertissement va alors apparaître. On vous demande si vous souhaitez déplacer tous les fichiers de l’ancien emplacement vers le nouvel emplacement. Cliquez sur « Oui ».
10. Répéter les mêmes opérations (de 4. à 9.) pour les autres dossiers
11. Redémarrer ensuite votre ordinateur.
