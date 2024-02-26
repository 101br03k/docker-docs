# pgAdmin & PostgreSQL

#### Documentation / Source:

pgAdmin:[ pgAdmin.org
](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html)PostgreSQL: [hub.docker.com/_/postgres](https://github.com/docker-library/docs/tree/master/postgres)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose")):

```yaml
version: "3.8"
services:
  db:
    image: postgres
    container_name: postgresql
    restart: always
    ports:
      - "5432:5432"
    environment:
      POSTGRES_USER: user-name 				#CHANGE PLZ
      POSTGRES_PASSWORD: strong-password 	#CHANGE PLZ
    volumes:
      - local_pgdata:/var/lib/postgresql/data
  pgadmin:
    image: dpage/pgadmin4
    container_name: pgadmin
    restart: always
    ports:
      - "8888:80"
    environment:
      PGADMIN_DEFAULT_EMAIL: user-name@domain-name.com 	#CHANGE PLZ
      PGADMIN_DEFAULT_PASSWORD: strong-password 		#CHANGE PLZ
    volumes:
      - pgadmin-data:/var/lib/pgadmin

volumes:
  local_pgdata:
  pgadmin-data:

```
