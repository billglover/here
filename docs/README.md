# here

## System Overview

The system is made up of a number of services:

- nearby - provides a list of venues nearby a given location
- venue - provides the ability to query and update venue information
- checkin - provides the ability for users to record their location
- timeline - provides the location history for a user

### Data Sources

To provide these services, we need to maintain a collection of venues and their associated locations. We could rely on users to provide venue information when they check-in. This complicates the check-in process and it is our assumption that users will be less likely to check-in as a result. We propose identifying one or more data sources to seed our collection and to augment this with user-provided data.

Data sources under consideration are listed below.

- [OpenStreetMap](https://www.openstreetmap.org/about)

### Data Transformation

Whether we use a single source of data or aggregate across sources, it is highly likely that we'll need to clean and/or transform the data we are using.

### Services

- [nearby](./services/nearby)
- venue(./services/venue)
- checkin(./services/checkin)
- timeline(./services/timeline)

### Clients

This project may include one or more client implementations, but the project will focus on providing an API that enables new clients to be built.

### Hosting

No hosting decisions have been made yet. Current thinking is to ensure all services are packaged as Docker containers for portability. Effort should be spent to allow individuals to host their own instances of the project.

## Local Environment

### Requirements

- docker
- docker-compose
- osm2pgsql

### Project Structure

This section will be used to document the project structure.

### First Run

This section will describe how to start the project for the first time. This will likely include detail on how to seed the database with sample data.

### Common Tasks

This section will describe how to complete common project tasks. These should be automated where possible.
