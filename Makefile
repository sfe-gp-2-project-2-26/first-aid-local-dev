.PHONY: clone setup up down logs

clone:
	git submodule update --init --recursive

setup:
	cp .env.example .env
	@echo "Created .env file. Please update it with any required secrets."

up:
	docker compose up --build

down:
	docker compose down

logs:
	docker compose logs -f
