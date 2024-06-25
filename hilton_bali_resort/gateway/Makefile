TAG = latest

build-image:
	docker build -t nameko/gateway6:$(TAG) ./gateway

docker-tag:
	docker tag nameko/gateway6:$(TAG) \
	nameko/gateway6:$(TAG)

push-image:
	docker push nameko/gateway6:$(TAG)
