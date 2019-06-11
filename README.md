# civtech-transit-app
A rails application intended to allow users to make reports about transit stops in Chicago


### To demo:

After cloning the repo and changing into the directory,
1) Run
```
$ bundle install
```
2) Initialize and seed the database by running
```
$ rake db:schema:load
$ bundle exec rake load_bus_stops:load_stops
```
3) Start rails server
```
$ rails server
```
