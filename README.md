# W11-Tips
Astuces pour améliorer l'expérience Utilisateur sous Windows 11

![alt text](https://github.com/Jack0b0Tori/W11-Tips/blob/main/w11.png?raw=true)

Testé avec les composants suivants :
1. Processeur : Intel i5-10400F
2. RAM : 16 GB DDR4 DIMM 2133 MHz
3. GPU : NVIDIA GeForce GTX 1650 4096 Mo GDDR5
4. OS : Windows 11 installé sur le disque dur SSD 512 Go
5. Disque dur HDD de 2To en supplémentaire

## AVANT DE COMMENCER

1. Je ne suis pas responsable des potentiels dégats matériels, logiciels et/ou physiques lors de l'utilisation de ces commandes et astuces. Vous êtes responsable de votre équipement informatique.
2. Dans la section "Issues" ou "Pull requests" du projet, n'hésitez pas à me faire des propositions de commandes / astuces que vous souhaitez partager 
3. L'étape 1 n'est pas à répéter si vous avez déjà sur votre PC les comptes nécessaires au bon fonctionnement selon votre usage.

-----------------

## ETAPE 1 : CREATION DE VOTRE COMPTE UTILISATEUR SUR UN AUTRE LECTEUR 

But : Eviter l'utilisation abusive du SSD par Windows 11 pour les données des applications et l'accès à vos fichiers.

Etapes à suivre :

1. Créer un compte Administrateur Local (sans avoir besoin d'utiliser un compte Microsoft ) et s'y connecter
2. Noter le nom du dossier dans C:\Users concernant votre utilisateur principal
3. Supprimer le compte utilisateur souhaité, le recréer en utilisant si souhaité son compte Microsoft et s'y connecter
4. S'y déconnecter ensuite et revenir sur le compte Administrateur Local
5. Ouvrir CMD.EXE en tant qu'administrateur et exécuter la commande suivante ( changer le nom du dossier et le lecteur souhaité (ici L:\ ) ) :
```
robocopy "C:\Users\NOM_UTILISATEUR" "L:\Users\NOM_UTILISATEUR" /E /COPYALL /XJ
```
6. Renommer "C:\Users\NOM_UTILISATEUR" en "C:\Users\NOM_UTILISATEUR.old"
7. Exécuter la commande suivante pour créer le lien symbolique ( changer le nom du dossier et le lecteur souhaité (ici L:\ ) ) :
```
mklink /J C:\Users\NOM_UTILISATEUR L:\Users\NOM_UTILISATEUR
```
8. Se connecter sur votre compte utilisateur
9. Si tout est OK, supprimer "C:\Users\NOM_UTILISATEUR.old"

-----------------

## ETAPE 2 : MISE A JOUR DE WINDOWS 11

Lors du passage à Windows 11, ou durant son utilisation, vérifier que les mises à jour soient toutes installés sur votre ordinateur. Si les mises à jour doivent être installés, les installer et redémarrer le PC.

-----------------

## ETAPE 3 : EXECUTION DES COMMANDES SUIVANTES SOUS CMD.EXE ( ADMINISTRATEUR REQUIS )

Exécuter le fichier "clean_w11.bat" __en tant qu'administrateur__. Plus d'information sur les commandes dans le fichier "clean_w11.md".

Redémarrer ensuite votre ordinateur.

-----------------

## ETAPE 4 : AUTRES ASTUCES

__Configuration du Windows Defender:__

Des applications peuvent faire paniquer l'antivirus et provoquent une surcharge du CPU par Windows Defender. Cependant, désactiver l'anti-virus complet est une erreur à ne pas faire ! Pour ajouter une exclusion :
1. Aller dans Paramètres -> Confidentialité  & Sécurité -> Sécurité Windows -> Protections contre les virus et menaces
2. Cliquer sur Gérer les paramètres
3. Dans Exclusions ( tout en bas ), cliquer sur "Ajouter ou supprimer des exclusions"
4. Ajouter le programme exe concerné ( avec le mode fichier ) ou un processus ( en saisissant son nom )
