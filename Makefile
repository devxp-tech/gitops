# Helper to generate secret
secret:
	docker-compose run --rm --user="$(shell id -u):$(shell id -g)" cript bash secrets/generate.sh
