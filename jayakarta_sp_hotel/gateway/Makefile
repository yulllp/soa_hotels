TAG = latest

build-image:
	docker build -t nameko/gateway4:$(TAG) ./gateway

docker-tag:
	docker tag nameko/gateway4:$(TAG) \
	nameko/gateway4:$(TAG)

push-image:
	docker push nameko/gateway4:$(TAG)
