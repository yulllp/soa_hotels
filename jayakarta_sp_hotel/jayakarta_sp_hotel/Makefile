TAG = latest

build-image:
	docker build -t nameko/jayakarta_sp_hotel:$(TAG) ./jayakarta_sp_hotel

docker-tag:
	docker tag nameko/jayakarta_sp_hotel:$(TAG) \
	nameko/jayakarta_sp_hotel:$(TAG)

push-image:
	docker push nameko/jayakarta_sp_hotel:$(TAG)
