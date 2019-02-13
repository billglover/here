SERVICE = venue

.PHONEY: up down start stop dbadmin

up:
	docker-compose --project-name $(SERVICE) up --force-recreate -d

down:
	docker-compose --project-name $(SERVICE) down --rmi all

start:
	docker-compose --project-name $(SERVICE) start

stop:
	docker-compose --project-name $(SERVICE) stop

dbadmin:
	open http://localhost:8080/
