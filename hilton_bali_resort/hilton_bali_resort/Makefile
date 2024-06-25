TAG = latest

build-image:
	docker build -t nameko/hilton_bali_resort:$(TAG) ./hilton_bali_resort

docker-tag:
	docker tag nameko/hilton_bali_resort:$(TAG) \
	nameko/hilton_bali_resort:$(TAG)

push-image:
	docker push nameko/hilton_bali_resort:$(TAG)
