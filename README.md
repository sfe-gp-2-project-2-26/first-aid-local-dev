# MedAid Local Development Environment

This umbrella repository orchestrates the MedAid microservices architecture for seamless local development with hot-reloading.

## Quickstart

1. **Clone the repository and submodules:**
   ```bash
   git clone --recursive https://github.com/sfe-gp-2-project-2-26/first-aid-local-dev.git
   cd first-aid-local-dev
   ```
   *(If you already cloned without `--recursive`, run `make clone`)*

2. **Setup environment:**
   ```bash
   make setup
   ```

3. **Start the environment:**
   ```bash
   make up
   ```

## Services

| Service | Hot-Reload Command | Internal URL | Exposed Port |
|---------|-------------------|--------------|--------------|
| **Frontend** | `npm run dev` | `http://frontend:8080` | `8080` |
| **Auth** | `node --watch` | `http://auth-service:4000` | `4000` |
| **AI** | `uvicorn --reload` | `http://ai-service:3000` | `3000` |
| **Map** | `uvicorn --reload` | `http://map-service:5000` | `5000` |
| **BGE** | `uvicorn --reload` | `http://bge-service:8000` | `8000` |

*Note: Changes made to the submodule directories will automatically sync inside the Docker containers.*
