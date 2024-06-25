TAG = latest

build-image:
	docker build -t nameko/gateway1:$(TAG) ./gateway

docker-tag:
	docker tag nameko/gateway1:$(TAG) \
	nameko/gateway1:$(TAG)

push-image:
	docker push nameko/gateway1:$(TAG)
