# Flask Web Server with Docker and Multi-Stage Builds

This repository contains a simple Flask web server packaged into a Docker container using a multi-stage build process. The project demonstrates best practices for Docker image optimization and includes optional Docker Compose support.

## Features
- Simple Flask web server
- Docker multi-stage builds to reduce image size
- Tagged image for Docker Hub
- Optional Docker Compose support

---

## Project Structure

```plaintext
.
├── app.py                # Flask application
├── requirements.txt      # Python dependencies
├── Dockerfile            # Multi-stage build configuration
├── docker-compose.yml    # Optional Docker Compose file
└── README.md             # Project documentation
```

---

## Getting Started

### Prerequisites
- Docker installed ([Download Docker](https://www.docker.com/products/docker-desktop))
- Optional: Docker Compose installed ([Install Docker Compose](https://docs.docker.com/compose/install/))

---

### Running the Project

#### 1. Clone the Repository
```bash
git clone https://github.com/MichaelOppong731/Web_Server.git
cd ~/Web_Server
```

#### 2. Build the Docker Image
```bash
docker build -t Web_Server:version_1
```

#### 3. Run the Container
```bash
docker run -d -p 5000:5000 Web_Server:version_1
```

Visit the application at:  
`http://localhost:5000`


