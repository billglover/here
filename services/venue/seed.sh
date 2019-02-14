#! /bin/bash
DATADIR=./data
DATAFILE=sample.osm

# Check we have the required utilities
if ! [ -x "$(command -v osm2pgsql)" ]; then
  echo 'You need to install osm2pgsql for this script to work.' >&2
  exit 1
fi

# Create the data directory if needed
if [ ! -d "${DATADIR}" ]; then
    mkdir ${DATADIR}
fi

# Download sample data only if needed
if [ -f ${DATADIR}/${DATAFILE} ]; then
    echo "Sample data already exists, skipping download"
else
    curl --output "${DATADIR}/${DATAFILE}" "https://www.openstreetmap.org/api/0.6/map?bbox=-0.2031%2C51.541%2C-0.1621%2C51.5633"
fi

# Import data into PostgreSQL
#  -l                 = store data in lat/lon rather than spherical mercartor
#  --slim             = store temporary tables in the database rather than memory (slower)
#x --hstore-all       = add all tags to an additional hstore (key/value) column - needs hstore
#x --hstore-add-index = add index to hstore column - needs hstore
osm2pgsql -l --slim --database postgres --username postgres --host localhost --password "${DATADIR}/${DATAFILE}"
