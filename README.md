# Settings

installed Docker!

```sh
$ docker run --name test -e POSTGRES_PASSWORD=test -d postgres:latest
$ docker exec -it test createdb -U postgres test
$ git clone git@github.com:kazumalab/training-activerecord.git
$ cd training-activerecord
$ ruby migrate/create_tables.rb
```
