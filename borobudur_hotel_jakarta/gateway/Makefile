TAG = latest

build-image:
	docker build -t nameko/gateway3:$(TAG) ./gateway

docker-tag:
	docker tag nameko/gateway3:$(TAG) \
	nameko/gateway3:$(TAG)

push-image:
	docker push nameko/gateway3:$(TAG)
