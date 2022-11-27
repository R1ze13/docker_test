.DEFAULT_GOAL := run_prod

run_prod:
	@echo "Run production..."
	ENV="production" docker-compose up -d --build && docker-compose logs -f

run_dev:
	@echo "Run dev..."
	ENV="dev" docker-compose up -d --build && docker-compose logs -f

stop:
	@echo "Stopping app..."
	docker-compose down

.PHONY: run_prod run_dev stop
