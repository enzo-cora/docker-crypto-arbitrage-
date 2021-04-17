volume: 
	docker volume create db_arbitrage
install:
	docker-compose -f docker-compose-builder.yml run --rm install-front-arbitrage
	docker-compose -f docker-compose-builder.yml run --rm install-api-arbitrage
dev: 
	docker-compose -f docker-compose.yml -f dev.docker-compose.yml up 
test: 
	docker-compose -f docker-compose.yml -f test.docker-compose.yml up 
prod: 
	docker-compose -f prod.docker-compose.yml up
init:
	make volume
	make install
reset-dev:
	docker-compose -f docker-compose.yml -f dev.docker-compose.yml down -v --rmi "local"
	docker volume rm db_arbitrage
reset-test:
	docker-compose -f docker-compose.yml -f test.docker-compose.yml down -v --rmi "local"
reset-prod:
	docker-compose -f prod.docker-compose.yml down -v --rmi "local"

