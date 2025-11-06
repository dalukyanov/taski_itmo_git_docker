.PHONY: build run all

build:
	cd frontend && docker build -t taski-frontend .
	cd backend && docker build -t taski-backend .

run:
	docker run --name taski-frontend -d -p 3000:3000 taski-frontend
	docker run --name taski-backend -d -p 8000:8000 taski-backend

all: build run