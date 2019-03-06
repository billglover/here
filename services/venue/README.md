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
* `make seed` -  downloads and imports sample data into the database

A query to retrieve 10 cafes from the database:

```sql
SELECT name, ST_AsGeoJSON(ST_Transform(way,4326)) AS pt_lonlattext FROM  planet_osm_point WHERE amenity='cafe' LIMIT 10
```

```plain
        name        |                     pt_lonlattext
--------------------+--------------------------------------------------------
 MangoBajito        | {"type":"Point","coordinates":[-0.1962976,51.5442713]}
 The Sanctuary Café | {"type":"Point","coordinates":[-0.1918458,51.5458173]}
 8 oz               | {"type":"Point","coordinates":[-0.191147,51.5475357]}
 Starbucks          | {"type":"Point","coordinates":[-0.1911542,51.5478058]}
 Wired Co.          | {"type":"Point","coordinates":[-0.1904104,51.5465015]}
 Zara Cafe          | {"type":"Point","coordinates":[-0.1799745,51.5418546]}
 Chabad Lubavitch   | {"type":"Point","coordinates":[-0.1793041,51.5431459]}
 Remon              | {"type":"Point","coordinates":[-0.179996,51.5471261]}
 David's Deli       | {"type":"Point","coordinates":[-0.193129,51.552099]}
 Costa              | {"type":"Point","coordinates":[-0.1911448,51.5478543]}
(10 rows)
```
