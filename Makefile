build-php81:
	DOCKER_BUILDKIT=1 docker build ./php -f php/Dockerfile81 -t upstain/php:beta

build-php:
	DOCKER_BUILDKIT=1 docker build ./php -f php/Dockerfile8 -t upstain/php:latest

build-php7:
	DOCKER_BUILDKIT=1 docker build ./php -f php/Dockerfile7 -t upstain/php:1.0

push-php:
	docker push upstain/php:latest

push-php7:
	docker push upstain/php:1.0

push-php81:
	docker push upstain/php:beta
