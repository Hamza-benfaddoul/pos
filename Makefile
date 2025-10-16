
all: build up

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

# Backend
backend-logs:
	docker-compose logs backend -f

backend-shell:
	docker-compose exec backend sh

# Frontend
frontend-logs:
	docker-compose logs frontend
frontend-shell:
	docker-compose exec frontend sh

# Database
db-logs:
	docker-compose logs postgres

db-shell:
	docker-compose exec postgres psql -U postgres -d myapp
