TAG = latest

build-image:
	docker build -t nameko/artotel_suites_bianti:$(TAG) ./artotel_suites_bianti

docker-tag:
	docker tag nameko/artotel_suites_bianti:$(TAG) \
	nameko/artotel_suites_bianti:$(TAG)

push-image:
	docker push nameko/artotel_suites_bianti:$(TAG)
