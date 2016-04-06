# Test de container posgreSQL avec initialisation.

--

>####*Rappels*
>
>création d'image : ```docker build -t shipstone/postgres .```
>
>executer le container : ```docker run -p 5432:5432 shipstone/postgres```



##Image postgres

***But*** : Création d'un container avec initialisaton d'une base de donnée posgreSQL 

* création de l'image
* Utilisateur
* databse
* création de structure
* alimentation partielle

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

*C'est valable depuis le 8 juillet 2015.*

###Création structure

A partir de la même date, le script d'initialisation de la base execute tous les script sql se trouvant dans le repertoire ```/docker-entrypoint-initdb.d``` - Le but est de créer la structure dans ce repertoire.

Exemple de copie :  

```
ADD sql/*.sql /docker-entrypoint-initdb.d/
```

##Image phpPgAdmin

###Utilisation image issu du ```hub.docker```

Utilisation de l'image : [fizix/docker-pgadmin](https://hub.docker.com/r/fizix/docker-pgadmin/) - un peu limité (une liaison seulement)

###Création image phpPgAdmin légère

basé sur : 

* distri alpine [nimmis/alpine-micro](https://hub.docker.com/r/nimmis/alpine-micro/)
    * doc : [docker-alpine/docs](https://github.com/gliderlabs/docker-alpine/blob/master/docs/usage.md)
* nginx
    * exemple : [github.com :: oren/alpine-nginx](https://github.com/oren/alpine-nginx)
    * 
* phpPgAdmin 

