# POS System for restaurants

## Technologies Used

- Frontend: React.js,
- Backend: NestJS
- Database: PostgreSQL

## dependencies

- Docker and Docker Compose
- make (optional, for using Makefile it help us to simplify commands)

## folder Structure

```
.
├── apps
│   ├── backend
│   │   ├── dist
│   │   ├── Dockerfile
│   │   ├── Dockerfile.dev
│   │   ├── eslint.config.mjs
│   │   ├── nest-cli.json
│   │   ├── node_modules
│   │   ├── package.json
│   │   ├── package-lock.json
│   │   ├── src
│   │   ├── test
│   │   ├── tsconfig.build.json
│   │   └── tsconfig.json
│   └── frontend
│       ├── eslint.config.js
│       ├── index.html
│       ├── node_modules
│       ├── package.json
│       ├── public
│       ├── src
│       ├── tsconfig.app.json
│       ├── tsconfig.json
│       ├── tsconfig.node.json
│       └── vite.config.ts
├── docker
│   ├── backend
│   │   └── Dockerfile.dev
│   ├── frontend
│   │   └── Dockerfile.dev
│   └── nginx
│       ├── default.conf
│       └── ssl
│           ├── localhost.crt
│           └── localhost.key
├── .env
├── docker-compose.yml
├── Makefile
└── README.md


```

## Installation

1. Clone the repository:
   ```
   git clone <repository_url> pos-system
   ```
2. navigate to the project directory:
   ```
   cd pos-system
   ```
3. Create a `.env` file in the root directory and configure the necessary environment variables. You can use the provided `.env.example` as a template.

```
cp .env.example .env
```

4. generate self-signed SSL certificates using the provided script or manually place your SSL certificates in the `ssl` directory.

```
mkdir -p docker/nginx/ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout docker/nginx/ssl/localhost.key \
 -out docker/nginx/ssl/localhost.crt \
 -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"
```

4. Build and start the application using Docker Compose:
   ```
   docker-compose up --build
   ```

## using make commands

```make
make up       # Start services in background
make down     # Stop services
make build    # Rebuild containers

# Logs and access
make backend-logs    # View backend logs
make frontend-logs   # View frontend logs
make backend-shell   # Access backend container
make frontend-shell  # Access frontend container
make db-shell        # Access database
```

## access points

- Frontend: `https://localhost`
- Backend API: `https://localhost/api`
- Database: `localhost:5432`
