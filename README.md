# Welcome to the Bus Scout!
A rails application intended to allow users to make reports about transit stops in Chicago.

This is development stage 1 of 2 ([click here](https://github.com/kochandrea/bus-scout) for stage 2).  Pre-existing [Chicago Transit Authority bus stop data](https://data.cityofchicago.org/api/views/qs84-j7wh/rows.csv?accessType=DOWNLOAD) found at [data.gov](https://catalog.data.gov/dataset/cta-bus-stops) was loaded into a sqlite database and made searchable in our rails application.


#### Example:
Using the search bar, a user may lookup their bus stop by using a street name.  Let's see what happens when a search is entered for 'Cornell'.

<img width="748" alt="Screen Shot 2019-06-11 at 7 04 59 PM" src="https://user-images.githubusercontent.com/35736047/59314750-5025d200-8c7c-11e9-91e8-32f101e8895f.png">


Once the user has entered a search, any bus stop with that street name will be returned and the user can select their stop from the list.  Bus stop search results are provided at the direction level (i.e. NB, EB, SB, WB which are north, east, south, and west bound, respectively) and identify the bus routes are served at the bus stop. 

<img width="550" alt="Screen Shot 2019-06-11 at 7 05 15 PM" src="https://user-images.githubusercontent.com/35736047/59314782-751a4500-8c7c-11e9-9ba2-1170b9901b0b.png">


To verify that the user has the correct stop, a google map image will populate.  **NOTE:**  Under the 'Reports' section, a user will be able to view current reports for that bus stop as well as submit a report of their own. (See [stage 2](https://github.com/kochandrea/bus-scout))

<img width="560" alt="Screen Shot 2019-06-11 at 7 05 33 PM" src="https://user-images.githubusercontent.com/35736047/59314785-7f3c4380-8c7c-11e9-87b4-859a341d9b2a.png">


### Useful tutorials:
- Sitepoint:  [Geocoder:  Display Maps and Find Places in Rails](https://www.sitepoint.com/geocoder-display-maps-and-find-places-in-rails/)
- Melvin Ch'ng:  [Search Feature for Rails](https://melvinchng.github.io/rails/SearchFeature.html#chapter-4-search-feature)

### Team members:
- Ian Lyons
- Andrea Koch

## To demo:

After cloning the repo and changing into the directory,
1) Install Gemfile dependencies
```
$ bundle install
```
2) Initialize and seed the database
```
$ rake db:schema:load
$ bundle exec rake load_bus_stops:load_stops
```
3) Start rails server
```
$ rails server
```
