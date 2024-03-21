#Define variables

DOCKER_IMAGE="app"
TAG="vi"

# Build Docker image

docker build -t app:v1 -f /build/Dockerfile
