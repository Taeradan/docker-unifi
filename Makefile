CONTAINER_NAME=unifi
IMAGE_NAME=taeradan/$(CONTAINER_NAME)

all: container

container: image
	docker run -d --name $(CONTAINER_NAME) --restart=always $(IMAGE_NAME)

image:
	docker build -t $(IMAGE_NAME) .
