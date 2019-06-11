# civtech-transit-app
A rails application intended to allow users to make reports about transit stops in Chicago


### To demo:

After cloning the repo and changing into the directory,
1) Run
'''
$ bundle install
'''

1) clone the repo
2) change into the repo directory
3) bundle install
4) create table -> rake db:schema:load
5) seed the data frame -> bundle exec rake load_bus_stops:load_stops
6) launch server -> rails server
