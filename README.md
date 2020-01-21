## About

We create a simple system includes: api, frontpage, admin site
+ api: [Nodejs](https://nodejs.org/en/), [express](https://expressjs.com/), [mariadb](https://mariadb.org/). Posible to running on docker and easy to scale.
+ front page: [Nextjs](https://nextjs.org/), [react](https://reactjs.org/), [redux](https://redux.js.org/). Server site render, support SEO, target on end-user, same source base with mobile and admin-site.
+ admin: [Create-react-app](https://create-react-app.dev/), [react](https://reactjs.org/), [redux](https://redux.js.org/). Client site render, target on admin-user, same source base with mobile and admin-site

To scale as microservice system, we must have the API gateway ([Kong](https://konghq.com/kong/)) and every request should go throught the gateway. (it will done later)

Some services will interact with Khafka to handle request. (like orders, message, etc) (it will done later)


## DEV

```bash
// git submodule 
git submodule init
git submodule update

// API
cd ./api
mkdirs ./uploads
npm install
// FRONTEND
cd ./front
npm install
// ADMIN
cd ./admin
npm install

// up all container
docker-compose -f docker-compose.dev.yml up -d 

// seed data
docker exec -it api bash
npm run seed
// build admin
cd ./admin
npm run build_pro (or deploy_stag, etc)
// build front
cd ./front
npm run build_pro
// restart container
docker restart web

// delete all container
docker rm -f $(docker ps -a -q)
```
WEBSITE: localhost:5000

API: localhost:5001

DATABASE: localhost:5006

DATABASE ADMINER: localhost:8082
```
database: mariadb
user: admin
pass: admin
```

FRONT UI: localhost:5000

