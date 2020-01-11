# basic-docker

Base pour un projet PHP sous docker

### Dockerfile basé sur PHP 7.3
* Pour construire l'image, on execute la command 
`docker build -t basic .`
le -t permet de donner un tag (nom) à l'image, le . à la fin de définit le context.

### Utilisation de l'image
* On lance la command
`docker run basic`
qui va nous afficher ce que nous avons mis dans `CMD`

### Mettre en ligne son image
* il est possible (comme pour git) de mettre en ligne son image. 

* Avec docker hub :
`docker build -t teamtechcacho/basic-docker .`
`docker push teamtechcacho/basic-docker`
* Avec la registry docker de git lab
`docker build -t registry.gitlab.com/devlawper/basic-docker .`
`docker push registry.gitlab.com/devlawper/basic-docker`

### Lancer le conteneur en mappant le port 80 du conteneur sur le port 82 en local avec --rm pour qu'il soit supprimer quand on l'arrête
`docker build -t basic .`
`docker run --rm -p 82:80 basic`

### Création d'un Makefile
* Dans le Makefile on liste les commandes utiles au lancement du container (voir commentaires dans le fichier)

### Création du fichier docker-compose.yml
* Ce fichier va nous permettre le construire notre container avec un certains nombres de paramètres. Pour le lancer il faudra faire la command
`docker-compose up -- build`
* Pour garder la main dans la CLI on ajoute `-d` = detach
`docker-compose up -d -- build`

### Création d'un volume
* Afin de pouvoir voir les modification de notre code dans le navigateur, il faut créer un volume. Ce paramètre est à ajouter dans le docker-compose
* Il ne faut pas oublier de modifier le chemin dans la commande de notre image dans le Dockerfile, pour qu'il pointe vers le volume ainsi créé.

---

## Commandes utiles : 
* Lister les images construites
`docker image ls` = `docker images`
* Lister les container actifs
`docker container ls`
* Lister tous les container
`docker container ls -a`
* Supprimer une image
`docker image rm <idImage>`
* Supprimer d'un container
`docker image rm <idContainer>`
* Supprimer toutes les images et containers non utilisés
`docker system prune -a`
* Récupération d'une image distante 
`docker pull <nom de l'image>`

