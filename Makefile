.PHONY: all check clean json test

all: vendor check test

data/iso3166.json:
	php -r 'echo json_encode(require "data/iso3166.php", JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);' > "data/iso3166.json"

check:
	vendor/bin/phpcs -v --standard=PSR2 source/ tests/
	vendor/bin/phpmd source/ xml codesize,controversial,design,naming,unusedcode

clean:
	rm -rf vendor

json: data/iso3166.json

test:
	vendor/bin/phpunit --strict

vendor:
	composer install
