Rails Skeleton
==============


Dependencies
------------

* **Ruby**: 1.1.1.example
* **Postgresql**: 1.1.1.example


Setup
-----

### Install required gems

```bash
./install-gems.sh
```

### Configure database

* Modify `config/database.yml` with your database credentials.

### Setup database

```bash
bundle exec rails db:create
bundle exec rails db:test:prepare
```

### Run tests

```bash
./test.sh
```


Common Tasks
------------

Run development server locally:

```bash
bundle exec rails server
```

Run interactive console:

```bash
bundle exec rails console
```

Deployment instructions
-----------------------

* Heroku automation deploys branches from Github whenever they are updated
* The branch chosen by Heroku for any given environment is configured in Heroku's web interface
