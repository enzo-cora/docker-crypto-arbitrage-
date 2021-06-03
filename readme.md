# TEST ENV docker >= 3.4 : 
- Launch the test
```sh 
$ make test
```
- remove all images, volumes, containers created by "make test"
```sh 
$ make reset-test
```

# PROD ENV docker >= 3.4 : 
- Launch prod env
```sh 
$ make prod
```
- remove all images, volumes, containers created by "make test"
```sh 
$ make reset-prod
```

()

# DEV ENV docker >= 3.4 : 
- make dev env from project
```sh
$ git clone git@github.com:enzocorp/front-admin-pannel.git
$ git clone git@github.com:enzocorp/api-filter-symbols.git
$ make init
$ make dev
```
- remove all images, volumes, containers created by "make dev"
```sh 
$ make reset-dev
```

# ENV VARIABLES
### ---Paremetre de connexion sur l'hote---
- HOST_PORT= {number}	(port on host where reverse-proxy is linked)
- PROXY_HOSTNAME={string}

### ---Site web---
- SITE_HOSTNAME={string} (pour le DNS docker)
- SITE_PORT={number}

### ---Api---
- API_NAME='api1' (nom de l'api utilisé dans l'url)
- API_PORT={number}
- API_HOSTNAME={string} (pour le DNS docker)
- NODE_ENV= "development" | "test" | "production"

### ---Base de données---
- MONGO_INITDB_USERNAME= {string} (user readwrite)
- MONGO_INITDB_PASSWORD= {string} (pwd user readwrite)
- MONGO_DB= {string} (working database)
- MONGO_URI= {string} (if using "SV" DNS )
- MONGO_HOSTNAME= {string} (if using "A" classic DNS)
- MONGO_PORT= {number} (if using "A" classic DNS )

(Useful **only on local env** Dev or Tests) 
- MONGO_DB_DEV= {string}
- MONGO_INITDB_ROOT_USERNAME= {string} (user superadmin)
- MONGO_INITDB_ROOT_PASSWORD= {string} (pwd superadmin)


### ---Debuger npm---
- DEBUG= "api:*,front:*" | ""  (permet d'activer ou desactiver le debuger du front et de l'api) 
- DEBUG_COLORS=true

# ENV EXEMPLE : 

```.env
# ---Paremetre de connexion sur l'hote---
HOST_PORT=80
PROXY_HOSTNAME=localhost

# ---Site web---
SITE_HOSTNAME=angular
SITE_PORT=4200

# ---Api---
API_NAME=api1
API_PORT=3000
API_HOSTNAME=api_node
NODE_ENV=development 

# ---Base de données---
MONGO_HOSTNAME=mongohost
MONGO_PORT=27017
MONGO_INITDB_ROOT_USERNAME=admin
MONGO_INITDB_ROOT_PASSWORD=adminpwd
MONGO_INITDB_USERNAME=enzo
MONGO_INITDB_PASSWORD=enzopwd
MONGO_DB=arbitrage-db
MONGO_DB_DEV=dev-arbitrage-db


# ---Debuger npm ---
DEBUG=api:*,front:*,infos:*
DEBUG_COLORS=true
```

