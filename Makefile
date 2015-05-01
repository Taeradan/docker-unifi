CONTAINER_NAME=unifi
IMAGE_NAME=taeradan/$(CONTAINER_NAME)

all: container

container: image
	docker run -d --name $(CONTAINER_NAME) -p 8080:8080 -p 8443:8443 --restart=always $(IMAGE_NAME)

image:
	docker build -t $(IMAGE_NAME) .
