build-php:
	DOCKER_BUILDKIT=1 docker build ./php -f php/Dockerfile -t upstain/php:latest

push-php:
	docker push upstain/php:latest
