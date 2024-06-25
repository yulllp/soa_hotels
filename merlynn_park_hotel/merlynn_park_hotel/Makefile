TAG = latest

build-image:
	docker build -t nameko/merlynn_park_hotel:$(TAG) ./merlynn_park_hotel

docker-tag:
	docker tag nameko/merlynn_park_hotel:$(TAG) \
	nameko/merlynn_park_hotel:$(TAG)

push-image:
	docker push nameko/merlynn_park_hotel:$(TAG)
