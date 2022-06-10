# default build target
all::

.PHONY: all
all:: build

.PHONY: build
build:

	docker build --tag heroku-docker-r-example:plumber .

.PHONY: run
run:

	docker run -it -p "8080:8080" heroku-docker-r-example:plumber
