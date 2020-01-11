# Chemin vers lequel se trouve le Dockerfile
path: docker

# Suppression des images et containers
clean:
	docker system prune -a -f

# Construction de l'image
build:
	cd $(path) && docker build -t basic .

# Nettoyage + Construction
rebuild: clean build

# Lancement du container basé sur l'image basic sur le port 82 en local
run:
	cd $(path) && docker run --rm -p 82:80 basic

# Nettoyage + Construction + Lancement
rerun: rebuild run

# Lancement du container grace au docker-compose.yml
compose:
	docker-compose up -d --build