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

__Déplacer l'intégralité de votre dossier Utilisateur__

Afin d'éviter de surcharger le lecteur principal des données Utilisateur, nous allons créer un lien symbolique ( coucou Linux ) pour conserver les chemins actuels : Pour effectuer cela :
1. Créer / Utiliser un autre compte administrateur
2. Copier les données utilisateur de votre compte principal dans le lecteur de votre choix ( Exemple : Le dossier utilisateur de mon compte principal est "C:\Users\jackobo" et le lecteur désiré est "L:\". Je dois créer le dossier "L:\Users" et copier le dossier "C:\Users\jackobo" dedans )
3. Exécuter ce type de commande pour créer le lien symbolique :
```
cd \Users\
ren jackobo jackobo.old
mklink /J C:\Users\jackobo E:\Users\jackobo
```
4. Exécuter ce type de commande pour vérifier la bonne création du lien symbolique :
```
dir /A:L
```
5. Se connecter sur la session désiré. Si tout fonctionne, supprimer les dossiers old se trouvant dans C:\Users
