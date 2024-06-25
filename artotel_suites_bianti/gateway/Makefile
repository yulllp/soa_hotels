TAG = latest

build-image:
	docker build -t nameko/gateway2:$(TAG) ./gateway

docker-tag:
	docker tag nameko/gateway2:$(TAG) \
	nameko/gateway2:$(TAG)

push-image:
	docker push nameko/gateway2:$(TAG)
