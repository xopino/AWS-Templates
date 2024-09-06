IMAGE_NAME = ubuntu-aws-cli

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --rm -it $(IMAGE_NAME)

