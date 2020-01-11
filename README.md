# basic-docker

Base pour un projet Symfony 4 sous docker

### Dockerfile basé sur PHP 7.3
* Pour construire l'image, on execute la command `docker build -t basic .` le -t permet de donner un tag (nom) à l'image, le . à la fin de définit le context.

### Utilisation de l'image
* On lance la command `docker run basic` qui va nous afficher ce que nous avons mis dans `CMD`

### Mettre en ligne son image
* il est possible (comme pour git) de mettre en ligne son image. 

* Avec docker hub :
`docker build -t teamtechcacho/basic-docker .`
`docker push teamtechcacho/basic-docker`
* Avec la registry docker de git lab
`docker build -t registry.gitlab.com/devlawper/basic-docker .`
`docker push registry.gitlab.com/devlawper/basic-docker`
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

