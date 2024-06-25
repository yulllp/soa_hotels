TAG = latest

build-image:
	docker build -t nameko/yogyakarta_mariott:$(TAG) ./yogyakarta_mariott

docker-tag:
	docker tag nameko/yogyakarta_mariott:$(TAG) \
	nameko/yogyakarta_mariott:$(TAG)

push-image:
	docker push nameko/yogyakarta_mariott:$(TAG)
