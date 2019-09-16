.PHONY: install test

install:
	composer install

test: vendor
	./vendor/bin/phpunit -c web/core/ web/modules/custom/

vendor: composer.json composer.lock
	composer self-update
	composer validate
	composer install