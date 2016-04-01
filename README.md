# Test de container posgreSQL avec initialisation.

--

***But*** : Création d'un container avec initialisaton d'une base de donnée posgreSQL 

* création de l'image
* Utilisateur
* databse
* création de structure
* alimentation partielle

--
####*Rappels*

création d'image : ```docker build -t shipstone/postgres .```

executer le container : ```docker run -p 5432:5432 shipstone/postgres```

--

###Création utilisateur

en ligne de commande : 

```shell
docker run -e POSTGRES_USER=data -e POSTGRES_PASSWORD=data -e POSTGRES_DB=postgres library/postgres
```

ou directement dans le Dockerfile

```shell
ENV POSTGRES_USER data
ENV POSTGRES_PASSWORD data
ENV POSTGRES_DB postgres
```

C'est valable depuis le 8 juillet 2015.

--

###Création structure

A partir de la même date, le script d'initialisation de la base execute tous les script sql se trouvant dans le repertoire ```/docker-entrypoint-initdb.d``` - Le but est de créer la structure dans ce repertoire.

Exemple de copie :  

```
ADD sql/*.sql /docker-entrypoint-initdb.d/
```

--

###Création image phpPgAdmin

basé sur : 

* distri alpine
* nginx
* phpPgAdmin

