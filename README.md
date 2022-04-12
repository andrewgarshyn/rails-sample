# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


## How the app was generated:

```
docker-compose run --no-deps web rails new . --force --database=postgresql
```

## Tips

Every time `Gemfile` or `Dockerfile` or `docker-compose.yml` are changed, the docker image has to be rebuilt:

```
docker-compose build
```

If `Gemfile.lock` is changed, and the gems have to be installed, run:

```
docker-compose run web bundle install
```

To create a database, run:

```
docker-compose run web bin/rails db:create
```

## Resources

- https://docs.docker.com/samples/rails/
