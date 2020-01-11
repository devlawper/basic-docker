# Suppression des images et containers
clean:
	docker system prune -a -f

# Construction de l'image
build:
	docker build -t basic .

# Nettoyage + Construction
rebuild: clean build

# Lancement du container basé sur l'image basic sur le port 82 en local
run:
	docker run --rm -p 82:80 basic

# Nettoyage + Construction + Lancement
rerun: rebuild run