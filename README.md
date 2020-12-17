# README

This is an example app done as a coding challenge for showing flooring companies (partners) 
to interested customers depending on their project requirements (flooring material),
location and the partners operating radius covering the customers location.

## Setup

Asuming you have a postgres DB user `rails` with the password `rails` you can run `bin/rails db:setup`.
This will create the DB and add some test data so that you can see something similar like the following
when running the server locally.

## UI

### Display all partners

![all partners](docs/full_page.jpg)

### Search by location
![search by location](docs/search_by_location.png)

### Search by location and material
![search by location](docs/search_by_location_and_material.png)
