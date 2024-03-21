#Define variables

DOCKER_IMAGE="app"
TAG="vi"

# Build Docker image

docker build -f /build/Dockerfile -t app:v1 /
