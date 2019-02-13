# Service: Venue

The Venue service provides the ability to query and update venue information.

## Overview

The Venue service consists of three containers:

- [x] `db` - the database
- [x] `adminer` - the DB admin application
- [ ] `app` - the application providing the service

## Common Tasks

The service includes a Makefile to bring consistency to common development tasks.

* `make up` - creates and starts service containers
* `make down` - stops and removes containers, networks, images, and volumes
* `make stop` - stops the service without destroying containers
* `make start` - starts the service from a previously stopped state
* `make dbadmin` - opens a browser window with the DB admin application
