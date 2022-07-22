# README

## How the app was generated:

```
docker-compose run --no-deps web rails new . --force --database=postgresql
```

## How to run locally

```
docker-compose up
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

To enter cli inside a container

```
docker-compose run web bash
```

How to upgrade ruby with asdf

```
asdf plugin update ruby
asdf install ruby <NEWER VERSION>
```

## Resources

- https://docs.docker.com/samples/rails/
