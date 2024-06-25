TAG = latest

build-image:
	docker build -t nameko/gateway5:$(TAG) ./gateway

docker-tag:
	docker tag nameko/gateway5:$(TAG) \
	nameko/gateway5:$(TAG)

push-image:
	docker push nameko/gateway5:$(TAG)
